using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HMS_Project
{
    public partial class Book : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{

            //    LoadRecord();
            //}
            ClientScriptManager cs = Page.ClientScript;

            if (!IsPostBack)
                {

                    LoadRecord();
                }
            cs.RegisterForEventValidation("yourUniqueArgument");
        }

        void clear()
        {
            Fname.Text = "";
            Lname.Text = "";
            mobileno.Text = "";
            //email.Text = "";
            DropDownList1.SelectedIndex = -1;
            adult.Text = "";
            child.Text = "";

            doa.Text = "";
            nod.Text = "";
        }
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-RNP5I8L\MSSQLSERVER01;Initial Catalog=sqlclass;Integrated Security=True");

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("insert into hostel values ('" + Fname.Text + "','" + Lname.Text + "','" + mobileno.Text + "','" + DropDownList1.SelectedValue + "','" + adult.Text + "','" + child.Text + "','" + doa.Text + "','" + nod.Text + "')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
            LoadRecord();
            clear();
        }

        protected void LoadRecord()
        {


            SqlCommand comm = new SqlCommand("select * from hostel", con);
            SqlDataAdapter da = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Fname.Text = "";
            Lname.Text = "";
            mobileno.Text = "";
            DropDownList1.ClearSelection();
            adult.Text = "";
            child.Text = "";
            //DropDownList1.ClearSelection() ;
            //DropDownList2.ClearSelection();
            doa.Text = "";
            nod.Text = "";
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;

            LoadRecord();


        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            

            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string fname = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string lname = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string mobileno = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string room = ((DropDownList)GridView1.Rows[e.RowIndex].FindControl("DropDownList2")).SelectedValue;
            string Noa = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string noc = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            string Dateof_arrival = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
            string Nod = ((TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]).Text;

            con.Open();
            SqlCommand comm = new SqlCommand("UPDATE hostel SET First_Name = @FirstName, Last_name = @LastName, mobile_number = @MobileNumber, Room_type = @RoomType, Noa = @Noa, noc = @Noc, Dateof_arrival = @DateOfArrival, nod = @Nod WHERE h_id = @ID", con);

            comm.Parameters.AddWithValue("@FirstName", fname);
            comm.Parameters.AddWithValue("@LastName", lname);
            comm.Parameters.AddWithValue("@MobileNumber", mobileno);
            comm.Parameters.AddWithValue("@RoomType", room);
            comm.Parameters.AddWithValue("@Noa", Noa);
            comm.Parameters.AddWithValue("@Noc", noc);
            comm.Parameters.AddWithValue("@DateOfArrival", Dateof_arrival);
            comm.Parameters.AddWithValue("@Nod", Nod);
            comm.Parameters.AddWithValue("@ID", id);

            comm.ExecuteNonQuery();
            GridView1.EditIndex = -1;

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
            LoadRecord();
            con.Close();

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            LoadRecord();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            con.Open();
            SqlCommand comm = new SqlCommand("delete hostel where h_id= '" + id + "'", con);
            comm.ExecuteNonQuery();
            con.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully deleted');", true);
            GridView1.EditIndex = -1;
            LoadRecord();

        }

        
    }
}