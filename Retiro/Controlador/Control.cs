using Retiro.Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;

namespace Retiro.Controlador
{
    public class Control

    {
        private Retiro.Modelo.BD modelo;

        public Control(BD modelo)
        {
            this.modelo = modelo;
        }
        public void AgregarTarea(string tarea)
        {
            modelo.AgregarTarea(tarea);
        }

        public List<string> ObtenerTareas()
        {
            return modelo.ObtenerTareas();
        }
    }
    

}