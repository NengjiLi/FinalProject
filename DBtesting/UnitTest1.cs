using ORM;

using DB;
using System.Runtime.ExceptionServices;

namespace DBtesting
{
    public class DBtesting
    {
        [SetUp]
        public void Setup()
        {
        }

        [Test]
        public void connectTest()
        {
            string server = "localhost";
            string db = "gymdb";
            string user = "root";
            string password = "2003";
            DBManager manager = new DBManager();
            Assert.IsNotNull(manager.connect(server, db, user, password));  
        }

        public void getObjectTest()
        {
            string server = "localhost";
            string db = "gymdb";
            string user = "root";
            string password = "2003";
            DBManager manager = new DBManager();
            MySqlConnector.MySqlConnection connection = manager.connect(server, db, user, password);

            Members members=(Members)manager.getObject(connection, "MemberID", "Email", "1");

        
        }
    }
}