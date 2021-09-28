<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.codegym.people.people" %><%--
  Created by IntelliJ IDEA.
  User: tuananh
  Date: 28/09/2021
  Time: 09:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>display product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
  </head>
  <body style="border:2px solid blueviolet; margin: 30px; padding: 30px; border-radius: 20px">



  <%
    List<people> peoples = new ArrayList<>();
    peoples.add(new people("Mai Văn Hoàn", "1983-08-20","Hà Nội","https://www.winwinstore.vn/wp-content/uploads/2020/12/8fc0bff637.jpeg"));
    peoples.add(new people("Nguyễn Văn Nam", "1983-08-21","Bắc Giang","https://i.pinimg.com/564x/83/9e/7e/839e7e5acf5a37a08857ac704a5aeb6d.jpg"));
    peoples.add(new people("Nguyễn Thái Hòa", "1983-08-22","Nam Định","https://image.thanhnien.vn/1024/uploaded/hoangnam/2020_08_24/01_esvt.jpg"));
    peoples.add(new people("Trần Đăng Khoa", "1983-08-17","Hà Tây","https://baoquocte.vn/stores/news_dataimages/phamthuan/112020/26/11/in_article/ngam-tron-bo-anh-tuyet-dep-ve-da-dang-van-hoa-cua-viet-nam_21.jpg?rt=20201126114308"));
    peoples.add(new people("Nguyễn Đình Thi", "1983-08-19","Hà Tây","https://app.subsocial.network/ipfs/ipfs/QmPgHbVaZLbdyZyNs7Rv2CXK4v33ivsvKFxBne7QkPTLAH"));
    request.setAttribute("peoples", peoples);
  %>

  <h1 style="text-align: center">Danh sách khách hàng</h1>
  <div class="table-responsive">
    <table class="table align-middle">
      <thead>
      <tr>
        <th>Tên </th>
        <th>Ngày Sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach items="${peoples}" var="people">
        <tr>
          <td>${people.name}</td>
          <td>${people.birthDay}</td>
          <td>${people.address}</td>
          <td><img src="${people.img}" alt="avatar" height="100" width="100"></td>

        </tr>
      </c:forEach>

      </tbody>
    </table>
  </div>

  </body>
</html>
