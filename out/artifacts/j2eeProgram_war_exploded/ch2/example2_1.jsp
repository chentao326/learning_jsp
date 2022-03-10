<%@ page contentType="text/html;charset=GB2312" %>  <!-- jsp指令标记 -->
<%@ page import="java.util.Date"  %>                <!-- jsp指令标记 -->
<%!   Date date;                                   // 数据声明
      public int continueSum(int start,int end){  // 方法声明
         int sum =0;
         for(int i=start;i<=end;i++)  
            sum=sum+i; 
         return sum;
      }
//      在start和end之间遍历
  %>
<%--此处标记是<%!%>  标记符号之间声明变量和方法。 --%>

<HTML><title>example2_1.jsp</title>
 <body  background='back.jpg'>              <!—html标记 -->
<%-- body增加背景--%>
<font size=4><p>程序片创建Date对象：
   <% date=new Date();  //实例化                          //java程序片
      out.println("<BR>"+date);
      int start=1;
      int end=100;
      int sum=continueSum(start,end);//调用上面定义的方法
   %>
    <%--此处标记是<% %>  标记java程序片--%>
<br>从
   <%= start %>                                <!-- Java表达式 --> 
   至
   <%= end %> 
   的连续和是
   <%= sum %>
</font></body>
<%-- 此处<%=  %>  标记Java表达式--%>
</HTML>








