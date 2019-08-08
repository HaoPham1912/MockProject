<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--=== Favicon ===-->
 <link href="seat.css" rel="stylesheet">
 <script src="assets/js/seat.js"></script>
</head>

<body class="loader-active">
	<jsp:include page="headerforUser.jsp" />
	<!--== What We Do Area Start ==-->
	<section id="what-do-area" class="" style="padding-top:50px;padding-bottom:50px;">
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
                                        <td><button type="button" class="seat" id="seat1col1" data-toggle="tooltip" onclick="changeSeatColor(this);getCost(${price})"
                                                data-placement="bottom" title="aaaa"></button></td>
                                        <td style="text-align: left"><button type="button" class="seat" id="seat1col2"  onclick="changeSeatColor(this);getCost(${price})"
                                                data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </button></td>
                                        <td style="text-align: right"><button type="button" class="seat" id="seat1col3"  onclick="changeSeatColor(this);getCost(${price})"
                                                data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </button></td>
                                        <td><button type="button" class="seat" id="seat1col4" data-toggle="tooltip"  onclick="changeSeatColor(this);getCost(${price})"
                                                data-placement="bottom" title="Sốghế"></button></td>
                                    </tr>
                                </div>
                                <div class=" col-md-4">
                                    <tr style="text-align: center">
                                        <th scope="row"></th>
                                        <td><button type="button" class="seat" id="seat2col1" data-toggle="tooltip" onclick="changeSeatColor(this);getCost(${price})"
                                                data-placement="bottom" title="Sốghế"></button></td>
                                        <td style="text-align: left"><button type="button" class="seat" id="seat2col2" onclick="changeSeatColor(this);getCost(${price})"
                                                data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </button></td>
                                        <td style="text-align: right"><button type="button" class="seat" id="seat2col3" onclick="changeSeatColor(this);getCost(${price})"
                                                data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </button></td>
                                        <td><button type="button" class="seat" id="seat2col4" data-toggle="tooltip" onclick="changeSeatColor(this);getCost(${price})"
                                                data-placement="bottom" title="Sốghế"></button></td>

                                    </tr>
                                </div>
                                <div class=" col-md-4">
                                    <tr style="text-align: center">
                                        <th scope="row"></th>
                                        <td><button type="button" class="seat" id="seat3col1" data-toggle="tooltip" onclick="changeSeatColor(this);getCost(${price})"
                                                data-placement="bottom" title="Sốghế"></button></td>
                                        <td style="text-align: left"><button type="button" class="seat" id="seat3col2" onclick="changeSeatColor(this);getCost(${price})"
                                                data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </button></td>
                                        <td style="text-align: right"><button type="button" class="seat" id="seat3col3" onclick="changeSeatColor(this);getCost(${price})"
                                                data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </button></td>
                                        <td><button type="button" class="seat" id="seat3col4" data-toggle="tooltip" onclick="changeSeatColor(this);getCost(${price})"
                                                data-placement="bottom" title="Sốghế"></button></td>

                                    </tr>
                                </div>
                                <div class=" col-md-4">
                                    <tr style="text-align: center">
                                        <th scope="row"></th>
                                        <td><button type="button" class="seat" id="seat4col1" data-toggle="tooltip" onclick="changeSeatColor(this);getCost(${price})"
                                                data-placement="bottom" title="Sốghế"></button></td>
                                        <td style="text-align: left"><button type="button" class="seat" id="seat4col2" onclick="changeSeatColor(this);getCost(${price})"
                                                data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </button></td>
                                        <td style="text-align: right"><button type="button" class="seat" id="seat4col3" onclick="changeSeatColor(this);getCost(${price})"
                                                data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </button></td>
                                        <td><button type="button" class="seat" id="seat4col4" data-toggle="tooltip" onclick="changeSeatColor(this);getCost(${price})"
                                                data-placement="bottom" title="Sốghế"></button></td>
                                    </tr>
                                </div>
                                <div class=" col-md-4">
                                    <tr style="text-align: center">
                                        <th scope="row"></th>
                                        <td><button type="button" class="seat" id="seat5col1" data-toggle="tooltip" onclick="changeSeatColor(this);getCost(${price})"
                                                data-placement="bottom" title="Sốghế"></button></td>
                                        <td style="text-align: left"><button type="button" class="seat" id="seat5col2" onclick="changeSeatColor(this);getCost(${price})"
                                                data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </button></td>
                                        <td style="text-align: right"><button type="button" class="seat" id="seat5col3" onclick="changeSeatColor(this);getCost(${price})"
                                                data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </button></td>
                                        <td><button type="button" class="seat" id="seat5col4" data-toggle="tooltip" onclick="changeSeatColor(this);getCost(${price})"
                                                data-placement="bottom" title="Sốghế"></button></td>

                                    </tr>
                                </div>
                                <div class=" col-md-4">
                                    <tr style="text-align: center">
                                        <th scope="row"></th>
                                        <td><button type="button" class="seat" id="seat6col1" data-toggle="tooltip" onclick="changeSeatColor(this);getCost(${price})"
                                                data-placement="bottom" title="Sốghế"></button></td>
                                        <td style="text-align: left"><button type="button" class="seat" id="seat6col2" onclick="changeSeatColor(this);getCost(${price})"
                                                data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </button></td>
                                        <td style="text-align: right"><button type="button" class="seat" id="seat6col3" onclick="changeSeatColor(this);getCost(${price})"
                                                data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </button></td>
                                        <td><button type="button" class="seat" id="seat6col4" data-toggle="tooltip" onclick="changeSeatColor(this);getCost(${price})"
                                                data-placement="bottom" title="Sốghế"></button></td>

                                    </tr>
                                </div>
                                <div class=" col-md-4">
                                    <tr style="text-align: center">
                                        <th scope="row"></th>
                                        <td><button type="button" class="seat" id="seat7col1" data-toggle="tooltip" onclick="changeSeatColor(this);getCost(${price})"
                                                data-placement="bottom" title="Sốghế"></button></td>
                                        <td style="text-align: left"><button type="button" class="seat" id="seat7col2" onclick="changeSeatColor(this);getCost(${price})"
                                                data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </button></td>
                                        <td style="text-align: right"><button type="button" class="seat" id="seat7col3" onclick="changeSeatColor(this);getCost(${price})"
                                                data-toggle="tooltip" data-placement="bottom" title="Sốghế">
                                        </button></td>
                                        <td><button type="button" class="seat" id="seat7col4" data-toggle="tooltip" onclick="changeSeatColor(this);getCost(${price})"
                                                data-placement="bottom" title="Sốghế"></button></td>
                                    </tr>
                                </div>
                            </tbody>
                        </table>
                    </div>                   
                        <table width="350" height="65">
                            <tr>
                                <th scope="row"></th>
                                <td>
                                    <p> Selected Seat: </p>
                                </td>
                                <td style="float:right">
                                    <p id="numSeat">0</p>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"></th>
                                <td>
                                    <p> Cost: </p>
                                </td>
                                <td style="float:right">
                                    <p id="cost"></p>
                                </td>
                            </tr>
                        </table>
                </div>
            </div>
            <p>aaaaaaaaaaaaaaa</p>
        </div>
	</section>
	<jsp:include page="footer.jsp" />
</body>

</html>