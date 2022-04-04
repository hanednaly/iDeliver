using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using iDeliverDataAccess.Base;
using IDeliverObjects.DTO;
using IDeliverObjects.Objects;
using Microsoft.EntityFrameworkCore;

namespace iDeliverDataAccess.Repositories
{
    internal class AccountRepository : IAccountRepository
    {
        private readonly IDeliverDbContext _context;

        public AccountRepository(IDeliverDbContext context)
        {
            _context = context;
        }

        public async Task<UserDTO?> Login(string username)
        {

            var query = await (from user in _context.Users
                               where user.Username == username && user.IsActive == true
                               select new UserDTO
                               {
                                   UserID = user.Id,
                                   Username = user.Username,
                                   Password = user.Password
                               }).FirstOrDefaultAsync();

            if (query is not null)
            {
                var enrolments = await (from enrolment in _context.Enrolments
                                        where enrolment.UserId == query.UserID
                                        select enrolment).ToListAsync();


                foreach (var item in enrolments)
                {
                    var role = (IDeliverObjects.Enum.Roles)item.RoleId;
                    query.Roles.Add(role.ToString());
                }
            }

            return query;
        }

        public async Task<List<Account>> Accounts(long UserID)
        {
            List<Enrolment> enrolments = await (from enrolment in _context.Enrolments
                                                where enrolment.Id == UserID
                                                select enrolment).ToListAsync();

            List<Account> accounts = new List<Account>();

            foreach (Enrolment item in enrolments)
            {
                Account? account = new Account();
                switch (item.RoleId)
                {
                    case 1:
                        // organization employee
                        account = await (from employee in _context.OrganizationEmployees
                                         join organization in _context.Organizations on employee.OrganizationId equals organization.Id
                                         where employee.EnrolmentId == item.Id && employee.IsActive == true
                                         select new Account()
                                         {
                                             EnrolmentID = employee.EnrolmentId,
                                             FirstName = employee.FirstName,
                                             LastName = employee.LastName,
                                             EmployeeID = employee.Id,
                                             MiddleName = employee.MiddleName,
                                             Organization = new OrganizationDTO()
                                             {
                                                 Id = employee.Organization.Id,
                                                 Name = employee.Organization.Name,
                                                 Timezone = employee.Organization.Timezone
                                             },
                                             Role = ((IDeliverObjects.Enum.Roles)employee.Enrolment.RoleId).ToString(),
                                             ProfilePicture = employee.ProfilePicture
                                         }).FirstOrDefaultAsync();

                        if (account is not null)
                            accounts.Add(account);
                        

                        break;
                    case 2:
                        // driver
                        break;
                    case 3:
                        // marchent employee
                        break;
                }
            }

            return accounts;
        }
    }
}
