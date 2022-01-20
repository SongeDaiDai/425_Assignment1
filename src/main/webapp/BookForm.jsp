<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>425 - Assignment 1 Form</title>
    <link href="form.css" rel="stylesheet" type="text/css">
    <script src="https://kit.fontawesome.com/a5769a4d9e.js" crossorigin="anonymous"></script>
</head>

<body>
    <main>
        <h1>Assignment 1</h1>
        <form action="BookResponse.jsp" method="get">
            <div class="form">

                <h2><i class="fas fa-book-open"></i>&nbsp;&nbsp; Book & ISBN Update form</h2>

                <div class="input-container ic2">
                    <input id="title" name="title" class="input" type="text" placeholder=" " />
                    <div class="cut"></div>
                    <label for="title" class="placeholder"><i class="fas fa-book"></i>&nbsp;&nbsp; Book title</label>
                </div>

                <div class="input-container ic2">
                    <input id="author" name="author" class="input" type="text" placeholder=" " />
                    <div class="cut"></div>
                    <label for="author" class="placeholder"><i class="fas fa-pencil-alt"></i>&nbsp;&nbsp; Author</label>
                </div>

                <div class="input-container ic2">
                    <input id="ISBN" name="ISBN" class="input" type="text" placeholder=" " required />
                    <div class="cut"></div>
                    <label for="ISBN" class="placeholder"><i class="fas fa-barcode"></i>&nbsp;&nbsp; ISBN</label>
                </div>

                <div class="ic2">
                    <h3><i class="fas fa-heading"></i>&nbsp;&nbsp; Publisher</h3>
                    <select class="select" id="publisher" name="publisher" multiple>
                        <option class="option">John Wiley &amp; Sons</option>
                        <option class="option">BigNerd Ranch</option>
                        <option class="option">Industrial Press</option>
                        <option class="option">Armond Dalton</option>
                    </select>
                    <div class="cut"></div>
                    <label for="publisher" class="placeholder"></label>
                </div>

                <div class="input-container ic2">
                    <h3><i class="fas fa-comment-alt"></i>&nbsp;&nbsp; Edition</h3>
                    <label><input type="radio" name="edition" value="Hardcover" />&nbsp;&nbsp;Hardcover &nbsp;&nbsp;<i
                            class="fas fa-journal-whills"></i></label>
                    <label class="radio-option"><input type="radio" name="edition" value="Paperback" />&nbsp;&nbsp;Paperback &nbsp;&nbsp;<i
                            class="fas fa-scroll"></i></label>
                </div>

                <div class="input-container">
                    <h3><i class="fas fa-feather-alt"></i>&nbsp;&nbsp; Subject</h3>
                    <label><input type="checkbox" name="subject" value="Classic"> Classic &nbsp;&nbsp; <i
                            class="fas fa-signature"></i></label>
                    <label class="radio-option"><input type="checkbox" name="subject" value="Fantasy"> Fantasy &nbsp;&nbsp; <i
                            class="fas fa-dragon"></i></label>
                    <label class="radio-option"><input type="checkbox" name="subject" value="History"> History &nbsp;&nbsp; <i
                            class="fas fa-landmark"></i></label>
                    <label class="radio-option"><input type="checkbox" name="subject" value="Horror"> Horror &nbsp;&nbsp; <i
                            class="fas fa-skull"></i></label>
                </div>

                <div class="input-container ic2">
                    <input id="price" name="price" class="input" type="number" step="0.01" placeholder=" " />
                    <div class="cut "></div>
                    <label for="price " class="placeholder "><i class="fas fa-dollar-sign "></i>&nbsp;&nbsp; Price</label>
                </div>
                <input class="submit" type="submit" value="Add Book" />

            </div>
        </form>
    </main>


</body>

</html>