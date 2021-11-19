<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="admin.model.vo.UserList"%>
<% 
	UserList ul = (UserList)request.getAttribute("ul");
%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ChangeInfoForm</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <style>
    .input-form {
      max-width: 1600px;
      margin-top: 80px;
      padding: 32px;
      background: #fff;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
  </style>
</head>

<body>
  <div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">회원 정보 변경</h4>
        <form action="<%= request.getContextPath() %>/userInfoUpdate.ui" method="post" class="validation-form" novalidate>
			<div class="row">
				<div class="col-md-8 mb-3">
					<div class="row g-2">
						<table class="table table-bordered">
					       <thead>
						        <tr align="center">  
						           	<th>아이디</th>
								    <th>이름</th>
								    <th>학과</th>
								    <th>전화번호</th>
								    <th>주소</th>
								    <th>이메일</th>
								    <th>변경</th>  
						        </tr>  
					        </thead>
					        <tbody>
						        <tr>
						        	<td><input type="text" name="id" value="<%= ul.getMemberId() %>" readonly></td>
						        	<td><input type="text" name="name" value="<%= ul.getMemberName()%>"></td>
						        	<td><input type="text" name="department" value="<%= ul.getDepartment() %>"></td>
						        	<td><%= ul.getPhone() %></td>
						        	<td width="50px"><%= ul.getAddress() %></td>
						        	<td><input type="text" name="email" value="<%= ul.getEmail() %>"></td>
						        	<td><button class="updateInfo" id="updateInfo" type="submit">완료</button></td>
						        </tr>
					        </tbody>
					     </table> 
					     <script>
					     	function inputValue(){
					     		document.getElementById('id').value =opener.document.
					     		
						     		
					     		
						     	}
					     	}
					     </script>
					</div>
				</div>
			</div>
        </form>
      </div>
    </div>
  </div>

</body>
</html>