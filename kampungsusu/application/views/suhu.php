\<div class="col-lg-12">
    <div class="panel panel-default">
        <div class="panel-heading">
            Tabel Monitoring
        </div>
        <!-- /.panel-heading -->
        <div class="panel-body">
            <script>
                $(function() {
                                //Highcharts with mySQL and PHP - Ajax101.com 
                                var months = [];
                                var days = [];
                                var switch1 = true;
                                // $.get('a', function(data) {
                                $.get('http://localhost/kampungsusu/apirecieve/suhu.php', function(data) {
 
                                    data = data.split('/');
                                    for (var i in data) {
                                        if (switch1 == true) {
                                            months.push(data[i]);
                                            switch1 = false;
                                        } else {
                                            days.push(parseFloat(data[i]));
                                            switch1 = true;
                                        }
                                    }
                                
                                months.pop();
                                $('#chart').highcharts({
                                    chart: {
                                    type: 'spline',
                                    events: {
                                        load: function () {
                                            // set up the updating of the chart each second
                                            xAxis = this.xAxis[0];
                                            series = this.series[0];
                                            switch1 = false;
                                            console.log(months);
                                            console.log(days);
                                            setInterval(function () {
                                                months = [];
                                                days = [];
                                                switch1 = true;
                                                $.get('http://localhost/kampungsusu/apirecieve/suhu.php', function(data) {
                                                data = data.split('/');
                                                for (var i in data) {
                                                    if (switch1 == true) {
                                                        months.push(data[i]);
                                                        switch1 = false;
                                                    } else {
                                                        days.push(parseFloat(data[i]));
                                                        switch1 = true;
                                                    }
                                                }
                                                console.log(months);
                                                console.log(days);
                                                xAxis.setCategories(months, false);
                                                series.setData(days,true);
                                                months.pop();
                                            })
                                            }, 5000);
                                        }
                                    }
                                    },
                                    title: {
                                    text: 'Grafik SUHU'
                                    },
                                    subtitle: {
                                    text: 'Untuk Monitoring Data Masuk dari Sensor DS18B20'
                                    },
                                    xAxis: {
                                    title: {
                                    text: 'Waktu'
                                    },
                                    categories: months
                                    },
                                    yAxis: {
                                    title: {
                                    text: 'SUHU'
                                    },
                                    labels: {
                                    formatter: function() {
                                    return this.value + ''
                                    }
                                    }
                                    },
                                    tooltip: {
                                    crosshairs: true,
                                    shared: true,
                                    valueSuffix: ''
                                    },
                                    plotOptions: {
                                    spline: {
                                    marker: {
                                    radius: 4,
                                    lineColor: '#666666',
                                    lineWidth: 2
                                    }
                                    }
                                    },
                                    series: [{
                                        name: 'Values',
                                        data: days,
                                        zones: [{
                                            value: 0.1,
                                            color: '#FF0000'
                                        }, {
                                            value: 0.5,
                                            color: '#00FF00'
                                        }, {
                                            color: '#FF0000'
                                        }]
                                    }]
                                    });
                                    });
                                    });
            </script>
            <div id="chart" style="height: 400px; margin: 0 auto">
            </div>
        </div>
    </div>
</div>