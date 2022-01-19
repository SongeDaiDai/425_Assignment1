<html>

<head>
    <meta charset="utf-8">
    <title>425 - Assignment 1 Form</title>
    <link href="form.css" rel="stylesheet" type="text/css">
    <script src="https://kit.fontawesome.com/a5769a4d9e.js" crossorigin="anonymous"></script>
</head>

<body>
    <form action="BookResponse.jsp" method="get">
        <div class="form">
            <div class="super">Assignment 1 <i class="fas fa-keyboard"></i></div><br>
            <div class="subtitle" style="font-size: 1.4rem; color: #B9BFB8;"><i class="fas fa-book"></i> Book & <i class="fas fa-barcode"></i> ISBN Update form</div>

            <div class="input-container ic1">
                <input id="title" name="title" class="input" type="text" placeholder=" " />
                <div class="cut"></div>
                <label for="title" class="placeholder"><i class="fas fa-book"></i> Book title</label>
            </div>

            <div class="input-container ic2">
                <input id="author" name="author" class="input" type="text" placeholder=" " />
                <div class="cut"></div>
                <label for="author" class="placeholder"><i class="fas fa-pencil-alt"></i> Author</label>
            </div>

            <div class="input-container ic2">
                <input id="ISBN" name="ISBN" class="input" type="text" placeholder=" " required/>
                <div class="cut"></div>
                <label for="ISBN" class="placeholder"><i class="fas fa-barcode"></i> ISBN</label>
            </div>




            <div class="list-container ic2">
                <div class="subtitle" style="color: #B9BFB8;"><i class="fas fa-heading"></i> Publisher</div><br/>
                <select class="select" id="publisher" name="publisher" multiple>
                    <option disabled selected>-- select an option --</option>
                    <option class="option">John Wiley &amp; Sons</option>
                    <option class="option">BigNerd Ranch</option>
                    <option class="option">Industrial Press</option>
                    <option class="option">Armond Dalton</option>
                </select>
                <div class="cut"></div>
                <label for="publisher" class="placeholder"></label>
            </div>
            <br/>
            <div class="input-container ic2">
                <div class="subtitle" style="color: #B9BFB8;"><i class="fas fa-comment-alt"></i> Edition</div><br/>
                <label><input  type="radio" name="edition" value="Hardcover"/>Hardcover <i class="fas fa-journal-whills"></i></label>
                <label><input  type="radio" name="edition" value="Paperback"/>Paperback <i class="fas fa-scroll"></i></label>
            </div><br>

            <div class="input-container">
                <div class="subtitle" style="color: #B9BFB8;"><i class="fas fa-feather-alt"></i> Subject</div><br/>
                <label><input  type="checkbox" name="subject" value="Classic">Classic <i class="fas fa-signature"></i></label>
                <label><input  type="checkbox" name="subject" value="Fantasy">Fantasy <i class="fas fa-dragon"></i></label>
                </br>
                <label><input  type="checkbox" name="subject" value="History">History <i class="fas fa-landmark"></i></label>
                <label><input  type="checkbox" name="subject" value="Horror">Horror <i class="fas fa-skull"></i></label>
            </div><br><br>
            <div class="input-container ic2">
                <input id="price" name="price" class="input" type="number" placeholder=" " />
                <div class="cut "></div>
                <label for="price " class="placeholder "><i class="fas fa-dollar-sign "></i> Price</label>
            </div>
            <input class="submit" type="submit" value="Add Book" />
            <p>
                <img src="cat-reading.gif " width="50% " style="padding-left: 25%; border-radius: 5%; ">
            </p>
        </div>
    </form>

</body>

</html>