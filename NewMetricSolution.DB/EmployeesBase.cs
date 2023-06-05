using Entities;
using Microsoft.EntityFrameworkCore;
using NewMetricSolution.DB.DBContexts;
using NewMetricSolution.DB.TreeStructure;
using static NewMetricSolution.DB.TreeStructure.TreeExtensions;

namespace NewMetricSolution.DB
{
    public class EmployeesBase : IEmployeesBase
    {
        private readonly ApplicationDbContext _databaseContext;


        public EmployeesBase(ApplicationDbContext databaseContext)
        {
            _databaseContext = databaseContext;

        }


        public List<ITree<Department>> CreateComplexObjectForView()
        {
            List<Department> all = _databaseContext.Departments.Include(x => x.SuperiorDepartment).AsNoTracking().OrderBy(x => x.Name).ToList();
            ITree<Department> virtualRootNode = all.ToTree((parent, child) => child.SuperiorDepartmentId == parent.Id);
            List<ITree<Department>> _treeOfDepartments = virtualRootNode.Children.ToList();

            return _treeOfDepartments;
        }

        private List<T> GetParents<T>(ITree<T> node, List<T> parentNodes = null) where T : class
        {
            while (true)
            {
                parentNodes ??= new List<T>();
                if (node?.Parent?.Data == null) return parentNodes;
                parentNodes.Add(node.Parent.Data);
                node = node.Parent;
            }
        }


        public void IncreaseNumberOfEmployees(string department)
        {
            List<Department> all = _databaseContext.Departments.Include(x => x.SuperiorDepartment).OrderBy(x => x.Name).ToList();
            ITree<Department> virtualRootNode = all.ToTree((parent, child) => child.SuperiorDepartmentId == parent.Id);
            List<ITree<Department>> flattenedListOfDepartmentNodes = virtualRootNode.Children.Flatten(node => node.Children).ToList();
            ITree<Department> departmentNode = flattenedListOfDepartmentNodes.First(node => node.Data.Name == department);
            List<Department> parents = GetParents(departmentNode);
            parents.ForEach(node => node.Employees++);
            departmentNode.Data.Employees++;
            _databaseContext.SaveChanges();

        }

    }
}
