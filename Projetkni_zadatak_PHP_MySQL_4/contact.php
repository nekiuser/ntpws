<?php
print'
     <div class="Contact form">
        <h1>Contact form</h1>
           
                <div class="map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2781.797289129728!2d15.966938676743391!3d45.79528871128627!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4765d68b441ce2df%3A0x54e2a03adf42446f!2sTehni%C4%8Dko%20veleu%C4%8Dili%C5%A1te%20u%20Zagrebu!5e0!3m2!1shr!2sus!4v1692631198737!5m2!1shr!2sus" width="100%" height="650px" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
              <div style="margin-top:50px;"></div>
              <form action="sendform.php"
              id="contact_form"
              name="contact_form"
               method="POST">

              <label for="fname">First Name</label>
              <input type="text" id="fname" name="firstname" placeholder="Your name..">
          
              <label for="lname">Last Name</label>
              <input type="text" id="lname" name="lastname" placeholder="Your last name..">
          
              <label for="email">E-mail</label>
              <input type="text" id="email" name="email" placeholder="Your E-mail..">

              <label for="country">Country</label>
              <select id="country" name="country">
                <option value="">Please select</option>
                <option value="australia">Australia</option>
                <option value="canada">Canada</option>
                <option value="usa">USA</option>
                <option value="hr" selected>Croatia</option>
              </select>
          
              <label for="subject">Subject</label>
              <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>
          
              <input type="submit" value="Submit">
           </form>
     </div> '
?>
