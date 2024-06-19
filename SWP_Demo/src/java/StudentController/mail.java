/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package StudentController;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;


/**
 *
 * @author ptttr
 */
public class mail {
//     public static void sendMail(String to, String subject, String text) {
//        Properties props = new Properties();
//        props.put("mail.smtp.auth", "true");
//        props.put("mail.smtp.starttls.enable", "true");
//        props.put("mail.smtp.host", "smtp.gmail.com");
//        props.put("mail.smtp.port", "587");
//        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
//            @Override
//            protected PasswordAuthentication getPasswordAuthentication() {
//                return new PasswordAuthentication("songxungdang97@gmail.com", "hfkelkbdndrxgahi");
//            }
//        });
//        try {
//            Message message = new MimeMessage(session);
//            message.setHeader("Content-Type", "text/plain; charset=UTF-8");
//            message.setFrom(new InternetAddress("songxungdang97@gmail.com"));
//            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
//            message.setSubject(subject);
//            message.setText(text);
//            Transport.send(message);
//        } catch (MessagingException e) {
//          e.printStackTrace();
//        }
//       
//    }
    public static String sendMail(String to, String subject, String text) {
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.ssl.protocols", "TLSv1.2");
        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("songxungdang97@gmail.com", "hfkelkbdndrxgahi");
            }
        });
        try {
            Message message = new MimeMessage(session);
            message.setHeader("Content-Type", "text/plain; charset=UTF-8");
            message.setFrom(new InternetAddress("songxungdang97@gmail.com"));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            message.setSubject(subject);
            message.setText(text);
            Transport.send(message);
        } catch (MessagingException e) {
            return e + "";
        }
        return "a";
    }
     public static void main(String[] args) {
         
        int randomNumber = (int) (Math.random() * 9999);
        if (randomNumber <= 1000) {
            randomNumber = randomNumber + 1000;
        }
        String code = String.valueOf(randomNumber);
       
    
        String subject = "confirm code";
      //  String message = "your code is: "+ randomNumber;
        String message = "vccc "+ code;
        
         sendMail("ptttrung220404@gmail.com", subject, message);
         System.out.println(sendMail("ptttrung220404@gmail.com", subject, message));
    }
}
