DATA: gv_result(15) TYPE p DECIMALS 2.          " Variable to store the result

PARAMETERS: p_num1(7) TYPE p DECIMALS 2 OBLIGATORY,  " First number input (mandatory)
            p_num2(7) TYPE p DECIMALS 2 OBLIGATORY.  " Second number input (mandatory)

PARAMETERS: rb_add RADIOBUTTON GROUP rbg1,           " Addition selection
            rb_subtract RADIOBUTTON GROUP rbg1,      " Subtraction selection
            rb_divide RADIOBUTTON GROUP rbg1,        " Division selection
            rb_multiply RADIOBUTTON GROUP rbg1,      " Multiplication selection
            rb_modulus  RADIOBUTTON GROUP rbg1.      " Modulus selection

IF rb_add EQ 'X'.                                   " If addition is selected
  gv_result = ( p_num1 + p_num2 ).                  " Perform addition
  WRITE : / 'Result: ', gv_result.                  " Write the result
ELSEIF rb_subtract EQ 'X'.                           " If subtraction is selected
  gv_result = ( p_num1 - p_num2 ).                   " Perform subtraction
  WRITE : / 'Result: ', gv_result.                  " Write the result
ELSEIF rb_divide EQ 'X'.                             " If division is selected
  IF p_num2 EQ 0000000.                              " Check for division by zero
    WRITE:/ 'Denominator cannot be zero!'.           " Display error message
  ELSEIF p_num1 EQ 0.                                 " Check for dividend being zero
    gv_result = 0.                                   " Result is zero
  ELSE.
    gv_result = ( p_num1 / p_num2 ).                " Perform division
    WRITE : / 'Result: ', gv_result.                " Write the result
  ENDIF.
ELSEIF rb_multiply EQ 'X'.                           " If multiplication is selected
  gv_result = ( p_num1 * p_num2 ).                   " Perform multiplication
  WRITE : / 'Result: ', gv_result.                  " Write the result
ELSEIF rb_modulus EQ 'X'.                            " If modulus is selected
  gv_result = p_num1 MOD p_num2.                     " Perform modulus operation
  WRITE : / 'Result: ', gv_result.                  " Write the result
ENDIF.
