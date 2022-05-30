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
    public class Incidente_Dato
    {


        Conexion con = new Conexion();


        public void Insert(Incidente_Entidad cliente_entidad)
        {
            //    try
            //    {

            SqlCommand cmd = new SqlCommand("insert into Incidente values (@cod_dep,@tipo_incidente,@descripcion,@fecharegistro)", con.con);

            cmd.CommandType = CommandType.Text;






            cmd.Parameters.Add("@cod_dep", SqlDbType.VarChar, 100).Value = cliente_entidad.cod_dep;

             cmd.Parameters.Add("@tipo_incidente", SqlDbType.VarChar, 50).Value = cliente_entidad.idtipo;

            cmd.Parameters.Add("@descripcion", SqlDbType.VarChar, 100).Value = cliente_entidad.descripcion;




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



            string query = "SELECT        INCIDENTE.id as Codigo, DEPARTAMENTOS.Numero as N_Departamento, TIPO_INCIDENTE.NOMBRE as Tipo_Incidente, INCIDENTE.Descripcion, INCIDENTE.FechaRegistro FROM            INCIDENTE INNER JOIN TIPO_INCIDENTE ON INCIDENTE.id_tipo = TIPO_INCIDENTE.ID_TIPO INNER JOIN  DEPARTAMENTOS ON INCIDENTE.Cod_dep = DEPARTAMENTOS.Cod_dep  where  (departamentos.numero Like rtrim(@param)+'%')";
            SqlCommand cmd = new SqlCommand(query, con.con);
            cmd.Parameters.AddWithValue("@param", "%" + Nombres);


            SqlDataAdapter da = new SqlDataAdapter(cmd);
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


        public DataTable LISTADOTIPO()
        {


            SqlDataAdapter da = new SqlDataAdapter("select id_tipo,nombre from tipo_incidente ", con.con);
            da.SelectCommand.CommandType = CommandType.Text;
            DataTable dt = new DataTable();

            da.Fill(dt);

            return dt;



        }





    }

}
