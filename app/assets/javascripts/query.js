function callquery(){
    $.ajax({
      type: "get",
      dataType: "json",
      url: "/queries",
      success: function(data){
      console.log(data);
    }
    });
  };