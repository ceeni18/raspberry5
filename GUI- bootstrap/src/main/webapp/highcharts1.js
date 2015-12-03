
var d1 = [2, 12, 3, 15, 16.0, 26.0, 29.8, 22.1, 20.1, 15, 8.6, 5];
var d2 = [0.3, 0.9, 5.5, 11.1, 16.1, 22.1, 25, 23.1, 22.1, 25, 8.7, 6];
$(function () {
	
    $('#container_fit').highcharts({
        title: {
            text: 'Comparative fitbit display',
            x: -20 //center
        },
        subtitle: {
            text: 'Source: dev.fitbit.com',
            x: -20
        },
        xAxis: {
            categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
        },
        yAxis: {
            title: {
                text: 'Steps (in thousands)'
            },
            plotLines: [{
                value: 0,
                width: 1,
                color: '#808080'
            }]
        },
        tooltip: {
            valueSuffix: 'K'
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'middle',
            borderWidth: 0
        },
        series: [{
            name: 'Tania',
            data: d1
        }, {
            name: 'Neha',
            data: d2
        }, {
            name: 'Ceeeni',
            data: [0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0]
        }, {
            name: 'Nancy',
            data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
        }]
    });
});