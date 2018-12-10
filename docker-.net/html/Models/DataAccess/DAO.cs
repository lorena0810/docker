using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace Agenda.Models.DataAccess
{
    public class DAO
    {
      
        static private string server = "localhost";
        static private string database = "mydb";
        static private string uid = "root";
        static private string password = "";
        static private string connectionString = "SERVER=" + server + ";" + "DATABASE=" + database + ";" + "UID=" + uid + ";" + "PASSWORD=" + password + ";" + "SslMode=none";
        static MySqlConnection conn = null;
        //Constructor
        public DAO()
        {
            //Initialize();
        }
      
        
        static public bool saveData(string nombreIn, string correoIn)
        {
            string query = "INSERT INTO solicitudes (nombre, correo) VALUES('"+nombreIn+"', '"+correoIn+"')";
            conn = new MySqlConnection(connectionString);

            conn.Open();
            MySqlCommand cmd = new MySqlCommand(query, conn);

            //Execute command
            cmd.ExecuteNonQuery();
            //close connection
            conn.Close();



            return true;

        }
       

    }
}