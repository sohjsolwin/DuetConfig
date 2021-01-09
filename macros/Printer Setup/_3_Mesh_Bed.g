;_____________Mesh Bed_____________
M291 P"Do you want to Mesh the Bed?" S3
M291 P"Meshing the bed, this will home the printer, heat the bed and nozzle and then give you further instructions." S0

M140 S60 ; Start heating bed to 60c
G10 P0 S150 ;turn on extruder

G28 ; Home all
;G28 Z ; Home z
;G28 Z ; Home z again

M190 S60 ; wait for heat bed to get to 60c

G1 Z50 F2500 ; move the bed to 200mm from the nozzle

G29 S2 ; Disable bed mesh
G29 S2 ; Disable bed mesh

G1 X200 Y200 Z20 F1500 ; center extruder and raise bed.

;Beep 3 times
M300 S600 P250
G4 P401
M300 S600 P250
G4 P401
M300 S600 P250
G4 P401

M291 P"Deploy the Z Probe if needed. Press OK when done." S2
M291 P"Bed Mesh starting. Make sure to turn off Heaters when done." S2
G32 ; Executes the bed mesh procedure defined in bed.g

;Finish song
M300 S1500 P200
G4 P250
M300 S1000 P200
G4 P250
M300 S500 P200
G4 P250
M300 S1500 P200
G4 P250
M300 S1000 P200
G4 P250
M300 S500 P200
G4 P250
M300 S1500 P200
G4 P250
M300 S1000 P200
G4 P250
M300 S3500 P200
G4 P250
M300 S3500 P200
G4 P250
M300 S3500 P200
G4 P250
M300 S3500 P200
G4 P250
