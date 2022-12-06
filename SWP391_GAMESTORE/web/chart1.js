var ctx = document.getElementById('lineChart').getContext('2d');
var myChart = new Chart(ctx, {
    var a = document.getElementById();
    type: 'line',
    data: {
        labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
        datasets: [{
            label: 'Earnings in $',
            data: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2300, 0],
            backgroundColor: [
                'rgba(85,85,85, 1)'

            ],
            borderColor: 'rgb(41, 155, 99)',

            borderWidth: 1
        }]
    },
    options: {
        responsive: true
    }
});