$(function(){
  var loaded = false;
  $("#contact_form iframe").on('load', function(){
    if(loaded){
      this.height = "250px";
      setTimeout(function(){ $("#contact_form").modal('hide'); }, 5000);
    }
    loaded = true;
  });
});
