using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IDeliverObjects.DTO
{
    public class OrganizationDTO
    {
        public long Id { get; set; }
        public string Name { get; set; } = string.Empty;
        public string Timezone { get; set; } = string.Empty;
    }
}
