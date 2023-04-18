using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ParonSoftSolutions.Models
{

    [Table("Employee")]
    public class Employee
    {
        public int Id { get; set; }
        [StringLength(100)]
        public string Name { get; set; }
        public DateTime? JoinDate { get; set; }
        [StringLength(100)]
        public string Designation { get; set; }
        public decimal? Salary { get; set; }
        public bool? IsBonusAdded { get; set; }

    }

    public class EmployeeViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string JoinDate { get; set; }
        public string Designation { get; set; }
        public decimal Salary { get; set; }
        public bool IsBonusAdded { get; set; }

    }
}