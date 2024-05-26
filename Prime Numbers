PARAMETERS: p_number TYPE i OBLIGATORY. " Input parameter

DATA: gv_mod TYPE int4.                " Modulus result
DATA: lv_is_prime TYPE c VALUE 'X'.    " Prime flag, initially true

DO p_number TIMES.
  IF sy-index > 1 AND sy-index < p_number.
    gv_mod = p_number MOD sy-index.
    IF gv_mod = 0.
      lv_is_prime = ''. " Not prime
      EXIT.
    ENDIF.
  ENDIF.
ENDDO.

IF lv_is_prime = 'X'.
  WRITE: / p_number, 'is a prime number'.
ELSE.
  WRITE: / p_number, 'is not a prime number'.
ENDIF.
