﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Agencia_de_Turismo.Admin.paquetes
{
    public partial class nuevo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}
/* 
 protected void UploadButton_Click(object sender, EventArgs e)
{
    if(FileUploadControl.HasFile)
    {
        try
        {
            if(FileUploadControl.PostedFile.ContentType == "image/jpeg")
            {
                if(FileUploadControl.PostedFile.ContentLength < 102400)
                {
                    string filename = Path.GetFileName(FileUploadControl.FileName);
                    FileUploadControl.SaveAs(Server.MapPath("~/") + filename);
                    StatusLabel.Text = "Upload status: File uploaded!";
                }
                else
                    StatusLabel.Text = "Upload status: The file has to be less than 100 kb!";
            }
            else
                StatusLabel.Text = "Upload status: Only JPEG files are accepted!";
        }
        catch(Exception ex)
        {
            StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
        }
    }
}

 
 */