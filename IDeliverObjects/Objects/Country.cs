﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace IDeliverObjects.Objects
{
    public partial class Country
    {
        public Country()
        {
            Locations = new HashSet<Location>();
            Organizations = new HashSet<Organization>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string CountryFlag { get; set; }
        public string CountryCode { get; set; }
        public bool IsDeleted { get; set; }
        public DateTime CreationDate { get; set; }
        public DateTime ModifiedDate { get; set; }

        public virtual ICollection<Location> Locations { get; set; }
        public virtual ICollection<Organization> Organizations { get; set; }
    }
}