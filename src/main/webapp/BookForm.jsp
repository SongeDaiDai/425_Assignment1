<html>
<head>
<meta charset="utf-8">
<title>425 - Assignment 1 Form</title>
</head>
<body>

<form action="BookResponse.jsp">
		<label for="title">Book title: </label>
		<input type="text" id="title" name="title" />
        
        <br/>

        <label for="author">Author: </label>
		<input type="text" id="author" name="author" />

        <br/>

        <label for="ISBN">ISBN: </label>
        <input type="text" id="ISBN" name="ISBN" required />
        
        <br/>
        
        <label for="publisher">Publisher: </label>
        <select id="publisher" name="publisher" multiple>
            <option disabled selected>-- select an option --</option>
            <option>John Wiley &amp; Sons</option>
            <option>BigNerd Ranch</option>
            <option>Industrial Press</option>
            <option>Armond Dalton</option>
        </select>

        <br/>

        <label><input type="radio" name="edition" value="hardcover" />Hardcover</label>
        <label><input type="radio" name="edition" value="paperback" />Paperback</label>

        <br/>

        Subject:
        <label><input type="checkbox" name="subject" value="classic">Classic</label>
        <label><input type="checkbox" name="subject" value="fantasy">Fantasy</label>
        <label><input type="checkbox" name="subject" value="history">History</label>
        <label><input type="checkbox" name="subject" value="horror">Horror</label>

        <br/>

        <label for="price">Price: </label>
        <input type="text" id="price" name="price" />

        <br/>

        <input type="submit" value="Add book" />

	</form>

</body>
</html>