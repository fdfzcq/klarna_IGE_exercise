// We need to import the CSS so that webpack will load it.
// The MiniCssExtractPlugin is used to separate it out into
// its own CSS file.
import css from "../css/app.css"

// webpack automatically bundles all modules in your
// entry points. Those entry points can be configured
// in "webpack.config.js".
//
// Import dependencies
//
import "phoenix_html"

var ctx = document.getElementById("pieChart").getContext('2d');

console.log("foo")

var data = {
    datasets: [{
        data: [10, 20, 30],
        backgroundColor: ['#1abc9c', '#2ecc71', '#34495e']
        //'rgb(255, 99, 132)',
    }],
    // These labels appear in the legend and in the tooltips when hovering different arcs
    labels: [
        '1',
        '2',
        '3'
    ]
};

var myPieChart = new Chart(ctx,{
  type: 'doughnut',
  data: data,
  options: []
});


