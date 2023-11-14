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
:;Rule Below Budget of Rs.200,000 
:;-----------R1---------------------
(defrule Below_200000_0 
(iffoundChoice 1)
?retractCh1 <- (iffoundChoice 1)
(not (ifOSchoise ?))
 =>  (retract ?retractCh1)
(printout t crlf crlf
"Select an Operating System " crlf crlf
"1) Windows" crlf crlf
"2) MacOS" crlf crlf
" Enter your choise here (1|2): " )
 (assert (ifOSchoise (read))))
:;--------------R2--------------------
(defrule Below_200000_1
 (ifOSchoise 2)
 ?retractChy <- (ifOSchoise 2)
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf "Laptops are not available."crlf crlf ))
:;--------------R3--------------------
(defrule Below_200000_2
 (ifOSchoise 1)
 ?retractChy <- (ifOSchoise 1)
(not (ifPerformanceChoise ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf
"Select The Performance Level" crlf crlf
"1) Low" crlf crlf
"2) Medium" crlf crlf
" Enter your choise here (1|2): " )
 (assert (ifPerformanceChoise (read))))
:;--------------R4--------------------
(defrule Below_200000_3
 (ifPerformanceChoise 1)
 ?retractChy <- (ifPerformanceChoise 1)
 =>
 (retract ?retractChy)
(printout t crlf "Two Laptops available:" crlf
          "1) LENOVO IDEAPAD 15IGL05 CELERON 4020" crlf
          "2) LENOVO IDEAPAD SLIM 3 CORE I3 13TH GEN 15IRU8" crlf crlf))
:;--------------R5--------------------
(defrule Below_200000_4
 (ifPerformanceChoise 2)
 ?retractChy <- (ifPerformanceChoise 2)
(not (ifPurposeChoise ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf
"What is your purpose (or area of study)?" crlf crlf
"1) General Purpose" crlf crlf
"2) Programming (IT)" crlf crlf
"3) Design & Palnning + Engineering" crlf crlf
" Enter your choise here (1|2|3): " )
 (assert (ifPurposeChoise (read))))
:;--------------R6--------------------
(defrule Below_200000_5
 (ifPurposeChoise 1)
 ?retractChy <- (ifPurposeChoise 1)
 =>
 (retract ?retractChy)
(printout t crlf "Two Laptops available:" crlf
          "1) MSI MODERN 14 C11M I3 11TH GEN" crlf
          "2) ASUS VIVOBOOK 15 X1504 I3 12TH GEN" crlf crlf))
:;--------------R7--------------------
(defrule Below_200000_6
 (ifPurposeChoise 2)
 ?retractChy <- (ifPurposeChoise 2)
 =>
 (retract ?retractChy)
(printout t crlf "Three Laptops available:" crlf
          "1) HP 15S INTEL I5 11THGEN WINDOWS 11" crlf
 	  "2) MSI MODERN 15 B13M I3 13TH GEN" crlf
          "3) MSI MODERN 14 C11M I5 11TH GEN" crlf crlf))
:;--------------R8--------------------
(defrule Below_200000_7
 (ifPurposeChoise 3)
 ?retractChy <- (ifPurposeChoise 3)
 =>
 (retract ?retractChy)
(printout t crlf crlf crlf "Laptops are not available."crlf crlf ))
