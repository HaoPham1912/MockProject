<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="seat.css" rel="stylesheet">  
    <script src="assets/js/seat.js"></script>
</head>
<jsp:include page="headerforUser.jsp" />  
<body class="loader-active">
    <!--== What We Do Area Start ==-->
    <section id="what-do-area" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-xs-4 col-md-4">
                    <div class="card card-product mb-0">
                        <div id="title-seat" style="margin-bottom: 5px">
                            <h3>Choose your place</h3>
                        </div>
                        <table id="myTable">
                            <tbody>
                                <tr>
                                    <th scope="row"></th>
                                    <div class=" col-md-4">
                                        <td>
                                            <div
                                                style="display: inline-block;width: 15px;height: 15px;border: 1px solid #919191;float:left;margin-left:20px;margin-right:5px;background-color:#fff;">
                                            </div>
                                            <span style="float: left">Available</span>
                                        </td>
                                    </div>
                                    <div class=" col-md-4">
                                        <td>
                                            <div
                                                style="display: inline-block;width: 15px;height: 15px;border: 1px solid #CFCFCF;background-color:#CFCFCF;float:left;margin-left:10px;margin-right:5px;">
                                            </div>
                                            <span style="float: left">Unavailable</span>
                                        </td>
                                    </div>
                                    <div class=" col-md-4">
                                        <td>
                                            <div
                                                style="display: inline-block;width: 15px;height: 15px;border: 1px solid  #BADF41;background-color: #BADF41;float:left;margin-left:10px;margin-right:5px;">
                                            </div>
                                            <span style="float: left">Chose</span>
                                        </td>
                                    </div>
                                </tr>
                            </tbody>
                        </table>

                        <table id="table">
                            <tbody>
                                <div class=" col-md-4">
                                    <tr style="text-align: center">
                                        <th scope="row"></th>
                                        <td COLSPAN=4><label id="wheel"></td>
                                       
                                    </tr>
                                </div>
                                <div class=" col-md-4">
                                    <tr style="text-align: center">
                                        <th scope="row"></th>
                                        <td COLSPAN=2><label>Floor1</td>
                                        <td COLSPAN=2><label>Floor2</td>
                                    </tr>
                                </div>
                                <div class=" col-md-4">
                                    <tr style="text-align: center">
                                        <th scope="row"></th>
                                        <td><button type="button" class="seat" id="seat1col1" data-toggle="tooltip" data-placement="bottom" title="Sốghế"></td>
                                        <td style="text-align: left"><button type="button" class="seat" id="seat1col2" data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </td>
                                        <td style="text-align: right"><button type="button" class="seat" id="seat1col3" data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </td>
                                        <td><button type="button" class="seat" id="seat1col4" data-toggle="tooltip" data-placement="bottom" title="Sốghế"></td>

                                    </tr>
                                </div>
                                <div class=" col-md-4">
                                    <tr style="text-align: center">
                                        <th scope="row"></th>
                                        <td><button type="button" class="seat" id="seat2col1" data-toggle="tooltip" data-placement="bottom" title="Sốghế"></td>
                                        <td style="text-align: left"><button type="button" class="seat" id="seat2col2" data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </td>
                                        <td style="text-align: right"><button type="button" class="seat" id="seat2col3" data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </td>
                                        <td><button type="button" class="seat" id="seat2col4" data-toggle="tooltip" data-placement="bottom" title="Sốghế"></td>

                                    </tr>
                                </div>
                                <div class=" col-md-4">
                                    <tr style="text-align: center">
                                        <th scope="row"></th>
                                        <td><button type="button" class="seat" id="seat3col1" data-toggle="tooltip" data-placement="bottom" title="Sốghế"></td>
                                        <td style="text-align: left"><button type="button" class="seat" id="seat3col2" data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </td>
                                        <td style="text-align: right"><button type="button" class="seat" id="seat3col3" data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </td>
                                        <td><button type="button" class="seat" id="seat3col4" data-toggle="tooltip" data-placement="bottom" title="Sốghế"></td>

                                    </tr>
                                </div>
                                <div class=" col-md-4">
                                    <tr style="text-align: center">
                                        <th scope="row"></th>
                                        <td><button type="button" class="seat" id="seat4col1" data-toggle="tooltip" data-placement="bottom" title="Sốghế"></td>
                                        <td style="text-align: left"><button type="button" class="seat" id="seat4col2" data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </td>
                                        <td style="text-align: right"><button type="button" class="seat" id="seat4col3" data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </td>
                                        <td><button type="button" class="seat" id="seat4col4" data-toggle="tooltip" data-placement="bottom" title="Sốghế"></td>
                                    </tr>
                                </div>
                                <div class=" col-md-4">
                                    <tr style="text-align: center">
                                        <th scope="row"></th>
                                        <td><button type="button" class="seat" id="seat5col1" data-toggle="tooltip" data-placement="bottom" title="Sốghế"></td>
                                        <td style="text-align: left"><button type="button" class="seat" id="seat5col2" data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </td>
                                        <td style="text-align: right"><button type="button" class="seat" id="seat5col3" data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </td>
                                        <td><button type="button" class="seat" id="seat5col4" data-toggle="tooltip" data-placement="bottom" title="Sốghế"></td>

                                    </tr>
                                </div>
                                <div class=" col-md-4">
                                    <tr style="text-align: center">
                                        <th scope="row"></th>
                                        <td><button type="button" class="seat" id="seat6col1" data-toggle="tooltip" data-placement="bottom" title="Sốghế"></td>
                                        <td style="text-align: left"><button type="button" class="seat" id="seat6col2" data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </td>
                                        <td style="text-align: right"><button type="button" class="seat" id="seat6col3" data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </td>
                                        <td><button type="button" class="seat" id="seat6col4" data-toggle="tooltip" data-placement="bottom" title="Sốghế"></td>

                                    </tr>
                                </div>
                                <div class=" col-md-4">
                                    <tr style="text-align: center">
                                        <th scope="row"></th>
                                        <td><button type="button" class="seat" id="seat7col1" data-toggle="tooltip" data-placement="bottom" title="Sốghế"></td>
                                        <td style="text-align: left"><button type="button" class="seat" id="seat7col2" data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </td>
                                        <td style="text-align: right"><button type="button" class="seat" id="seat7col3" data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </td>
                                        <td><button type="button" class="seat" id="seat7col4" data-toggle="tooltip" data-placement="bottom" title="Sốghế"></td>

                                    </tr>
                                </div>


                            </tbody>
                        </table>

                    </div>              
                    <div id="styleseat" >               
                        <table  width="350" height="65">
                            <tr>
                                <th scope="row"></th>
                                <td><p> Selected Seat: </p></td>
                                <td style="float:right"><p id="numSeat">0</p></td>
                            </tr>
                            <tr>
                                <th scope="row"></th>
                                <td><p> Cost: </p></td>
                                <td style="float:right"><p id="cost" ></p></td>
                            </tr>
                        <table>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--== Scroll Top Area Start ==-->
    <!-- <div class="scroll-top">
        <img src="assets/img/scroll-top.png" alt="JSOFT">
    </div> -->
</body>
    <jsp:include page="footer.jsp" />  

</html>