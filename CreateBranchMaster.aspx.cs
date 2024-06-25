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
    public partial class CreateBranchMaster : System.Web.UI.Page
    {
        BranchBusiness branchBusiness;
        protected void Page_Load(object sender, EventArgs e)
        {
            branchBusiness = new BranchBusiness();
        }

        protected void btnAddBranch_Click(object sender, EventArgs e)
        {
            var branchModel = new BranchModel()
            {
                BranchName = txtBranchName.Text,
                BranchIsActive = ddlBranchActive.SelectedValue,
                DebitAccount = Convert.ToInt16(txtDebitAccount.Text),
                CreditAccount = Convert.ToInt16(txtCreditAccount.Text)
                
            };
            branchBusiness.AddBranchMaster(branchModel);
        }
    }
}