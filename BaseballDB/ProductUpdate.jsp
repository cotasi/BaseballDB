<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "db.FigureBean" %>
<%@ page import = "db.FigureDAO" %>
<%@ page import = "model.ProductDAO" %>
<%@ page import="java.util.Vector" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="../xeicon/xeicon.min.css">
    <link rel="stylesheet" href="css_part/geton.css">
	<link rel="stylesheet" href="css_part/swiper.min.css">
	<link rel="stylesheet" href="css_part/default.css">
	<script src="script_part/jquery.js" charset="utf-8"></script>
	<script src="script_part/swiper.js" charset="utf-8"></script>
	<script src="script_part/default.js" charset="utf-8"></script>
	<script src="script_part/idcheck.js"></script>
</head>
<body>

	<jsp:include page = "Top.jsp" />
	<%
		FigureDAO pdao = FigureDAO.getInstance();
	
		FigureBean fbean = new FigureBean();
	
	%>
	
	<main>
        <section class="block">
       <form name="newProduct" action="./ProductRegOK.jsp" method = "post" enctype="multipart/form-data">
            <div class="joincontents">
                <h2 class="subject2">����ϱ�</h2>         
                <div class="join_box2">
                    <h3 class="subject3">�ǱԾ� ����ϱ�</h3>

                    <table class="type1">
                        <caption></caption>
                        <colgroup>
                            <col style="width:170px;">
                            <col>
                        </colgroup>
                        <tbody>
                            <tr>
                                <th><span>�ʼ��Է�</span>��ǰ��</th>
                                <td>
                                <input type="text" name="pname" style="width:150px;" value="<%=fbean.getPname() %>">
                                </td>

                            </tr>
                            <tr>
                                <th><span>�ʼ��Է�</span>�ۼ��� �̸�</th>
                                <td>
                                    <input type="text" style="width:150px;" name="wname" value="<%= fbean.getWname() %>">
                                    <span class="ifo">���� �̸� ��� �Է��ϼ���</span>
                                </td>

                            </tr>
                            <tr>
                                <th><span>�ʼ��Է�</span>���߰���</th>
                                <td><input type="text" style="width:150px;" name="price" value="<%= fbean.getPrice() %>">
                                </td>
                               

                            </tr>
                            <tr>
                                <th><span>�ʼ��Է�</span>�ǸŰ���</th>
                                <td><input type="text" style="width:150px;" name="dprice" value="<%= fbean.getDownprice() %>"></td>

                            </tr>
                            <tr>
                                <th><span>�ʼ��Է�</span>�̹���</th>
                                <td><input type="file" style="width:150px;" name="img" value="<%= fbean.getImg() %>"></td>

                            </tr>
                        </tbody>
                    </table>


                <div class="btn_center">
                    <input type="submit" value="����ϱ�" class="btn_type1">
                    <a href="" class="btn_type2">��� </a>
                </div>
                </div>

            </div>
           </form>
        </section>
       </main>
	
</body>
</html>