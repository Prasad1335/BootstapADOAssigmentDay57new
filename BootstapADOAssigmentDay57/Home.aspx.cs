using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web.Services;
using Web.Services.Models;
using Web.Services.Utilities;

namespace BootstapADOAssigmentDay57
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void UserLogIn()
        {
            var userServices = new UserServices();
            try
            {
                var user = new User();

                user.UserName = TextBoxUserName.Text;
                user.Password = TextBoxPassword.Text;

                User u = userServices.LoginDeatils(user);

                if(u != null)
                {
                   
                    Response.Redirect("viewAllEmp.aspx",true);
                }
                else
                {
                    LabelStatus.ShowStatusMessage("User Record not Found...");
                }
            }
          
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                LabelStatus.ShowStatusMessage("failed to user record...");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UserLogIn();
        }
    }
}