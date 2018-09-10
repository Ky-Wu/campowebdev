$( document ).ready(function() {
      var heights = $(".equal-height").map(function() {
                return $(this).height();
                    }).get(),

          maxHeight = Math.max.apply(null, heights);

          $(".equal-height").height(maxHeight);
});
