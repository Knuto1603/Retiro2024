using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Threading;
using System.Web;

namespace Retiro.Modelo
{
    
    public class BD
    {

        public List<string> Tareas { get; set; }

        public BD()
        {
            Tareas = new List<string>();
        }
        public void AgregarTarea(string tarea)
        {
            Tareas.Add(tarea);
        }

        public List<string> ObtenerTareas()
        {
            return Tareas;
        }


    }

}