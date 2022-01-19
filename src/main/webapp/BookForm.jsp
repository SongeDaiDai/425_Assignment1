<html>

<head>
    <meta charset="utf-8">
    <title>425 - Assignment 1 Form</title>
    <link href="form.css" rel="stylesheet" type="text/css">
</head>

<body>
    <form action="BookResponse.jsp">
        <div class="form">
            <div class="title">Team 8 - Presents:</div>
            <div class="subtitle">Book and ISBN Update form</div>

            <div class="input-container ic1">
                <input id="title" class="input" type="text" placeholder=" " />
                <div class="cut"></div>
                <label for="title" class="placeholder">Book title</label>
            </div>

            <div class="input-container ic2">
                <input id="author" class="input" type="text" placeholder=" " />
                <div class="cut"></div>
                <label for="author" class="placeholder">Author</label>
            </div>

            <div class="input-container ic2">
                <input id="ISBN" class="input" type="text" placeholder=" " required/>
                <div class="cut"></div>
                <label for="ISBN" class="placeholder">ISBN</label>
            </div>

            <div class="input-container ic2">
                <input id="price" class="input" type="text" placeholder=" " />
                <div class="cut"></div>
                <label for="price" class="placeholder">Price</label>
            </div>


            <div class="list-container ic2">
                <div class="subtitle">Publisher</div>
                <select class="select" id="publisher" name="publisher" multiple>
                    <option disabled selected>-- select an option --</option>
                    <option class="option">John Wiley &amp; Sons</option>
                    <option class="option">BigNerd Ranch</option>
                    <option class="option">Industrial Press</option>
                    <option class="option">Armond Dalton</option>
                </select>
                <div class="cut"></div>
                <label for="publisher" class="placeholde"></label>
            </div>

            <div class="input-container ic2">
                <div class="subtitle">Version</div>
                <label><input  type="radio" name="edition" value="hardcover" />Hardcover</label>
                <label><input  type="radio" name="edition" value="paperback" />Paperback</label>
            </div>

            <div class="input-container">
                <div class="subtitle">Subject</div>
                <label><input  type="checkbox" name="subject" value="classic">Classic</label>
                <label><input  type="checkbox" name="subject" value="fantasy">Fantasy</label>
                <label><input  type="checkbox" name="subject" value="history">History</label>
                <label><input  type="checkbox" name="subject" value="horror">Horror</label>
            </div>
            <input class="submit" type="submit" value="Add Book" />
            <p>
                <img src="cat-reading.gif" width="50%" style="padding-left: 25%; border-radius: 5%;">
            </p>
        </div>
    </form>

</body>

</html>