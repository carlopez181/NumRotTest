using Microsoft.AspNetCore.Mvc;
using NumRotTest.Models;
using System.Diagnostics;

namespace NumRotTest.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private MainController mainController = new MainController();

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult CreateUser(Models.User user)
        {
            int result = 0;
            result = mainController.CreateUser(user);
            if (result == 1)
            {
                return Ok("Registro Exitoso");
            }
            else
            {
                return BadRequest("Error");
            }
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}