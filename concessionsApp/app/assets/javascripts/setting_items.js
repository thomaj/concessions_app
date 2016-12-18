function switchTableRow() {
    
  //Determine what table the element is in and set variables
  var table_to, table_from;
  if( document.getElementById('table_1').contains(this)) { table_to = "#table_2"; table_from = "#table_1"; }
  if( document.getElementById('table_2').contains(this)) { table_to = "#table_1"; table_from = "#table_2"; }
      
  //Set variables to the to_table and the data the button clicked represents
  var t1 = $(table_to + ' tbody');
  var data = $(this).closest('tr');
  
  var children = $(this).closest(table_from + ' tr').children();
  var wrapped = children.wrapInner("<div></div>");  //Wrap in div for animation
  
  wrapped.children().slideUp(function() { 
    data.remove();  //Remove the actual table row from the start table
  
    //First wrap the entire <td> data in a <tr> tag by calling its parent and then wrap
    //it. Then add this element to the new table after the last tr element
    t1.find("tr:last").after(children.parent().wrap("<tr />"));
  
    //Now find the div in the last tr (which was the element that was just added) and 
    //call the slide down function on it to show it nicely
    var last = t1.find('tr:last div');
    last.slideDown();
  
  });
   
  //This unwraps the data in the td elements. These were wrapped with a div for
  //animation, so this removes the div parent element.
  //NOTE: I assume these instructions are processed before the above slideUp/slideDown 
  //functions are finished, so it doesn't remove the div parent until another button is
  //clicked. So it is wrapped in a timeout function for this reason
  window.setTimeout(function() {
    wrapped_data = $(table_to + " tr td div > ");
    wrapped_data.unwrap();
  }, 800);

  console.log('finished');
  return true;
}
      
//Add the function to each button, and each button added after this
  $( document ).on( 'click', '.switch', switchTableRow );
console.log('here');



