using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WAUsuario.Entidades
{
    public class Usuario
    {
        public int idusuario { get; set; }
        public string nombre { get; set; }
        public string contrasenia { get; set; }

        public Usuario(){
}

        public Usuario(int idusuario, string nombre, string contrasenia)
        {
            this.idusuario = idusuario;
            this.nombre = nombre;
            this.contrasenia = contrasenia;
        }
    }
}