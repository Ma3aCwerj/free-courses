function hour(h){
	if(h==0)return "";
	var n = h%100;
	var n1 = n%10;
	if(n>10 && n<20) return h+" часов";
	if(n1>1 && n1<5) return h+" часа";
	if(n1==1)return h+ " час";
	return h+" часов";
}
function minute(h){
	if(h==0)return "";
	var n = h%100;
	var n1 = n%10;
	if(n>10 && n<20) return h+" минут";
	if(n1>1 && n1<5) return h+" минуты";
	if(n1==1)return h+ " минута";
	return h+" минут";
}
function second(h){
	if(h==0)return "";
	var n = h%100;
	var n1 = n%10;
	if(n>10 && n<20) return h+" секунд";
	if(n1>1 && n1<5) return h+" секунды";
	if(n1==1)return h+ " секунда";
	return h+" секунд";
}

function getDiff(a,b){
    var time1 = +a;
    const maxT =100000;
    const minT = 1;
    if ( (time1<minT) || (time1>maxT) || ( isNaN(time1) )) {
        return -1;
    }
    var time2 = +b;
    if ( (time2<minT) || (time2>maxT) || ( isNaN(time2) )) {
        return -1;
    }
    var summ = time1+time2;
    var s = summ%60;
    var m = parseInt(summ%3600/60);
    var h = parseInt(summ/60/60);
    return hour(h)+((h !== 0 && (m !== 0 || s !== 0)) ? " " : "")+minute(m)
    +((m !== 0 && s !== 0) ? " " : "")+second(s);
}

process.stdout.write( getDiff(process.argv[2], process.argv[3]+'\n'));
