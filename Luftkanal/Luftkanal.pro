CoDeSys+"                      @        @   2.3.9.50    @/    @                             Y +    @        x               Y        L   @   q   C:\TwinCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               §џ              STR2               §џ                 CONCAT                                         Y     џџџџ           CTD           M             §џ           Variable for CD Edge Detection      CD            §џ           Count Down on rising edge    LOAD            §џ           Load Start Value    PV           §џ           Start Value       Q            §џ           Counter reached 0    CV           §џ           Current Counter Value             Y     џџџџ           CTU           M             §џ            Variable for CU Edge Detection       CU            §џ       
    Count Up    RESET            §џ           Reset Counter to 0    PV           §џ           Counter Limit       Q            §џ           Counter reached the Limit    CV           §џ           Current Counter Value             Y     џџџџ           CTUD           MU             §џ            Variable for CU Edge Detection    MD             §џ            Variable for CD Edge Detection       CU            §џ	       
    Count Up    CD            §џ
           Count Down    RESET            §џ           Reset Counter to Null    LOAD            §џ           Load Start Value    PV           §џ           Start Value / Counter Limit       QU            §џ           Counter reached Limit    QD            §џ           Counter reached Null    CV           §џ           Current Counter Value             Y     џџџџ           DELETE               STR               §џ              LEN           §џ              POS           §џ                 DELETE                                         Y     џџџџ           F_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             Y     џџџџ           FIND               STR1               §џ              STR2               §џ                 FIND                                     Y     џџџџ           INSERT               STR1               §џ              STR2               §џ              POS           §џ                 INSERT                                         Y     џџџџ           LEFT               STR               §џ              SIZE           §џ                 LEFT                                         Y     џџџџ           LEN               STR               §џ                 LEN                                     Y     џџџџ           MID               STR               §џ              LEN           §џ              POS           §џ                 MID                                         Y     џџџџ           R_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             Y     џџџџ           REPLACE               STR1               §џ              STR2               §џ              L           §џ              P           §џ                 REPLACE                                         Y     џџџџ           RIGHT               STR               §џ              SIZE           §џ                 RIGHT                                         Y     џџџџ           RS               SET            §џ              RESET1            §џ                 Q1            §џ
                       Y     џџџџ           SEMA           X             §џ                 CLAIM            §џ	              RELEASE            §џ
                 BUSY            §џ                       Y     џџџџ           SR               SET1            §џ              RESET            §џ                 Q1            §џ	                       Y     џџџџ           TOF           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with falling edge, resets timer with rising edge    PT           §џ           time to pass, before Q is set       Q            §џ	       2    is FALSE, PT seconds after IN had a falling edge    ET           §џ
           elapsed time             Y     џџџџ           TON           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with rising edge, resets timer with falling edge    PT           §џ           time to pass, before Q is set       Q            §џ	       0    is TRUE, PT seconds after IN had a rising edge    ET           §џ
           elapsed time             Y     џџџџ           TP        	   StartTime            §џ           internal variable       IN            §џ       !    Trigger for Start of the Signal    PT           §џ       '    The length of the High-Signal in 10ms       Q            §џ	           The pulse    ET           §џ
       &    The current phase of the High-Signal             Y     џџџџ    R    @                                                                                          MAIN     
      b_butYellow                         Yellow button 	   b_butBlue                         Blue button 	   b_lampRed                     
    Red lamp    b_lampGreen                          Green lamp    i_anDisp              	           Analog meter    ui_heatControl                         
   i_heatDuty                            ui_fanControl                         	   i_fanDuty                            i_temp                                            Y  @  џџџџ            
 	      	   ( 3      K   A     K   O     K   ]     K   r                          +     КЛlocalhost     
№е і№@     ЩЏ            аk    }XюРШVv  kФk     k    юtюk    і№@ ше j.w       і№@   
                        ж ~-wЩЏ  ~-w            єDж і№@     ЩЏ     і№@     ЩЏ  њ
i№ (и ќж i№ pЎdџџџџз Э№     ,   ,                                                        K         @   YT  /*BECKCONFI3*/
        !iр @   @           3               
   Standard            	Y                        VAR_GLOBAL
END_VAR
                                                                                  "                          Standard
         MAINџџџџ           џџџџ Y                 $ћџџџ      	                 0ThUVаS           Standard Y	Y      №аш                         	Y         ќY             VAR_CONFIG
END_VAR
                                                                                   '                                   Global_Variables Y	Y                        VAR_GLOBAL
END_VAR
                                                                                               '           	   ,   Ё           Variable_Configuration Y	Y	                        VAR_CONFIG
END_VAR
                                                                                                    |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                               4     џ   џџџ  Ь3 џџџ   џ џџџ     
    @џ  џџџ     @      DEFAULT             System         |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '         , Ў Ў sa           MAIN Y	Y          ` 2           PROGRAM MAIN
VAR


	b_butYellow		AT %I*	:BOOL;			(* Yellow button *)
	b_butBlue		AT %I*	:BOOL;			(* Blue button *)
	b_lampRed		AT %Q*	:BOOL:=TRUE;	(* Red lamp *)
	b_lampGreen		AT %Q*	:BOOL;			(* Green lamp *)
	i_anDisp		AT %Q*	:INT;			(* Analog meter *)

	ui_heatControl	AT %Q*	:USINT;
	i_heatDuty		AT %Q*	:INT;
	ui_fanControl	AT %Q*	:USINT;
	i_fanDuty		AT %Q*	:INT;

	i_temp			AT %I*	:INT;

END_VARз   IF b_butYellow = TRUE THEN			(* Turn on with yellow button *)
	b_lampGreen := TRUE;
	b_lampRed := FALSE;


END_IF

IF b_butBLUE = TRUE THEN			(* Turn off*)
	b_lampRed := TRUE;
	b_lampGreen := FALSE;
END_IF                 §џџџ                   "   STANDARD.LIB 5.6.98 12:03:02 @VТw5      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @                                           џџ2                џџџџџџџџџџџџџџџџ  
             њџџџ        З        јџџџ                               POUs                 MAIN      џџџџ          
   Data types  џџџџ             Visualizations  џџџџ              Global Variables                 Global_Variables                     Variable_Configuration  	   џџџџ                                                              Y                         	   localhost            P      	   localhost            P      	   localhost            P              