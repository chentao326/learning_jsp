<%@ page contentType="text/html;charset=GB2312" %>  <!-- jspָ���� -->
<%@ page import="java.util.Date"  %>                <!-- jspָ���� -->
<%!   Date date;                                   // ��������
      public int continueSum(int start,int end){  // ��������
         int sum =0;
         for(int i=start;i<=end;i++)  
            sum=sum+i; 
         return sum;
      }
//      ��start��end֮�����
  %>
<%--�˴������<%!%>  ��Ƿ���֮�����������ͷ����� --%>

<HTML><title>example2_1.jsp</title>
 <body  background='back.jpg'>              <!��html��� -->
<%-- body���ӱ���--%>
<font size=4><p>����Ƭ����Date����
   <% date=new Date();  //ʵ����                          //java����Ƭ
      out.println("<BR>"+date);
      int start=1;
      int end=100;
      int sum=continueSum(start,end);//�������涨��ķ���
   %>
    <%--�˴������<% %>  ���java����Ƭ--%>
<br>��
   <%= start %>                                <!-- Java���ʽ --> 
   ��
   <%= end %> 
   ����������
   <%= sum %>
</font></body>
<%-- �˴�<%=  %>  ���Java���ʽ--%>
</HTML>








