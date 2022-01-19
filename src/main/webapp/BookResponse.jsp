<html>
<head>
<meta charset="utf-8">
<title>425 - Assignment 1 Response</title>
</head>
<body>
	<p id="success" style="color:green">&#10004; The book has been added.</p>
	Book title: ${param.title}<br/>
	Author: ${param.author}<br/>
	ISBN: ${param.ISBN}<br/>
	Publisher: 
	<ul>
	<%	
		String[] publishers = request.getParameterValues("publisher");
		if(publishers != null) {
			for(String publisher : publishers) {
				out.print("<li>" + publisher + "</li>");	
			}	
		}
	%>
	</ul>
	Edition: ${param.edition}<br/>
	Subject(s): 
	<ul>
	<%	
		String[] subjects = request.getParameterValues("subject");
		if(subjects != null) {
			for(String subject : subjects) {
				out.print("<li>" + subject + "</li>");	
			}	
		}
	%>
	</ul>
	Price: ${param.price};
	
</body>
</html>