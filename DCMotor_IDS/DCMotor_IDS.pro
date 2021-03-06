CoDeSys+$   �                   @        @   2.3.9.50    @/    @                             ��Y +    @                           
)Y        1   @   q   C:\TwinCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               ��              STR2               ��                 CONCAT                                         �yY  �   ����           CTD           M             ��           Variable for CD Edge Detection      CD            ��           Count Down on rising edge    LOAD            ��           Load Start Value    PV           ��           Start Value       Q            ��           Counter reached 0    CV           ��           Current Counter Value             �yY  �   ����           CTU           M             ��            Variable for CU Edge Detection       CU            ��       
    Count Up    RESET            ��           Reset Counter to 0    PV           ��           Counter Limit       Q            ��           Counter reached the Limit    CV           ��           Current Counter Value             �yY  �   ����           CTUD           MU             ��            Variable for CU Edge Detection    MD             ��            Variable for CD Edge Detection       CU            ��	       
    Count Up    CD            ��
           Count Down    RESET            ��           Reset Counter to Null    LOAD            ��           Load Start Value    PV           ��           Start Value / Counter Limit       QU            ��           Counter reached Limit    QD            ��           Counter reached Null    CV           ��           Current Counter Value             �yY  �   ����           DELETE               STR               ��              LEN           ��              POS           ��                 DELETE                                         �yY  �   ����           F_TRIG           M             ��
                 CLK            ��           Signal to detect       Q            ��           Edge detected             �yY  �   ����           FIND               STR1               ��              STR2               ��                 FIND                                     �yY  �   ����           INSERT               STR1               ��              STR2               ��              POS           ��                 INSERT                                         �yY  �   ����           LEFT               STR               ��              SIZE           ��                 LEFT                                         �yY  �   ����           LEN               STR               ��                 LEN                                     �yY  �   ����           MID               STR               ��              LEN           ��              POS           ��                 MID                                         �yY  �   ����           R_TRIG           M             ��
                 CLK            ��           Signal to detect       Q            ��           Edge detected             �yY  �   ����           REPLACE               STR1               ��              STR2               ��              L           ��              P           ��                 REPLACE                                         �yY  �   ����           RIGHT               STR               ��              SIZE           ��                 RIGHT                                         �yY  �   ����           RS               SET            ��              RESET1            ��                 Q1            ��
                       �yY  �   ����           SEMA           X             ��                 CLAIM            ��	              RELEASE            ��
                 BUSY            ��                       �yY  �   ����           SR               SET1            ��              RESET            ��                 Q1            ��	                       �yY  �   ����           TOF           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with falling edge, resets timer with rising edge    PT           ��           time to pass, before Q is set       Q            ��	       2    is FALSE, PT seconds after IN had a falling edge    ET           ��
           elapsed time             �yY  �   ����           TON           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with rising edge, resets timer with falling edge    PT           ��           time to pass, before Q is set       Q            ��	       0    is TRUE, PT seconds after IN had a rising edge    ET           ��
           elapsed time             �yY  �   ����           TP        	   StartTime            ��           internal variable       IN            ��       !    Trigger for Start of the Signal    PT           ��       '    The length of the High-Signal in 10ms       Q            ��	           The pulse    ET           ��
       &    The current phase of the High-Signal             �yY  �   ����    R    @                                                                                          CALCVOLTAGETOMOTORVAL           r_MotorVoltage      �A   24.0                   	   r_voltage                              calcVoltageToMotorVal                                     �yY  @    ����           CHIRPSIGNAL           r_N           0    !               r_k           0    !                  r_wmin            !               r_wmax            !               r_ExperimentLength            !               r_T            !                  r_Sig            ! 	                       �yY  @    ����           MAIN           b_butYellow                         Yellow button 	   b_butBlue                         Blue button 	   b_lampRed                      
    Red lamp    b_lampGreen                          Green lamp    i_anDisp                         Analog meter    b_enableMotor              
           Motor on/off    i_motorVoltage                     2    Motor voltage -24V..+24V coded as -32768..+32767    ui_encTicks                        Encoder ticks 	   b_encOver                     2    Encoder overflow flag, toggles at every overflow 
   b_encUnder                     4    Encoder underflow flag, toggles at every underflow    ui_deltaTimeMs    
                    Encoder sampling time    ui_ticksPerRev                        Encoder resolution    ui_encTicksOld                            di_deltaTicks                            b_encOverOld                             b_encUnderOld                             di_motSpeed                            b_expRunning                          	   ui_secCnt                            r_AclutalVoltage                             r_StartVoltage      @@   3.0                     r_JumpVoltage      �@   5.0      !           
   r_JumpTime       A   10.0      "              di_JumpTimeMS    �        #              di_StopTimeMS    �        $                               ��Y  @  ����            
 �   !   "          (        K   .     K   <     K   J     K   _                 l         +     ��localhost     ��� ��@     ɯ  �          �j    �D �d��vt  j�j     j    @�d�d�j    ��@ �� j.�w       ��@   �                        p�d� ~-�wɯ  ~-�w            �dD� ��@     ɯ     ��@     ɯ  ��i� (� �� i� p�d����� ��     ,   ,                                                        K         @   �yYA!  /*BECKCONFI3*/
        !�m @   @   �   �     3               
   Standard            	��Y     	dn:DoTy           VAR_GLOBAL
END_VAR
                                                                                  "   ,   ��             Standard
         MAIN����               ��Y                 $����  
	L	imDo               ��� A�A           Standard 
)Y	
)Y      ��h���`�                         	��Y         ��            VAR_CONFIG
END_VAR
                                                                                   '              , W W 
           Global_Variables �yY	�yY       �            -   VAR_GLOBAL
	gr_T		: REAL := 0.01;
END_VAR
                                                                                               '           #                        TwinCAT_Configuration �yY	��Y#                     �  (* Generated automatically by TwinCAT - (read only) *)
VAR_CONFIG
	MAIN.b_butYellow AT %IX8.0 : BOOL;
	MAIN.b_butBlue AT %IX8.1 : BOOL;
	MAIN.b_lampRed AT %QX10.0 : BOOL;
	MAIN.b_lampGreen AT %QX10.1 : BOOL;
	MAIN.i_anDisp AT %QB8 : INT;
	MAIN.b_enableMotor AT %QX2.0 : BOOL;
	MAIN.i_motorVoltage AT %QB4 : INT;
	MAIN.ui_encTicks AT %IB2 : UINT;
	MAIN.b_encOver AT %IX4.2 : BOOL;
	MAIN.b_encUnder AT %IX4.3 : BOOL;
END_VAR                                                                                               '           	       �              Variable_Configuration �yY	�yY	     �g�               VAR_CONFIG
END_VAR
                                                                                                 �   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                               4     �   ���  �3 ���   � ���     
    @��  ���     @      DEFAULT             System      �   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '        , 2 2 V           calcVoltageToMotorVal �yY	�yY                      �   FUNCTION calcVoltageToMotorVal : INT
VAR_INPUT
    r_voltage : REAL;
END_VAR
VAR
    r_MotorVoltage : REAL := 24.0;
END_VARO   calcVoltageToMotorVal := (REAL_TO_INT((32767.0 / r_MotorVoltage) * r_voltage));               !   , � � `L           chirpSignal �yY	�yY                      �   FUNCTION_BLOCK chirpSignal
VAR_INPUT
	r_wmin					: REAL;
	r_wmax					: REAL;
	r_ExperimentLength		: REAL;
	r_T						: REAL;
END_VAR
VAR_OUTPUT
	r_Sig	: REAL;
END_VAR
VAR
	(* WORD = 16bit*)
	r_N	: REAL 	:= 0;
	r_k	: REAL	:= 0;
END_VARW  (* Generates Linear Chirp *)
(* w = wmin + kt *)
r_k := (r_wmax - r_wmin) / r_ExperimentLength;		(* Calculate frequency change *)
r_N := (r_ExperimentLength / r_T) + 1;				(* Calculate number of steps *)

r_Sig := COS((r_wmin + r_k * r_N * r_T) * r_T);		(* Calculate next signal value *)
r_N := r_N + 1;										(* Increase next step *)                   ,     ��           MAIN ��Y	��Y      ��N	� �8        x  PROGRAM MAIN
VAR

	b_butYellow		AT %I*	:BOOL;			(* Yellow button *)
	b_butBlue		AT %I*	:BOOL;			(* Blue button *)
	b_lampRed		AT %Q*	:BOOL;			(* Red lamp *)
	b_lampGreen		AT %Q*	:BOOL;			(* Green lamp *)
	i_anDisp		AT %Q*	:INT;			(* Analog meter *)

	b_enableMotor	AT %Q*	:BOOL := TRUE;	(* Motor on/off *)
	i_motorVoltage	AT %Q*	:INT;			(* Motor voltage -24V..+24V coded as -32768..+32767 *)

	ui_encTicks		AT %I*	:UINT;			(* Encoder ticks *)
	b_encOver		AT %I*	:BOOL;			(* Encoder overflow flag, toggles at every overflow *)
	b_encUnder		AT %I*	:BOOL;			(* Encoder underflow flag, toggles at every underflow *)


	ui_deltaTimeMs	:UINT:=10;				(* Encoder sampling time *)
	ui_ticksPerRev	:UINT:=512;				(* Encoder resolution *)


	ui_encTicksOld	:UINT;
	di_deltaTicks	:DINT;
	b_encOverOld	:BOOL;
	b_encUnderOld	:BOOL;
	di_motSpeed		:DINT;

    b_expRunning    :BOOL := FALSE;
    ui_secCnt       :UINT;

    r_AclutalVoltage  :REAL;
    r_StartVoltage  :REAL := 3.0;
    r_JumpVoltage  :REAL := 5.0;
    r_JumpTime  :REAL := 10.0;
    di_JumpTimeMS  :DINT := 1000;
    di_StopTimeMS  :DINT := 2000;

END_VAR
  IF b_butYellow = TRUE THEN			(* Turn on with yellow button *)
	b_lampGreen := TRUE;
	b_lampRed := FALSE;
    b_expRunning := TRUE;
    r_AclutalVoltage := r_StartVoltage;
	i_motorVoltage := calcVoltageToMotorVal(r_StartVoltage);
END_IF

IF b_butBLUE = TRUE THEN			(* Turn off*)
	b_lampRed := TRUE;
	b_lampGreen := FALSE;
    b_expRunning := FALSE;
	i_motorVoltage := 0;
END_IF

(*di_JumpTimeMS := (REAL_TO_DINT(r_JumpTime / 0.01));*)

di_deltaTicks := ui_encTicks - ui_encTicksOld;	(* Calculate moved track *)
ui_encTicksOld := ui_encTicks;

IF ((b_encOverOld =FALSE) AND (b_encOver = TRUE)) THEN			(* Cover overflow *)
	b_encOverOld := TRUE;
	di_deltaTicks := di_deltaTicks + 65536; 
ELSIF ((b_encOverOld =TRUE) AND (b_encOver = FALSE)) THEN	
    b_encOverOld := FALSE;
END_IF


IF b_encUnder <> b_encUnderOld THEN		(* Cover underflow *)
	b_encUnderOld := b_encUnder;
	di_deltaTicks := di_deltaTicks - 65536;
END_IF

di_motSpeed := di_deltaTicks *25 / ui_ticksPerRev; 		(* Calculate speed in revolution per seconds *)

i_anDisp := DINT_TO_INT(300 * di_motSpeed);

IF b_expRunning THEN
  ui_secCnt := ui_secCnt + 1;
ELSE
  ui_secCnt := 0;
END_IF

IF (b_expRunning AND (ui_secCnt = di_JumpTimeMS)) THEN
  r_AclutalVoltage := r_JumpVoltage;
  i_motorVoltage := calcVoltageToMotorVal(r_JumpVoltage);
END_IF

IF (b_expRunning AND (ui_secCnt = di_StopTimeMS)) THEN
    b_expRunning := FALSE;
    r_AclutalVoltage := r_StartVoltage;
    i_motorVoltage := calcVoltageToMotorVal(r_StartVoltage);
END_IF                "   , t t 9'           GUI �yY
    @ �p�yY   d                                                                                                        
    @        d � � � � �     @                    Start @���     ���             @         ���        @	    MAIN.b_testBool                 @       �                                                                                                     
    @        x -E"   500   0   1000       Kreisfrequenz                                                                                                0   1000
    @        @� �� h�   ���     ���                                             @                          ���        @	                      @             �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                  ����                   "   STANDARD.LIB 5.6.98 12:03:02 @V�w5      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @                                             2                ����������������  
             ����  0ThU�V�S        ����                                POUs                 calcVoltageToMotorVal                     chirpSignal  !                  MAIN      ����           
   Data types  ����             Visualizations                 GUI  "   ����              Global Variables                Global_Variables                     TwinCAT_Configuration  #                   Variable_Configuration  	   ����                                                              
)Y                         	   localhost            P      	   localhost            P      	   localhost            P          ���