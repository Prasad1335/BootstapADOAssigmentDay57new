using System;
using System.Data.SqlClient;
using Web.Services;
using Web.Services.Utilities;

namespace BootstapADOAssigmentDay57
{
    public partial class DeleteEmp2 : System.Web.UI.Page
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

                var empService = new EmployeeServices();

                var emp = empService.GetById(id);

                if (emp == null)
                {
                    LabelStatus.ShowStatusMessage("Specified Id not found in database!");
                    return;
                }

                TextBoxEmployeeNumber.Text = emp.empNumber.ToString();
                TextBoxEmployeeName.Text = emp.empName;
                RadioButtonGender.Text = emp.empGender;
                TextBoxAddress.Text = emp.empAddress;
                TextBoxDepartment.Text = emp.empDepartment;
                TextBoxPosition.Text = emp.empPosition;
                TextBoxDoj.Text = emp.empDOJ.ToString();
                TextBoxEmail.Text = emp.empEmail;

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

            var empService = new EmployeeServices();

            try
            {
                empService.Delete(id);

                LabelStatus.ShowStatusMessage("Employee record successfully deleted!");
            }
            catch (SqlException sqlException)
            {
                Console.WriteLine(sqlException);
                LabelStatus.ShowStatusMessage("Failed to delete Employee record!  Please contact database admin!");
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                LabelStatus.ShowStatusMessage("Failed to delete User record!");
            }
        }
    }
}