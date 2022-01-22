<html>

<head>

    <meta charset="utf-8">
    <title>425 - Assignment 1 Response</title>
    <link href="./assets/css/form.css" rel="stylesheet" type="text/css">
    <script src="https://kit.fontawesome.com/a5769a4d9e.js" crossorigin="anonymous"></script>
</head>

<body>
	<%
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String ISBN10 = request.getParameter("ISBN10");
		String ISBN13 = request.getParameter("ISBN13");
		String edition = request.getParameter("edition");
		String price = request.getParameter("price");
		
		String[] publishers = request.getParameterValues("publisher");
		String[] subjects = request.getParameterValues("subject");		
	%>
	
	<%!
		public String displayValue(String value) {
			if(value == "" || value == null) {
				return "<em>undefined</em>";
			}
			return value;
		}
	
		public String displayValues(String[] values) {
			String returnString = "";
						
			if(values == null) {
				returnString = "<em>undefined</em>";
			} else {
				for(String value : values) {
					returnString += "<li>" + value + "</li>";
				}
			}
			
			return returnString;
		}
	%>

    <main class="response">
    
        <div class="flex-container">
        
            <h1>Assignment 1&nbsp;&nbsp;<i class="fas fa-keyboard"></i></h1>
            <h2 class="added" id="success"><i class="fas fa-check-double"></i>&nbsp;&nbsp;The book has been added.</h2>
            
            <hr class="rounded">
            
            <div class="entries"><i class="fas fa-book"></i>&nbsp;&nbsp;Book title:
            	<span class="form-entry">&nbsp;&nbsp; <%= displayValue(title) %></span>
            </div>
                    
            <div class="entries"><i class="fas fa-pencil-alt"></i> Author:
            	<span class="form-entry">&nbsp;&nbsp; <%= displayValue(author) %></span>
            </div>

            <div class="entries"><i class="fas fa-barcode"></i>&nbsp;&nbsp;ISBN-10:
            	<span class="form-entry">&nbsp;&nbsp; <%= displayValue(ISBN10) %></span>
            </div>

            <div class="entries"><i class="fas fa-barcode"></i>&nbsp;&nbsp;ISBN-13:
            	<span class="form-entry">&nbsp;&nbsp; <%= displayValue(ISBN13) %></span>
            </div>

            <hr class="rounded">
            
            <br />
            
            <div class=" entries "><i class="fas fa-heading"></i>&nbsp;&nbsp;Publisher:
	            <ul>
	                <%= displayValues(publishers) %>
	            </ul>
            </div>
            
            <div class=" entries "><i class="fab fa-firstdraft"></i>&nbsp;&nbsp;Edition:
	            <span class="form-entry">&nbsp;&nbsp; <%= displayValue(edition) %></span>
            </div>
            
            <div class=" entries "><i class="fas fa-feather-alt"></i>&nbsp;&nbsp;Subject(s):
	            <ul>
	                <%= displayValues(subjects) %>
	            </ul>
            </div>
            
            <hr class="rounded">

            <div class="price">Price:&nbsp;<b><%= displayValue(price) %></b>&nbsp;
               <i class="fas fa-dollar-sign" style="color: darkgray;"></i>
            </div>

            <img class="round" src="assets/images/cat-reading.gif"></img>
        </div>
    </main>

</body>

</html>