using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;

namespace waAgenda.utils
{
    public class ExceptionHandlerHelper
    {
        /// <summary>
        /// Catch custom EventArgs produced by SQLCommands
        /// </summary>
        /// <param name="eventArg"></param>
        public static void Handle(dynamic eventArg, ITextControl control)
        {
            if (eventArg.Exception != null)
            {
                control.Text = $"[{eventArg.Exception.GetType()}] {eventArg.Exception.Message}";
                eventArg.ExceptionHandled = true;
            }

            control.Text = new StringBuilder()
            .Append("<script type=\"text/javascript\">")
            .Append($"alert(\"[{eventArg.Exception.GetType()}]\");")
            .Append("</script>")
            .ToString();
        }
    }
}