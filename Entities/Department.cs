
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Entities
{
    public class Department
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public Guid? SuperiorDepartmentId { get; set; }
        public Department? SuperiorDepartment { get; set; }
        public ICollection<Department>? SubDepartments { get; } = new List<Department>();
        public int Employees { get; set; }
    }
}
