<%-- 
    Document   : newjsp
    Created on : Nov 16, 2022, 12:15:06 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <script src="https://www.google.com/recaptcha/api.js" async defer></script>
         
<script>
  function check(){
  if(grecaptcha.getResponse()){
      return true;
  }
  else
  { return false;
  }
}
</script>
        
				<div class="col-lg-8">
					<div class="contact-form-warp" >
						<h4 class="comment-title">Leave a Reply</h4>
                                                <form class="comment-form" action="NewServlet" id="form" onsubmit="return check()" >
							<div class="row" >
								<div class=" col-md-6">
                                                                    <input type="text" name="user" placeholder="Name" >
								</div>
								<div class="col-md-6">
									<input type="email" name="email" placeholder="Email" >
								</div>
								<div class="col-lg-12">
									<input type="text" name="subject" placeholder="Subject" >
                                                                        <textarea placeholder="Message" name="msg" ></textarea>
                                                                        
                                                                        <button id = "btn"> Click me </button>  
								</div>
                                                            <div class="g-recaptcha" data-sitekey="6LfaWQwjAAAAALjnJ2d2E3a3lJYVEBXcAlcP3Zvv"></div>
							</div>
                                                    
						</form>
                                                <h4 class="comment-title" id ="error"></h4>
                                                
                             <script>


                                                    }
                                                    </script>
                                                
					</div>
				</div>
			
    </body>
</html>
