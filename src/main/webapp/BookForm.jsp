<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>425 - Assignment 1 Form</title>
    <link href="form.css" rel="stylesheet" type="text/css">
    <script src="https://kit.fontawesome.com/a5769a4d9e.js" crossorigin="anonymous"></script>
    <script src="../../../node_modules/jquery/dist/jquery.js"></script>
    
</head>

<body>

    <main>

        <form id="bookForm" action="BookResponse.jsp" method="get">
            <div class="form">
                <h1 class="form0">Assignment 1</h1>
                <h2><i class="fas fa-book-open"></i>&nbsp;&nbsp; Book & ISBN Update form</h2>

                <div class="input-container ic2 form1">
                    <input id="title" name="title" class="input" type="text" placeholder=" " />
                    <div class="cut"></div>
                    <label for="title" class="placeholder"><i class="fas fa-book"></i>&nbsp; Book title</label>
                </div>



                <div class="input-container ic2 form2">
                    <input id="author" name="author" class="input" type="text" placeholder=" " />
                    <div class="cut"></div>
                    <label for="author" class="placeholder"><i class="fas fa-pencil-alt"></i>&nbsp; Author</label>
                </div>


                <div class="input-container ic2 form3">
                    <input id="ISBN10" name="ISBN10" class="input" type="number" placeholder=" " />
                    <div class="cut"> </div>
                    <label for="ISBN10" class="placeholder"><i class="fas fa-barcode"></i>&nbsp;  ISBN-10</label>
                    <div id="error10" style="color: darkred; text-align: right;"> </div>

                </div>

                <div class="input-container ic2 form4">
                    <input id="ISBN13" name="ISBN13" class="input" type="number" placeholder=" " />
                    <div class="cut"> </div>
                    <label for="ISBN13" class="placeholder"> <i class="fas fa-barcode"></i>&nbsp; ISBN-13</label>
                    <div id="error13" style="color: darkred; text-align: right;"> </div>

                </div>

                <div class="input-container ic2 form8">
                    <input id="price" name="price" class="input" type="number" step="0.01" placeholder=" " />
                    <div id="cost" class="error"> </div>
                    <div class="cut "></div>

                    <label for="price" class="placeholder "><i class="fas fa-dollar-sign "></i>&nbsp;&nbsp; Price </label>
                </div>

                <div class="ic2 form5">
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


                <div class="input-container ic2 form6">
                    <h3><i class="fas fa-comment-alt"></i>&nbsp;&nbsp; Edition</h3>
                    <label><input class="radio-option" type="radio" name="edition" value="Hardcover" />&nbsp;&nbsp;Hardcover &nbsp;&nbsp;<i
                            class="fas fa-journal-whills"></i></label>
                    <label class="radio-option"><input type="radio" name="edition" value="Paperback" />&nbsp;&nbsp;Paperback &nbsp;&nbsp;<i
                            class="fas fa-scroll"></i></label>
                </div>


                <div class="input-container ic2 form7">
                    <h3><i class="fas fa-feather-alt"></i>&nbsp;&nbsp; Subject</h3>
                    <div class="content1">
                        <label class="radio-option e1"><input type="checkbox" name="subject" value="Classic">&nbsp; Classic &nbsp;
                            <i class="fas fa-signature"></i></label>
                        <label class="radio-option e2"><input type="checkbox" name="subject" value="Fantasy">&nbsp; Fantasy &nbsp;
                        <i class="fas fa-dragon"></i><br/></label>
                        <label class="radio-option e3"><input type="checkbox" name="subject" value="History">&nbsp;History &nbsp;
                        <i class="fas fa-landmark"></i></label>
                        <label class="radio-option e4"><input type="checkbox" name="subject" value="Horror">&nbsp;Horror&nbsp;
                        <i class="fas fa-skull"></i></label>
                    </div>

                </div>



                <input class="submit form9" type="submit" value="Add Book" />

            </div>
            </div>
<script>
        let priceChk = false;
        let isbn10Chk = false;
        let isbn13Chk = false;
        $("send").click(function(event) {
            if ($("ISBN10").first().val().lenght() = 10 && $("ISBN10").first().val().isNumeric()) {
                let isbn10Chk = true;
            }
            let isbn10Chk = false;
            $("error10").text("ISBN-10 must have 10 digits and is mandatory.").show().fadeOut(1000);
            event.preventDefault();
            else if ($("ISBN13").first().val().lenght() = 13 && $("ISBN13").first().val().lenght() > 0) {
                let isbn13Chk = true;
            }
            let isbn13Chk = false;
            $("error10").text("ISBN-13 must have 13 digits").show().fadeOut(1000);
            event.preventDefault();
            else if ($("price").first().val() >= 50.00 && $("price").first().val() <= 500.00) {
                let priceChk = true;
                return;
            }
            let priceChk = false;
            $("cost").text("The Price must be between 50.00$ and 500.00$").show().fadeOut(1000);
            event.preventDefault();
        });
    </script>
        </form>

    </main>


</body>

</html>