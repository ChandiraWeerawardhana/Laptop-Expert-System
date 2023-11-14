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
:;Rule Budget Between Rs.200,000-Rs.400,000
:;-----------R9---------------------
(defrule Between_2to4_0 
(iffoundChoice 2)
?retractCh2 <- (iffoundChoice 2)
(not (ifOSchoice1 ?))
 =>  (retract ?retractCh2)
(printout t crlf crlf
"Select an Operating System " crlf crlf
"1) Windows" crlf crlf
"2) MacOS" crlf crlf
" Enter your choice here (1|2): " )
 (assert (ifOSchoice1 (read))))
:;--------------R10--------------------
(defrule Between_2to4_1
 (ifOSchoice1 2)
 ?retractChy <- (ifOSchoice1 2)
(not (ifPerformanceChoice1 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf
"Select The Performance Level" crlf crlf
"1) Medium" crlf crlf
"2) High" crlf crlf
" Enter your choise here (1|2): " )
 (assert (ifPerformanceChoice1 (read))))
:;--------------R11--------------------
(defrule Between_2to4_2
 (ifPerformanceChoice1 1)
 ?retractChy <- (ifPerformanceChoice1 1)
 =>
 (retract ?retractChy)
(printout t crlf "One Laptop available:" crlf
          "1) MacBook Air M1 Chip 13.3 inch 8GB / 256GB" crlf crlf))
:;--------------R12--------------------
(defrule Between_2to4_3
 (ifPerformanceChoice1 2)
 ?retractChy <- (ifPerformanceChoice1 2)
 =>
 (retract ?retractChy)
(printout t crlf "Two Laptops available:" crlf
          "1) MacBook Air M2 Chip 13 inch 8GB / 256GB" crlf
          "2) Macbook Pro M1 Chip 13 inch 8GB / 256GB" crlf crlf))
:;--------------R13--------------------
(defrule Between_2to4_4
 (ifOSchoice1 1)
 ?retractChy <- (ifOSchoice1 1)
(not (ifPerformanceChoice1 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf
"Select The Performance Level" crlf crlf
"1) Medium" crlf crlf
"2) High" crlf crlf
" Enter your choice here (1|2): " )
 (assert (ifPerformanceChoice2 (read))))
:;--------------R14--------------------
(defrule Between_2to4_5
 (ifPerformanceChoice2 1)
 ?retractChy <- (ifPerformanceChoice2 1)
 (not (ifPurposeChoice1 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf
"What is your purpose (or area of study)?" crlf crlf
"1) General Purpose" crlf crlf
"2) Programming (IT)" crlf crlf
"3) Design & Palnning + Engineering" crlf crlf
" Enter your choice here (1|2|3): " )
 (assert (ifPurposeChoice1 (read))))
:;--------------R15--------------------
(defrule Between_2to4_6
 (ifPurposeChoice1 1)
 ?retractChy <- (ifPurposeChoice1 1)
 =>
 (retract ?retractChy)
(printout t crlf "One Laptop available:" crlf
          "1) DELL INSPIRON 15 3530 CORE I5 13TH GEN" crlf crlf))
:;--------------R16--------------------
(defrule Between_2to4_7
 (ifPurposeChoice1 2)
 ?retractChy <- (ifPurposeChoice1 2)
 =>
 (retract ?retractChy)
(printout t crlf "One Laptop available:" crlf
          "1) LENOVO IDEAPAD 3 15ITL6 INTEL CORE I7 11TH GEN" crlf crlf))
:;--------------R17--------------------
(defrule Between_2to4_8
 (ifPurposeChoice1 3)
 ?retractChy <- (ifPurposeChoice1 3)
 =>
 (retract ?retractChy)
(printout t crlf "Two Laptops available:" crlf
          "1) MSI MODERN 15 B13M I5 13TH GEN" crlf
          "2) ASUS VIVOBOOK 15 X1502Z I7 12TH GEN" crlf crlf))
:;--------------R18--------------------
(defrule Between_2to4_9
 (ifPerformanceChoice2 2)
 ?retractChy <- (ifPerformanceChoice2 2)
 (not (ifPurposeChoice2 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf
"What is your purpose (or area of study)?" crlf crlf
"1) General Purpose" crlf crlf
"2) Programming (IT)" crlf crlf
"3) Design & Palnning + Engineering" crlf crlf
" Enter your choise here (1|2|3): " )
 (assert (ifPurposeChoice2 (read))))
:;--------------R19--------------------
(defrule Between_2to4_10
 (ifPurposeChoice2 1)
 ?retractChy <- (ifPurposeChoice2 1)
 =>
 (retract ?retractChy)
(printout t crlf "One Laptop available:" crlf
          "1) LENOVO IDEAPAD 5 15IAL7 I5 12TH GEN MX550" crlf crlf))
:;--------------R20--------------------
(defrule Between_2to4_11
 (ifPurposeChoice2 2)
 ?retractChy <- (ifPurposeChoice2 2)
 =>
 (retract ?retractChy)
(printout t crlf "One Laptop available:" crlf
          "1) MSI SWORD 15 A12UCX I5 12TH GEN RTX 2050 4GB" crlf crlf))
:;--------------R21--------------------
(defrule Between_2to4_12
 (ifPurposeChoice2 3)
 ?retractChy <- (ifPurposeChoice2 3)
 =>
 (retract ?retractChy)
(printout t crlf "Three Laptops available:" crlf
          "1) ASUS TUF DASH F15 FX517ZC I5 12TH GEN RTX 3050" crlf
	  "2) MSI CYBORG 15 A12VE I5 12TH GEN RTX 4050 6GB" crlf
          "3) ASUS VIVOBOOK PRO N7400PC 14X OLED I7 - RTX 3050" crlf crlf))
