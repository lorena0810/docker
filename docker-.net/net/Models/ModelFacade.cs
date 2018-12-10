using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Agenda.Models.DataAccess;
using MySql.Data.MySqlClient;

namespace Agenda.Models
{
    public class ModelFacade
    {
        public bool AddInfo(string nombreIn, string correoIn)
        {
            DAO dao = new DAO();
            DAO.saveData(nombreIn, correoIn);
            return true;
        }
    
    }
}