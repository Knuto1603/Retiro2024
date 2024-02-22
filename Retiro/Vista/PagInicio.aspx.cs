using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Diagnostics;



namespace Retiro.Vista
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ActualizarTextoDesdeBaseDeDatos();
                Fecha.Text = DateTime.UtcNow.ToString();
                SemestreAct.Text = "2023-II";
            }
        }

        public void ActualizarTextoDesdeBaseDeDatos()
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["baseDatos"].ConnectionString; //Cadena de Conexion
            string query = "SELECT * FROM Alumno WHERE codUniversitario = '0512021002'"; // Consulta a realizar

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand();
                connection.Open();
                cmd.CommandText = query;
                cmd.CommandType = CommandType.Text;
                cmd.Connection = connection;
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    Console.WriteLine("Exito");
                    Alumno.Text = reader["Nombre"].ToString() + " " + reader["ApPaterno"].ToString() + " " + reader["ApMaterno"].ToString();
                    EscProfecional.Text = reader["EscProfesional"].ToString();
                }
                else
                {
                    Console.WriteLine("Fracaso");
                }
            }
        }

    }
}
