
function getDate(dd, mm, yy){
    
    var day = +dd;
    if ( (day<1) || (day>31) || ( isNaN(day) )) {
        return -1;
    }

    var month = {};
    month['января']=1;
    month['февраля']=2;
    month['марта']=3;
    month['апреля']=4;
    month['мая']=5;
    month['июня']=6;
    month['июля']=7;
    month['августа']=8;
    month['сентября']=9;
    month['октября']=10;
    month['ноября']=11;
    month['декабря']=12;
    var nMonth = month[mm];
    if  (typeof nMonth == 'undefined'){
        return -1;
    }
    var year = +yy;
    if ( (year<1) || (year>2999) || ( isNaN(year) )) {
        return -1;
    }
    var inDate = new Date(nMonth+'/'+day+'/'+year);
    var endDate = new Date( '12/31/'+year);
    var beetwen = ( endDate - inDate) / 1000 / 60 / 60 / 24;
    return beetwen;
}
process.stdout.write( getDate(process.argv[2], process.argv[3], process.argv[4] ) + '\n');
