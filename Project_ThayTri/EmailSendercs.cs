using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;
using System.Diagnostics;

namespace Project_ThayTri
{
    public class EmailSendercs
    {
        public static void SendOrderConfirmationEmail(string userEmail, string subject, string body)
        {
            try
            {
                // Thay thế các thông tin dưới đây bằng thông tin cụ thể của bạn
                string smtpServer = "smtp.gmail.com";       // Địa chỉ máy chủ SMTP của Gmail
                int smtpPort = 587;                         // Cổng SMTP của Gmail thường là 587
                string smtpUsername = "QuocDuyctvn";  // Tên đăng nhập (địa chỉ email) của bạn
                string smtpPassword = "Quocduyctvn0*";   // Mật khẩu ứng với địa chỉ email trên

                string fromEmail = "quocduyctvn@gmail.com";    // Địa chỉ email của bạn, là người gửi

                string toEmail = userEmail;

                MailMessage mail = new MailMessage();
                SmtpClient smtpClient = new SmtpClient(smtpServer, smtpPort);

                mail.From = new MailAddress(fromEmail);
                mail.To.Add(toEmail);
                mail.Subject = subject;
                mail.Body = body;
                mail.IsBodyHtml = true;
                Debug.WriteLine("drgs");
                System.Diagnostics.Trace.WriteLine("Đã đến được đoạn gửi email");
                Debug.WriteLine("Đã đến được đoạn gửi email");
                smtpClient.Credentials = new NetworkCredential(smtpUsername, smtpPassword);
                smtpClient.EnableSsl = true;

                smtpClient.Send(mail);
            }
            catch (Exception ex)
            {
                // Xử lý ngoại lệ nếu có lỗi khi gửi email
                Trace.WriteLine("Error sending email: " + ex.Message);
            }
        }
    }
}