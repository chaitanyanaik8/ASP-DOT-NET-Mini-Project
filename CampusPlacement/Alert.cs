﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace CampusPlacement
{
    public class Alert
    {
        public Alert()
        {
        }
        public static void Show(string message)
        {
            // Cleans the message to allow single quotation mark.
            string strCleanMessage = message.Replace("'", "\'");
            string script = "<script type='text/javascript'>alert('" + strCleanMessage + "');</script";

            // Gets the executing web page
            Page page = HttpContext.Current.CurrentHandler as Page;

            // Check if the handler is a page and that the script is not already on the page
            if (page != null && !page.ClientScript.IsClientScriptBlockRegistered("alert"))
            {
                page.ClientScript.RegisterClientScriptBlock(typeof(Alert), "alert", script);
            }
        }
    }
}