# Video Transcript & Translation :

## 1. Intro

   In this short video, Morgane and I will go over the Assigment#1 from the Course 425-WebServic>
   Form processing in a client-server environment.

## 2. Structure - HTML

   * Form with different types of inputs - text / checkboxes / radio buttons
   * CSS is included so that the program has custom animations (Fade-Out) for our error messages.
   * Check inputs on the fly -> on focus out (ISBN + price)
   * For ISBN, decided not to go with the required attribute in order to do an additional check
   * The onsubmit event call a JS function to determine if the form should be submitted or not after the three checks performed via the the onfocusout events.

## 3. Data Check - JavaScript 

In order to perform upstream checks of the values provided by the user we have opted for JavaScript technology. As such it allows the program to display personalized error messages. 

The program uses three checks before submitting the form to confirm the entries provided are conform with with the required formating.

   * *Verifying the price*
   Upon the event onfocusout the function  _checkPrice()_  is called upon.
   This function verify that if there's an amount provided, it is between $50.00 and $500.00.
   If that is the case, the functions returns a boolean value.
   
   > Possible error message:
   > 
   > Please enter a value between 50.00$ and 500.00$.

   * *Verifying the ISBN10*

   As discussed with Mr. Reza, we devided ISBN into two different field ISBN-10 and ISBN-13.
   This permited us to verify the two format of the book numeration system.
   For the ISBN-10 the function  _checkISBN10()_  check that there's an entry in the field as it>
   As with the previous check, the system returns a boolean value.

>   ***Possible error message:***
>
>   * _ISBN-10 is mandatory. Please enter a 10 digits number._
>   * _You have entered " + ISBN10.length + " digits out of 10._
>> _After verification, we could have gone with a function that was already available with N>_
   
   * *Verifying the ISBN13*

   The third verification, is very similar to the ISBN10, but the field isn't mandatory and the >
   If the field is empty no error message is displayed. The function is named  _checkISBN13()_ .

   > **Possible error message:**
   > 
   > * _You have entered " + ISBN13.length + " digits out of 13._

   * *Sending the form*

   Finally, when the event submit is called the fuction  _sendForm()_  is called upon.
   If any of the values provided by the checks is **false** , the form is not submitted and an e>
   message is displayed bellow the submit button requesting the user to review their entries.

>   **Possible Error Message:**
> 
>   * _Please verify all of your entries._

## 4. Data Display - JSP

   * We created variables for each POST parameters.
   * The  _displayValue()_  method checks the value sent via POST and any of them isn't present >
   * The  _displayValues()_  method does similarly but for POST parameter that are present multi>
   It also display the multiple iteration of the parameters as a list.
   * The  _displayPrice()_  method allow to display 0.00 if the price POST Parameter is empty is>

## 5. Demo ( https://www.youtube.com/watch?v=qa_nvjTtC58 )
   
   * First part is showing the form without any error message.
   * Second part goes through multiple possible error message and show the fade out effect of th>
   * The last part show the error message when the submit button is clicked and there's invalid >


## 6. Conclusion

   This was Morgane and Michael for the Assigment 1 of the course 425-Webservices.
