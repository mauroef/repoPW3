using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Agencia_de_Turismo.clases
{
    public class PaqueteRepositorio
    {
        private TurismoEntities Contexto { get; set; }

        public PaqueteRepositorio()
        {
             this.Contexto = new TurismoEntities();
        }

        public List<Paquete> MostrarPaquetesDestacados()
        {
            return (from paquete in Contexto.Paquetes
                    where paquete.FechaInicio > DateTime.Now
                    //&& paquete.Destacado == true
                    //orderby paquete.FechaInicio descending
                    select paquete).ToList();
        }
    }
}