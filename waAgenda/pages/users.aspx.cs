using System;
using System.Web.UI.WebControls;
using waAgenda.utils;

namespace waAgenda
{
    public partial class users : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ListView1_ItemInserted(object sender, ListViewInsertedEventArgs e)
        {
            ExceptionHandlerHelper.Handle(e, litErrorMessage);
        }

        protected void ListView1_ItemUpdated(object sender, ListViewUpdatedEventArgs e)
        {
            ExceptionHandlerHelper.Handle(e, litErrorMessage);
        }
    }
}