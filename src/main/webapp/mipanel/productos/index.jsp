<%@ page contentType="text/html; charset=UTF-8" %>

<%@ include file="/includes/header.jsp" %>   
    	
	
	<a href="mipanel/productos?accion=formulario">Nuevo Producto</a>
	
	<table  class="tabla display" style="width:100%">
        <thead>
            <tr>
                <th>id</th>                
                <th>nombre</th>                
                <th>descripcion</th>                
                <th>precio</th>                
                <th>imagen</th>                
                <th>descuento</th>                
                <th>Editar</th>                
            </tr>
        </thead>
        <tbody>
        	<c:forEach items="${productos}" var="p">
            	<tr>
                	<td>${p.id}</td>
                	<td>${p.nombre}</td>         	
                	<td>${p.descripcion}</td>         	
                	<td>${p.precio}</td>         	
                	<td>${p.imagen}</td>         	
                	<td>${p.descuento}</td>         	
                	<td><a href="mipanel/productos?accion=formulario&id=${p.id}">Editar</a></td>
            	</tr>
            </c:forEach>	
        </tbody>    
    </table>
	
	

<%@ include file="/includes/footer.jsp" %> 