$(function(){
  function appendPage(page) {
    let html = `<div class="row view__box">
                  <div class="view__box__content" >
                  <p>${page.content}</p>
                  </div>
                </div>`
    $(".container-fluid.view").append(html);
  }

  function appendNoPage(msg) {
    var html = `<div class='error'>${ msg }</div>`
    $(".container-fluid.view").append(html);
  }

  $(".search-input").on("keyup", function(){
    var input = $(".search-input").val()
    $.ajax({
      type: "GET",
      url:  "/pages/searches",
      data: { keyword: input },
      dataType: "json"
    })
    .done(function(pages){
      $(".container-fluid.view").empty();
      
      if (pages.length !== 0) {
        pages.forEach(function(page){
          appendPage(page);
        });
      } else if (input.length == 0) {
        return false;
      } else {
        appendNoPage("一致するポストがありません");
      }
    })
    .fail(function(){
      alert("エラー")
    });
  });
});