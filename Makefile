
#assembler directory
ASM = C:\Program Files (x86)\Microchip\MPLABX\v5.10\mpasmx\mpasmx.exe
#linker directory
LD = C:\Program Files (x86)\Microchip\MPLABX\v5.10\mpasmx\mplink.exe
#uploader directory
UD = C:\Program Files (x86)\Microchip\MPLABX\v5.10\mplab_platform\mplab_ipe\ipecmd

#object path
objpath = obj

#chip model
chipModel = 16F84A
#quiet mode
quiet = +
#verbose assembly
verbose = +
#warning level see help
warninglvl = 0

main.HEX : main.ASM
	$(ASM) /p$(chipModel) /q$(quiet) /w$(warninglvl) main.ASM
	del *.fil

upload : main.HEX
	$(UD) 

help :
	$(ASM) /?
	$(LD) /?
	$(UD) /?

clean :
	del *.HEX
	del *.O
	del *.ERR
	del *.LST