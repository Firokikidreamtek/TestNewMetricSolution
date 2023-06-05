using Entities;
using NewMetricSolution.DB.TreeStructure;

namespace NewMetricSolution.DB
{
    public interface IEmployeesBase
    {
        public List<ITree<Department>> CreateComplexObjectForView();
        public void IncreaseNumberOfEmployees(string department);

    }
}
