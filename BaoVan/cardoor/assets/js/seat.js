
//col 1


function changeSeatColor(seat)
{ 
    // var element = seat.style.getPropertyValue('background-color');
    var check = count();
    var s = getComputedStyle(seat);
    var c = String(s['background-color']);
    var blue = "rgb(183,219,65)";
    var gray = "rgb(251, 251, 251)";
    if(check == true)
    {
        if(c === gray)
        {
            seat.style.backgroundColor = blue;
        }
        else{
            seat.style.backgroundColor = gray;
        }
    }
    else
    {
        if(c === gray)
        {
            alert("You just can book only 6 seats");
        }
        else{
            seat.style.backgroundColor = gray;
        }  
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
    if(count > 6) return false;
    else return true;
}

function getCost()
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
    document.getElementById("cost").innerHTML = String((count-1)*5000);
}

function getSeat(s)
{
    var seat =[""];
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
    document.getElementById("aaaa").innerHTML = seat;
}

$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
  });



function setAvailableSeat()
{
    var a = ["1","2","4"];
    var red = "rgb(220,20,60)"
    var x = document.getElementById('table').getElementsByClassName('seat');
    for(var i = 0;i<=27;i++)
    {
        if(check(a,x[i].title))
        {
            // x[i].style.backgroundColor = "red";
            x[i].style.backgroundImage = "url('https://image.flaticon.com/icons/svg/271/271965.svg')";
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
 
