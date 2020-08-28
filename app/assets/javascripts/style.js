$(function() {
  if(location.pathname != "/") {
      $('.nav li a[href^="/' + location.pathname.split("/")[1] + '"]').addClass('current');
  } else $('.nav li a:eq(0)').addClass('current');
});

// $(function() {
//   if('.result__balance dd' < 30000) {
//     $('.result__balance dd').addClass('minus')
//   }
// })

// $(function() {
//   let ele = document.getElementById('bal').innerHTML;
//   let ele2 = ele.slice(0, -1).replace(/,/g, '');
//   if(ele2 < 30000) {
//     $('.result__balance dd').addClass('minus');
//   }
// });

$(function() {
  var elements = document.getElementsByClassName('bal');
  for (let i = 0; i < elements.length; i++) {
    let element = elements[i];
    let element2 = element.innerHTML.slice(0, -1).replace(/,/g, '');
    if(element2 < 0) {
      $(element).addClass('minus');
    }
  }
  // var ele2 = ele.slice(0, -1).replace(/,/g, '');
  // if(ele2 < 30000) {
  //   $('.result__balance dd').addClass('minus');
  // }
});
