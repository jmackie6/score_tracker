<%-- 
    Document   : player
    Created on : Mar 26, 2016, 12:49:55 PM
    Author     : Jared
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession;"%>
        
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>player form page</title>
<script src="new_game_form.js"></script>
<link rel="stylesheet" href="style.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="home.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.1.min.js"></script>
<script type="text/javascript">var search_input= $('.search input[type=text]');var search_input_size = 142; var search_large_size = 154; var padding = 7; var shrinked = "";$(document).ready(function(){search_input.click(function(){shrink();}).focus(function(){shrink();});search_input.blur(function(){ if(shrinked=="YES")normal();});$('.button a').hover(function(){if(shrinked=="YES")normal();}); });function shrink(){if(search_input_size < search_large_size ){$('.button a').each(function(){$(this).animate({'padding-left': padding+'px','padding-right': padding+'px'},'fast');});search_input.animate({'width': search_large_size+'px'},'fast'); shrinked="YES";}return false;}function normal(){search_input.animate({'width':search_input_size+'px'},'fast'); $('.button a').animate({'padding-left':'10px','padding-right':'10px'},'fast');shrinked="";search_input.blur();return false;}
</script>
<style>
         P.mainTitle 
         {
               color: white; 
               font-family:"times";     
               font-style:normal; 
               font-size:30pt;
         }         
         p.sideBar
         {
               font-family: courier;
               
         }
         p.main
         {
               font-size: 15px;
               
               
         }
         p.bottom
         {
               font-size: 30px;
               
         }
       
</style>
</head>
    
	<body>
            <h2 name="game_players" id="game_players" style="display:none;"><%= request.getParameter("num_players")%></h2>
            <div id="header">
 		<div id="left">
    		<label>Game Score Tracker</label>
                </div>
                <div id="right">
                    <div id="content">
                        <!--Hello-- <?php echo $userRow['username']; ?>&nbsp;<a class="sign" href="logout.php?logout">--Sign Out--</a>-->
                    </div>
                </div>
            </div>
            <div id="top">
                <ul id="menu_wrap" class="Gray">
                <li class="button"><a href="NewGameForm.jsp">New Game</a></li>
                    <li class="button"><a href="Form.jsp">Continue Game</a></li>
                    <li class="button"><a href="player.jsp">Player Stats</a></li>
                    <li class="button"><a href="Game">Games Played</a></li>
                    <li class="button"><a href="logout.jsp">Logout</a></li> 
                    <li class="button"><a href="search.jsp">Search BGG</a></li></ul>
                
                
                
            </div>
            
            <center>
                
                
<div id="login-form">
    <h1>Get Player Stats</h1>
<form method="post" action="Player">
<table align="center" width="30%" border="0">
<tr>
<td><input type="text" name="player_name" placeholder="Palyer Name" required /></td>
</tr>
<tr>
<td><button type="submit" name="submit">Search player</button></td>
</tr>
<tr>
<td><a href="home.jsp">Back To Homepage</a></td>
</tr>
</table>
</form>
</div>
</center>
      </body>
</html>      
