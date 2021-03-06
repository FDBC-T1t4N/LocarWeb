<%@page import="modelos.Carro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Locacar</h1>
        <%
          //recebe os valores da tela HTML  
          String placa = request.getParameter("placa");
          String marca = request.getParameter("marca");
          String modelo = request.getParameter("modelo");
          String km = request.getParameter("km");
          String arcondicionado = request.getParameter("arcondicionado");
          String direcaohidraulica = request.getParameter("direcaohidraulica");
          
          //instancia o carro
          Carro carro = new Carro();
          carro.setPlaca(placa);
          carro.setModelo(modelo);
          carro.setMarca(marca);
          carro.setSituacao(true);
          
          if(!km.equals(""))
             carro.setKm(Integer.parseInt(km));            
         
          if (arcondicionado != null)
             carro.setArcondicionado(Boolean.parseBoolean(arcondicionado));
          
          if(direcaohidraulica != null)
            carro.setDirecaohidraulica(Boolean.parseBoolean(direcaohidraulica));
          
          if(carro.incluirCarro()){
              response.sendRedirect("cadastrocarro.jsp?pmensagem=Carro salvo com sucesso");
          }
          else
          {
              response.sendRedirect("cadastrocarro.jsp?pmensagem=Problemas ao salvar carro");
          }
          
        %>
    </body>
</html>
