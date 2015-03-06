// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap

  <meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8"  />

    <!-- style sheet for default theme(flat azure) -->

    <link href=" http://cdn.syncfusion.com/js/web/flat-azure/ej.web.all-latest.min.css" rel="stylesheet" />

    <!--scripts-->

    <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>

    <script src="http://ajax.aspnetcdn.com/ajax/globalize/0.1.1/globalize.min.js"></script>

    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <script src="http://cdn.syncfusion.com/js/web/ej.web.all-latest.min.js"></script>
<script type="text/javascript">    

$(function () {

      // document ready

// simple RTE creation

      $("#feedBackEditor").ejRTE();      

});

</script>