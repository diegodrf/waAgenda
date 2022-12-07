using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waAgenda
{
    public partial class users : System.Web.UI.Page
    {

        private void UpdateControlName(string id, string newName)
        {
            foreach (Button component in FindControl(id).Controls)
            {
                component.Text = newName;
                component.DataBind();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //UpdateControlName("DeleteButton", "Remover");
        }
    }
}