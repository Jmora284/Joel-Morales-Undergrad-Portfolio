<?php require_once("HeaderTH.html"); ?>


<div class="loginform">
	<h1>Create Account</h1>
	
</div>

<div class="loginformtwo">
	<form method="post" action=<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>>

Username: <input type="text" name="username">
	<span class="error">* <?php echo $userErr;?></span>
<br>
<br>

Email Address: <input type="text" name="email">
	<span class="error">* <?php echo $emailErr;?></span>
<br>
<br>

Confirm Email Address: <input type="text" name="confirmEmail">
	<span class="error">* <?php echo $confirmEmailErr;?></span>
<br>
<br>
<br>

<p>Select a password (Minimum of 5 characters)</p>
Password: <input type="text" name="password">
	<span class="error">* <?php echo $passErr;?></span>
<br>
<br>

Confirm Password: <input type="text" name="passwordConf">
		<span class="error">* <?php echo $passconfErr;?></span>
<br>
<br>

<label for="phone">Phone Number:</label>
  <input type="tel" id="phone" name="phone" placeholder="123-45-678" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}"> <br><br>

<input type="submit" name="submit" value="Create Account">
<input type="reset" name="reset" value="Reset Form">

</form>
</div>

<?php require_once("footer.html"); ?>

