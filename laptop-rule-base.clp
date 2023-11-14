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
:;Rule Above Budget of Rs.400,000 
:;-----------R22---------------------
(defrule Above_400000_0 
(iffoundChoice 3)
?retractCh3 <- (iffoundChoice 3)
(not (ifOSchoice2 ?))
 =>  (retract ?retractCh3)
(printout t crlf crlf
"Select an Operating System " crlf crlf
"1) Windows" crlf crlf
"2) MacOS" crlf crlf
" Enter your choice here (1|2): " )
 (assert (ifOSchoice2 (read))))
:;--------------R23--------------------
(defrule Above_400000_1
 (ifOSchoice2 2)
 ?retractChy <- (ifOSchoice2 2)
(not (ifPerformanceChoice3 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf
"Select The Performance Level" crlf crlf
"1) High" crlf crlf
"2) Ultra-High (Premium)" crlf crlf
" Enter your choice here (1|2): " )
 (assert (ifPerformanceChoice3 (read))))
:;--------------R24--------------------
(defrule Above_400000_2
 (ifPerformanceChoice3 2)
 ?retractChy <- (ifPerformanceChoice3 2)
 (not (ifAffordChoice ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf
"Can you afford more than Rs.600,000 ?" crlf crlf
"1) YES" crlf crlf
"2) NO" crlf crlf
" Enter your choice here (1|2): " )
 (assert (ifAffordChoice (read))))
:;--------------R25--------------------
(defrule Above_400000_3
 (ifAffordChoice 2)
 ?retractChy <- (ifAffordChoice 2)
 =>
 (retract ?retractChy)
(printout t crlf crlf crlf "Laptops with premium performance are not available under Rs.600,000."crlf crlf ))
:;--------------R26--------------------
(defrule Above_400000_4
 (ifAffordChoice 1)
 ?retractChy <- (ifAffordChoice 1)
 (not (ifPurposeChoice3 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf
"What is your purpose (or area of study)?" crlf crlf
"1) Programming (IT)" crlf crlf
"2) Design & Palnning + Engineering" crlf crlf
" Enter your choice here (1|2): " )
 (assert (ifPurposeChoice3 (read))))
:;--------------R27--------------------
(defrule Above_400000_5
 (ifPurposeChoice3 1)
 ?retractChy <- (ifPurposeChoice3 1)
 (not (ifSSDChoice ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf
"Select SSD storage size " crlf crlf
"1) 512 GB" crlf crlf
"2) 1 TB" crlf crlf
" Enter your choice here (1|2): " )
 (assert (ifSSDChoice (read))))
:;--------------R28--------------------
(defrule Above_400000_6
 (ifSSDChoice 1)
 ?retractChy <- (ifSSDChoice 1)
 =>
 (retract ?retractChy)
(printout t crlf "Two Laptops available:" crlf
          "1) Macbook Pro M2 Pro Chip 14 inch 16GB / 512GB (2023)" crlf
	  "2) Macbook Pro M3 Pro Chip 14 inch 18GB / 512GB (2023)" crlf crlf))
:;--------------R29--------------------
(defrule Above_400000_7
 (ifSSDChoice 2)
 ?retractChy <- (ifSSDChoice 2)
 =>
 (retract ?retractChy)
(printout t crlf "Three Laptops available:" crlf
          "1) Macbook Pro M3 Chip 14 inch 8GB / 1TB (2023)" crlf
	  "2) Macbook Pro M3 Pro Chip 14 inch 18GB / 1TB (2023)" crlf
	  "3) Macbook Pro M2 Pro Chip 16 inch 16GB / 1TB (2023)" crlf crlf))
:;--------------R30--------------------
(defrule Above_400000_8
 (ifPurposeChoice3 2)
 ?retractChy <- (ifPurposeChoice3 2)
 (not (ifRAMChoice ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf
"Select RAM type" crlf crlf
"1) 16 GB" crlf crlf
"2) 32 GB" crlf crlf
" Enter your choice here (1|2): " )
 (assert (ifRAMChoice (read))))
:;--------------R31--------------------
(defrule Above_400000_9
 (ifRAMChoice 1)
 ?retractChy <- (ifRAMChoice 1)
 =>
 (retract ?retractChy)
(printout t crlf "One Laptop available:" crlf
          "1) Macbook Pro M1 Pro Chip 16 inch 16GB / 1TB (2021)" crlf crlf))
:;--------------R32--------------------
(defrule Above_400000_10
 (ifRAMChoice 2)
 ?retractChy <- (ifRAMChoice 2)
 =>
 (retract ?retractChy)
(printout t crlf "One Laptop available:" crlf
          "1) Macbook Pro M1 Max Chip 16 inch 32GB / 1TB (2021)" crlf crlf))
:;--------------R33--------------------
(defrule Above_400000_11
 (ifPerformanceChoice3 1)
 ?retractChy <- (ifPerformanceChoice3 1)
 (not (ifPurposeChoice4 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf
"What is your purpose (or area of study)?" crlf crlf
"1) General Purpose" crlf crlf
"2) Programming (IT)" crlf crlf
" Enter your choice here (1|2): " )
 (assert (ifPurposeChoice4 (read))))
:;--------------R34--------------------
(defrule Above_400000_12
 (ifPurposeChoice4 1)
 ?retractChy <- (ifPurposeChoice4 1)
 =>
 (retract ?retractChy)
(printout t crlf "Two Laptops available:" crlf
          "1) MacBook Air M2 Chip 15 inch 8GB / 256GB (2023)" crlf
	  "2) Macbook Pro M2 Chip 13 inch 8GB / 256GB" crlf crlf))
:;--------------R35--------------------
(defrule Above_400000_13
 (ifPurposeChoice4 2)
 ?retractChy <- (ifPurposeChoice4 2)
 (not (ifSSDChoice1 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf
"Select SSD storage size" crlf crlf
"1) 256 GB" crlf crlf
"2) 512 GB" crlf crlf
" Enter your choice here (1|2): " )
 (assert (ifSSDChoice1 (read))))
:;--------------R36--------------------
(defrule Above_400000_14
 (ifSSDChoice1 1)
 ?retractChy <- (ifSSDChoice1 1)
 =>
 (retract ?retractChy)
(printout t crlf "One Laptop available:" crlf
          "1) Macbook Pro M2 Chip 13 inch 8GB / 256GB" crlf crlf))
:;--------------R37--------------------
(defrule Above_400000_15
 (ifSSDChoice1 2)
 ?retractChy <- (ifSSDChoice1 2)
 =>
 (retract ?retractChy)
(printout t crlf "Two Laptops available:" crlf
          "1) MacBook Air M2 Chip 15 inch 8GB / 512GB (2023))" crlf
	  "2) Macbook Pro M3 Chip 14 inch 8GB / 512GB (2023)" crlf crlf))
:;--------------R38--------------------
(defrule Above_400000_16
 (ifOSchoice2 1)
 ?retractChy <- (ifOSchoice2 1)
(not (ifPerformanceChoice4 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf
"Select The Performance Level" crlf crlf
"1) High" crlf crlf
"2) Ultra-High (Premium)" crlf crlf
" Enter your choice here (1|2): " )
 (assert (ifPerformanceChoice4 (read))))
:;--------------R39--------------------
(defrule Above_400000_17
 (ifPerformanceChoice4 1)
 ?retractChy <- (ifPerformanceChoice4 1)
 (not (ifPurposeChoice5 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf
"What is your purpose (or area of study)?" crlf crlf
"1) Programming (IT)" crlf crlf
"2) Designing & Planning + Engineering" crlf crlf
" Enter your choice here (1|2): " )
 (assert (ifPurposeChoice5 (read))))
:;--------------R40--------------------
(defrule Above_400000_18
 (ifPurposeChoice5 1)
 ?retractChy <- (ifPurposeChoice5 1)
 (not (ifGamingChoice ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf
"Do you prefer Gaming Laptops?" crlf crlf
"1) YES" crlf crlf
"2) NO" crlf crlf
" Enter your choice here (1|2): " )
 (assert (ifGamingChoice (read))))
:;--------------R41--------------------
(defrule Above_400000_19
 (ifGamingChoice 1)
 ?retractChy <- (ifGamingChoice 1)
 =>
 (retract ?retractChy)
(printout t crlf "Three Laptops available:" crlf
          "1) LENOVO LOQ 15IRH8 I7 13TH GEN + RTX 4060" crlf
	  "2) ASUS TUF DASH F15 FX517ZM I7 12TH GEN RTX 3060" crlf
	  "3) GIGABYTE G5 KF I5 12TH GEN RTX 4060 8GB" crlf crlf))
:;--------------R42--------------------
(defrule Above_400000_20
 (ifGamingChoice 2)
 ?retractChy <- (ifGamingChoice 1)
 =>
 (retract ?retractChy)
(printout t crlf "One Laptop available:" crlf
          "1) ASUS ZENBOOK S 13 OLED UX5304 I7 13TH GEN" crlf crlf))
:;--------------R43--------------------
(defrule Above_400000_21
 (ifPurposeChoice5 2)
 ?retractChy <- (ifPurposeChoice5 2)
 (not (ifManufacturerChoice ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf
"Select a Manufacturer" crlf crlf
"1) ASUS" crlf crlf
"2) MSI" crlf crlf
" Enter your choice here (1|2): " )
 (assert (ifManufacturerChoice (read))))
:;--------------R44--------------------
(defrule Above_400000_22
 (ifManufacturerChoice 1)
 ?retractChy <- (ifManufacturerChoice 1)
 =>
 (retract ?retractChy)
(printout t crlf "Two Laptops available:" crlf
          "1) ASUS ROG STRIX G16 2023 G614J I7 13TH GEN RTX 4060" crlf
	  "2) ASUS TUF GAMING F15 2023 FX507VV4 I7 13TH RTX 4060" crlf crlf))
:;--------------R45--------------------
(defrule Above_400000_23
 (ifManufacturerChoice 2)
 ?retractChy <- (ifManufacturerChoice 2)
 =>
 (retract ?retractChy)
(printout t crlf "Two Laptops available:" crlf
          "1) MSI CYBORG 15 A12VF I7 12TH GEN RTX 4060 8GB" crlf
	  "2) MSI PULSE 15 B13VFK I7 13TH GEN RTX 4060" crlf crlf))
:;--------------R46--------------------
(defrule Above_400000_24
 (ifPerformanceChoice4 2)
 ?retractChy <- (ifPerformanceChoice4 2)
  (not (ifAffordChoice1 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf
"Can you afford more than Rs.600,000 ?" crlf crlf
"1) YES" crlf crlf
"2) NO" crlf crlf
" Enter your choice here (1|2): " )
 (assert (ifAffordChoice1 (read))))
:;--------------R47--------------------
(defrule Above_400000_25
 (ifAffordChoice1 2)
 ?retractChy <- (ifAffordChoice1 2)
 =>
 (retract ?retractChy)
(printout t crlf crlf crlf "Laptops with premium performance are not available under Rs.600,000."crlf crlf ))
:;--------------R48--------------------
(defrule Above_400000_26
 (ifAffordChoice1 1)
 ?retractChy <- (ifAffordChoice1 1)
 (not (ifPurposeChoice6 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf
"What is your purpose (or area of study)?" crlf crlf
"1) Programming (IT)" crlf crlf
"2) Design & Palnning + Engineering" crlf crlf
" Enter your choice here (1|2): " )
 (assert (ifPurposeChoice6 (read))))
:;--------------R49--------------------
(defrule Above_400000_27
 (ifPurposeChoice6 1)
 ?retractChy <- (ifPurposeChoice6 1)
 (not (ifProcessorChoice ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf
"Select a Processor type" crlf crlf
"1) Intel Core i7" crlf crlf
"2) Intel Core i9" crlf crlf
" Enter your choice here (1|2): " )
 (assert (ifProcessorChoice (read))))
:;--------------R50--------------------
(defrule Above_400000_28
 (ifProcessorChoice 1)
 ?retractChy <- (ifProcessorChoice 1)
 (not (ifRAMChoice1 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf
"Select RAM type" crlf crlf
"1) 16GB DDR5" crlf crlf
"2) 32GB DDR5 (16GB X 2)" crlf crlf
" Enter your choice here (1|2): " )
 (assert (ifRAMChoice1 (read))))
:;--------------R51--------------------
(defrule Above_400000_29
 (ifRAMChoice1 1)
 ?retractChy <- (ifRAMChoice1 1)
 =>
 (retract ?retractChy)
(printout t crlf "One Laptop available:" crlf
          "1) MSI KATANA GF66 12UE0K DDR5 I7 12TH GEN RTX 3060" crlf crlf))
:;--------------R52--------------------
(defrule Above_400000_30
 (ifRAMChoice1 2)
 ?retractChy <- (ifRAMChoice1 2)
 =>
 (retract ?retractChy)
(printout t crlf "One Laptop available:" crlf
          "1) MSI STEALTH 14 STUDIO A13VG I7 13TH GEN RTX 4070" crlf crlf))
:;--------------R53--------------------
(defrule Above_400000_31
 (ifProcessorChoice 2)
 ?retractChy <- (ifProcessorChoice 2)
 (not (ifRAMChoice2 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf
"Select RAM type" crlf crlf
"1) 16GB DDR5" crlf crlf
"2) 32GB DDR5 (16GB X 2)" crlf crlf
" Enter your choice here (1|2): " )
 (assert (ifRAMChoice2 (read))))
:;--------------R54--------------------
(defrule Above_400000_32
 (ifRAMChoice2 1)
 ?retractChy <- (ifRAMChoice2 1)
 =>
 (retract ?retractChy)
(printout t crlf "One Laptop available:" crlf
          "1) MSI KATANA 15 B13VGK I9 13TH GEN RTX 4070" crlf crlf))
:;--------------R55--------------------
(defrule Above_400000_33
 (ifRAMChoice2 2)
 ?retractChy <- (ifRAMChoice2 2)
 =>
 (retract ?retractChy)
(printout t crlf "One Laptop available:" crlf
          "1) MSI PULSE 15 B13VFK I9 13TH GEN RTX 4060" crlf crlf))
:;--------------R56--------------------
(defrule Above_400000_34
 (ifPurposeChoice6 2)
 ?retractChy <- (ifPurposeChoice6 2)
 (not (ifVGAChoice ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf
"Select a VGA type" crlf crlf
"1) NVIDIA GeForce RTX 3070Ti 8GB GDDR6" crlf crlf
"2) NVIDIA® GeForce RTX 4070 8GB GDDR6" crlf crlf
" Enter your choice here (1|2): " )
 (assert (ifVGAChoice (read))))
:;--------------R57--------------------
(defrule Above_400000_35
 (ifVGAChoice 1)
 ?retractChy <- (ifVGAChoice 1)
 =>
 (retract ?retractChy)
(printout t crlf "One Laptop available:" crlf
          "1) MSI RAIDER GE67 HX 12UGS 2K OLED I9 + RTX 3070TI" crlf crlf))
:;--------------R58--------------------
(defrule Above_400000_36
 (ifVGAChoice 2)
 ?retractChy <- (ifVGAChoice 2)
 =>
 (retract ?retractChy)
(printout t crlf "One Laptop available:" crlf
          "1) MSI STEALTH 16 MERCEDES-AMG A13V I9 13TH RTX 4070" crlf crlf))
