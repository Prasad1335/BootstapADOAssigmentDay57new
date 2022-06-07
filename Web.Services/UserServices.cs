using System.Data;
using System.Data.SqlClient;
using Web.Services.Models;
using Web.Services.Utilities;

namespace Web.Services
{
    public class UserServices
    {
        public User LoginDeatils(User user)
        {
            using (var connection = new SqlConnection(WebConfigHelper.ConnectionString))
            {
                const string cmdText = "User_IdPassChecking";

                using (var command = new SqlCommand(cmdText, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@UserName", user.UserName);
                    command.Parameters.AddWithValue("@Password", user.Password);

                    connection.Open();

                    using (var reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            var users = new User()
                            {
                                Id = (int)reader["Id"],
                                UserName = (string)reader["UserName"],
                                Password = (string)reader["Password"]
                            };

                            return users;
                        }
                    }
                    return null;
                }
            }
        }
    }
}
