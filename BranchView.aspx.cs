using SchoolManagement.BAL.Operations;
using SchoolManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolManagement.Web
{
    public partial class BranchView : System.Web.UI.Page
    {
        BranchBusiness branchBusiness;
        protected void Page_Load(object sender, EventArgs e)
        {
            branchBusiness = new BranchBusiness();
            if (!IsPostBack)
            {
                GetData();
            }
        }

        private void GetData()
        {
            System.Data.DataTable dt = branchBusiness.GetBranches();
            grdBranch.DataSource = dt;
            grdBranch.DataBind();
        }

        protected void DeleteBranch(object sender, GridViewDeleteEventArgs e)
        {
            int branchId = Convert.ToInt32(grdBranch.DataKeys[e.RowIndex].Value);
            branchBusiness.DeleteBranch(branchId);
            GetData();
        }

        protected void EditBranch(object sender, GridViewEditEventArgs e)
        {
            grdBranch.EditIndex = e.NewEditIndex;
            GetData();
        }

        protected void CancelBranchEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdBranch.EditIndex = -1;
            GetData();
        }

        protected void UpdateBranch(object sender, GridViewUpdateEventArgs e)
        {

            string branchName = (grdBranch.Rows[e.RowIndex].FindControl("txtBranchName") as TextBox).Text;
            string branchStatus = (grdBranch.Rows[e.RowIndex].FindControl("txtActive") as TextBox).Text;
            int creditAccount = Convert.ToInt32((grdBranch.Rows[e.RowIndex].FindControl("txtCreditAccount") as TextBox).Text);
            int debitAccount = Convert.ToInt32((grdBranch.Rows[e.RowIndex].FindControl("txtDebitAccount") as TextBox).Text);
            int branchId = Convert.ToInt32(grdBranch.DataKeys[e.RowIndex].Value);
            BranchModel branchModel = new BranchModel
            {
                BranchId = Convert.ToInt32(grdBranch.DataKeys[e.RowIndex].Value),
                BranchName = branchName,
                BranchIsActive = branchStatus,
                CreditAccount = creditAccount,
                DebitAccount = debitAccount

            };
            branchBusiness.UpdateBranchMaster(branchModel);
            grdBranch.EditIndex = -1;
            GetData();
        }
    }
}