;: Laptop Selection Guide for University Students in Sri Lanka
CLIPS> (defrule Menu
 (not (iffoundChoice ?))
=> (printout t crlf crlf
"What is your range of Budget? " crlf crlf
"1) Below 200,000" crlf crlf
"2) Between 200,000-400,000" crlf crlf
"3) Above 400,000" crlf crlf
" Enter your choise here (1|2|3): " )
(assert (iffoundChoice (read))))