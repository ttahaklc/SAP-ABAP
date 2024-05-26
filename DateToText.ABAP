DATA: lv_day_text TYPE string,
      lv_month_text TYPE string.

* Determine the day text based on the day part of the date
CASE sy-datum+6(2).
  WHEN '01'.
    lv_day_text = 'first'.
  WHEN '02'.
    lv_day_text = 'second'.
  WHEN '03'.
    lv_day_text = 'third'.
  WHEN '04'.
    lv_day_text = 'fourth'.
  WHEN '05'.
    lv_day_text = 'fifth'.
  WHEN '06'.
    lv_day_text = 'sixth'.
  WHEN '07'.
    lv_day_text = 'seventh'.
  WHEN '08'.
    lv_day_text = 'eighth'.
  WHEN '09'.
    lv_day_text = 'ninth'.
  WHEN '10'.
    lv_day_text = 'tenth'.
  WHEN '11'.
    lv_day_text = 'eleventh'.
  WHEN '12'.
    lv_day_text = 'twelfth'.
  WHEN '13'.
    lv_day_text = 'thirteenth'.
  WHEN '14'.
    lv_day_text = 'fourteenth'.
  WHEN '15'.
    lv_day_text = 'fifteenth'.
  WHEN '16'.
    lv_day_text = 'sixteenth'.
  WHEN '17'.
    lv_day_text = 'seventeenth'.
  WHEN '18'.
    lv_day_text = 'eighteenth'.
  WHEN '19'.
    lv_day_text = 'nineteenth'.
  WHEN '20'.
    lv_day_text = 'twentieth'.
  WHEN '21'.
    lv_day_text = 'twenty-first'.
  WHEN '22'.
    lv_day_text = 'twenty-second'.
  WHEN '23'.
    lv_day_text = 'twenty-third'.
  WHEN '24'.
    lv_day_text = 'twenty-fourth'.
  WHEN '25'.
    lv_day_text = 'twenty-fifth'.
  WHEN '26'.
    lv_day_text = 'twenty-sixth'.
  WHEN '27'.
    lv_day_text = 'twenty-seventh'.
  WHEN '28'.
    lv_day_text = 'twenty-eighth'.
  WHEN '29'.
    lv_day_text = 'twenty-ninth'.
  WHEN '30'.
    lv_day_text = 'thirtieth'.
  WHEN '31'.
    lv_day_text = 'thirty-first'.
ENDCASE.

* Determine the month text based on the month part of the date
CASE sy-datum+4(2).
  WHEN '01'.
    lv_month_text = 'January'.
  WHEN '02'.
    lv_month_text = 'February'.
  WHEN '03'.
    lv_month_text = 'March'.
  WHEN '04'.
    lv_month_text = 'April'.
  WHEN '05'.
    lv_month_text = 'May'.
  WHEN '06'.
    lv_month_text = 'June'.
  WHEN '07'.
    lv_month_text = 'July'.
  WHEN '08'.
    lv_month_text = 'August'.
  WHEN '09'.
    lv_month_text = 'September'.
  WHEN '10'.
    lv_month_text = 'October'.
  WHEN '11'.
    lv_month_text = 'November'.
  WHEN '12'.
    lv_month_text = 'December'.
ENDCASE.

* Output the formatted date
ULINE.
WRITE: 'Today is the', lv_day_text, 'day of', lv_month_text, sy-datum+0(4).
ULINE.
