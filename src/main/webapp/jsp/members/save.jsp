/**
*
*/
/**
*
*/
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="hello.servlet.domain.member.Member" %>
<%@ page import="hello.servlet.domain.member.MemberRepository" %>
<%

//    Request, Response 으로 JSP에서 자동으로 사용가능하다.
//
//    JSP도 결국 Servlet으로 변경된다. 눈에는 보이지 않지만 자동으로 변환되서 사용된다.
//    사실 우리가 작성한 Servlet클래스로 변경되서 사용된다고 생각하면 된다.
//
    MemberRepository memberRepository = MemberRepository.getInstance();

    System.out.println("MemberSaveServlet.service");
    String username = request.getParameter("username");
    int age = Integer.parseInt(request.getParameter("age"));

    Member member = new Member(username, age);
    memberRepository.save(member);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
성공
<ul>
    <li>id=<%= member.getId() %></li>
    <li>username=<%= member.getUsername() %></li>
    <li>age=<%= member.getAge() %></li>
</ul>
<a href="/index.html">메인</a>
</body>
</html>




