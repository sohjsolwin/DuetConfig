; bed.g
; called to perform automatic bed compensation via G32
;
; generated by RepRapFirmware Configuration Tool on Tue Jun 26 2018 13:03:45 GMT-0400 (EDT)
M561 ; clear any bed transform
; Probe the bed at 4 points
G30 P0 X15 Y15 H0 Z-99999
G30 P1 X15 Y220 H0 Z-99999
G30 P2 X220 Y220 H0 Z-99999
G30 P3 X220 Y15 H0 Z-99999 S