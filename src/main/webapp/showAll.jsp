<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/6
  Time: 10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-2.2.3.min.js"></script>
    <script>
        $(function () {
            $.ajax({
                type:"GET",
                url:"test/findAll",
                success:function (data) {
                    var tb1 = $("#tb1");

                    var str = "";
                    for(user of data){
                        str+= "<tr>";
                        str+="<td>"+user.username+"</td>";
                        str+="<td>"+user.password+"</td>";
                        str+="<td>"+user.age+"</td>";
                        str+="<td>"+user.sex+"</td>";
                        str+="<td>"+user.email+"</td>";
                        str+= "</tr>";
                    }
                    tb1.html(str);
                }
            });


        });
    </script>
</head>
<body>
    <table id="tb1" border="1px">

    </table>

</body>
</html>
