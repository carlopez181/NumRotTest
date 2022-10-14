using Dapper;
using Microsoft.AspNetCore.Mvc;
using MySql.Data.MySqlClient;
using MySqlX.XDevAPI.Common;
using NumRotTest.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace NumRotTest.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsersController : ControllerBase
    {
        private MainController mainController = new MainController();
        // GET: api/<UsersController>
        [HttpGet]
        public IActionResult Get()
        {
            IEnumerable<Models.User> usersList = mainController.GetUsers();
            return Ok(usersList);
        }

        // GET api/<UsersController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<UsersController>
        [HttpPost]
        public IActionResult Post([FromBody] Models.User user)
        {
            int result = 0;
            result = mainController.CreateUser(user);
            if (result == 1)
            {
                return Ok("Registro Exitoso");
            }
            else {
                return BadRequest("Error");
            }
        }

        [HttpPost]
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

        // PUT api/<UsersController>/5
        [HttpPut("{id}")]
        public IActionResult Put(int id, [FromBody] Models.User user)
        {
            int result = 0;
            user.id = id;
            result = mainController.UpdateUser(user);
            if (result == 1)
            {
                return Ok("Actualización Exitosa");
            }
            else
            {
                return BadRequest("Error");
            }
        }

        // DELETE api/<UsersController>/5
        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            int result = 0;
            result = mainController.DeleteUser(id);
            if (result == 1)
            {
                return Ok("El usuario se eliminó exitosamente");
            }
            else
            {
                return BadRequest("Error");
            }
        }
    }
}
