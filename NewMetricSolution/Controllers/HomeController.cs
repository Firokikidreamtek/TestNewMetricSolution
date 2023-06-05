using Microsoft.AspNetCore.Mvc;
using NewMetricSolution.DB;
using System.Reflection;

namespace NewMetricSolution.Controllers
{
    public class HomeController : Controller
    {
        private readonly IEmployeesBase _context;


        public HomeController(IEmployeesBase context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            var values  = _context.CreateComplexObjectForView();
            return View(values);
        }

        public IActionResult IncreaseNumberOfEmployees(string department)
        {
            _context.IncreaseNumberOfEmployees(department);
            return RedirectToAction("Index");
        }
    }
}