using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web.Services;
using Web.Services.Utilities;

namespace BootstapADOAssigmentDay57
{
    public partial class DeleteJob2 : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            ShowDataToDelete();
        }

        protected void ButtonDelete_OnClick(object sender, EventArgs e)
        {
            DeleteData();
        }

        private void ShowDataToDelete()
        {
            var idText = Request.QueryString["id"];

            try
            {
                var id = int.Parse(idText);

                var jobService = new JobServices();

                var job = jobService.GetById(id);

                if (job == null)
                {
                    LabelStatus.ShowStatusMessage("Specified Id not found in database!");
                    return;
                }

                TextBoxjobTitle.Text = job.jobTitle;
                TextBoxnumberOfJobPosition.Text = job.numberOfJobPosition;
                TextBoxlocationAddress.Text = job.locationAddress;
                TextBoxexpectedSalaryRange.Text = job.expectedSalaryRange;
                

            }
            catch (Exception e)
            {
                LabelStatus.ShowStatusMessage("Id parameter not found!");
            }
        }

        private void DeleteData()
        {
            var idText = Request.QueryString["id"];
            var id = int.Parse(idText);

            var jobService = new JobServices();

            try
            {
                jobService.Delete(id);

                LabelStatus.ShowStatusMessage("job record successfully deleted!");
            }
            catch (SqlException sqlException)
            {
                Console.WriteLine(sqlException);
                LabelStatus.ShowStatusMessage("Failed to delete job record!  Please contact database admin!");
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                LabelStatus.ShowStatusMessage("Failed to delete job record!");
            }
        }
    }
}
  
