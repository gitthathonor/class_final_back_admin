<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="layout/header.jsp" %>
        <div id="statistics_wrap">
            <div class="statistics_page">

                <div id="chart_div" style="width:900px; height: 500px;"></div>

                <table id="data">
                    <caption>방문자 통계</caption>
                    <thead>
                        <tr class="table_title">
                            <td></td>
                            <th>12.06</th>
                            <th>12.07</th>
                            <th>12.08</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th>1</th>
                            <td>10</td>
                            <td>20</td>
                            <td>30</td>
                        </tr>
                        <tr>
                            <th>2</th>
                            <td>10</td>
                            <td>20</td>
                            <td>30</td>
                        </tr>
                        <tr>
                            <th>3</th>
                            <td>10</td>
                            <td>20</td>
                            <td>30</td>
                        </tr>
                    </tbody>
                </table>

                <div id="visit_info" class="form">
                    <div class="form_title">
                        <h2 class="title">방문자 통계</h2>
                    </div>
                    <div class="form_table">
                        <table id="data">
                            <tr class="table_title">
                                <td>유저명</td>
                                <td>연락처</td>
                                <td>이메일</td>
                            </tr>
                            <tr>
                                <td>ssar</td>
                                <td>010-1111-1111</td>
                                <td>ssar@nate.com</td>
                            </tr>
                            <tr>
                                <td>ssar</td>
                                <td>010-1111-1111</td>
                                <td>ssar@nate.com</td>
                            </tr>
                            <tr>
                                <td>ssar</td>
                                <td>010-1111-1111</td>
                                <td>ssar@nate.com</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div id="category_class_info" class="form">
                    <div class="form_title">
                        <h2 class="title">분야별 클래스 통계</h2>
                    </div>
                    <div class="form_table">
                        <table>
                            <tr class="table_title">
                                <td>유저명</td>
                                <td>연락처</td>
                                <td>이메일</td>
                            </tr>
                            <tr>
                                <td>ssar</td>
                                <td>010-1111-1111</td>
                                <td>ssar@nate.com</td>
                            </tr>
                            <tr>
                                <td>ssar</td>
                                <td>010-1111-1111</td>
                                <td>ssar@nate.com</td>
                            </tr>
                            <tr>
                                <td>ssar</td>
                                <td>010-1111-1111</td>
                                <td>ssar@nate.com</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>

        </div>
        </div>
        <!-- #wrap -->

        <script src="/js/main.js"></script>
        </div>
        </body>

        <!-- 통계 -->
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
            google.charts.load('current', { 'packages': ['corechart'] });
            google.charts.setOnLoadCallback(drawVisualization);

            function drawVisualization() {
                var data = google.visualization.arrayToDataTable([
                    ['Month', 'Bolivia', 'Ecuador', 'Madagascar', 'Average'],
                    ['2004/05', 165, 938, 522, 614.6],
                    ['2005/06', 135, 1120, 599, 682],
                    ['2006/07', 157, 1167, 587, 623],
                    ['2007/08', 139, 1110, 615, 609.4],
                    ['2008/09', 136, 691, 629, 569.6]
                ]);
                var options = {
                    // title: '방문자 통계',
                    vAxis: { title: '' },
                    hAxis: { title: '날짜' },
                    seriesType: 'bars',
                    series: { 5: { type: 'line' } }
                };

                var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
                chart.draw(data, options);
            }


        </script>
        <script type="text/javascript">
            $(function () {
                $('#data').visualize({ type: "bar" });
                $("#data").visualize({ type: "area" });
                $("#data").visualize({ type: "pie" });
                $("#data").visualize({ type: "line" });
            });
        </script>


        </html>