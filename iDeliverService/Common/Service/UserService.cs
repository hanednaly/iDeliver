using IDeliverObjects.DTO;
using Newtonsoft.Json;
using System.Security.Claims;
namespace iDeliverService.Common.Service
{
    public class UserService : IUserService
    {
        private readonly IHttpContextAccessor _httpContextAccessor;

        public UserService(IHttpContextAccessor httpContextAccessor)
        {
            _httpContextAccessor = httpContextAccessor;
        }

        public Profile Profile()
        {
            Profile profile = new Profile();

            if (_httpContextAccessor.HttpContext is not null)
            {
                ClaimsPrincipal principal = _httpContextAccessor.HttpContext.User;
                profile = new Profile
                {
                    UserID = Convert.ToInt64(principal.FindFirstValue("ID")),
                    Username = principal.FindFirstValue("Username"),
                };
            }
            return profile;
        }
    }
}
