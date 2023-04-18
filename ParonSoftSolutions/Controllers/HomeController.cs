using ParonSoftSolutions.DAL;
using ParonSoftSolutions.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ParonSoftSolutions.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public JsonResult GetEmployeesList()
        {
            try
            {
                DataSet DS = new DataSet();

                DS = SqlHelper.ExecuteDataset(Constants.ConnectionString, CommandType.Text, @"EXEC SP_Employees_List ");

                List<EmployeeViewModel> employeeList = new List<EmployeeViewModel>();

                foreach (DataRow dr in DS.Tables[0].Rows)
                {
                    employeeList.Add(
                    new EmployeeViewModel
                    {
                        Id = Convert.ToInt32(dr["Id"]),
                        Name = dr["Name"].ToString(),
                        JoinDate = dr["JoinDate"].ToString(),
                        Designation = dr["Designation"].ToString(),
                        Salary = Convert.ToDecimal(dr["Salary"]),
                    });
                }
                var lst = employeeList.ToArray();

                return Json(lst, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { Status = "ERROR", ex.Message }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpGet]
        public JsonResult GetEmployeesListById(int empID)
        {
            try
            {
                DataSet DS = new DataSet();
                DS = SqlHelper.ExecuteDataset(Constants.ConnectionString, CommandType.Text, @"EXEC SP_GetEmployeesListById  @Id = " + empID + " ");

                List<EmployeeViewModel> employeeList = new List<EmployeeViewModel>();

                foreach (DataRow dr in DS.Tables[0].Rows)
                {
                    employeeList.Add(
                    new EmployeeViewModel
                    {
                        Id = Convert.ToInt32(dr["Id"]),
                        Name = dr["Name"].ToString(),
                        JoinDate = dr["JoinDate"].ToString(),
                        Designation = dr["Designation"].ToString(),
                        Salary = Convert.ToDecimal(dr["Salary"]),
                    });
                }

                string Ids = "";
                string duplicateIds = "";
                string salary = "";

                foreach (var item in employeeList)
                {
                    if (!Ids.Contains(item.Id.ToString()))
                    {
                        if (Ids != "")
                        {
                            Ids += ",";
                        }
                        Ids += item.Id.ToString();

                    }
                    else
                    {
                        if (duplicateIds != "")
                        {
                            duplicateIds += ",";
                        }
                        duplicateIds += item.Id.ToString();
                        if (salary != "")
                        {
                            salary += ",";
                        }
                        salary += item.Salary.ToString();
                    }
                }
                if (duplicateIds != "")
                {
                    string[] IDs = duplicateIds.Split(',');
                    string[] getIds = IDs.Distinct().ToArray();
                    int reqId = 0;

                    decimal amount = 0;
                    string[] val = salary.Split(',');

                    for (int j = 0; j < getIds.Length; j++)
                    {
                        reqId = Convert.ToInt32(getIds[j]);
                        amount = Convert.ToDecimal(val[j]);
                        var itemToRemove = employeeList.Single(r => r.Id == reqId && r.Salary != amount);
                        employeeList.Remove(itemToRemove);
                    }
                }
                var lst = employeeList.ToArray();
                return Json(lst, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { Status = "ERROR", ex.Message }, JsonRequestBehavior.AllowGet);
            }
        }


    }
}