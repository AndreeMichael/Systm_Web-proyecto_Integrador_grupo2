using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


using System.Data;
using System.Data.SqlClient;
using System.Configuration;

using Entidades;
namespace AccesoDato
{
    public class Mantenimiento_Dato
    {


        Conexion con = new Conexion();


        public void Insert(Mantenimiento_Entidad cliente_entidad)
        {
            //    try
            //    {

            SqlCommand cmd = new SqlCommand("insert into Mantenimiento values (@id_tipomantenimiento,@cod_dep,@descripcion,@monto,@fecharegistro)", con.con);

            cmd.CommandType = CommandType.Text;






            cmd.Parameters.Add("@id_tipomantenimiento", SqlDbType.VarChar, 100).Value = cliente_entidad.idtipo;
           
            cmd.Parameters.Add("@cod_dep", SqlDbType.VarChar, 50).Value = cliente_entidad.cod_dep;

            cmd.Parameters.Add("@descripcion", SqlDbType.VarChar, 100).Value = cliente_entidad.descripcion;

            cmd.Parameters.Add("@monto", SqlDbType.VarChar, 50).Value = cliente_entidad.monto;


            cmd.Parameters.Add("@fecharegistro", SqlDbType.VarChar, 100).Value = cliente_entidad.fecha;






            con.con.Open();

            cmd.ExecuteNonQuery();

            con.con.Close();
            //}

            //catch (Exception ex)

            //{
            //    string error = "Error" + ex;

            //}


        }


        public DataTable BUSCAR(String Nombres)
        {



            string query = "SELECT        MANTENIMIENTO.id as Codigo, TIPO_MANTENIMIENTO.nombre as Tipo, DEPARTAMENTOS.Numero, MANTENIMIENTO.Descripcion, MANTENIMIENTO.Monto, MANTENIMIENTO.fechaRegistro FROM            TIPO_MANTENIMIENTO INNER JOIN  MANTENIMIENTO ON TIPO_MANTENIMIENTO.Id_tipoMantenimiento = MANTENIMIENTO.Id_tipoMantenimiento INNER JOIN  DEPARTAMENTOS ON MANTENIMIENTO.Cod_dep = DEPARTAMENTOS.Cod_dep   where  (departamentos.numero Like rtrim(@param)+'%')";
            SqlCommand cmd = new SqlCommand(query, con.con);
            cmd.Parameters.AddWithValue("@param", "%" + Nombres);


            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;





        }
        public DataTable LISTADOTIPO()
        {


            SqlDataAdapter da = new SqlDataAdapter("select id_tipomantenimiento,nombre from tipo_mantenimiento", con.con);
            da.SelectCommand.CommandType = CommandType.Text;
            DataTable dt = new DataTable();

            da.Fill(dt);

            return dt;



        }

        public DataTable LISTADODEPARTAMENTO()
        {


            SqlDataAdapter da = new SqlDataAdapter("select cod_dep,numero from departamentos ", con.con);
            da.SelectCommand.CommandType = CommandType.Text;
            DataTable dt = new DataTable();

            da.Fill(dt);

            return dt;



        }




    }

}
