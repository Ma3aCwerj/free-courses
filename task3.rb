secArray = ['секунда','секунды','секунд']
minuteArray = ['минута','минуты','минут']
hourArray = ['час','часа','часов']

time_1 = ARGV[0].to_i
time_2 = ARGV[1].to_i

msSumm =time_1+time_2

sec = msSumm%60
minute =(msSumm-sec)%3600/60
hour = (msSumm-minute*60-sec)/3600

def format(param,paramArray)
   
   if (((param-param%10)/10)==1)
       return(paramArray[2])
    else
        case (param%10)
        when 1
            return(paramArray[0])
        when 2..4
            return(paramArray[1])
        else
            return(paramArray[2])
        end
    end
end

def outResult(par, parArray)
    if (par==0)
        return ('')
    else
        return ("#{par} #{format(par, parArray)}")
    end
end
    
puts ("#{outResult(hour,hourArray)} #{outResult(minute,minuteArray)} #{outResult(sec,secArray)}").strip
