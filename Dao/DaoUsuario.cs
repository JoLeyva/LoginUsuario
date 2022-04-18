using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using WAUsuario.Entidades;
namespace WAUsuario.Dao
{
    public class DaoUsuario
    {
        private SqlConnection conn = new SqlConnection(@"Server=JOELPC\SQLEXPRESS; Database=BDUsuario; Integrated Security=true");
        public DataTable IniciarSesion(Usuario usu)
        {
            SqlDataAdapter da = new SqlDataAdapter("select nombre, contrasenia from usuario where nombre=@nomusu and contrasenia=@conusu", conn);
            da.SelectCommand.Parameters.AddWithValue("@nomusu", usu.nombre);
            da.SelectCommand.Parameters.AddWithValue("@conusu", usu.contrasenia);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }
}