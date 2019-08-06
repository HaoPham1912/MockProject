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
    for(var i = 0;i<=24;i++)
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

function ex()
{
    var x = document.getElementById('startDate2');
    alert(x.value);
}
