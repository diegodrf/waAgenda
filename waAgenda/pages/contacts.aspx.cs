using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waAgenda.pages
{
    public partial class contacts : System.Web.UI.Page
    {
        private string ConnectionString;

        public contacts()
        {
            ConnectionString = System
                 .Web
                 .Configuration
                 .WebConfigurationManager
                 .ConnectionStrings[Constants.ConnectionString]
                 .ConnectionString;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnSaveContact_Click(object sender, EventArgs e)
        {
            SaveContact(txbName.Text, txbEmail.Text, txbPhone.Text);
            ContactListGrid.DataBind();
        }

        private void SaveContact(string name, string email, string phone)
        {
            var query = @"INSERT INTO [Contacts] ([Name], [Email], [Phone]) VALUES (@name, @email, @phone);";

            var conn = new SqlConnection(ConnectionString);
            
            var command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue(nameof(name), name);
            command.Parameters.AddWithValue(nameof(email), email);
            command.Parameters.AddWithValue(nameof(phone), phone);

            conn.Open();
            command.ExecuteNonQuery();
            conn.Close();
        }
    }
}