﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace matrimonial_project.View
{
    public partial class Matrimonialhome : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
            if ((Session["UserName"] != null) && !string.IsNullOrEmpty(Session["UserName"].ToString()))
            {               
                string UserName_ = (string)(Session["UserName"]);
                UserName.Text = UserName_.ToString();
            }
            else
                Response.Redirect("../Home.aspx", false);
        }

        
    }
}