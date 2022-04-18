using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using WAUsuario.Dao;
using WAUsuario.Entidades;

namespace WAUsuario
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Usuario usu = new Usuario();
            DaoUsuario dao = new DaoUsuario();
            usu.nombre = txtUsuario.Text.Trim();
            usu.contrasenia = txtContrasenia.Text.Trim();
            DataTable dt = new DataTable();
            dt = dao.IniciarSesion(usu);
            if (dt.Rows.Count == 0)
            {
                lblRpta.Text = "Usuario o Contraseña Incorrecta!";
                txtUsuario.Text = string.Empty;
                txtContrasenia.Text = string.Empty;
                txtUsuario.Focus();
            }
            else
            {
                Session["sesionusuario"] = txtUsuario.Text.Trim();
                Response.Redirect("Default");
            }
        }
    }
}