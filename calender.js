function showcale() {
    var d = new Date();
    var date = d.toDateString();
    var day = d.getDate();
    document.getElementById("c_header").innerHTML = day;
    document.getElementById("c_container").innerHTML = date;
}