using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IDeliverObjects.DTO
{
    public partial class Profile
    {
        public long UserID { get; set; }
        public string Username { get; set; } = string.Empty;
        public List<Account> Accounts { get; set; } = new List<Account>();
    }
}
