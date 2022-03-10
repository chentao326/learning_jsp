<%@ page contentType="text/html;charset=GB2312" %>
<HTML><body bgcolor=yellow><font size=3>
  <%! int i=0;
  %>
<%--  声明方法--%>
  <% i++;
  %>
<%-- Java片段--%>
<p>您是第
   <%= i %>
<%--  Java表达式--%>
<%--  成员变量被所有用户共享--%>
  个访问本站的用户。
</body></HTML>  
