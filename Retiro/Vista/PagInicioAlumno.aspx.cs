﻿using System;
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
using Retiro.Controlador;



namespace Retiro.Vista
{
    public partial class WebForm1 : System.Web.UI.Page

    {
        Retiro.Controlador.Control control;
        protected void Page_Load(object sender, EventArgs e)

        {
            Retiro.Modelo.BD modelo = new Retiro.Modelo.BD();
            control = new Retiro.Controlador.Control(modelo);

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
            Response.Redirect("SolicitarRetiro.aspx");
        }

        protected void Unnamed1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void Cursos_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            //e.Command.CommandText = "SELECT * FROM Alumno ";
        }

        protected void ListaSemestre(object sender, EventArgs e)
        {

        }
    }
}