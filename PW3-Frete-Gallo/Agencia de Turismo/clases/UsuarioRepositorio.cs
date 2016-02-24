using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Agencia_de_Turismo.clases
{
    public class UsuarioRepositorio
    {
        private TurismoEntities Contexto { get; set; }

        public UsuarioRepositorio()
        {
            this.Contexto = new TurismoEntities();
        }

        public int CrearUsuario(Usuario u)
        {
            Contexto.Usuarios.Add(u);
            Contexto.SaveChanges();

            return u.Id;
        }

        public Usuario ObtenerUsuario(string email, string contrasenia)
        {
            var u = (from a in Contexto.Usuarios
                     where a.Email == email && a.Contrasenia == contrasenia
                     select a).FirstOrDefault();

            return u;
        }
    }
}