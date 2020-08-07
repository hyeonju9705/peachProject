<%@ page contentType = "text/html;charset=utf-8" %>

<html>
  <head>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Year',  '가격'],
          ['2004', 400],
          ['2005', 460],
          ['2006', 1120],
          ['2007', 540]
        ]);

        var options = {
          title: '시세동향'
        };

        var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="chart_div" style="width: 500px; height: 300px;"></div>
  </body>
</html>
