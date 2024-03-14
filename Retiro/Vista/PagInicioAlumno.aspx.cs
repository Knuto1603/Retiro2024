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
using Retiro.Modelo;




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

                // Configuración inicial


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
                    SemestreAct.Text = reader["cicloAcademico"].ToString();
                }
                else
                {
                    Console.WriteLine("Fracaso");
                }
            }

        }

        protected void DetalleAlumno(object sender, EventArgs e)
        {
            //Response.Redirect("SolicitarRetiro.aspx");
        }

        protected void Unnamed1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
        protected void GridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DetalleCommand")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);


                GridView gridView = (GridView)sender;
                // Puedes acceder a los datos de la fila usando el índice de la fila (rowIndex)
                string id = gridView.Rows[rowIndex].Cells[0].Text;
                string codCurso = gridView.Rows[rowIndex].Cells[1].Text;
                string nombre = gridView.Rows[rowIndex].Cells[2].Text;
                string creditos = gridView.Rows[rowIndex].Cells[3].Text;

                // Puedes utilizar los datos según tus necesidades
                // Por ejemplo, imprimirlos en la consola para verificar
                Response.Redirect("SolicitarRetiro.aspx");
                Console.WriteLine($"ID: {id}, Código Curso: {codCurso}, Nombre: {nombre}, Créditos: {creditos}");

                // Luego, puedes realizar cualquier acción adicional que necesites
            }
        }


        protected void Cursos_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            //e.Command.CommandText = "SELECT * FROM Alumno ";
        }

        protected void ListaSemestre(object sender, EventArgs e)
        {

        }

        protected void btnClosePopup_Click(object sender, EventArgs e)
        {
            // Puedes realizar acciones al cerrar el popup si es necesario
        }

    }
}
