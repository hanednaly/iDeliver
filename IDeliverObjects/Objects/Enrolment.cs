﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace IDeliverObjects.Objects
{
    public partial class Enrolment
    {
        public Enrolment()
        {
            MerchantEmployees = new HashSet<MerchantEmployee>();
            OrganizationEmployees = new HashSet<OrganizationEmployee>();
        }

        public long Id { get; set; }
        public long UserId { get; set; }
        public int RoleId { get; set; }

        public virtual User User { get; set; }
        public virtual ICollection<MerchantEmployee> MerchantEmployees { get; set; }
        public virtual ICollection<OrganizationEmployee> OrganizationEmployees { get; set; }
    }
}