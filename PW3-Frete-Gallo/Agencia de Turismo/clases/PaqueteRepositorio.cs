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

        public int CrearPaquete(Paquete paquete)
        {
            Contexto.Paquetes.Add(paquete);

            Contexto.SaveChanges();

            return paquete.Id;
        }

        public List<Paquete> ObtenerListaDePaquetes()
        {
            var paquetes = (from paquete in Contexto.Paquetes
                            orderby paquete.FechaInicio descending

                            select paquete).ToList();


            return paquetes;
        }



        public object obtenerPaquete(int idpaq)
        {
            var _paquetes = (from p in Contexto.Paquetes
                             where p.Id == idpaq
                             select p).FirstOrDefault();

            return _paquetes;
        }

        public void EliminarPaquete(int idpaq)
        {
            var anularReservas = (from r in Contexto.Reservas
                                  where r.IdPaquete == idpaq
                                  select r);


            foreach (Reserva r in anularReservas)
            {
                Contexto.Reservas.Remove(r);
            }

            var anularPaquete = (from p in Contexto.Paquetes
                                 where p.Id == idpaq
                                 select p).FirstOrDefault();

            Contexto.Paquetes.Remove(anularPaquete);

            Contexto.SaveChanges();

        }

        public List<Paquete> ObtenerListaDePaquetesDestacados()
        {
            return (from paquete in Contexto.Paquetes
                    //where paquete.FechaInicio > DateTime.Now
                    //&& paquete.Destacado == true
                    //orderby paquete.FechaInicio descending
                    select paquete).ToList();
        }
    }
}