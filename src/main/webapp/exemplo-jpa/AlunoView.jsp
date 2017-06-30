<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="lab.academico.Aluno"%>
<html>

  <head>
    <title>Aluno</title>
  </head>

  <body>
    <h1><a href="aluno">Aluno</a></h1>
    <form>
      <table>
        <tr>
          <td>Nome:</td>
          <td><input name="nome"></td>
        </tr>
        <tr>
          <td>Matrícula</td>
          <td><input name="matricula"></td>
        </tr>
      </table>
      <button name="operacao" value="incluir">Incluir</button>
      <button name="operacao" value="excluir">Excluir</button>
      <button name="operacao" value="alterar">Alterar</button>
    </form>
    <b>${msg}</b>
    <hr>
    <table border="1">
      <tr>
        <th>Nome</th>
        <th>Matrícula</th>
        <th>Ações</th>
      </tr>
      <%
      ArrayList<Aluno> alunos =
        (ArrayList<Aluno>) request.getAttribute("alunos");
      for (Aluno aluno : alunos) {
      %>
      <tr>
        <td> <%=aluno.getNome()%></td>
        <td> <%=aluno.getMatricula()%></td>
        <td><a href="aluno?operacao=excluir&matricula=<%=aluno.getMatricula()%>">Excluir</a> <a href="aluno?operacao=alterar&matricula=<%=aluno.getMatricula()%>">Alterar</a></td>
      </tr>
      <%}%>
    </table>
  </body>

</html>
