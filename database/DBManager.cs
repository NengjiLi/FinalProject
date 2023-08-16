using System.Net.NetworkInformation;
using MySqlConnector;
using ORM;

namespace DB
{
    public class DBManager
    {
        public MySqlConnection connect(string server, string db, string user,string pass)
        {
            MySqlConnectionStringBuilder builder = new MySqlConnectionStringBuilder()
            {
                Server = server,
                Database = db,
                UserID = user,
                Password = pass,
            };
            MySqlConnection connection = new MySqlConnection(builder.ConnectionString);
            return connection;
        }

        public bool disconnect() { return false; }
        public bool isConnected() { return false;}

        public Object getObject(MySqlConnection connection, string objectType, string key, string value ) 
        { 
            connection.Open();
            string sql = "Select * from" + objectType + "where" + key + " = " + value;
            MySqlCommand command = new MySqlCommand(sql, connection);
            MySqlDataReader reader = command.ExecuteReader();
            Members members = new Members(0,"","",5555555,"","");

            while (reader.Read())
            {
                int id = reader.GetInt32(0);
                string firstname = reader.GetString(1);
                string lastname = reader.GetString(2);
                int number = reader.GetInt32(3);
                string email= reader.GetString(4);
                string type= reader.GetString(5);

                members = new Members(id, firstname, lastname, number, email, type);
            }

            return members;
       
        } 
        public static bool removeObject(Object obj) { return false; }   
    }
}