using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DuAnLamQuen
{
    public partial class DangKyThanhVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
<<<<<<< HEAD
            if (!IsPostBack)
            {
                // Tạo danh sách ngày
                for (int day = 1; day <= 31; day++)
                {
                    ListItem listItem = new ListItem(day.ToString());
                    ddlNgay.Items.Add(listItem);
                }

                // Tạo danh sách tháng
                for (int thang = 1; thang <= 12; thang++)
                {
                    ListItem listItem = new ListItem(thang.ToString());
                    ddlThang.Items.Add(listItem);
                }


                // Tạo danh sách năm
                int currentYear = DateTime.Now.Year;
                for (int year = currentYear; year >= currentYear - 100; year--) // Hiển thị 100 năm trước đến năm hiện tại
                {
                    ListItem listItem = new ListItem(year.ToString());
                    ddlNam.Items.Add(listItem);
                }

            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string ketQua = "<ul>";
            ketQua += $"<li>Tên đăng nhập:<b> {txtTenDangNhap.Text}</b></li>";
            ketQua += $"<li>Mật khẩu: <b>{txtMK.Text}</b></li>";
            ketQua += $"<li>Họ tên khách hàng:<b> {txtHoTen.Text}</b></li>";
            ketQua += $"<li>Ngày tháng năm sinh:<b> {ddlNgay.Text + "/" + ddlThang.Text + "/" + ddlNam.Text}</b></li>";
            // định dạng tiền

            // Định dạng tiền tệ cho chuỗi thu nhập
            //decimal thuNhap = decimal.Parse(txtThuNhap.Text);
            //string thuNhapFormatted = string.Format(new CultureInfo("vi-VN"), "{0:C}", thuNhap);

            //// Thêm vào chuỗi kết quả
            //ketQua += $"<li>Thu nhập: <b>{thuNhapFormatted}</b></li>";

            double thunhap = double.Parse(txtThuNhap.Text);
            string chuoi = string.Format("{0:#,0.#} VNĐ", Convert.ToDecimal(thunhap));
            ketQua += $"<li>Thu nhập:<b> {chuoi}</b></li>";
            //Giới tính
            if (ckbGT.Checked)
            {
                ketQua += $"<li>Giới tính:<b> {ckbGT.Text}</b></li>";
            }
            else
            {
                ketQua += $"<li>Giới tính:<b> {"Nữ"}</b></li>";
            }
            //adress
            ketQua += $"<li>Địa chỉ:<b> {txtDiaChi.Text}</b></li>";
            //phone number
            ketQua += $"<li>Điện thoại:<b> {txtDienThoai.Text}</b></li>";
            ketQua += "</ul>";
            lblKetQua.Text = ketQua;
        }

        protected void ddlThang_SelectedIndexChanged(object sender, EventArgs e)
        {
            int year = int.Parse(ddlNam.Text);
            int month = int.Parse(ddlThang.Text);
            if (year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)) 
            {
                ddlNgay.Items.Clear();
                if(month == 2)
                {
                    for (int day = 1; day <= 29; day++)
                    {
                        ListItem listItem = new ListItem(day.ToString());
                        ddlNgay.Items.Add(listItem);
                    }
                }
            }
            else
            {
                if (month == 2)
                {
                    ddlNgay.Items.Clear();

                    for (int day = 1; day <= 28; day++)
                    {
                        ListItem listItem = new ListItem(day.ToString());
                        ddlNgay.Items.Add(listItem);
                    }
                }
            }
            if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12)
            {
                ddlNgay.Items.Clear();

                for (int day = 1; day <= 31; day++)
                {
                    ListItem listItem = new ListItem(day.ToString());
                    ddlNgay.Items.Add(listItem);
                }
            }
            else if(month != 2)
            {
                for (int day = 1; day <= 30; day++)
                {
                    ListItem listItem = new ListItem(day.ToString());
                    ddlNgay.Items.Add(listItem);
                }
            }
=======

>>>>>>> ed70d64e4b53e6c596678ab02617a1b9a3ffdc1d
        }
    }
}