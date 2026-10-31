using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace PlacementDashboard
{
    public partial class Companies : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["PlacementDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCompanies();
            }
        }

        void LoadCompanies()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = @"
                    SELECT P.CompanyName,
                           S.StudentName,
                           S.EnrollmentNo,
                           P.JobRole,
                           P.PackageLPA
                    FROM Placements P
                    INNER JOIN Students S
                    ON P.StudentId = S.StudentId";

                SqlDataAdapter da = new SqlDataAdapter(query, con);

                DataTable dt = new DataTable();
                da.Fill(dt);

                gvCompanies.DataSource = dt;
                gvCompanies.DataBind();
            }
        }
    }
}