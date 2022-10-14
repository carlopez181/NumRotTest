using Dapper;
using Microsoft.AspNetCore.Mvc;
using MySql.Data.MySqlClient;
using System.Data.Common;

namespace NumRotTest.Controllers
{
    public class MainController : Controller
    {
        private string _connection = @"Server=localhost;Database=numrottest;Uid=root;";

        public IEnumerable<Models.User> GetUsers()
        {
            IEnumerable<Models.User>? usersList = null;
            using (MySqlConnection db = new MySqlConnection(_connection))
            {
                var sql = "SELECT * FROM users";
                usersList = db.Query<Models.User>(sql);
            }
            return usersList;
        }

        public int CreateUser(Models.User user) 
        {
            int result = 0;
            using (MySqlConnection db = new MySqlConnection(_connection))
            {
                var sql = "INSERT INTO users (id, docNumber, firstName, secondName, firstSurname, secondSurname, phone, email, address, age, gender) VALUES (@id, @docNumber, @firstName, @secondName, @firstSurname, @secondSurname, @phone, @email, @address, @age, @gender)";
                result = db.Execute(sql, user);
            }
            return result;
        }

        public int UpdateUser(Models.User user)
        {
            int result = 0;
            using (MySqlConnection db = new MySqlConnection(_connection))
            {
                var sql = "UPDATE users SET docNumber=@docNumber, firstName=@firstName, secondName=@secondName, firstSurname=@firstSurname, secondSurname=@secondSurname, phone=@phone, email=@email, address=@address, age=@age, gender=@gender WHERE id=@id";
                result = db.Execute(sql, user);
            }
            return result;
        }

        public int DeleteUser(int id)
        {
            int result = 0;
            using (MySqlConnection db = new MySqlConnection(_connection))
            {
                var sql = "DELETE from users WHERE id=@id";
                Models.User user = new Models.User();
                user.id = id;
                result = db.Execute(sql, user);
            }
            return result;
        }
    }
}
