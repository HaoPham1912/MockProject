
//col 1
//document.getElementById("seat1col1").onclick = function() {alert(seat1col1)};
/*document.getElementById("seat2col1").onclick = function() {changeSeatColor(seat2col1),getCost(seat2col1)};
document.getElementById("seat3col1").onclick = function() {changeSeatColor(seat3col1),getCost(seat3col1)};
document.getElementById("seat4col1").onclick = function() {changeSeatColor(seat4col1),getCost(seat4col1)};
document.getElementById("seat5col1").onclick = function() {changeSeatColor(seat5col1),getCost(seat5col1)};
document.getElementById("seat6col1").onclick = function() {changeSeatColor(seat6col1),getCost(seat6col1)};
document.getElementById("seat7col1").onclick = function() {changeSeatColor(seat7col1),getCost(seat7col1)};
//col2
document.getElementById("seat1col2").onclick = function() {changeSeatColor(seat1col2),getCost(seat1col2)};
document.getElementById("seat2col2").onclick = function() {changeSeatColor(seat2col2),getCost(seat2col2)};
document.getElementById("seat3col2").onclick = function() {changeSeatColor(seat3col2),getCost(seat3col2)};
document.getElementById("seat4col2").onclick = function() {changeSeatColor(seat4col2),getCost(seat4col2)};
document.getElementById("seat5col2").onclick = function() {changeSeatColor(seat5col2),getCost(seat5col2)};
document.getElementById("seat6col2").onclick = function() {changeSeatColor(seat6col2),getCost(seat6col2)};
document.getElementById("seat7col2").onclick = function() {changeSeatColor(seat7col2),getCost(seat7col2)};
//col3
document.getElementById("seat1col3").onclick = function() {changeSeatColor(seat1col3),getCost(seat1col3)};
document.getElementById("seat2col3").onclick = function() {changeSeatColor(seat2col3),getCost(seat2col3)};
document.getElementById("seat3col3").onclick = function() {changeSeatColor(seat3col3),getCost(seat3col3)};
document.getElementById("seat4col3").onclick = function() {changeSeatColor(seat4col3),getCost(seat4col3)};
document.getElementById("seat5col3").onclick = function() {changeSeatColor(seat5col3),getCost(seat5col3)};
document.getElementById("seat6col3").onclick = function() {changeSeatColor(seat6col3),getCost(seat6col3)};
document.getElementById("seat7col3").onclick = function() {changeSeatColor(seat7col3),getCost(seat7col3)};
//col4
document.getElementById("seat1col4").onclick = function() {changeSeatColor(seat1col4),getCost(seat1col4)};
document.getElementById("seat2col4").onclick = function() {changeSeatColor(seat2col4),getCost(seat2col4)};
document.getElementById("seat3col4").onclick = function() {changeSeatColor(seat3col4),getCost(seat3col4)};
document.getElementById("seat4col4").onclick = function() {changeSeatColor(seat4col4),getCost(seat4col4)};
document.getElementById("seat5col4").onclick = function() {changeSeatColor(seat5col4),getCost(seat5col4)};
document.getElementById("seat6col4").onclick = function() {changeSeatColor(seat6col4),getCost(seat6col4)};
document.getElementById("seat7col4").onclick = function() {changeSeatColor(seat7col4),getCost(seat7col4)};
 */
$(function()
{
    $("#productform").validate(
      {
        rules: 
        {
          prodid: 
          {
            required: true,
            maxlength: 10
          },
          email: 
          {
            required: true,
            email: true,
            minlength:10
          },
          address:
          {
            required: true,
            rangelength:[10,250]
          },
          message: 
          {
            rangelength:[50,1050]
          }
        }
      });	
});


function Notify(mess)
{
	alert(mess);
}
function changeSeatColor(seat,numOfSeat)
{ 
	// var element = seat.style.getPropertyValue('background-color');
	var check = count();
	var s = getComputedStyle(seat);
	var c = String(s['background-color']);
	var blue = "rgb(183,219,65)";
	var gray = "rgb(251, 251, 251)";
	var condition = Math.abs(5 - numOfSeat);
	var bookbtn = document.getElementById("book").disabled = false;
	if(condition!=0)
	{
		if(check <= condition)
		{
			if(c === gray)
			{
				seat.style.backgroundColor = blue;
			}
			else{
				seat.style.backgroundColor = gray;
			}
			var checkAgain = count();
			if(checkAgain==1)
			{
				var bookbtn = document.getElementById("book").disabled = true;
			}
			else
			{
				var bookbtn = document.getElementById("book").disabled = false;
			}
		}
		else
		{
			if(c === gray)
			{
//				var bookbtn = document.getElementById("book").disabled = true;
				alert("You just can book only 5 seats");
			}
			else{
				seat.style.backgroundColor = gray;
			} 
			var checkAgain = count();
			if(checkAgain==1)
			{
				var bookbtn = document.getElementById("book").disabled = true;
			}
			else
			{
				var bookbtn = document.getElementById("book").disabled = false;
			}
		}
	}
	else
	{
		alert("You just can book only 5 seats");
		var bookbtn = document.getElementById("book").disabled = true;
	}
}
function count()
{
	var x = document.getElementById('table').getElementsByClassName('seat');
	var blue = "rgb(183, 219, 65)";
	var gray = "rgb(251, 251, 251)";
	var count = 1;
	for(var i = 0;i<=27;i++)
	{
		var s = getComputedStyle(x[i]);
		if(String(s['background-color'])===blue)
		{
			count++;
		}
	}
	return count;
}

function getCost(price)
{
	var x = document.getElementById('table').getElementsByClassName('seat');
	var blue = "rgb(183, 219, 65)";
	var gray = "rgb(251, 251, 251)";
	var count = 1;
	for(var i = 0;i<=27;i++)
	{
		var s = getComputedStyle(x[i]);
		if(String(s['background-color'])===blue)
		{   
			count++;
		}
	}
	document.getElementById("numSeat").innerHTML = String(count-1);
	document.getElementById("cost").innerHTML = String((count-1)*parseInt(price));
}

function getSeat()
{
	var seat =[];
	var x = document.getElementById('table').getElementsByClassName('seat');
	var blue = "rgb(183, 219, 65)";
	var count = 1;
	for(var i = 0;i<=27;i++)
	{
		var s = getComputedStyle(x[i]);
		if(String(s['background-color'])===blue)
		{
			// alert(x[i].title);
			// document.getElementById("aaaa").innerHTML = x[i].title;
			seat.push(x[i].title);
		}
	}
	document.getElementById("seatDetail").innerHTML = seat;
	document.getElementById("inputSeatDetail").value = seat;
}

function setAvailableSeat(a)
{
	var gray = "rgb(206,206,206)";
	var bookbtn = document.getElementById("book").disabled = true;
	var x = document.getElementById('table').getElementsByClassName('seat');
	for(var i = 0;i<=27;i++)
	{
		if(check(a,x[i].title))	
		{
			x[i].style.backgroundColor = gray;
			x[i].disabled  = true;
		}
	}
}
function setAvailableSeatList(a)
{
	var gray = "rgb(206,206,206)";
	var x = document.getElementById('table').getElementsByClassName('seat');
	for(var i = 0;i<=27;i++)
	{
		if(check(a,x[i].title))	
		{
			x[i].style.backgroundColor = gray;
			x[i].disabled  = true;
		}
	}
}
function check(arr,a)
{
	for(var i=0;i<=arr.length;i++)
	{
		if(arr[i]==a)
		{
			return true;
		}
	}
	return false;
}

function getConfirmation(){
	return confirm("Check your information before booking");
}

function getDeleteConfirmation(){
	return confirm("Do you want to delete!");
}


