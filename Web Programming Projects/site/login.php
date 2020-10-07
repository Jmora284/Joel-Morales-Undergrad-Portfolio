<?php require_once("HeaderTH.html"); ?>

<div class ="loginform">
<H1>Login</H1>
</div>

<div class="loginformtwo">
<p>
		<form method="post" action=<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>>
Email Address: <input type="text" name="email">
<span class="error">* <?php echo $nameErr;?></span>
<br><br>

Password: <input type="text" name="password">
<span class="error">* <?php echo $passErr;?></span>


<br><br>

<input type="submit" name="submit" value="Submit">
<input type="reset" name="reset" value="Reset Form">
</form>
</p>
</div>


<?php require_once("footer.html");
