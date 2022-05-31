chget:			equ	09fh		;wait a key
chsns:			equ	09ch		;check keyboard status
disscr:			equ	41h		;disable screen
enascr:			equ	44h		;enable screen
wrtvdp:			equ	47h		;write "b" value on "c" vdp reg
snsmat:			equ	141h		;read specific keyboard row
kilbuf:			equ	156h		;clear keybuffer
beep:			equ	0c0h		;beep
jiffy:			equ	0fc9eh		;vblank updated variable
rslreg: 		equ	0138h		;read primary slot
exptbl: 		equ	0fcc1h
bottom: 	 	equ	0fc48h		;low mem
himem:  	 	equ	0fc4Ah		;hi mem
sltwrk: 	 	equ	0fd09h
enaslt: 	 	equ	024h		;enable slot
ldirvm:			equ	05ch		;copy ram->vram
filvrm:			equ	56h		;fill vram portion with value contained in a
ldirmv:			equ	59h		;copy vram->ram
wrtvrm:			equ	4dh		;write data to vram
gtstck:			equ	0d5h		;bios routine for joystick
gttrig:			equ	0d8h		;bios routine for fire button
chgmod:			equ	05fh		;change screen mode
scrmod:			equ	00cafh		;number of screen mode
forclr:			equ	0f3e9h		;foreground color
chgclr:			equ	62h		;change colors
inipat:			equ	71eh		;set default character pattern
statfl:			equ	0f3e7h		;VDP status register
hook:			equ	0fd9fh		;isr HTIMI hook address
bank2:			equ	7000h		;megarom bank switch address
scncnt:			equ	0f3f6h		;
intcnt:			equ	0fca2h		;
idbyt0:			equ	2bh
idbyt2:			equ	2dh
rg9sav:			equ	0ffe8h
reg1_val:		equ	10100010b	;16*16 sprites no magnif
chstart:		equ	0e5c0h		;stores start address of tiles patterns
colstart:		equ	0e5c2h		;stores start address of tiles colors
line_counter:		equ	0e5c4h		;a line counter...
vdp_busy:		equ	0e5c5h		;priority flag for vdp writing
nametable:		equ	0e5c6h		;nametable address
speed:			equ	0e5c8h		;scrolling speed
speedcount:		equ	0e5c9h		;lines counter for speed increment
reverse_sat:		equ	0e5cah		;flag for reverse_sat
tset_ch:		equ	0e5cbh		;tileset character start
tset_clr:		equ	0e5cdh		;tileset color start
explosion_time:		equ	0e5cfh		;explosion duration timer
bullet1_dy:		equ	0e5d0h		;abs(dy) between bullet1 and player
bullet1_dx:		equ	0e5d1h		;abs(dx) between bullet1 and player
bullet1_tmp:		equ	0e5d2h
bullet2_dy:		equ	0e5d3h		;abs(dy) between bullet2 and player
bullet2_dx:		equ	0e5d4h		;abs(dx) between bullet2 and player
bullet2_tmp:		equ	0e5d5h
bullet3_dy:		equ	0e5d6h		;abs(dy) between bullet3 and player
bullet3_dx:		equ	0e5d7h		;abs(dx) between bullet3 and player
bullet3_tmp:		equ	0e5d8h
bullet4_dy:		equ	0e5d9h		;abs(dy) between bullet4 and player
bullet4_dx:		equ	0e5dah		;abs(dx) between bullet4 and player
bullet4_tmp:		equ	0e5dbh
bullet5_dy:		equ	0e5dch		;abs(dy) between bullet5 and player
bullet5_dx:		equ	0e5ddh		;abs(dx) between bullet5 and player
bullet5_tmp:		equ	0e5deh
bullet6_dy:		equ	0e5dfh		;abs(dy) between bullet6 and player
bullet6_dx:		equ	0e5e0h		;abs(dx) between bullet6 and player
bullet6_tmp:		equ	0e5e1h
boss_pos:		equ	0e5e2h		;vram address of endlevel boss on screen
boss_offset:		equ	0e5e4h		;address of boss sprites offset for exposion
cheat:			equ	0e5e6h		;you know what it mean
boss_fire:		equ	0e5e8h
endboss_rowcount:	equ	0e5e9h		;background row counter during end level boss
dead_flag:		equ	0e5eah		;dead flag
rpt_lv:			equ	0e5ebh		;how many times the level has to be repeated?
rpt_lv_res:		equ	0e5ech		;same value to restore prec variable
sfx_nr:			equ	0e5edh		;sound effect to play
sfx_dur:		equ	0e5efh		;duration of sfx
boss_hp:		equ	0e5f0h		;hit points of Enemy Boss
deadboss:		equ	0e5f2h		;flag set when the boss is dead
frame_count:		equ	0e5f3h		;frame counter to adjust music speed
freq:			equ	0e5f4h		;ntsc (0) or pal (1) flag
intro_frame:		equ	0e5f5h		;variable to store animation delay (in vblanks) during the intro
sequence_end:		equ	0e5f6h
default_speed:		equ	0e5f7h		;level scrolling default speed
mtest:			equ	0e5f8h
blink:			equ	0e5f9h
blink_tmp:		equ	0e5fah
boss_fire_pos:		equ	0e5fbh		;bosses' fixed fire position
scroller_pos:		equ	0e5fch
tmp:			equ	0e5fdh
horiz_pos:		equ	0e5feh		;horizontal position of bosses mobile parts
bossframe:		equ	0e5ffh
arkos_buffer:		equ	0e600h		;arkos player buffer
ramspttbl:		equ	0e700h		;y,x,nr,col+early clock(MSb)
event:			equ	0e780h		;event nr
player_input:		equ	0e781h		;0=keyboard, 1=joystick1, 2=joystick2
active_explosion:	equ	0e782h		;flag used during boss battle, set if boss hit
exp_frm:		equ	0e783h		;frame nr of explosion after boss was it
score:			equ	0e784h		;four bytes BCD number (8 digits)
hiscore:		equ	0e788h		;four bytes BCD number (8 digits)
lives:			equ	0e78ch		;do you really want me to write about this?
bullet_flag:		equ	0e78dh		;is time to fire against player flag
respawn_time:		equ	0e78eh		;respawn no collision time
power:			equ	0e78fh		;weapon level
coord_dec_speed:	equ	0e790h		;starship negative speed (up and left movement)
coord_inc_speed:	equ	0e791h		;starship positive speed (down and right movement)
bossbattle:		equ	0e792h		;boss battle flag
level:			equ	0e793h		;actual level
fire_ratio:		equ	0e794h		;enemy bullet frequency
endmap:			equ	0e795h		;end of map in ROM-1, after 1st screen
damage:			equ	0e797h		;damage amount
mid_boss_spt:		equ	0e798h		;address start of mid level boss sprites data
evlist:			equ	0e79ah		;eventlist position storage
rowcount:		equ	0e79ch		;row counter
buffer_pointer:		equ	0e7a0h		;position from where the title screen text scroller start to read
chtset1:		equ	0e7a2h		;
chtset2:		equ	0e7a4h		;
coltset1:		equ	0e7a6h		;
coltset2:		equ	0e7a8h		;
tset_change:		equ	0e7aah		;
total_enemies:		equ	0e7ach		;
enemies_hit:		equ	0e7aeh		;
hit_ratio:		equ	0e7b0h		;
ratiobonus:		equ	0e7b2h		;3 bytes BCD number (6 digits)
pl_col2:		equ	0e7b6h		;player sprite color2
boss_pos2:		equ	0e7b8h		;
boss_pos3:		equ	0e7bah		;
boss_pos4:		equ	0e7bch		;
frame_delay:		equ	0e7beh		;
eye:			equ	0e7bfh		;
lclaw:			equ	0e7c0h		;
rclaw:			equ	0e7c1h		;
right_arm:		equ	0e7c2h		;
left_arm:		equ	0e7c3h		;

skip_tmp:		equ	0e7c5h		;this reset the delay time during storytelling to skip it
intro_is_active:	equ	0e7c6h		;a flag set when the story is revealed
nomorelives:		equ	0e7c7h		;set when we are done...
release:		equ	0e7c8h		;fire button release flag
just_shoot:		equ	0e7c9h		;flag set when yeah, you can shoot
ship:			equ	0e7cah		;ship_model
randSeed:		equ	0e7cbh		;seed for random numbers (2bytes)
current_seg:		equ	0e7ceh		;here we store the actual megarom segment in use
cool_time:		equ	0e7cfh
shot_y			equ	0e7d0h		;offset for ypos in RAM SAT (used to set central shot collision check)
weapon_lv:		equ	0e7d1h		;3 bytes long string to show weapon level on screen
buffer_start:		equ	0e7d2h		;
actpat:			equ	0e800h		;1st: 1/0 active/unactive 2nd: pat nr 3:pattern position
vert_pos:		equ	0e880h		;vertical positions of bosses mobile parts (2bytes)
boss_sprites:		equ	0e900h		;
ending:			equ	0e7f0h
mfade:			equ	0e7f1h		;flag to control the music fading
volume			equ	0e7f2h
globe_tmp:		equ	0e884h		;here we store temporarily bonus globe coordinates during boss battles

	org	4000h
	db	"AB"
	dw	begin
	dw	0,0,0,0,0,0
begin:
	call	rslreg				;read primary slot #
	rrca
	rrca
	and	11b				;[A]=000000PP
	ld	e,a				;[E]=000000PP
	ld	d,0				;[DE]=000000PP	
	ld	hl,exptbl
	add	hl,de				;[hl]=exptbl+000000PP
	ld	a,(hl)				;A=(exptbl+000000PP)
	and	80h				;Use only MSB
	or	e				;[A]=F00000PP
	ld	e,a				;save primary slot number
	inc	hl				;point to SLTTBL entry
	inc	hl
	inc	hl
	inc	hl
	ld	a,(hl)				;get current expansion slot register
	and	0ch
	or	e				;[A] = F000SSPP
	ld	h,80h
	call	enaslt
	
	ld	a,6
	ld	(bank2),a			;select bank6 of megarom writing 6 in 7000h
first_time_hiscore_set:

	xor	a
	ld	(hiscore),a
	ld	(hiscore+1),a
	ld	(hiscore+3),a
	ld	a,50h
	ld	(hiscore+2),a	

	; f <- z: 60 Hz, nz: 50 Hz
get_vdp_frequency:
	ld	a,(idbyt2)			;check if msx1 or msx2 machine
	cp	1
	jr	nc,msx2
msx1:
	ld	a,(idbyt0)
;	bit	7,a				;check for VDP frequency
;	jr	nz,pal_set	
	rla					;MDL optimization
	jr	c,pal_set			;1byte, 5 t-state saved


	jr	ntsc_set
msx2:
	ld	a,(rg9sav)
	bit	1,a				;check for VDP frequency
	jr	nz,pal_set			;fix jr pal_set?
ntsc_set:
	xor	a
	ld	(freq),a			;if frequency=60Hz then freq variable is reset
	jr	screenset
pal_set:
	ld	a,1
	ld	(freq),a			;if frequency=50Hz then freq variable is set to 1

screenset:
	ld	a,2
	ld	(scrmod),a
	call	chgmod				;set screen2

;	ld	b,reg1_val			;16x16 sprite no magnif
;	ld	c,1				;reg nr
	ld	bc,reg1_val*256 + 1		;MDL optimization  1 byte, 5 t-states



	call	wrtvdp				;update vdp reg1
	call	disscr				;disable screen
color_set:
	ld	hl,forclr
	ld	a,1
	ld	(skip_tmp),a
	ld	(intro_is_active),a
	ld	(hl),a				;chr color
	inc	hl
	inc	hl
	ld	(hl),a				;Background color
	call	chgclr				;set screen colors
	xor	a
	ld	(mfade),a			;no music fade
	call	intro				;start cartridge intro (presentation)
start:   
	ld	hl,common_sprites		;read common sprites definition from rom
	ld	de,3800h			;set vram address where copy them
	ld	bc,512				;bytes to copy
	call	ldirvm				;do it

	call	reset_sprites

	ld	a,8	
	ld	(line_counter),a		;tile scrolling linecounter
	ld	hl,ramchr1_1+8
	ld	(chstart),hl			;scrolling offset start address 
	ld	(tset_ch),hl			;same value set to restore it
	ld	(chtset1),hl			;same value, this time to set address of tileset 1
	ld	hl,ramchr1_2+8
	ld	(chtset2),hl			;address of tileset 2
	ld	hl,ramclr1_1+8
	ld	(colstart),hl			;frome here we do the same for colors informations
	ld	(tset_clr),hl			;(prec are only for shapes informations)
	ld	(coltset1),hl			;color tileset 1
	ld	hl,ramclr1_2+8
	ld	(coltset2),hl			;color tileset 2
	ld	hl,chstart-704
	ld	(nametable),hl			;start address in RAM of nametable start (we read map from here on)
	ld	hl,273
	ld	(rowcount),hl			;number of rows in map
;	ld	hl,304
	ld	l,(304) & #00ff			;MDL
	ld	(total_enemies),hl		;total enemies for actual level
	ld	hl,0000h
	ld	(enemies_hit),hl		;total of enemies hit
	xor	a				;ld a,0
	ld	i,a				;double buffer flag
						;I is the Z80 interrupt register wich isn't used
						;by msx bios, so... why not? a free reg (a little slower)
	ld	(vdp_busy),a			;set vdp priority for background rendering
	ld	(reverse_sat),a			;reverse_sat flag
	ld	(0f3dbh),a			;keyclick off
	ld	(dead_flag),a			;dead flag reset (we are alive)
	ld	(active_explosion),a		;active explosion flag (no explosion)
	ld	(exp_frm),a			;actual explosion frame during a boss battle (boss hit)
	ld	(ending),a
	ld	(respawn_time),a		;after death
	ld	(bullet_flag),a			;if set an enemy will fire
	ld	(bossbattle),a			;if set we are fighting a boss
	ld	(boss_fire),a
	ld	(event),a
	ld	(speedcount),a			;this variable controls the scrolling acceleration
	ld	(cheat),a			;disable cheats
	ld	(hit_ratio),a			;percentage of hitten enemies
	ld	(frame_count),a
	ld	(score),a			;first byte of BCD score
	ld	(score+1),a			;second byte of BCD score
	ld	(score+2),a			;third byte of BCD score
	ld	(score+3),a			;fourth byte of BCD score
	ld	(ratiobonus),a			;first byte of BCD percentage bonus
	ld	(ratiobonus+1),a		;second byte of BCD percentage bonus
	ld	(ratiobonus+2),a		;third byte of BCD percentage bonus
	ld	(scroller_pos),a
	ld	(tmp),a
	ld	(nomorelives),a			;set when we have no more lives
	ld	(release),a			;set when we release the fire button
	ld	(cool_time),a			;
	inc	a				;ld	a,1
	ld	(speed),a			;scrolling speed
	ld	(default_speed),a		;default scrolling speed
	ld	(rpt_lv),a			;how many times the levelmap has to be shown entirely
	ld	(rpt_lv_res),a			;same value, to restore prec variable
	ld	(power),a			;weapon level	
	ld	(damage),a			;damage quantity
	ld	(bossframe),a
	ld	(ship),a
	ld	a,3
	ld	(coord_inc_speed),a		;how many pixel our starship will move down or right
	ld	(lives),a			;set lives number
	ld	a,-3
	ld	(coord_dec_speed),a		;how many pixel our starship will move up or left

	ld	a,10
	ld	(level),a			;level 1-0
	ld	(fire_ratio),a			;fire ratio, doesn't need explanation
	ld	a,145
	ld	(tset_change),a			;set how many rows before swap tilesets
	ld	a,6
	ld	(pl_col2),a			;set second color for player airship
	ld	hl,eventlist_10
	ld	(evlist),hl

	ld	hl,actpat 			;erase actpat table
	ld	b,96
	xor	a
eraloop:
	ld	(hl),a
	inc	hl
	djnz	eraloop

main_screen:
	xor	a
	ld	hl,buffer_start			;set the secret code buffer pointer at the beginning
	ld	(buffer_pointer),hl		;of the buffer and write 0 there. the check for seceret
	ld	(hl),a				;codes will be done in the isr (see keyword_scan)
	ld	(blink_tmp),a			;set to 0 blinking counter
	ld	(blink),a			;set to 0 blink state
	call	Freedom_img			;draw title screen
	call	enascr				;screen is visible again
	call	unhook				;remove previous hooked routine
	ld	hl,keyword_scan			;set this routine to be hooked in HTIMI
	call	hook_routine			;hook it

wait_release:
	ld	a,(player_input)		;check if a fire button was pressed to skip the intro. player input
	call	gttrig				;will have related value and if it is still pressed the game won't start
	jr	nz,wait_for_fire		;infact we will skip the release flag setting. This will apply
	ld	a,1				;also when we press fire to start and keep it pressed, skipping
	ld	(release),a			;so accidentally the prologue sequence
wait_for_fire:
	ld	a,(cheat)			;check if cheats are enabled during title screen
	or	a
	call	nz,active_cheats		;if the flag is set, then yeah, go to cheat!
	ld	a,(blink)			;check the blink status
	or	a				;if not set
	jp	z,write_fire			;skip the blinking part (message erase)
	ld	hl,title_screen+16		;erase message drawing the starship part that was hidden from
	jr	blinking_msg			;the writing
write_fire:
	ld	hl,title_screen			;for both the operations we have simply changed the pointer
blinking_msg:
	ld	de,6792				;starting vram address where we want to write
	ld	bc,16				;nr of bytes to copy
	call	ldirvm				;do it
	call	main_scroller			;write the scroller on the top of the screen
	ld	a,(release)			;check the release flag status
	or	a
	jr	z,wait_release			;if it is still zero restart this piece of code
test_fire:					;else check fire status
	xor	a				;let's start checking space bar
	call	gttrig
	jr	nz,keyb_select			;if pressed then we have selected keyboard
	ld	a,1				;else check for joystick button1 in port1
	call	gttrig
	jr	nz,joy1				;if pressed then we will play with Joystick1
	ld	a,2				;else check joystick button1 in port2 
	call	gttrig
	jr	z,wait_for_fire			;if this one too isn't pressed then check again from spacebar
	ld	a,2				;else joystick2 is chosen so go to set it
	jr	mainscreen_exit
joy1:
	ld	a,1				;joystick1 chosen
	jr	mainscreen_exit
keyb_select:
	xor	a				;keyboard chosen
mainscreen_exit:	
	ld	(player_input),a		;set controller number
	call	unhook				;remove from HTIMI the hooked routine
	xor	a
	ld	(release),a			;set button as unreleased (so the intro won't be interrupted accidentally)
	call	PLY_AKG_STOP			;stop music
	call	disscr				;disable screen
	ld	a,1
	ld	(skip_tmp),a			;set skip_tmp (if resetted there will be no waits and intro will be skipped)
	ld	(intro_is_active),a		;set flag for storytelling

prologue:
	ld	b,50
	call	wait				;wait 50 vblanks
	ld	hl,prologue_music		;set prologue music for arkos player
	xor	a
	call	PLY_AKG_INIT			;song initialization
	ld	a,7
	ld	(current_seg),a			;set current segment as 7
	ld	(bank2),a			;select bank 7 (segment 7) of ASCII16 mapper
	ld	hl,prol_isr			
	call	hook_routine			;set prol_isr as hooked routine in HTIMI
write_prologue:
	ld	ix,prologue_data		;set in ix data start address
	ld	hl,timings			;and in hl the start address of timigs table
	ld	a,7				;number of images to process
	call	slideshow			;tell me a story!


first_weapon_set:
	ld	a,9				;switch to bank/segment 9 to select the weapon
	ld	(bank2),a
	ld	hl,w1				;this will copy the 3bytes string that show the weapon
	ld	de,weapon_lv			;level in the scoreboard
	ldi
	ldi
	ldi

ready_to_start:
lv1_tileset:
	ld	a,1
	ld	(current_seg),a			;as you can see we set current seg every time we change the bank
						;this because some routines will change the bank for some purpouses
						;for short time (even during isr) and so we are able
						;to go back to the right bank
	ld	(bank2),a			;select bank1 of megarom writing 1 in 7000h

sprites_define:
	ld	hl,spritedata			;some gfx initializations
	ld	de,3a00h			;sprites, chars and chars used for bosses
	ld	bc,sprtend-spritedata		;except for sprites (wich we simple copy from rom to vram
	call	ldirvm				;using a bios routine) other task are executed passing
						;some parameters through registers and calling
	ld	hl,ramchr1_1+8			;dedicated routines
	call	redefine_patterns
	ld	hl,ramclr1_1+8
	call	redefine_colors

	ld	hl,boss1_t1
	ld	ix,boss_shape_addresses
	call	boss_redefine
	ld	hl,boss1_c1
	ld	ix,boss_color_addresses
	call	boss_redefine

	ld	hl,level1_music			;set level1 music fot arkos player
	xor	a
	call	PLY_AKG_INIT
	ld	bc,128
	call	sprite_pos			;set sprites positions copying a presetted SAT



game_start:
	ld	hl,panel			;set the scoreboard copying it from rom
	ld	de,6144				;64 bytes (two rows) starting from the top left corner
	ld	bc,64				;(nametable starting address)
	call	ldirvm
	ld	hl,level1map			;End Map1 in ROM, after 1st screen
	ld	(endmap),hl			;store the value in the related variable
	ld	e,(hl)				;first byte contain the value of the char that we will use
						;to fill the first screen (first part of all the level maps is
						;used to connect together the start and the end of the maps theirselves)
lvl_map_unpack:
	ld	hl,chstart-704			;start address of first screen in RAM
	ld	bc,703				;nr of bytes to write: 703 is equal to 768
						;(nametable lenght)-64 (our game area,
						;without scoreboard rows)-1 because we write a byte first
						;then the rest of the "screen"
fill_screen:
	ld	(hl),e				;here, as said we write first byte of starting screen
						;with the value that we have loaded from crunched map 
	ld	e,l				;then we set de=hl (so start of first screen)
	ld	d,h
	inc	e				;and incrementing it by 1 to set ldir destination
	ldir					;doing ldir we will fill next 703 bytes with the same value
						;se we have filled all the needed 704 bytes
	ld	hl,chstart-704			;start map in RAM
	ld	(nametable),hl			;store the address in nametable variable
	ld	de,(endmap)			;set in de the endmap address
						;now we will decrunch the whole map in RAM, row by row
						;starting from the row above the first one of the start screen,
						;then the one above and so on
newline:
	ld	hl,(nametable)			;our actual position in RAM
	ld	bc,-32
	add	hl,bc				;point 32char/1row up	
	ld	(nametable),hl			;store new address
	inc	de				;point to next byte of compressed Map in ROM
	ld	b,32				;columns counter (chars x row)
scrput:
	ld	a,(de)				;get the byte value
	inc	a				;checking my 4 special codes for map (light&fast) compression
	jp	z,block32			;CP 255,254,253,252 and 251(endmap)
	inc	a				;if value is 255 then we have a block of 32 chars repeated
	jp	z,block16			;254=16 chars repeated
	inc	a				;253=8 chars repeated
	jp	z,block8			;252=4 chars repeated
	inc	a
	jp	z,block4
	inc	a
	jp	z,done				;if value=251 then we have reached the end of map
	ld	a,(de)				;if no one of these values then write the given value
	ld	(hl),a				;on RAM, increase RAM and MAP pointers
	inc	hl
	inc	de
line_end_chk:
	djnz	scrput				;dedrease the column counter and check if
						;we have decompressed a complete row
	dec	de				;if so remove the MAP pointer increment (because it will be
						;increased again at the newline code segment)
	jp	newline				;go to newline segment
block32:
	inc	de				;we have a 32 repeated chars block, so increase the MAP pointer
	ld	a,(de)				;to get the char value
	ld	b,32				;set the counter
linel32:
	ld	(hl),a				;write the given value
	inc	hl				;increase RAM pointer
	djnz	linel32				;repeat until b=0 (32 times)
	jp	newline				;go to newline segment
block16:					;here we have 16 repeated chars block
	inc	de				;we get the value like the block32 routine
	ld	a,(de)
	ld	c,16				;but we set c as counter to avoid to waste column counter
linel16:
	ld	(hl),a				;do our ram writing as always
	inc	hl			
	dec	c
	jp	nz,linel16			;but checking c value
	ld	a,b				;then copy actual counter value in a
	add	a,-15				;subtract 15 (not 16 because we will jump to the line end
						;check in the main decrunch loop were it will be decreased)
	ld	b,a				;store result back in b
	inc	de				;point to next byte of compressed map in ROM
	jp	line_end_chk			;jump back to the end of decrunch main loop
block8:						;same as 16 but 8 times
	inc	de
	ld	a,(de)
	ld	c,8
linel8:
	ld	(hl),a
	inc	hl			
	dec	c
	jp	NZ,linel8
	ld	a,b
	add	a,-7
	ld	b,a
	inc	de				;point to next byte of compressed map in ROM
	jp	line_end_chk
block4:						;same as 16 and 8 but 4 times
	inc	de
	ld	a,(de)
	ld	c,4
linel4:
	ld	(hl),a
	inc	hl			
	dec	c
	jp	nz,linel4
	dec	b
	dec	b
	dec	b
	inc	de				;point to next byte of compressed map in ROM
	jp	line_end_chk
done:						;end decompression and reset nametable value
	ld	hl,chstart-704
	ld	(nametable),hl
drawscr:					;now we will draw the starting screen
	ld	bc,0c098h			;ld b,192 and ld c,98h at the same time (faster and shorter)
	ld	a,64  	    			;nametable address (dec 6208) from 3rd row, low byte
	di					;disable interrupts
	out	(99h),a				;send low byte to vdp
	ld	a,88   	  			;nametable address (dec 6208) from 3rd row, hi byte+64 (vram write)
	ei					;enable interrupt (they will be re-enabled after one instruction)
	out	(99h),a				;(this one) send hi byte to vdp
	ld	hl,(nametable)			;set in hl nametable start in RAM
	ld	a,3				;loops to go
loopname:					;first loop will write 192 bytes (as we have set b)
	outi					;2nd and 3rd loop 256 bytes each 
	jp	nz,loopname			;when b reaches 0 a will be decremented an another loop
	dec	a				;will start until a reaches 0
	jp	nz,loopname			;end of drawscr

;	xor	a				;removed because previous loop is ended with a=0
	ld	(sfx_nr),a			;set sfx number as 0 (no one)
	ld	(sfx_dur),a			;set sfx duration as 0

	call	enascr				;screen is visible again

	ld	hl,putsprite
	call	hook_routine			;hook sprite (and arkos player) management routine in HTIMI

rand8_init:					;random number seed initialization using jiffy system variable
	push	hl				;not mine, I took this routine from a post on MSX resource center
	ld	hl,(jiffy)			;forum (an Artrag one, if I'm not mistaken) together with
	set	0,l				;the rfelated random number generator
	ld	(randSeed),hl
	pop	hl

	ld	a,(cheat)			;check the status of cheat variable
	or	a				;if it is 0 then cheats aren't active
	jp	z,main				;and execution will jump to main loop, avoiding next few lines
cheat_enable:					;from here on we increase weapon level
	ld	b,10				;10 times (to the max)
cheat_weapon:
	di					;disable interrupt (because we have to switch to
	ld	a,9				;segment 9 where the weapon routine is located
	ld	(bank2),a			;and we want to avoid issues)
	call	weaponlvinc			;as you can see we haven't set current seg this time
	ld	a,(current_seg)			;because we have to return in the one we were before this
	ld	(bank2),a			;call
	ei					;enable interrupt (so if needed isr would be executed,
						;for example for music)
	djnz	cheat_weapon


main:						;main loop
;	ld	a,(level)			;these 3 lines were for testing purpose, they do
;	cp	60				;a "boss caravan" mode, so this + cheats on helped me to test
;	jp	c,midlevel			;the game bosses (and to go directly to the prologue to test it)
	ld	a,(nomorelives)			;check this flag
	or	a				;if set
	jp	nz,gameover			;perform the gameover routine
	call	pause_trap			;check for P button for pause the game (see further)
	ld	hl,(rowcount)			;load in HL register the remaining map rows
	dec	hl				;decrease it
	ld	a,h				;and check if
	or	l				;it has reached the 0 val
	jp	z,midlevel			;if so jump to midlevel routine

	call	cngchr				;else call the tilescrolling routine

	ld	a,(event)			;load event value in register a
	ld	hl,(evlist)			;point HL to eventlist address
	cp	(hl)				;event and value in eventlist address are the same?
	call	z,spmove			;if so call spmove to set a new sprite values in our SAT in RAM

	di					;disable interrupts
	ld	a,9
	ld	(bank2),a			;switch to bank 9
	call	shot_or_not			;call a routine that decide if a shot will be fired this frame and set the bullet flag
	ld	a,(bullet_flag)			;check the bullet flag
	dec	a				;if it is set to 1 (so it is wiil be 0 after dec instruction) then a bullet will be fired
	call	z,set_bullet			;so go and set parameters for this bullet
	ld	a,(current_seg)		
	ld	(bank2),a			;switch back to current segment
	ei					;enable interrupts

	ld	a,(dead_flag)			;check if we were killed and we are in respawn time
	dec	a			
	jp	z,skip_control			;if so we can't drive the starship until end of respawn
	call	control				;call the joy/keyboard check
skip_control:

	ld	a,24
	ld	(shot_y),a
	call	cshot_collision			;check central shot/enemies collision 
	ld	a,40
	ld	(shot_y),a
	call	cshot_collision			;check central shot/enemies collision
	ld	a,44
	ld	(shot_y),a
	call	cshot_collision			;check central shot/enemies collision  
	call	lshot_collision			;do the same for left shot
	call	rshot_collision			;do the same for right shot
	ld	a,(power)			;check power level
	cp	8
	jp	c,no_pod			;if it is less than 8 then we haven't a orbital pod, avoid its collision check
	call	pod_collision			;check pod collision with enemy bullets
no_pod:
	di
	call	play_sfx			;call a routine that set sound fx to be played
	ei
	ld	a,(cheat)			;cheats are enabled?
	or	a
	jp	nz,main				;if so then restart this loop (avoiding collisions)
main_collision:
	call	ship_collision			;check starship/enemies collision
	ld	a,(respawn_time)		;check if we are in respawn time
	or	a
	jp	nz,main				;if so (timer not decreased to zero) then restart this loop (avoiding bullets collisions)
	call	bullet_collision		;check starship/bullets collision
	jp	main				;restart this loop

play_sfx:
	ld	c,0				;select channel 0 for the sound effects
	ld	a,(sfx_nr)			;check sfx number
	cp	5				;if it is 5 then it is a boss explosion
	jr	z,play_sfx5			;go and do dedicated routine
	cp	0				;if it is 0
	ret	z				;return without play sfx
	cp	1				;if it isn't 1 then it isn't  a shot sfx
	jp	nz,not_shot_sfx			;so jump further to set max volume (value inverted, 0=max)
	ld	b,1				;shoots with volume below max value
	jp	sfx_play
not_shot_sfx:
	ld	b,0				;other sfx max volume
sfx_play:
	call	PLY_AKG_PLAYSOUNDEFFECT 
sfx_end:
	xor	a
	ld	(sfx_nr),a
	ld	(sfx_dur),a
	ret
play_sfx5:					;boss explosion has higher duration
	ld	b,0				;so this routine purpouse is to replay the sfx
	call	PLY_AKG_PLAYSOUNDEFFECT 	;longer
	ld	a,(sfx_dur)
	dec	a
	jr	z,sfx_end
	ld	(sfx_dur),a
	ret

pause_trap:
	ld	a,4				;select line 4 of keyboard matrix
	call	snsmat				;read its value (bios routine)
	cp	11011111b			;check if P key is pressed
	ret	nz				;return if not
	call	unhook				;if pressed remove sprite+music management routine from HTIMI hook
	ld	hl,paused_music			;and hook the paused music routine
	call	hook_routine
	ld	hl,pause_write			;write GAME PAUSED on screen
	ld	de,6506
	ld	bc,11
	call	ldirvm	
	ld	b,100
	call	wait				;wait 200 vblank (2 sec on pal, a bit less on ntsc)
	call	kilbuf				;clear keyboard buffer (bios routine)
fire_to_exit_pause:
	ld	a,(player_input)		;now, after the wait we are able to exit pause
	call	gttrig				;by pressing the fire button. Wait period is there to
	jr	z,fire_to_exit_pause		;avoid accidcentally exit when pausing. So you can keep
	ld	hl,putsprite			;button pressed when pausing and still have about 2 sec
						;to release button
;	call	hook_routine	
;	ret
	jp	hook_routine			;MDL optimization 1 byte, 18 t-states


pause_write:
	db	"GAME PAUSED"

paused_music:
	push	af
	jp	only_play_music			;jump to the ingame usual isr hooked routine, nut directly
						;to the only_play_music part, wich is executed instead of
						;the whole routine when vdp is busy drawing the screen
						;but you will see it further
slideshow:					;this routine shows prologue images
						;wich are compressed with pletter
						;as you remember (do you?) we have set few parameters
						;before calling this routine
						;1- a as number of pic to manage
						;2- hl as start address of timing table, 2 entries:
						;nr of waiting loops
						;1st loop timing in vblanks
						;
						;3- ix as start address of data table, 7 entries: 
						;address of 1st color table block compressed data
						;address of 1st pattern table block compressed data
						;number of bytes to be copied to vram for both (obviously they have same lenght)
						;address of 2nd color table block compressed data
						;address of 2nd pattern table block compressed data
						;number of bytes to be copied to vram for both
						;address of image nametable compressed data

pic_countdown:
	push	af
	push	hl
unpack_loop:
	ld	l,(ix+0)			;packed file address lowbyte (color table block1)
	ld	h,(ix+1)			;packed file address hibyte
	call	dcompr				;unpack data in ram at c000h
	ld	de,8192				;graphic2 1st color block vram address (row 0-7)
	ld	c,(ix+4)			;data lenght 
	ld	b,(ix+5)			;data lenght 
	call	to_vram				;copy to vram
	ld	l,(ix+2)			;packed file address lowbyte (pattern table block1)
	ld	h,(ix+3)			;packed file address hibyte
	call	dcompr				;unpack data in ram at c000h
	ld	de,0				;graphic2 1st pattern block vram address (row 0-7)
	ld	c,(ix+4)			;data lenght
	ld	b,(ix+5)			;data lenght
	call	to_vram				;copy to vram
	ld	l,(ix+6)			;packed file address lowbyte (color table block2)
	ld	h,(ix+7)			;packed file address hibyte
	call	dcompr				;unpack data in ram at c000h
	ld	de,10240			;graphic2 2nd color block vram address (row 8-15)
	ld	c,(ix+10)			;data lenght
	ld	b,(ix+11)			;data lenght
	call	to_vram				;copy to vram
	ld	l,(ix+8)			;packed file address lowbyte (pattern table block2)
	ld	h,(ix+9)			;packed file address hibyte
	call	dcompr				;unpack data in ram at c000h
	ld	de,2048				;graphic2 2nd pattern block vram address (row 8-15)
	ld	c,(ix+10)			;data lenght
	ld	b,(ix+11)			;data lenght
	call	to_vram				;copy to vram
	ld	l,(ix+12)			;packed file address lowbyte (nametable)
	ld	h,(ix+13)			;packed file address hibyte
	call	dcompr				;unpack data in ram at c000h
	ld	de,6144				;graphic2 nametable vram address
	ld	bc,768				;data lenght
	call	to_vram				;copy to vram
	ld	bc,14				;set 14 bytes lenght (2 bytes for each table entry)
	add	ix,bc				;add them to ix to move pointer to next pic data
	ld	a,(ending)			;ending variable is used by epilogue sequence
	dec	a				;check if its value is 1 then show the picture
	jp	z,show_pic			;ending sequence can't be skipped
	ld	a,(skip_tmp)			;check if we have to skip the sequence
	or	a				;if flag isn't set then show the picture
	jr	nz,show_pic
	pop	hl				;else restore the stack
	pop	af
	jr	exit_from_slideshow		;end exit from slideshow
show_pic:
	call	enascr				;screen is visible again (so pic can be seen)
	pop	hl				;retrieve pointer to timings table
	ld	d,(hl)				;store the high byte on d register (repeat counter)
	inc	hl				;point to low byte
	ld	b,(hl)				;store it on b (vblank counter)
pic_wait:
	call	wait				;our well known wait routine (b*vblank)
	dec	d				;when vblank counter is 0, decrease repeat counter
	jp	nz,pic_wait			;and repeat how many time it is needed
	inc	hl				;increase timing table pointer
	call	disscr				;disable screen again (for next pic to be unpacked)
	pop	af				;retrieve images counter
;	cp	0				;all shown?
	or	a				;MDL optimization   1 byte, 3 t-states
	jr	z,exit_from_slideshow		;if so exit from slideshow
	dec	a				;else decrease counter
	jp	nz,pic_countdown		;and start unpacking again from start
	ld	a,(ending)			;check if we are in epilogue sequence (end of game) or in
	dec	a				;prologue sequence (this flag is set by epilogue routine)
	ret	z				;so if counter reached 0 and we are in prologue we have  
	di					;another pic to show, but in a different megarom segment
	ld	a,8				;so we disable interrupts
	ld	(current_seg),a			;switch to new segment (and set it as current one so the
	ld	(bank2),a			;prol_isr routine can switch back to it, we will see
	ei					;why later) then reenable interrupts
	xor	a				;and set image counter to 0
	jp	pic_countdown			;do unpacking one last time
exit_from_slideshow:
	call	unhook				;remove our hooked routine from HTIMI
	xor	a
	ld	(intro_is_active),a		;reset the intro_is_active flag
	call	PLY_AKG_STOP			;stop the music
	ld	a,6
	ld	(bank2),a			;switch to segment 6 (same of the intro)
;	call	intro_font			;to redefine again the fonts
;	ret
	jp	intro_font			;MDL optimization  1 byte, 18 t-states


prol_isr:					;this is the routine we hook in HTIMI during story sequences
	push	af				;store reg a, needed to preserve vdp status reg
	ld	a,6
	ld	(bank2),a			;switch to bank 6 where are stored skippable play routine
	call	skippable_play			;(wich search for fire to skip sequence and call the music
	ld	a,(current_seg)			;replayer) and songs data (both prologue and epilogue)
	ld	(bank2),a			;then switch back to current used segment
	pop	af				;restore reg a (so vdp status reg, needed from bios isr)
	ret					;return to bios isr

dcompr:
	push	ix				;save ix register (we have here our main packed data pointer)
	ld	de,0c000h			;and it is used by pletter unpack routine. set data destination
	call	unpack				;in ram and call pletter unpacking
	pop	ix				;restore our pointer
	ret					;return from this routine

to_vram:
	ld	hl,0c000h			;set data source in ram
;	call	ldirvm				;copy to destination in vram (set in de before calling)
;	ret
	jp	ldirvm				;MDL optimization  1 byte, 18 t-states

pic_isr:					;another routine to hook in HTIMI
	push	af				;this one is used at the end of each level, when showing
	ld	a,(current_seg)			;pics to tell the story
	ld	(bank2),a			;we select current seg (because each level has its own music
	call	mtest_play			;in its dedicated data segment) and call the replayer routine
	ld	a,11				;written for music test (activable with a secret code)
	ld	(bank2),a			;then switch to segment 11, where all end level pictures are
	pop	af
	ret

prologue_data:
sc1_data:	;earth from space
	dw	img1_ct1,img1_pt1,856
	dw	img1_ct2,img1_pt2,664
	dw	img1_nt	
sc2_data:
	dw	img2_ct1,img2_pt1,792
	dw	img2_ct2,img2_pt2,696
	dw	img2_nt
sc3_data:
	dw	img3_ct1,img3_pt1,552
	dw	img3_ct2,img3_pt2,1376
	dw	img3_nt
sc4_data:
	dw	img4_ct1,img4_pt1,952
	dw	img4_ct2,img4_pt2,872
	dw	img4_nt
sc5_data:
	dw	img5_ct1,img5_pt1,240
	dw	img5_ct2,img5_pt2,424
	dw	img5_nt
sc6_data:
	dw	img6_ct1,img6_pt1,808
	dw	img6_ct2,img6_pt2,1144
	dw	img6_nt
sc7_data:
	dw	img7_ct1,img7_pt1,1248
	dw	img7_ct2,img7_pt2,1480
	dw	img7_nt
sc8_data:
	dw	img8_ct1,img8_pt1,352
	dw	img8_ct2,img8_pt2,496
	dw	img8_nt

timings:
	db	3,57
	db	2,212
	db	2,227
	db	3,244
	db	3,238
	db	3,88
	db	2,244
	db	3,0

epilogue_data:
ep1_data:	;earth from space
	dw	eimg1_ct1,eimg1_pt1,832	
	dw	eimg1_ct2,eimg1_pt2,1856	
	dw	eimg1_nt		
ep2_data:
	dw	eimg2_ct1,eimg2_pt1,664
	dw	eimg2_ct2,eimg2_pt2,1648
	dw	eimg2_nt
ep3_data:
	dw	eimg3_ct1,eimg3_pt1,416
	dw	eimg3_ct2,eimg3_pt2,1368
	dw	eimg3_nt
ep4_data:
	dw	eimg4_ct1,eimg4_pt1,912
	dw	eimg4_ct2,eimg4_pt2,840
	dw	eimg4_nt
ep5_data:
	dw	eimg5_ct1,eimg5_pt1,1328
	dw	eimg5_ct2,eimg5_pt2,1136
	dw	eimg5_nt

epilogue_timings:
	db	3,157
	db	3,56
	db	3,188
	db	3,200
	db	3,150


death_write:
	db	"GAMEOVER"
title_screen:
	db	"PUSH FIRE BUTTON"
	db	020h,020h,020h,020h,020h,00eh,000h,00fh,010h,011h,012h,020h,020h,020h,020h,020h

weapon_globe:
	db	1,100,232,10
	db	1,100,236,4
globe_pattern:
	db	1,5,0,1,5,0


lvl_restart:					;this part is needed only for levels that need to be repeated	
	ld	(rpt_lv),a			;(and this applies only on level4 wich is the fast one, so)
	ld	hl,273				;the map is shown many times)
	ld	(rowcount),hl			;settings are the same that we have set before the level
	ld	hl,chstart-704			;start
	ld	(nametable),hl			;this part was intended as generic but then it ended to be
	ld	hl,(chtset1)			;used only for level4
	ld	(chstart),hl
	ld	(tset_ch),hl
	ld	hl,(coltset1)
	ld	(colstart),hl
	ld	(tset_clr),hl
	jp	main

midlevel:
	ld	a,(rpt_lv)			;check if level has to be repeated
	dec	a				;decrease repeatition counter
	jp	nz,lvl_restart			;if not zero then restart level before executing midlevel
	ld	a,(rpt_lv_res)			;else restore repeatition value (it is needed for the
	ld	(rpt_lv),a			;2nd part of the level, after midlevel boss)
;	ld	a,(fire_ratio)			;let's increase the fire ratio 
;	add	a,5
;	ld	(fire_ratio),a
	ld	hl,fire_ratio			;MDL optimization  1 byte, 1 t-state
	ld	a,(hl)
	add	a,5
	ld	(hl),a

;	ld	a,(level)			;and level variable (levels are incremented by 5, intended
;	add	a,5				;as "half". so we have level 10 (wich means 1-0) level 15
;	ld	(level),a			;(wich means level 1 and half) and so on
;	ld	hl,level			;MDL optimization  1 byte, 1 t-state
	dec	hl				;MDL optimization (level address is 1 byte low than fire_ratio address) 2 bytes, 4 t-states
	ld	a,(hl)
	add	a,5
	ld	(hl),a


	cp	15				;because the main loop jump to midlevel routine when
	jp	z,midboss1			;the map is completely shown, we check here the level variable
	cp	25				;so we will know if we have to set a midlevel boss battle
	jp	z,midboss2			;or if we have to jump to an endlevel boss battle
	cp	35				;so we check our "half" values and if no one matches
	jp	z,midboss3			
	cp	45
	jp	z,midboss4
	cp	55
	jp	z,midboss5
	jp	end_boss_menu			;we will jump to end level boss menu
map_restart:					;here's start (and restart) the map during midboss battle
	ld	hl,weapon_globe			;each time the map restart a powerup orb will be released
	ld	de,ramspttbl+96			;so we copy its sprites attributes from a fixed table
	ld	bc,8				;we use always the same 2 sprites for it (so we will be able
	call	unroll+16			;also to alternate its visualization because we will be in need
	ld	de,actpat+72			;of free sprites) so sprites 24 (4x24=96 so our entry on our
	ld	bc,6				;sprite attribute table in ram, called ramspttbl) and 25
	call	unroll+20			;we will copy there 8 bytes with an urolled ldir (we jump inside
						;the unrolling routine to use only desired ldi instructions)
						;then we point to the entry of the same sprite (24) in our
						;actpat table (wich set: active flag, movement pattern nr and
						;the position inside the pattern itself). two sprites, so 6 bytes
						;data source is consequential to globe sprites attributes so we are
						;already there after unrolled ldir so we can do another unroll
						;jumping in the right position in the middle of unroll routine

	call	evlist_restore			;the eventlist (wich is the midboss sprites movement list)
	ld	hl,273				;has to be restored at each restart of the map
	ld	(rowcount),hl			;and so we have to do for all the map/tileset/char values
	ld	hl,chstart-704
	ld	(nametable),hl
	ld	hl,(chtset1)
	ld	(chstart),hl
	ld	(tset_ch),hl
	ld	hl,(coltset1)
	ld	(colstart),hl
	ld	(tset_clr),hl
	ld	a,(deadboss)			;then check if the "boss is dead" flag is set
	or	a
	jp	nz,prepare_to_main		;and if so jump to set all we need before starting 2nd part
						;of the level
mlloop:						;here start the midlevel loop
	ld	a,(nomorelives)			;check if the flag of zero lives left is set
	or	a
	jp	nz,gameover			;if so start the gameover sequence
	call	pause_trap			;check if pause key is pressed
	ld	hl,rowcount			;check actual position in map
	ld	a,(tset_change)			;and compare it with the tileset change position
	cp	(hl)
	jp	nz,mtileset_set			;if not we can continue the loop
mtset2:						;else we change tileset start addresses
	ld	hl,(chtset2)			;to use the 2nd one
	ld	(chstart),hl			;this part is performed because the map, during midlevel
	ld	(tset_ch),hl			;boss battle, loops endlessly until the boss death
	ld	hl,(coltset2)			;the tileset change is usually performed by the scrolling 
	ld	(colstart),hl			;routine. I forgot to remove this part from the code
	ld	(tset_clr),hl			;(it can be done safely from "ld hl,rowcount" until here)
mtileset_set:
	ld	hl,(rowcount)			;check actual map row
	dec	hl				;decrease its value
	ld	a,h				;and if reaches zero
	or	l				;map show is complete
	jp	z,map_restart			;so it has to be restarted
	ld	a,(event)			;else check event variable (wich is updated during scrolling)
	ld	hl,(evlist)			;point hl to actual eventlist entry
	cp	(hl)				;check if event number equals the value contained in eventlist
	call	z,mbspmove			;if so go and set enemy sprites
	call	cngchr				;perform scrolling
	di					;disable interrupt
	call	play_sfx			;set sfx to be played (if there is one)
	ei					;re enable interrupts
	ld	a,(bossbattle)			;check if we are in a boss battle (flag set)
	or	a				;if not it means that we have killed the boss and the map
	jp	z,bosskilled			;has to continue looping fast until the end
						;avoiding enemy bullet settings part
	ld	a,(deadboss)			;this flag, instead, check if we have JUST killed the
	or	a				;midlevel boss, so we can perform related actions
	call	nz,midboss_killed		;at midboss_killed routine
	di
	ld	a,9				;enemy bullet settings (same as main loop)
	ld	(bank2),a			
	call	shot_or_not
	ld	a,(bullet_flag)
	dec	a
	call	z,set_bullet
	ld	a,(current_seg)
	ld	(bank2),a
	ei
bosskilled:					;when boss is dead, the program continue from here
	ld	a,(dead_flag)			;also this part is the same as the main loop
	dec	a				;so no reason to comment it again
	jp	z,midskip_control
	call	control
midskip_control:
	ld	a,24
	ld	(shot_y),a
	call	cshot_collision
	ld	a,40
	ld	(shot_y),a
	call	cshot_collision
	ld	a,44
	ld	(shot_y),a
	call	cshot_collision	
	call	lshot_collision
	call	rshot_collision
	ld	a,(power)
	cp	8
	jp	c,midno_pod
	call	pod_collision
midno_pod:
	ld	a,(respawn_time)
	or	a
	jp	nz,mlloop
	ld	a,(cheat)
	or	a
	jp	nz,mlloop
midmain_collision:
	call	ship_collision
	ld	a,(dead_flag)
	or	a
	jp	nz,mlloop
	call	bullet_collision
	jp	mlloop

prepare_to_main:				;if the boss is dead and the level is set to restart
						;the code jump here
	xor	a				;ld a,0 now we will reset all the parameters
	ld	(speedcount),a			;reset acceleration counter
	ld	(event),a			;reset event number
	ld	a,(default_speed)		;load default scrolling speed
	ld	(speed),a			;and set it
	ld	hl,273
	ld	(rowcount),hl			;map rows counter
	LD	hl,chstart-704
	LD	(nametable),hl			;nametable start in ram
	ld	a,(level)			;check current level
	cp	15				;and jump to related settings
	jp	z,level1_5
	cp	25
	jp	z,level2_5
	cp	35
	jp	z,level3_5
	cp	45
	jp	z,level4_5
	cp	55
	jp	z,level5_5
level1_5:					;we could have omitted, few rows above, cp 15
						;jp z,level1_5 and this part would have been
						;executed if all the previous ones were false
						;I didn't noticed it until now, when commenting code
						;before release it
	ld	hl,eventlist_15			;point to new eventlist address
	ld	(evlist),hl			;and set it
	ld	hl,sptdef1_16			;point to actual level sprite definitions (starting from
						;sprite nr 16)
	jp	unload_midboss_sprites		;jump to restore the sprites we have previously overwritten
						;with midlevel boss sprites definitions
						;other settings routine do exactly the same
level2_5:
	ld	hl,eventlist_25
	ld	(evlist),hl
	ld	hl,sptdef2_16
	jp	unload_midboss_sprites
level3_5:
	ld	hl,eventlist_35
	ld	(evlist),hl
	ld	hl,sptdef3_16
	jp	unload_midboss_sprites
level4_5:
	ld	hl,eventlist_45
	ld	(evlist),hl
	ld	hl,sptdef4_16
	jp	unload_midboss_sprites
level5_5:
	ld	hl,eventlist_55
	ld	(evlist),hl
	ld	hl,sptdef5_16
	jp	unload_midboss_sprites
unload_midboss_sprites:				;this routine resore previously overwritten sprites
						;definitions
	ld	c,98h				;vdp data port in c (needed for outi/otir instruction)
umbvdpbusy:
	ld	a,(vdp_busy)			;check if vdp is busy managing sprites (it happens in the isr)
	dec	a
	jp	z,umbvdpbusy			;try until it is free
	xor	a				;ld	a,0
	ld	b,a				;ld	b,0
	di					;disable interrupts
	out	(99h),a				;send low byte of sprite16 shape address
	ld	a,7ah				;hi byte address + 64 (3ah + 64 wich means write to vram)
	ei					;enable interrupts
	out	(99h),a				;send hi byte
umshowloop:					
	outi					;send 256 bytes (b=0): 8 sprites 16x16
	jp	nz,umshowloop
	xor	a
	ld	(vdp_busy),a			;reset vdp_busy variable
	ld	hl,(chtset1)			;restore all charset/colorset parameters
	ld	(chstart),hl
	ld	(tset_ch),hl
	ld	hl,(coltset1)
	ld	(colstart),hl
	ld	(tset_clr),hl
	jp	main				;and jump back to game main loop

midboss_killed:
	ld	de,actpat+36			;point to sprite 12 actpat entry
	ld	hl,ramspttbl+48			;point to sprite 12 sat entry in ram buffer
	ld	b,8				;number of sprites to update
killedbossvdpbusy:
	ld	a,(vdp_busy)			;check if vdp is actually used by isr routine
	dec	a
	jp	z,killedbossvdpbusy		;if so repeat check until vdp is free
midboss_actpat_explosion:
	inc	e				;skip first entry on actpat table (active flag)
	ld	a,7
	ld	(de),a				;and set pattern 7 (explosion) to second entry
	inc	e				;point to next actpat entry (actual position inside pattern)
	xor	a
	ld	(de),a				;and set it to the begin
	inc	e				;point to next entry (first one of next sprite, ready for loop)
	inc	l				;skip 1st entry of sat (we don't have to modify sprite y)
	inc	l				;skip 2nd entry of sat (we don't have to modify sprite x)
	ld	(hl),240			;set explosion shape to current sprite
	inc	l				;point to next (last) entry
	ld	(hl),11				;set color 11 to current sprite
	inc	l				;point to next entry (first of next sprite, ready for loop)
	djnz	midboss_actpat_explosion	;decrease sprite to update counter and repeat if not done
						;as you see increments in these tables are done by simply
						;increasing the low byte of the address. it is possible
						;because both are aligned and both occupy less than 256 bytes
						;so hibyte won't change anyway

	ld	hl,no_event_list		;set a new eventlist (an empty one) because the code needs
	ld	(evlist),hl			;one and we don't want to restart the boss battle, agree?
	xor	a
	ld	(event),a			;reset event number
	ld	(bossbattle),a			;reset bossbattle flag
	ld	(vdp_busy),a			;reset vdp_busy flag (free for isr access)
	ld	bc,5000h			;5000 points for blasting Mid Level Boss! (BCD notation)
	call 	scoreadd			;yes, go and add to our score
	ld	a,5
	ld	(sfx_nr),a			;set boss explosion sfx
	ld	a,15
	ld	(sfx_dur),a			;set its duration
	ret					;return to midlevel loop

evlist_restore:					;when the midboss eventlist is completed
	xor	a				;we need to reset it so the boss restart its behavior
	ld	(event),a			;so we reset the event number
	ld	a,(level)			;and will go to restore settings for proper midboss
	cp	15
	jp	z,midlist1
	cp	25
	jp	z,midlist2
	cp	35
	jp	z,midlist3
	cp	45
	jp	z,midlist4
	cp	55
	jp	z,midlist5
	ret					;this ret is pointless... if this routine is executed the
						;code jump surely to one of the routine below so, getting
						;rid of this ret and deleting the "cp 15/jp z,midlist1" part
						;midlist1 is executed if the other ones are false
						;(be patient, Freedom Fighter was my FIRST game) 
midlist1:
	ld	hl,mid1_eventlist
	ld	(evlist),hl			;set mid1_eventlist
	ret					;other midlist set code is the same
midlist2:
	ld	hl,mid2_eventlist
	ld	(evlist),hl
	ret
midlist3:
	ld	hl,mid3_eventlist
	ld	(evlist),hl
	ret
midlist4:
	ld	hl,mid4_eventlist
	ld	(evlist),hl
	ret
midlist5:
	ld	hl,mid5_eventlist
	ld	(evlist),hl
	ret

end_boss_menu:					;oh, the player is about to fight an end level boss!
	ld	hl,actpat+37			;we use the same sprites we use for midlevel bosses
	ld	(hl),15				;initial pattern is always set to 15, wich is the
						;"enemy stopped" one
	xor	a				;ld a,0
	ld	(deadboss),a			;set the boss as alive
	inc	a				;ld a,1
	ld	(bossbattle),a			;set the flag "we are fighting a boss here"
	ld	a,(level)			;check the level to set proper boss parameters
						;as you remember the midlevel routine add 5 to the level
						;variable each time it is reached (when the map rowcount
						;reaches 0, so each boss has the same "level" value of the
						;next level (level doesn't change at the start of main
						;loop, so it will be the same at the start of a new level)
	cp	20
	jp	z,level1_end_boss
	cp	30
	jp	z,level2_end_boss
	cp	40
	jp	z,level3_end_boss
	cp	50
	jp	z,level4_end_boss
	cp	60
	jp	z,level5_end_boss

level1_end_boss: 				;here too, the cp20/jp z,level1_end_boss part can be omitted
	ld	a,120
	ld	(boss_hp),a			;here we set hp, body position (and other part positions, if
	ld	hl,-245				;there are some, like vert_pos on moon boss for the floating
	ld	(boss_pos),hl			;lasers, or claws on last boss, or each of the 4 bodies of
	ld	hl,boss1_offset			;the 4th level boss
	ld	(boss_offset),hl		;boss_pos (each one) are the number of characters before the
	ld	hl,elb1_entering		;left top one shown on screen. so because the nametable is
	jp	set_rowcount			;copied from ram, we have an offset (in bytes) where the
level2_end_boss:				;characters used to draw the boss are placed in ram before
	ld	a,160				;the top left displayed one. the cahrs will be moved by the
	ld	(boss_hp),a			;boss placement routine and so it will be visible while
	ld	hl,-245				;approaching and won't appear suddenly like for magic
	ld	(boss_pos),hl			;the boss_offset variables store the start addresses of
	ld	hl,boss2_offset			;some tables (one for each boss). the offsets are for the
	ld	(boss_offset),hl		;explosions when the boss will die (so it will seem that
	ld	hl,elb2_entering		;there are multiple explosions)
	jp	set_rowcount			;before jumping to set_rowcount the last parameter
level3_end_boss:				;set is the eventlist (wich is the entering one)
	ld	a,2				;other specific variables will be explained when commenting
	ld	(horiz_pos),a			;related boss code
	ld	a,140				;set_rowcount is further in the code (before it there's the
	ld	(boss_hp),a			;code to prepare to the new level or do "end of game" stuff
	ld	hl,128				;if all the levels are beaten
	ld	(vert_pos),hl
;	ld	hl,-128
	ld	h,-1				;MDL optimization (hl was 128 until now so h=0 and l=128.
	ld	(boss_pos),hl			;it is enough to set h as negative to set hl as -128
	ld	hl,boss3_offset
	ld	(boss_offset),hl
	ld	hl,elb3_entering
	jp	set_rowcount
level4_end_boss:
	ld	a,140
	ld	(boss_hp),a
	ld	hl,-309	
	ld	(boss_pos),hl
	ld	hl,-304
	ld	(boss_pos2),hl
	ld	hl,-149
	ld	(boss_pos3),hl
;	ld	hl,-144
	ld	l,(-144) & #00ff		;MDL
	ld	(boss_pos4),hl
	ld	hl,boss4_offset
	ld	(boss_offset),hl
	ld	hl,elb4_entering
	jp	set_rowcount
level5_end_boss:
	xor	a
	ld	(bossframe),a
	ld	(frame_delay),a
	ld	(eye),a
	ld	(lclaw),a
	ld	a,140
	ld	(boss_hp),a
	ld	a,7
	ld	(rclaw),a
	ld	hl,-406
	ld	(boss_pos),hl
	ld	hl,0
	ld	(boss_pos2),hl
	ld	(boss_pos3),hl
	ld	hl,boss5_offset
	ld	(boss_offset),hl
	ld	hl,elb5_entering
	jp	set_rowcount


prepare_to_next_level:
	call	endlevelscreen			;all the stuff to do at the end of the level
	call	disscr				;disable screen
	ld	a,(level)			;check level and jump to proper settings routine
	cp	20
	jp	z,level2prep
	cp	30
	jp	z,level3prep
	cp	40
	jp	z,level4prep
	cp	50
	jp	z,level5prep
						;if no one of the previous comparison is true, then
						;the game has been completed. let's show the...
Epilogue:
	call	unhook				;remove current routine hooked in HTIMI
	call	PLY_AKG_STOP			;stop the music
	ld	a,6
	ld	(bank2),a			;switch to segment 6 of ascii16 mapper
	ld	hl,epilogue_music		;choose epilogue music
	xor	a
	call	PLY_AKG_INIT			;and initialize it to the arkos player
	ld	a,10				;switch to segment10
	ld	(bank2),a
	ld	(current_seg),a			;and set it as current one (we have already seen the
	ld	a,1				;prol_isr routine so you know why)
	ld	(skip_tmp),a			;no skip set
	ld	(ending),a			;set ending variable (see prologue routine)
	ld	b,50
	call	wait				;wait 50 vblanks
	ld	hl,prol_isr
	call	hook_routine			;as said above, hook prol_isr in HTIMI
	call	cls				;clear the screen
	ld	ix,epilogue_data		;set data address
	ld	hl,epilogue_timings		;and timing address
	ld	a,5				;number of images to process
	call	slideshow			;start the sequence
	ld	a,8
	di					;disable interrupt
	ld	(bank2),a			;switch to segment 8
	ld	(current_seg),a			;set as current one
	ei					;enable interrupt
	call	enascr				;enable screen
	call	fade_to_light			;this routine cjanges colors to white
						;to simulate a light wave from the explosion
	call	disscr				;disable screen
	call	cls				;clear screen
	ld	a,6
	di
	ld	(bank2),a			;switch to segment6
	ld	(current_seg),a			;to redefine fonts again (we will need them for all the
	ei					;screen, and during the slideshow they were overwritten
	call	intro_font			;on 1st and 2nd block (rows 0-15) by gfx
	call	cls				;clear screen
	ld	a,10
	di
	ld	(bank2),a			;switch to segment 10
	ld	(current_seg),a
	ei
	call	Show_credits			;and show credits
	ld	a,6
	di
	ld	(bank2),a			;switch to segment 6
	ld	hl,Empty			;to set the empty song (no music)
	xor	a
	call	PLY_AKG_INIT
	ld	hl,SoundFX			;so we can set sfx only
	call	PLY_AKG_INITSOUNDEFFECTS
	ei

	ld	a,8
	di
	ld	(bank2),a			;switch to segment 8
	ld	(current_seg),a			;and set it as current one
	ei
pcs:
	call	post_credits_scene		;and show the post credit scene
	ld	a,6
	ld	(bank2),a			;again on segment 6 to redefine fonts
	call	intro_font

	ld	a,8
	ld	(bank2),a
	call	to_be_continued			;segment 8 for the final screen
	ld	a,6				;and back to segment 6 where
	ld	(bank2),a			;restart data are



	call	cls				;clear screen
	ld	hl,Fight_for			;set title screen music
	xor	a
	call	PLY_AKG_INIT
	ld	hl,keyword_scan			;hook secret code routine
	call	hook_routine
	jp	start				;and restart the code (without change teh highscore)

End_Level_Boss:					;end level boss loop is almost the same as
						;the main one and the midlevel one
elbmap_restart:					;the code will jump here when the map counter fall to 0
						;so the eventlist could be restored and the boss
						;restarts its behavior
	ld	a,(deadboss)			;check bossdead flag
	or	a
	jp	nz,just_killed_ELB		;if set we have killed him
	ld	a,(level)			;ok, already explained this kind of code several times
	cp	20
	jr	z,elblist1
	cp	30
	jr	z,elblist2
	cp	40
	jr	z,elblist3
	cp	50
	jr	z,elblist4
	cp	60
	jr	z,elblist5
	ret					;and here again (LoL) a pointless ret and an omittable piece
						;of code (cp 20/jr z,elblist1)
elblist1:
	ld	hl,elb1_eventlist
	jp	set_rowcount
elblist2:
	ld	hl,elb2_eventlist
	jp	set_rowcount
elblist3:
	ld	hl,elb3_eventlist
	jp	set_rowcount
elblist4:
	ld	hl,elb4_eventlist
	jp	set_rowcount
elblist5:
	ld	hl,elb5_eventlist
set_rowcount:					;as said the loop is pretty similar to main one and
	ld	(evlist),hl			;midlevel one, so you'll find here only the comments
	ld	hl,(chtset1)			;that I wrote some (long) time ago, when coding it
	ld	(chstart),hl			;and most of them are there due to the copy/paste work
	ld	(tset_ch),hl			;the few differences are: 
	ld	hl,(coltset1)			;1- the rowcount variable that here
	ld	(colstart),hl			;is an 8bit one. we haven't a map to scroll during end
	ld	(tset_clr),hl			;level boss, so no real rows. we set a counter and that's it
	ld	hl,weapon_globe			;2- a call to check_generic wich check if the airship
	ld	de,ramspttbl+96			;collide against the Bosses' bodies
	ld	bc,8				
	call	unroll+16			;3- the boss fire collision (that checks if there is a 
	ld	de,actpat+72			;collision with bosses' megaflares)
	ld	bc,6
	call	unroll+20
	xor	a
	ld	(event),a
	ld	(endboss_rowcount),a
ELB_loop:
	ld	a,(nomorelives)
	or	a
	jp	nz,gameover
	call	pause_trap
	ld	hl,0
	ld	(rowcount),hl
	ld	a,(endboss_rowcount)
	dec	a
	jp	z,elbmap_restart
	ld	(endboss_rowcount),a
	ld	hl,chstart-704
	ld	(nametable),hl
	ld	a,(event)			;actual event nr in reg a
	ld	hl,(evlist)			;event nr of event list in hl regs
	cp	(hl)				;are the same?
	call	z,ELB_spmove			;yes, call boss movement change
	call	putboss				;put boss on screen
	call	cngchr				;draw shifted screen
	di
	call	play_sfx
	ei
	ld	a,(bossbattle)
	or	a
	jp	z,wait_4_explosion
	ld	a,(deadboss)			
	or	a				
	jp	nz,just_killed_ELB		
	di
	ld	a,9
	ld	(bank2),a
	call	shot_or_not			;check if enemy will shot (it will change bullet_flag)
	ld	a,(bullet_flag)			;check bullet flag
	dec	a				;
	call	z,set_bullet			;if it is 1 then go to set bullet params
	ld	a,(current_seg)
	ld	(bank2),a
	ei
	ld	a,(dead_flag)			;check if we were killed and so respawn
	dec	a				;
	jp	z,ELB_skip_control		;if so skip joystick check (can't move during respawn)
	call	control				;check keyboard or joystick inputs
ELB_skip_control:
	ld	a,24
	ld	(shot_y),a
	call	cshot_collision			;check central shot/enemies collision 
	ld	a,40
	ld	(shot_y),a
	call	cshot_collision			;check central shot/enemies collision
	ld	a,44
	ld	(shot_y),a
	call	cshot_collision			;check central shot/enemies collision  
	call	lshot_collision			;check left shot collisions
	call	rshot_collision			;check right shot collisions
	ld	a,(power)			;check weapon level
	cp	8				;
	jp	c,ELB_no_pod			;if level<8 then we have no pod and ignore its collisions
	call	pod_collision			;check pod collisions with bullets
ELB_no_pod:
	ld	a,(respawn_time)		;check respawn_time variable
	or	a				;
	jp	nz,ELB_loop			;if not zero restart end level boss loop without collisions check
	ld	a,(cheat)
	or	a
	jp	nz,ELB_loop			;to test bossfire collisions with cheats active bossctest
ELB_main_collision:
	call	ship_collision			;check collisions between airship and enemies
	ld	a,(dead_flag)
	or	a
	jp	nz,ELB_loop
	call	bullet_collision		;check collisions between airship and enemy bullets
	ld	a,(dead_flag)
	or	a
	jp	nz,ELB_loop
	call	check_generic			;check collisions between airship and bosses
bossctest:
	ld	a,(boss_fire)			;this flag is set when a boss fire a megaflare
	or	a
	call	nz,bossfire_collision		;in this case check if we were hit
	jp	ELB_loop			;loop again

just_killed_ELB:				;ok, the boss has been killed so:
	ld	hl,ramspttbl+48			;we copy in a ram buffer the coordinates of the invisible
	ld	de,boss_sprites			;sprites that we use as boss hitpoints
	ld	b,48				;we will use them later with the boss_offset tables
copy_boss_sprites_coord:			;to simulate multiple explosion just moving the
	ld	a,(hl)				;sprites forth and back
	ld	(de),a
	inc	l
	inc	e
	djnz	copy_boss_sprites_coord
	xor	a				;we have killed the boss
	ld	(bossbattle),a			;reset bossbattle flag
	ld	hl,ramspttbl+48			;just like we did for midlevel boss
	ld	de,actpat+36			;we set explosion pattern and sprites attributes,
	ld	b,12
endboss_actpat_explosion:
	inc	e
	ld	a,7
	ld	(de),a
	inc	e
	xor	a
	ld	(de),a
	inc	e
	inc	l
	inc	l
	ld	(hl),240
	inc	l
	ld	(hl),11
	inc	l
	djnz	endboss_actpat_explosion
	ld	hl,no_event_list		;set an empty event_list
	ld	(evlist),hl
	ld	hl,actpat+37			;set the stopped boss pattern
	ld	(hl),15
	xor	a
	ld	(event),a			;reset event number
	ld	(bossbattle),a			;and bossbattle flag
	ld	a,(boss_fire)			;check if there is a boss megaflare on screen,
	or	a				;fired before dying
	call	nz,erafire			;if so go and remove it from screen
	ld	bc,5000h			;5000 points for blasting End Level Boss! (BCD notation)
	call 	scoreadd			;add to our score
	ld	a,80
	ld	(explosion_time),a		;set an explosion timer

	ld	hl,actpat+26*3			;point to actpat entry 26 (first enemy bullet, wich are
	ld	b,6				;sprites 26-31)
	xor	a				;ld a,0
bullet_inactive:
	ld	(hl),a				;set bullet sprite as inactive
	inc	l
	inc	l
	inc	l				;skip 3 values to point to first entry of next bullet
	djnz	bullet_inactive			;(ready for loop) do it for 6 bullets

	ld	hl,ramspttbl+26*4		;point to sprite 26 y coordinate
;	ld	b,6
;	ld	c,209
	ld	bc,06d1h			;set the counter (b) to 6 and c with the value to set
get_rid_of_bullets:
	ld	(hl),c				;set bullet y at 209 (remove single sprite from screen)
	ld	a,4
	add	a,l
	ld	l,a				;point to first entry (ypos) of next sprite (ready for loop)
	djnz	get_rid_of_bullets
	call	boss_explosion_sfx		;set boss explosion sfx
	jp	ELB_loop			;restart ELB loops
						;the loop continues, but it will jump to the routine below
						;from now on until the end of the boss explosion
wait_4_explosion:
	xor	a
	ld	(endboss_rowcount),a		;reset rowcount
	ld	a,(explosion_time)		;check explosion timer value
	cp	73				;and show alternate frames based on its value
	call	z,boss_explosion_frame1
	cp	66
	call	z,boss_explosion_frame2
	cp	59
	call	z,boss_explosion_frame1
	cp	52
	call	z,boss_explosion_frame2
	cp	30
;	jp	z,erase_boss			;if its value falls to 30 or below then remove the boss
	jr	c,erase_boss			;from the screen
time_dec:
	dec	a				;else decrease it
	jp	z,prepare_to_next_level		;and if zero go and do whatever is need to start next level
	ld	(explosion_time),a		;if not update its value
	jp	ELB_loop			;and restart end level boss loop

erase_boss:
	ld	hl,chstart-704			;remove the boss from screen simply filling the
	ld	(hl),0				;nametable buffer with the 0 value, wich is the value
	ld	de,chstart-703			;of the char we use as background during boss battles
	ld	bc,703
	ldir
	jp	time_dec			;after deleted go back to timer update

boss_explosion_frame1:
	push	af				;save explosion time value
	ld	iy,(boss_offset)		;point to boss_offset address (we have set it before, do you
						;remember?)
go_explode:
	ld	hl,ramspttbl+48			;point to y coordinate of sprite 12 in our sat ram buffer
	ld	de,boss_sprites			;point to the table where we have copied boss sprites coordinates
	ld	b,12				;nr of sprites counter
update_boss_sprites:
	ld	a,(de)				;load in a the y coordinate stored before explosion
	add	a,(iy+0)			;and add to it the first offset value
	ld	(hl),a				;then set it in sat ram buffer entry too
	inc	l				;point to x coordinate of current sprite
	inc	e				;point to next stored data (x coordinate)
	ld	a,(de)				;read store x coordinate
	add	a,(iy+1)			;add it to 2nd offset value
	ld	(hl),a				;and set it in sat ram buffer
	inc	l				;point to next current sprite attribute
	inc	e				;point to next data (to skip it)
	ld	(hl),240			;set explosion shape to current sprite
	inc	l				;poiny to next attribute
	inc	e				;point to next stored data (to skip it)
	ld	(hl),11				;set color 11 to explosion sprite
	inc	l				;point to next attribute (y of next sprite, ready for loop)
	inc	e				;point to next stored data (y, ready for loop)
	inc	iy				;point to next offset value
	djnz	update_boss_sprites		;decrement counter and repeat if not zero
set_exp_sprites:
	ld	de,actpat+36			;after the explosion the sprites are automatically
	ld	b,12				;set as inactive so to show another explosion frame
sprites_active_again:				;we have to set them active again so, like we did before
	ld	a,1				
	ld	(de),a				;set current sprite as active
	inc	e
	ld	a,7				;set explosion pattern
	ld	(de),a
	inc	e
	xor	a
	ld	(de),a				;set pattern position=0 (start)
	inc	e
	djnz	sprites_active_again		;and do it for all the 12 sprites
	call	boss_explosion_sfx		;call the explosion sfx
	pop	af				;restore timer counter
	ret					;and return to wait_4_explosion routine
boss_explosion_sfx:
	ld	a,5
	ld	(sfx_nr),a			;simply set sfx 5
	ld	a,15
	ld	(sfx_dur),a			;and a duration of 15 units
	ret
boss_explosion_frame2:
	push	af				;as we did for frame1 we save the timer counter
	ld	iy,midpat8			;but instead of the offset now we will use this pattern
	jp	go_explode			;wich is the "enemy stopped" one, so we restore previous
						;saved coordinates executing the same code as before

boss1_offset:
	db	0,16,0,-16,-16,20,0,-20,-16,4,0,-8
boss2_offset:
	db	0,16,0,-16,0,-16,0,16,-16,-4,-16,4
boss3_offset:
	db	-16,8,-16,32,0,-32,-16,-8,-4,0,-4,0
boss4_offset:
	db	-12,-12,-12,12,12,-12,12,12,0,0,0,0
boss5_offset:
	db	-64,-24,-64,24,-48,0,-24,0,-16,-32,-16,32

erafire:
	ld	a,(level)			;check level value
	cp	30				;and jump to the proper fire erase routine
	jp	z,nofire_level2			;each boss has its own, because they fire
	cp	40				;in different ways
	jp	z,nofire_level3
	cp	50
	jp	z,nofire_level4
	cp	60
	jp	z,nofire_level5
	jp	nofire_level1
	ret

level2prep:					;from here we set all the same parameters we
	ld	a,11				;have set for level 1
	ld	(bank2),a			;the only difference is the bank switching to show
	call	Pic_level1_2			;the pic between two levels
	ld	a,6				;followed by the font redefinition
	ld	(bank2),a			;and the switch to allow access to level data
	call	intro_font			;level 4, as said before, will set also repeatition
	ld	a,2				;values and different speed
	ld	(current_seg),a			;these values will be changed when preparing level 5
	ld	(bank2),a			;no need to comment further this piece
	ld	hl,level2_music			;see you at the end of these settings ;)
	xor	a
	call	PLY_AKG_INIT
	ld	hl,eventlist_20
	ld	(evlist),hl

	ld	hl,ramchr2_1+8
	call	redefine_patterns
	ld	hl,ramclr2_1+8
	call	redefine_colors
	ld	hl,boss2_t1
	ld	ix,boss_shape_addresses
	call	boss_redefine
	ld	hl,boss2_c1
	ld	ix,boss_color_addresses
	call	boss_redefine

	ld	a,8	
	ld	(line_counter),a	
	xor	a
	ld	(event),a
	ld	(bossbattle),a
	ld	(hit_ratio),a
	ld	(ratiobonus),a
	ld	(ratiobonus+1),a
	ld	(ratiobonus+2),a
	ld	hl,273
	ld	(rowcount),hl
	ld	hl,ramchr2_1+8	
	ld	(chstart),hl
	ld	(tset_ch),hl
	ld	(chtset1),hl
	ld	hl,ramchr2_2+8
	ld	(chtset2),hl
	ld	hl,ramclr2_1+8
	ld	(colstart),hl
	ld	(tset_clr),hl
	ld	(coltset1),hl
	ld	hl,ramclr2_2+8
	ld	(coltset2),hl
	ld	hl,286
	ld	(total_enemies),hl
	ld	hl,0000h
	ld	(enemies_hit),hl
	ld	a,145
	ld	(tset_change),a
	ld	hl,spritedata2
	ld	de,3a00h
	ld	bc,sprtend2-spritedata2
	call	ldirvm
	ld	bc,24
	call	sprite_pos
	ld	hl,chstart-704
	ld	(nametable),hl
	ld	hl,level2map
	ld	(endmap),hl
	ld	e,(hl)
	jp	lvl_map_unpack

level3prep:
	ld	a,11
	ld	(bank2),a
	call	Pic_level2_3
	ld	a,6
	ld	(bank2),a
	call	intro_font

	ld	a,3
	ld	(current_seg),a
	ld	(bank2),a
	ld	hl,level3_music
	xor	a
	call	PLY_AKG_INIT
	ld	hl,eventlist_30
	ld	(evlist),hl

	ld	hl,ramchr3_1+8
	call	redefine_patterns
	ld	hl,ramclr3_1+8
	call	redefine_colors
	ld	hl,boss3_t1
	ld	ix,boss_shape_addresses
	call	boss_redefine
	ld	hl,boss3_c1
	ld	ix,boss_color_addresses
	call	boss_redefine

	ld	a,8
	ld	(line_counter),a
	xor	a
	ld	(event),a
	ld	(bossbattle),a
	ld	(hit_ratio),a
	ld	(ratiobonus),a
	ld	(ratiobonus+1),a
	ld	(ratiobonus+2),a
	ld	hl,273
	ld	(rowcount),hl
	LD	hl,ramchr3_1+8	
	LD	(chstart),hl
	ld	(tset_ch),hl
	ld	(chtset1),hl
	ld	hl,ramchr3_2+8
	ld	(chtset2),hl
	LD	hl,ramclr3_1+8	
	LD	(colstart),hl
	ld	(tset_clr),hl
	ld	(coltset1),hl
	ld	hl,ramclr3_2+8
	ld	(coltset2),hl
	ld	hl,293
	ld	(total_enemies),hl
	ld	hl,0000h
	ld	(enemies_hit),hl
	ld	a,120
	ld	(tset_change),a
	ld	hl,spritedata3
	ld	de,3a00h
	ld	bc,sprtend3-spritedata3
	call	ldirvm
	ld	bc,24
	call	sprite_pos
	LD	hl,chstart-704
	LD	(nametable),hl
	ld	hl,LEVEL3MAP
	ld	(endmap),hl
	LD	e,(hl)
	jp	lvl_map_unpack

level4prep:
	ld	a,11
	ld	(bank2),a
	call	Pic_level3_4
	ld	a,6
	ld	(bank2),a
	call	intro_font

	ld	a,4
	ld	(current_seg),a
	ld	(bank2),a
	ld	hl,level4_music
	xor	a
	call	PLY_AKG_INIT
	ld	hl,eventlist_40
	ld	(evlist),hl

	ld	hl,ramchr4_1+8
	call	redefine_patterns
	ld	hl,ramclr4_1+8
	call	redefine_colors
	ld	hl,boss4_t1
	ld	ix,boss_shape_addresses
	call	boss_redefine
	ld	hl,boss4_c1
	ld	ix,boss_color_addresses
	call	boss_redefine

	xor	a
	ld	(event),a
	ld	(bossbattle),a
	ld	(hit_ratio),a
	ld	(ratiobonus),a
	ld	(ratiobonus+1),a
	ld	(ratiobonus+2),a
	ld	a,8
	ld	(line_counter),a
	ld	(default_speed),a
	ld	(speed),a
	ld	(rpt_lv),a
	ld	(rpt_lv_res),a
	ld	hl,273
	ld	(rowcount),hl
	LD	hl,ramchr4_1+8	
	LD	(chstart),hl
	ld	(tset_ch),hl
	ld	(chtset1),hl
	ld	hl,ramchr4_2+8
	ld	(chtset2),hl
	LD	hl,ramclr4_1+8
	LD	(colstart),hl
	ld	(tset_clr),hl
	ld	(coltset1),hl
	ld	hl,ramclr4_2+8
	ld	(coltset2),hl
	ld	hl,299
	ld	(total_enemies),hl
	ld	hl,0000h
	ld	(enemies_hit),hl
	ld	a,124
	ld	(tset_change),a
	ld	hl,spritedata4
	ld	de,3a00h
	ld	bc,sprtend4-spritedata4
	call	ldirvm
	ld	bc,24
	call	sprite_pos
	LD	hl,chstart-704
	LD	(nametable),hl
	ld	hl,LEVEL4MAP
	ld	(endmap),hl
	LD	e,(hl)
	jp	lvl_map_unpack

level5prep:
	ld	a,11
	ld	(bank2),a
	call	Pic_level4_5
	ld	a,6
	ld	(bank2),a
	call	intro_font

	ld	a,5
	ld	(current_seg),a
	ld	(bank2),a
	ld	hl,level5_music
	xor	a
	call	PLY_AKG_INIT
	ld	hl,eventlist_50
	ld	(evlist),hl

	ld	hl,ramchr5_1+8
	call	redefine_patterns
	ld	hl,ramclr5_1+8
	call	redefine_colors
	ld	hl,boss5_t1
	ld	ix,boss_shape_addresses
	call	boss_redefine
	ld	hl,boss5_c1
	ld	ix,boss_color_addresses
	call	boss_redefine

	xor	a
	ld	(event),a
	ld	(bossbattle),a
	ld	(hit_ratio),a
	ld	(ratiobonus),a
	ld	(ratiobonus+1),a
	ld	(ratiobonus+2),a
;	ld	a,1
	inc	a
	ld	(default_speed),a
	ld	(speed),a
	ld	(rpt_lv),a
	ld	(rpt_lv_res),a
	ld	hl,273
	ld	(rowcount),hl
	LD	hl,ramchr5_1+8	
	LD	(chstart),hl
	ld	(tset_ch),hl
	ld	(chtset1),hl
	ld	hl,ramchr5_2+8
	ld	(chtset2),hl
	LD	hl,ramclr5_1+8
	LD	(colstart),hl
	ld	(tset_clr),hl
	ld	(coltset1),hl
	ld	hl,ramclr5_2+8
	ld	(coltset2),hl
	ld	hl,295
	ld	(total_enemies),hl
	ld	hl,0000h
	ld	(enemies_hit),hl
	ld	a,120
	ld	(tset_change),a
	ld	hl,spritedata5
	ld	de,3a00h
	ld	bc,sprtend5-spritedata5
	call	ldirvm
	ld	bc,24
	call	sprite_pos
	LD	hl,chstart-704
	LD	(nametable),hl
	ld	hl,LEVEL5MAP
	ld	(endmap),hl
	LD	e,(hl)
	jp	lvl_map_unpack

endlevelscreen:
	ld	hl,ramspttbl		;point to player ship 1st byte in ram SAT (y position)
checkshipxpos:
	ld	l,1			;point to player ship xpos			
	ld	a,(hl)			;load it in A
	cp	120			;check if it reached screen center
	jp	c,increasexpos		;if not increase x
	jp	z,screenexit		;else go to screen exit
decreasexpos:
checkvdpbusyxposdec:
	ld	a,(vdp_busy)		;check if vdp is outputting sprites
	or	a			;if vdp is free then its value is zero
	jp	nz,checkvdpbusyxposdec	;else check again
	ld	a,-2			
	add	a,(hl)			;decrease x position by adding negative value
	cp	120			;check central x coordinate
	call	c,setxpos		;if x<120 then go and set it to center
	ld	(hl),a			;else update xpos in ramSAT
	ld	l,5			;point to second color sprite xpos
	ld	(hl),a			;update it too
	ld	a,1			;tell vdp we have done our work
	ld	(vdp_busy),a		;so it can update sprites (in ISR hooked routine)
	jp	checkshipxpos		;continue checking for x position
increasexpos:
checkvdpbusyxposinc:
	ld	a,(vdp_busy)		;same routine as above, but for xpos incrementing
	or	a
	jp	nz,checkvdpbusyxposinc
	ld	a,2
	add	a,(hl)
	cp	120
	call	nc,setxpos
	ld	(hl),a
	ld	l,5
	ld	(hl),a
	ld	a,1
	ld	(vdp_busy),a
	jp	checkshipxpos	
screenexit:	
decreaseypos:
checkvdpbusyypos:
	ld	a,(vdp_busy)		;check if vdp is updating sprites on screen
	or	a
	jp	nz,checkvdpbusyypos	;if so continue polling
	ld	l,0			;else point to player ship ypos in ramSAT
	ld	a,(hl)			;load it in A
	cp	17			;check if it reached the top of the screen
	jp	c,outofscreen		;if it's lower
	ld	a,-4			;else decrease y position
	add	a,(hl)			;by adding -4
	ld	(hl),a			;and update value in ramSAT
	ld	l,4			;point to second color sprite ypos
	ld	(hl),a			;and update it too
	ld	a,1			;tell vdp we have done our work
	ld	(vdp_busy),a		;so it can update sprites in ISR
	jp	decreaseypos		;continue decreasing ypos
outofscreen:
;	ld	a,0c9h			;opcode for RET
;	ld	(hook),a		;sprites management routine no more hooked in ISR
	call	unhook
	ld	a,208
	ld	hl,1b00h
	call	wrtvrm
;	ld	hl,mtest_play		;now we have pics to show on megarom page 11 so this routin isn't no more the right one
	ld	hl,pic_isr		;but we want that music continue to play so hook a routine to do so
	call	hook_routine		;we already have for the music_test 
	ld	b,100
	call	wait			;wait 2 seconds
	ld	de,6208+9+64		;6208+x+32*y setting start position to write on screen
	ld	hl,level_end		;pointing to start of writings to be outputted
	ld	bc,14			;how many bytes?
	call	ldirvm
	ld	b,25
	call	wait			;wait half sec
	ld	hl,en_hit
	ld	bc,25
	ld	de,6208+2+160
	call	ldirvm
	ld	hl,6208+2+160+24
	ld	de,enemies_hit		;load in DE start address of hit enemies nr (it is a BCD number)
	ld	b,2			;and we don't want an empty space; loading nr of BCD bytes
	jp	skipthousands		;2 bytes are 4digits... skip thousands (we have only hundreds of enemies)
printenemieshit:
	ld	a,(de)			;load byte in A
	rra				
	rra				
	rra				
	rra				;doing rra 4 times we shift to right first digit
	call	enddigit		;print digit on screen at HL VRAM address
skipthousands:
	inc	hl			;point to next VRAM address
	ld	a,(de)			;load byte in A
	call	enddigit		;print second digit on screen
	inc	de			;point to next number byte
	inc	hl			;point to next VRAM address
	djnz	printenemieshit		;repeat until we have printed all digits
	ld	b,25
	call	wait			;wait half of second

	ld	hl,total_hit
	ld	de,6208+2+256
	ld	bc,26
	call	ldirvm

	ld	hl,0			;reset HL
	ld	bc,enemies_hit		;load in BC the address of first byte of enemies hit BCD number
converttodec:				;we are about to convert it to decimal
	ld	a,(bc)			;load first byte in A
	and	0fh			;mask higher nibble (first digit of the byte, we don't need thousands)
;	cp	0			;check if our digit value is zero
	or	a			;MDL optimization  1 byte, 3 t-states

	jp	z,tens			;if so jump directly to count tens
	ld	de,100			;else load 100 in DE
hundredadd:
	add	hl,de			;and add it to HL
	dec	a			;many times as our digit is
	jp	nz,hundredadd		;so we multiply our digit by 100
tens:
	inc	bc			;point to next couple of digits
	ld	a,(bc)			;load it in A
	rra				
	rra				
	rra				
	rra				;shift first digit to right
	and	0fh			;and mask higher nibble
;	cp	0			;check if it is zero
	or	a			;MDL optimization  1 byte, 3 t-states

	jp	z,units			;if so skip to units calc
	ld	de,10			;else load 10 in DE
tensadd:
	add	hl,de			;and add it as many times
	dec	a			;as our digit is
	jp	nz,tensadd		;so we multiply it by 10
units:
	ld	a,(bc)			;reload our 2digits byte in A
	and	0fh			;mask higher nibble to isolate first digit
	ld	d,0			;reset high part of DE
	ld	e,a			;set low part of DE with masked A value
	add	hl,de			;and add it to HL. Also units are added
	ld	(enemies_hit),hl	;coversion complete, load obtained number in the same address
	ld	de,(total_enemies)	;load in DE total enemies number
	sbc	hl,de			;subtract hit enemies from total enemies
	jp	z,perfect		;if result is zero we have hit all anemies and done a perfect!
multstart:
	ld	hl,(enemies_hit)	;load in HL the enemies hit total
	add	hl,hl			;multiply x2
	add	hl,hl			;multiply x4
	push	hl			;save HL x4
	add	hl,hl			;multiply x8
	add	hl,hl			;multiply x16
	add	hl,hl			;multiply x32
	push	hl			;save HL x 32
	add	hl,hl			;multiply x64
	pop	de			;restore previous saved HL x32 value in de
	add	hl,de			;HL x64 + HL x32 = HL x96
	pop	de			;restore previous saved HL x4	in de
	add	hl,de			;HL x96 + HL x4= HL x100
multend:
	ld	de,(total_enemies)	;now we have to divide the results by total enemies to obtain the ratio
	ld	c,01h			;load 1 in C (I specified 1h just to remember it is a BCD nr)
div:
	call	ratioadd		;'cause we have to add it to a BCD 8bit variable (2 digits)
	xor	a			;we had already checked if it was 100%...
	sbc	hl,de			;subtract total enemies until we have hl<0 else call ratioadd (BCD)
	jr	nc,div			;(approximate ratio value +1, we want an integer)
	ld	a,(hit_ratio)		;now we have hit ratio value in its variable. load it in A
	sub	c			;subtract 1 from obtained value (we decreased under 0 before)
	daa				;and adjust BCD result
	ld	(hit_ratio),a		;load it in hit_ratio variable
	rra
	rra
	rra
	rra				;shift left digit to right
	and	0fh			;and mask higher nibble

	ld	hl,6492			;point to screen address where we will write to
	call	enddigit		;and call print routine
	inc	hl			;point to next location (second digit)
	ld	a,(hit_ratio)		;load hit_ratio value in reg a
	and	0fh			;mask higher nibble
	call	enddigit		;call print routine

ratio_to_dec:				;the following routines are all very similar to those just
	ld	a,(hit_ratio)		;explained, so I won't comment them again
	rra
	rra
	rra
	rra
	and	0fh
	or	a
	jp	z,ratiounits
	ld	c,10
	ld	b,a
	xor	a
ratiotensadd:
	add	a,c
	djnz	ratiotensadd
	ld	c,a
	jp	add_ratiounits
ratiounits:
	ld	c,0
add_ratiounits:
	ld	a,(hit_ratio)
	and	0fh
	add	a,c
	ld	(hit_ratio),a
	jp	afterratio
perfect:
	ld	hl,perfratio
	ld	de,6491
	ld	bc,3
	call	ldirvm
	ld	a,100
	ld	(hit_ratio),a	
afterratio:
	ld	b,25
	call	wait
	ld	hl,enemybonus
	ld	bc,23
	ld	de,6208+2+352
	call	ldirvm
	ld	hl,6208+2+352+23
	ld	a,(hit_ratio)
	or	a
	jr	z,nobonus
	ld	bc,100h
bonuscalc:
	call	ratiobonusadd
	dec	a
	jp	nz,bonuscalc
nobonus:
	ld	de,ratiobonus
	ld	b,3
	jp	skipbonushundredsofthousands
printratiobonus:
	ld	a,(de)
	rra
	rra
	rra
	rra
	call	enddigit
	inc	hl
skipbonushundredsofthousands:
	ld	a,(de)
	call	enddigit
	inc	de
	inc	hl
	djnz	printratiobonus
bonusprinted:
	ld	b,25
	call	wait
	ld	a,(hit_ratio)
	or	a
	jp	z,nobonus_to_add	
addingbonus:
	push	af
	ld	bc,0100h
	call	scoreadd
	xor	a
	call	bonusdec
	ld	de,ratiobonus
	ld	hl,6585
	ld	b,3
	jp	skiphundredsofthousands
printbonusratio:
	ld	a,(de)
	rra
	rra
	rra
	rra
	call	enddigit
	inc	hl
skiphundredsofthousands:
	ld	a,(de)
	call	enddigit
	inc	de
	inc	hl
	djnz	printbonusratio
	ld	hl,6176
	ld	de,score
	ld	b,4
printendscore:
	ld	a,(de)
	rra
	rra
	rra
	rra
	call	enddigit
	ld	a,(de)
	inc	hl
	call	enddigit
	inc	hl
	inc	de
	djnz	printendscore
	ld	hl,6176+24
	ld	de,hiscore
	ld	b,4
printendhi:
	ld	a,(de)
	rra
	rra
	rra
	rra
	call	enddigit
	ld	a,(de)
	inc	hl
	call	enddigit
	inc	hl
	inc	de
	djnz	printendhi	
addsound:
	ld	a,4			;sfx nr 4
;	ld	c,0			;channel 0
;	ld	b,0			;max volume
	ld	bc,0			;MDL optimization  1 byte, 5 t-states
	call	PLY_AKG_PLAYSOUNDEFFECT
	ld	b,3
	call	wait
	pop	af
	dec	a
	jp	nz,addingbonus
nobonus_to_add:
	ld	a,(level)
	cp	60
	jr	z,no_blink
	ld	c,3
blinkingwrite:
	push	bc
	ld	hl,nextlevelwrite
	ld	bc,16
	ld	de,6208+8+448
	call	ldirvm
	ld	b,25
	call	wait
	ld	hl,6208+8+448
	ld	bc,16
	xor	a
	call	filvrm
	ld	b,25
	call	wait
	pop	bc
	dec	c
	jp	nz,blinkingwrite	
	ld	b,25
els_exit:
	call	wait
	xor	a
	ld	i,a			;reset double buffer flag
;	call	kilbuf
;	ret
	jp	kilbuf			;MDL optimization  1 byte, 18 t-states


no_blink:
	ld	b,200
	jr	els_exit

enddigit:
	and	0fh
	add	a,"0"
;	call	4dh
;	ret
	jp	4dh			;MDL optimization  1 byte, 18 t-states

ratioadd:
	ld	a,(hit_ratio)
	add	a,c
	daa
	ld	(hit_ratio),a
	ret

ratiobonusadd:
	push	af
	ld	de,ratiobonus+2
	ld	a,(de)
	add	a,c
	daa
	ld	(de),a
	dec	de
	ld	a,(de)
	adc	a,b
	daa
	ld	(de),a
	dec	de
	ld	a,(de)
	adc	a,0
	daa
	ld	(de),a
	pop	af
	ret

bonusdec:
	ld	bc,0100h
	ld	de,ratiobonus+2
	ld	a,(de)
	sbc	a,c
	daa
	ld	(de),a
	dec	de
	ld	a,(de)
	sbc	a,b
	daa
	ld	(de),a
	dec	de
	ld	a,(de)
;	sbc	a,0
	sbc	a,c		;MDL optimization  1 byte, 3 t-states  (c=0 here, see ld bc,0100h) 
	daa
	ld	(de),a
	ret

level_end:
	db	"LEVEL COMPLETE"
en_hit:
	db	"TOTAL ENEMIES HIT        "
total_hit:
	db	"TOTAL HIT RATIO           "
enemybonus:
	db	"HIT ENEMIES BONUS      "
nextlevelwrite:
	db	"GO TO NEXT LEVEL"
perfratio:
	db	"100"
setxpos:
	ld	a,120
	ret
setypos:
	ld	a,175
	ret

; ============	the following routine is the scrolling one (cngchr means "change characters")  ===========

cngchr:	
;	OUT	(2Ch),A				;this was for testing timings with a tcl script on openmsx
	ld	c,98h				;as said before, vdp data port, needed for outi/otir
	ld	de,8				;this is an offset
checkvdpbusy:
	ld	a,(vdp_busy)			;as always, before working on vram we check if the vdp
	or	a				;is busy outputting sprites (in the isr)
	jp	nz,checkvdpbusy			;and wait until it is free before doing anything
						;check putsprite routine for details
	ld	a,32				;nametable address of 2nd row (dec 6176), low byte
	di
	out	(99h),a
	ld	a,88				;nametable address of 2nd row (dec6176), hi byte + 64
	ei
	out	(99h),a	
	ld	hl,score			;point data source where we store our score in BCD notation
	ld	b,4				;number of bytes
printscore:
	ld	a,(hl)				;we have already seen BCD printings at endlevelscreen
	rra					;routine, so no need to explain here too
	rra
	rra
	rra
	call	digit
	ld	a,(hl)
	call	digit
	inc	hl
	djnz	printscore
	ld	b,4
	ld	hl,song0			;at song0 we have a music title used by the music test. 
						;The title starts with a good number of spaces so we can
						;use them as source to output 4 spaces using outi instruction
spc1:
	outi
	jp	nz,spc1

	ld	hl,lives
	ld	a,(hl)
	rra
	rra
	rra
	rra
	ld	a,(hl)
	call	digit
	ld	b,5
	ld	hl,song0			;see some rows up
spc2:
	outi
	jp	nz,spc2

	ld	b,3
	ld	hl,weapon_lv			;remember? we set a 3bytes string when weapon level changes
print_weapon:
	ld	a,(hl)
	out	(98h),a
	inc	hl
	djnz	print_weapon

	ld	b,3
	ld	hl,song0			;again
spc3:
	outi
	jp	nz,spc3

	ld	hl,hiscore
	ld	b,4
printhi:
	ld	a,(hl)
	rra
	rra
	rra
	rra
	call	digit
	ld	a,(hl)
	call	digit
	inc	hl
	djnz	printhi	

;	ok, now we have printed the scoreboard and about to start doing something serious

	ld	b,192				;this part is similar to drawscr routine that we have
						;seen after map decrunching. the only difference is
						;the double buffer implementation		
	ld	hl,(nametable)			;nametable start in RAM (from here we start to copy
						;contents on screen
	ld	a,i				;check double buffer flag (this will change each time
	or	a				;at the end of this whole scrolling routine
	jp	nz,second			;if=1 show second tileset (from 128 to 157)
						;else show first tileset (from 0 to 29)
toscreen:					;when first tileset is in use it is outputted
	outi					;as always
	jp	nz,toscreen
toscreen2:
	outi
	jp	nz,toscreen2
toscreen3:
	outi
	jp	nz,toscreen3
	jp	goon
second:						;when 2nd tileset in use, we read the same values
dbtoscreen:					;from decrunched map, but we have to output the
	ld	a,(hl)				;alternate charset so we can add 128 (but xor 128 gives
	xor	128				;the same effect) to output the right value without
	out	(98h),a				;change it in ram. anyway, 2nd tileset outup is slower
	inc	hl				;now that I'm commenting I'm noticing some things...
	djnz	dbtoscreen			;I haven't used DE until now. So, instead of setting its
dbtoscreen2:					;value at the beginning I could have set reg D before this
	ld	a,(hl)				;output as 128 and do xor d (or even add a,d) gaining
	xor	128				;3 T-states for each loop (so 704*3=2112 T-states!) and THEN 
	out	(98h),a				;set DE with the offset value (say at the beginning of goon
	inc	hl				;label)
	djnz	dbtoscreen2	
dbtoscreen3:
	ld	a,(hl)
	xor	128
	out	(98h),a
	inc	hl
	djnz	dbtoscreen3	
goon:
	ld	a,1				;this will free the vdp, so it can be used from isr
	ld	(vdp_busy),a			;routine to output sprites before executing the following
vdpbusychr:					;part, wich performs a huge vdp load of work
	ld	a,(vdp_busy)			;wait until the vdp is free
	or	a
	jp	nz,vdpbusychr
	di					;disable interrupts (bios isr performs vdp access)
	out	(99h),a				;ld a,0 (1st chr attr block address lowbyte) omitted 
						;because reg a value is already 0 here (it was the vdp
						;check condition)
	ld	a,i				;check double buffer flag (as we did for nametable output)
						;(we have to know wich tileset's definitions modify)
	or	a				;if zero go db1 (obviously we will update the tilset
	jp	z,db1				;wich isn't currently in use!)
nodb:
	ld	a,64				;1st chr attr block address (hibyte) + 64
	jp	send_hi
db1:
	ld	a,68				;double buffer 1st chr attr block address (hibyte) + 64
send_hi:
	ei
	out	(99h),a
	ld	hl,(chstart)			;our source is the start of the charset in rom
	ld	a,30				;nr of char we have to update
next_ch1:
;	ld	b,8				;bytes to copy
	ld	b,e				;e=8 (we did ld de,8 at the beginning of this routine 
						;and we need always this value so de never changed)
loop_out1:
	outi
	jp	nz,loop_out1			;so we have copied 8 bytes (one char shape definition)
	add	hl,de				;then we skip the following 8 bytes (we stored the chars
						;that we want to scroll as couples)
	dec	a				;decrease char counter
	jp	nz,next_ch1			;do it until we have updated all 30 chars
						;now we have to repeat the same process for block2 and 3
						;of graphic2 chars' shape definitions
	di					;disable interrupts to set next vram address
	out	(99h),a				;ld a,0 omitted here too. after previous loop a=0 for sure
	ld	a,i				;check double buffer flag
	or	a
	jp	z,db2
	ld	a,72				;2nd chr attr block address (hibyte) + 64
	jp	send_hi2
db2:
	ld	a,76				;double buffer 2nd chr attr block address (hibyte) + 64
send_hi2:
	ei
	out	(99h),a 
	ld	hl,(chstart)
	ld	a,30
next_ch2:
;	LD	B,8
	ld	b,e				;again, e=8
loop_out2:
	outi
	jp	nz,loop_out2
	add	hl,de
	dec	a
	jp	nz,next_ch2
	di
	out	(99h),a				;again, a=0 after previous loop
	ld	a,i				;check double buffer flag
	or	a
	jp	z,db3
	ld	a,80				;3rd chr attr block address (hi) OR 64
	jp	send_hi3
db3:
	ld	a,84				;double buffer 3rd chr attr block address (hi) OR 64
send_hi3:
	ei
	out	(99h),a
	ld	hl,(chstart)
	ld	a,30
next_ch3:
;	LD	B,8
	ld	b,e				;you know...
loop_out3:
	outi
	jp	nz,loop_out3
	add	hl,de
	dec	a
	jp	nz,next_ch3

;		from here we repeat the same process, but for the 3 color blocks
	di
	out	(99h),a				;a=0
	ld	a,i				;check double buffer flag
	or	a
	jp	z,dbc1
	ld	a,96				;1st col attr block address (hi) + 64
	jp	send_hicol1
dbc1:
	ld	a,100				;double buffer 1st col attr block address (hi) + 64
send_hicol1:
	ei
	out	(99h),a
	ld	hl,(colstart)
	ld	a,30
next_col1:
;	ld	b,8
	ld	b,e				;nothing to say
loop_outcol1:
	outi
	jp	nz,loop_outcol1
	add	hl,de
	dec	a
	jp	nz,next_col1
	di
	out	(99h),a				;a=0
	ld	a,i				;check double buffer flag
	or	a
	jp	z,dbc2
	ld	a,104				;2nd col attr block address (hi) OR 64
	jp	send_hicol2
dbc2:
	ld	a,108				;double buffer 2nd col attr block address (hi) OR 64
send_hicol2:
	ei
	out	(99h),a
	ld	hl,(colstart)
	ld	a,30
next_col2:
;	LD	B,8
	ld	b,e				;I won't say it again
loop_outcol2:
	outi
	jp	nz,loop_outcol2
	add	hl,de
	dec	a
	jp	nz,next_col2
	di
	out	(99h),a				;a=0
	ld	a,i				;check double buffer flag
	or	a
	jp	z,dbc3
	ld	a,112				;3rd col attr block address (hi) OR 64
	jp	send_hicol3
dbc3:
	ld	a,116				;double buffer 3rd col attr block address (hi) OR 64
send_hicol3:
	ei
	out	(99h),a
	ld	hl,(colstart)
	ld	a,30
next_col3:
;	LD	B,8
	ld	b,e
loop_outcol3:
	outi
	jp	nz,loop_outcol3
	add	hl,de
	dec	a
	jp	nz,next_col3

;	ld	a,1
	inc	a				;reg a was 0 after the loop so now reg a is 1
	ld	(vdp_busy),a			;we free vdp again for isr hooked routine

count_check:
	ld	a,i				;double buffer flag in A
	xor	1				;set it 0 if 1 or 1 if 0
	ld	i,a				;copy it back on I register
	ld	a,(line_counter)		;check line counter and change start map offset if 8th
;	CP	8
	cp	e				;yep, e is still 8
	jp	nz,noscroll			;if linecounter value isn't 8 then no scroll (blocky one)
	ld	hl,(nametable)			;else retrieve actual nametable (ram source address)
	ld	bc,-32				;variable, decrement it by 32 (one msx character row)
	add	hl,bc				;and update it (so next time cngchr will be executed)
	ld	(nametable),hl			;a new map row will be shown
noscroll:
	ld	a,(speed)			;load from speed the speed value
	ld	b,a				;copy it in b

	ld	a,(line_counter)		;linecounter in A
	sub	b				;subtract speed from linecounter

	jr	z,restore			;if it reaches 0 restore all initial values
	ld	(line_counter),a
	ld	hl,chstart
	ld	a,(hl)				;subtract speed value (pixels offset)	
	sub	b				;from chstart to obtain new chstart value
	ld	(hl),a				;update it
;	ld	hl,colstart
	ld	l,0c2h				;MDL optimization (only low byte is different in chstart 
						;and colstart) 1 byte, 3 t-states
	ld	a,(hl)				;colstart - pixels offset (1,2,4,or 8)
	sub	b				;do the same as we did to chstart
	ld	(hl),a				;and update it

	ld	hl,event		
	inc	(hl)				;increment event number

;	OUT	(2Dh),A				;as the beginning, to measure speed on openmsx
	ret					;end of scrolling routine (well, there are still
						;the following subroutines)
restore:					;restore initial values and if requested, perform the
						;scrolling speed modification
;	ld	a,8
	ld	a,e				;...
	ld	(line_counter),a
	ld	hl,(tset_ch)			;ramchr+8	
	ld	(chstart),hl
	ld	hl,(tset_clr)			;ramchr+496+8
	ld	(colstart),hl

	ld	hl,event			;event is incremented (needed because we jumped here
	inc	(hl)				;before incrementing it)

	ld	a,(speedcount)			;simple speedchange implementation
	dec	a				;decrease a counter and change pixel offset if zero
	jp	z,changespeed			;put speedchange here so we are sure it happen at
						;start position of a tile (when rendering a new row)
	cp	255
	jp	nz,dec_speedcount
	xor	a
dec_speedcount:
	ld	(speedcount),a	
	ld	hl,(rowcount)			;decrease map row counter
	dec	hl
	ld	(rowcount),hl
	ld	hl,rowcount
	ld	a,(tset_change)			;and check if we have reached the row where
	cp	(hl)				;the tileset has to be changed
	ret	nz				;return if not
	ld	hl,(chtset2)			;else, instead of restoring initial values
	ld	(chstart),hl			;we will set the alternate tileset ones
	ld	(tset_ch),hl
	ld	hl,(coltset2)
	ld	(colstart),hl
	ld	(tset_clr),hl	
	ret
changespeed:
	ld	a,20				;lines counter refreshed (change speed every 20 rows)
	ld	(speedcount),a
	ld	a,(speed)
;	cp	8				;if speed (pixels offset)=8 can't accelerate anymore
	cp	e

	jp	z,maxspeed			;so jump directly to map update
	add	a,a				;else double the speed!
	ld	(speed),a
maxspeed:
	ld	hl,(rowcount)
	dec	hl
	ld	(rowcount),hl
	ld	hl,rowcount
	ld	a,(tset_change)
	cp	(hl)
	ret	nz
	ld	hl,(chtset2)
	ld	(chstart),hl
	ld	(tset_ch),hl
	ld	hl,(coltset2)
	ld	(colstart),hl
	ld	(tset_clr),hl	
	ret


ELB_spmove:					;this routine set end level bosses related sprites actions
	ld	a,(hl)				;load in A eventlist value
	inc	a				;check if value =255
	ret	z				;if so, do nothing (end of eventlist)
ELB_event:
	inc	hl				;else increase eventlist pointer
	ld	a,(hl)				;amd check its value
	cp	50				;"boss_fires" and "entering" values are common
	jp	z,boss_fires			;for all the end level bosses
	cp	55				;first and second bosses doesn't have specific added
	jp	z,entering			;parts to manage, so they share same "commands"
	cp	60				;other bosses (3rd, 4th and last)
	jp	nc,last_spmove			;have their own dedicated routines so
	cp	40				;the code will jump there
	jp	nc,fourth_spmove		;(they are in their own ascii16 mapper segments)
	cp	30
	jp	nc,third_spmove
pattern_set:					;so, if there is no enetring (battle is already started)
						;and boss 1 or 2 aren't firing against us
						;this part is executed
	ld	hl,actpat+36			;as we have seen in end level boss game loop
;	ld	b,12				;bosses use 12 sprites (12-23). they will move according
;	ld	c,1				;the body (wich is done by chars and plotted by the
						;scrolling routine) and are used as 6 hitpoints (6 because
						;the sprite management routine "putsprite", wich during gameplay is
						;hooked in the isr, manage objetcs done by 2 sprites each,
						;our bicoloured sprites. even during bossbattles the routine
						;is the same, and shoot collision detection routines too)
	ld	bc,12*256 + 1			;faster and shorter
						;b is the sprites counter
						;c is used as "active" value (storing a reg value in an
						;address is faster than storing directly a number, so we
						;will gain some T-cicles in this way)
	ld	d,0				;same for d, wich 0 values means "start of the pattern"
ELB_actloop:
	call	loop_sp				;all parameters set (pattern value is stored in a, from
						;the beginning of the routine), so go and update it
						;loop_sp is used from all the other bosses too
actpat_set:					;now that actpat table is set with updated values
	ld	hl,(evlist)			;we point to next value in eventlist.
	inc	hl				;we haven't store actual position in eventlist but
	inc	hl				;we know that at this point we have only checked 2 values
						;so, starting from actual evlist value we point 2 bytes
						;ahead where the sprite data we need are stored
	ld	de,ramspttbl+48			;so we set destination for sprite 12 in our sat (48/4=12)
	ld	bc,48				;set nr of bytes to copy
	call	unroll				;and copy all of them from event_list to our sat ram buffer
elb_evlist_set:
	ld	hl,(evlist)			;now we have to update the evlist value:
	ld	de,50				;1st byte was checked for event, 2nd byte was for "command"
	add	hl,de				;and 48 bytes for sprites' data. adding 50 to evlist value
	ld	(evlist),hl			;we can store actual position we will check next time
	ret					;an event occour. this was the "generic" part, the one
						;that simply update bosses sprites movement
						;now, let's see about "boss_fires" and "entering" commands
boss_fires:					;this one is quite simple. with fire we are referring
	ld	a,20				;only about big laser megaflares weapon (bullets are managed
	ld	(boss_fire),a			;as always, fired by sprites objects (here are our invisible
	ld	a,15				;hitpoints, but still sprite object and firing able!)
	jp	pattern_set			;so we simply set the "fire on screen" counter (boss_fire)
						;and a "stopped enemy" pattern number (bosses don't move
						;when firing a big laser)
entering:
	ld	hl,actpat+36			;this one is pretty simple too
	xor	a				;set a=0 (sprite inactives, so they can't fire bullets)
;	ld	b,12				;as always, sprites to go...
;	ld	c,13				;pattern 13 (you can see the pattern stored as tables
						;further in this source) go down 4 pixel each time
						;bosses pattern movement were tested and synchronized
						;using visible sprites when coding/debugging and due to
						;not perfect accordance, at each event start the right
						;coordinates are sent to sprites (a differnce from original
						;event routine for enemies sprites)
	ld	bc,12*256 + 13

entering_loop:
	ld	(hl),a			
	inc	l
	ld	(hl),c
	inc	l
	ld	(hl),a
	inc	l
	djnz	entering_loop
	ld	hl,(evlist)			;entering occupy only 2 bytes in eventlist
	inc	hl				;first one, wich set "when"
	inc	hl				;and second one, the "command" itself
	ld	(evlist),hl
	ret
loop_sp:
	ld	(hl),c
	inc	l
	ld	(hl),a
	inc	l
	ld	(hl),d
	inc	l
	djnz	loop_sp
	ret
putboss:					;this routine put boss data in our nametable buffer in ram
	ld	a,(bossbattle)			;it is executed only if the boss is still alive
	ret	z
	ld	a,(level)			;it check the level and jump to the right plotting
	cp	20				;routine (they are stored at level-related segments)
	jp	z,first_boss
	cp	30
	jp	z,second_boss
	cp	40
	jp	z,third_boss
	cp	50
	jp	z,fourth_boss
	cp	60
	jp	z,last_boss


mbspmove:					;same routine for midlevel bosses
						;very similar with no special events
						;and less sprites. no need to explain
	ld	a,(hl)				;load in A eventlist value
	inc	a				;if value <> 255
	jp	nz,mbevent			;go to check event else ret
	ret
mbevent:
chkvdpbusy:
	di					;interrupt disabled because sometimes
	inc	hl				;putsprite routine (hooked in the isr)
	ld	a,(hl)				;started when setting values, so some sprites
	ld	hl,actpat+36			;where plotted a frame before or after
;	ld	b,8				;and mid level bosses were splitted
;	ld	c,1				;I haven't do this for end level bosses
	ld	bc,8*256 + 1			;because sprites are invisible there
						;and coordinates are adjusted at each event.
	ld	d,0				;coordinates are adjusted here too,
mbactloop:					;so it happened that the boss was splitted and then
	call	loop_sp				;become one after a while
	ld	hl,(evlist)
	inc	hl
	inc	hl
	ld	de,ramspttbl+48
	ld	bc,32
;	ldir
	call	unroll
	ld	hl,(evlist)
	ld	de,34
	add	hl,de
	ld	(evlist),hl
	ei
	ret


spmove:						;sprite settings routine event_list related
	di					;see midlevel boss routine to know why
						;this routine is born before the end and midlevel
						;boss ones and comments too are older (written when
						;coding it, I'll eventually integrate them)
	ld	a,(hl)				;load in A eventlist value
	inc	a				;if value <> 255
	jp	nz,chkevent			;go to check event else ret
	ret
chkevent:
	inc	hl				;point to next eventlist value (row of event start)
	push	hl				;save for later
	ld	de,actpat+36			;search from sprite#12 first inactive sprite
	ld	hl,ramspttbl+48			;point to sprite#12 first value (ypos) in ramspttbl
	ld	b,7				;max enemy nr (2 sprites for each one, from 12 to 25)
checkactive:
	ld	a,(de)				;check if sprite is active
	or	a
	jp	z,setsprite			;if no (0) then go and set new enemy data
						;else it isn't usable so
	ld	a,6				;add 6 to e, pointing to next object first byte in actpat
	add	a,e
	ld	e,a
	ld	a,8
	add	a,l
	ld	l,a				;add 8 to l, pointing to next object first sprite in ramspttbl
	djnz	checkactive			;repeat search for all reserved objects/sprites
	pop	hl				;if no "free slot" found, retrieve the previously stored eventlist value
	ld	de,10				;and add the 10 bytes of this event
	add	hl,de				;so we will skip event and point to next
	ld	(evlist),hl
	ei
	ret
setsprite:					;if a free slot is found...
	pop	bc				;pick early saved hl value (address of event list second byte,ypos)
						;but in bc, keeping in hl the sat ram buffer wich we need too
	inc	a				;set a value to 1 (we are sure it is 0 now, we are here after a check)
	ld	(de),a				;set active flag in selected sprite
	ld	a,(bc)				;ypos from eventlist
	ld	(hl),a				;put it in ramspttbl
	inc	bc
	inc	l
	ld	a,(bc)				;xpos from eventlist
	ld	(hl),a				;in ramspttbl
	inc	bc
	inc	l
	ld	a,(bc)				;shape from eventlist
	ld	(hl),a				;in ramspttbl
	inc	bc
	inc	l
	ld	a,(bc)				;color from eventlist
	ld	(hl),a				;in ramspttbl
	inc	bc
	inc	e				;point to next actpat byte (pattern nr)
	ld	a,(bc)				;pattern nr from eventlist
	ld	(de),a				;set it in actpat
	inc	e
	xor	a
	ld	(de),a				;set line 0 (start) of pattern in actpat

	inc	e
	inc	l
	inc	bc
	inc	a				;set a=1 (we are sure, becuse it was set to 0 five rows before)
	ld	(de),a				;set active flag in selected sprite
	ld	a,(bc)				;ypos from eventlist
	ld	(hl),a				;put it in ramspttbl
	inc	bc
	inc	l
	ld	a,(bc)				;xpos from eventlist
	ld	(hl),a				;in ramspttbl
	inc	bc
	inc	l
	ld	a,(bc)				;shape from eventlist
	ld	(hl),a				;in ramspttbl
	inc	bc
	inc	l
	ld	a,(bc)				;color from eventlist
	ld	(hl),a				;in ramspttbl
	inc	bc
	inc	e				;point to next actpat byte (pattern nr)
	ld	a,(bc)				;pattern nr from eventlist
	ld	(de),a				;set it in actpat
	inc	e
	xor	a
	ld	(de),a				;set line 0 (start) of pattern in actpat

	inc	bc				;point to first byte of next event (eventstart)
	ld	h,b
	ld	l,c				;copy address in hl
	ld	(evlist),hl			;update address in evlist
	ei
	ret					;this routine can be optimized, it's clear that is one
						;of the older ones...
						;anyway... here comes the most important game routine
						;together with the scrolling one...

; ==================	THE MAIN SPRITE MANAGEMENT ROUTINE, HOOKED IN HTIMI    =======================

putsprite:
;	out	(2ch),a
	push	af				;this routine is hooked in ISR so we have to save AF cause ISR doesn't do it
	ld	a,(vdp_busy)			;check if vdp is free
	dec	a
	jp	nz,only_play_music		;if not, the music has to be played, anyway. go!

;	ld	a,15				;another type of measurement:
;	out	(99h),a				;this switch border color to white
;	ld	a,7+128				;so we have a visual effect of the time used
;	out	(99h),a				;by a piece of code

	ld	a,(dead_flag)		
	or	a				;check if ship was destroyed
	jp	z,set_enemies			;if no (flag set to 0) go set enemies
enter_player_ship:

	ld	hl,respawn_time			;decrease respawn_time variable
	dec	(hl)

	ld	a,(dead_flag)			;if dead_flag=2
	cp	2
	jp	z,respawn_y_updated		;jump there

;	ld	hl,ramspttbl			;else point to first sprite in SAT
	ld	l,0				;respawn_time label has the same hi byte (so h) of ramspttbl.
						;ramspttbl is aligned, so l=0 
	ld	a,(respawn_time)		;check respawn_time value
	cp	90
	jp	c,update_respawn_y		;if <90 then starship is on screen again so go and update y pos
	cp	115
	jp	nc,set_enemies			;else, if >=115 go and set enemies as always (they continue to spawn)
	jp	nz,chk_3rd_frm			;else if >90 and <115 go to set other explosion frames
	ld	l,2				;else if =115 point to starship shape
	ld	(hl),244			;and set it as 2nd explosion frame (first one was set by
	inc	l				;collision routine)
	ld	(hl),10				;then set sprite color 10
chk_3rd_frm:
	ld	a,(respawn_time)		;we have to keep the explosion timing and we will do it
	cp	110				;checking our counter. we are here because the counter is
	jp	nz,chk_4th_frm			;between 90 and 115. we will set the 3rd frame only if
	ld	l,2				;counter is exactly 110 (so 5 vblanks after previous one
	ld	(hl),248			;because respawn time, as you know, is updated here in the
	inc	l				;isr). this way we keep the same animation speed of the
	ld	(hl),9				;other explosions (you can verify this by taking a look
chk_4th_frm					;to the explosion pattern at the label "explosion:". each
	ld	a,(respawn_time)		;line of the patterns contains y offset,x offset,shape offset
	cp	105				;and color offset that are added at each vblank to related
	jp	nz,end_of_player_explosion	;sprites
	ld	l,2				;if conditions for 3rd and 4th frames don't match
	ld	(hl),252			;the code jump ahead
	inc	l
	ld	(hl),8
end_of_player_explosion:
	ld	a,(respawn_time)		;but if timer is still higher than 100 it jump even further
	cp	100				;so if still not done, next vblank an animation frame can
	jr	nc,set_enemies			;be updated or simply the code is waiting the end of the 
	ld	l,0				;animation:last frame was set at 105 so explosion will expire
	ld	(hl),209			;at 100. for this purpouse we point to first byte of our sat
	ld	a,(respawn_time)		;setting l=0. this is the y coordinate of player ship (well,
	cp	90				;of the explosion, now) and put it out of screen (y=209)
	jp	nz,set_enemies			;if timer hasn't still reached 90 the code flow continue setting
	ld	a,(lives)			;other enemies else we check if we have some lives left
	or	a
	jp	nz,nogameover			;so the game continues
	inc	a				;else we set nomorelives variable (wich will address the
	ld	(nomorelives),a			;code to the game over when checked in one of the main game
	jp	set_enemies			;loops) and continue setting enemies till the end...
nogameover:
	ld	l,0				;point to ramspttbl (first value, sprite0 ypos)
	ld	(hl),190			;set player ship ypos(ready to respawn just below the visible screen)
	inc	l				;point to xpos
	ld	(hl),119			;and do the same
	inc	l				;point to shape byte
	ld	(hl),0				;set the ship sprite1
	inc	l				;point to color byte
	ld	(hl),14				;and set the grey color
	inc	l				;point to sprite 1 ypos (second sprite used for starship)
	ld	(hl),190			;set same coordinates
	inc	l
	ld	(hl),119	
	inc	l
	ld	(hl),4				;select the right shape
	inc	l				;point to color byte
	ld	a,(pl_col2)			;and retrieve the right value for this variable
	ld	(hl),a				;that we have set for the ship selection feature

update_respawn_y:
	ld	l,0				;point again to ypos
	ld	a,(hl)				;and add -3 to ypos until y=130
	add	a,-3				
	cp	130
	jp	nz,continue_respawn		;if y>130 continue respawn
	ld	a,2				;else set dead_flag=2
	ld	(dead_flag),a			;this condition force the code to jump to the following
						;code when "putsprite" will be executed from now on
						;until it will be reset (dead_flag=0)
respawn_y_updated:
;	ld	hl,respawn_time
	ld	l,8eh				;I did this optimization learning from MDL assembler
						;optimizer (thanks to Santiago Ontanon for it!)
						;respawn_time has the same hibyte that ramspttbl has
						;so I can change only the lowbyte to save space and time
	dec	(hl)				;decrease respawn timer, and jump ahead if not finished
	jp	nz,still_invisible
	xor	a				;else set collision occourred flag to 0
	ld	(dead_flag),a			;and set ship colors as they have to be
	ld	l,3				;(flickering to transparent during respawn)
	ld	(hl),14
	ld	l,7
	ld	a,(pl_col2)
	ld	(hl),a
	jp	set_enemies
continue_respawn:
	ld	(hl),a				;update ypos on sprite 0 (first color player sprite)
	ld	l,4				;point to sprite 1 ypos (second color player sprite)
	ld	(hl),a				;update ypos
still_invisible:
	ld	hl,ramspttbl+3			;point to sprite 0 color byte
	ld	a,(hl)
	xor	14				;xor it with its color to altern color and transparent
	ld	(hl),a		
	ld	l,7				;do the same with second player 1 sprite (sprite 1)
	ld	a,(pl_col2)
	xor	(hl)
	ld	(hl),a
set_enemies:
	ld	de,actpat+18			;point to active flag of sprite 6(shot1)
	ld	hl,ramspttbl+24			;ramspttbl sprite 6 ypos (sprites 0/1 are player1 ship,2-5scoremask)
shotchk:
	ld	a,(de)				;check if sprite is active
	or	a
	jp	z,sec_shot_check		;if not check the second central shot
patread:
	ld	a,(hl)				;if active check its ypos
	cp	8
	jp	c,resetshot			;if ypos<8 shot is out of screen and must be resetted
	add	a,-8				;add -8 to move the shot 8 pixel up

shoot:
	ld	(hl),a				;and update it in ramspttbl

shot_col:
	ld	l,27				;point to central shot sprite color byte
	ld	a,(hl)				;load its value in a
	xor	14				;and xor it with value 14 (so low byte will be 7 or 9)
	ld	(hl),a				;put changed value in RAM SAT
	ld	l,35				;point to right shot sprite color byte
	ld	(hl),a				;same value to it
	ld	l,43				;and to 2nd central shot too 
	ld	(hl),a

sec_shot_check:
	ld	e,30
	ld	l,40
	ld	a,(de)
	or	a
	jp	z,third_shot_check
	ld	a,(hl)
	cp	8
	jp	c,reset3rdshot
	add	a,-8
	ld	(hl),a

third_shot_check:
	ld	e,33
	ld	l,44
	ld	a,(de)
	or	a
	jp	z,shot2chk
	ld	a,(hl)
	cp	8
	jp	c,resetsecshot
	add	a,-8
	ld	(hl),a

shot2chk:
	ld	e,21				;point to active flag of sprite 7(shot1 sx)
	ld	l,28				;ramspttbl sprite 7 ypos
	ld	a,(de)				;check if sprite is active
	or	a
	jp	z,shot3chk			;if no check shot3
patread2:
	ld	a,(hl)
	cp	8
	jp	c,resshot2 +1
	add	a,-8
	ld	(hl),a				;and update it in ramspttbl
	inc	l
	ld	a,-8				;xpos offset
	add	a,(hl)
	jp	nc,resshot2
dshoot2:
	ld	(hl),a				;updated!

	ld	l,31				;point to left diag shot color byte
	ld	a,(hl)				;load its value in a
	xor	14				;xor with value 14 so its low byte value will be 7 or 9
	ld	(hl),a				;put changed value in RAM SAT


	jp	shot3chk
resshot2:
	dec	l
	ld	(hl),209
	xor	a
	ld	(de),a
shot3chk:
	ld	e,24				;point to active flag of sprite 8(shot1 dx)
	ld	l,32				;ramspttbl sprite 8 ypos
	ld	a,(de)				;check if sprite is active
	or	a
	jp	z,pod_check			;if no check other sprites
patread3:
	ld	a,(hl)
	cp	8
	jp	c,resshot3+1
	add	a,-8
	ld	(hl),a	
	inc	l
	ld	a,8
	add	a,(hl)
	jp	c,resshot3
dshoot3:
	ld	(hl),a
	jp	pod_check
resshot3:
	dec	l
	ld	(hl),209
	xor	a
	ld	(de),a

pod_check:
	ld	a,(cool_time)			;coo_time variable is updated here
	inc	a				;it prevents too rapid fire
	ld	(cool_time),a

	ld	bc,podpat			;point to pod pattern start address
	ld	e,27				;point to active flag of sprite9 (orbital pod)
	ld	a,(de)
	or	a
	jp	z,enemychk			;if pod isn't active then go and check enemies' sprites
	inc	e				;skipping pattern nr, we already know that it is podpat
	inc	e				;point to pattern offset
	ld	a,(de)				;load offset value (position inside the pattern) in a
	cp	32				;the pattern is 32 bytes long so if the offset isn't 32
	jp	nz,setpodoffset			;let's go to add it to pattern address to retrieve wanted
	xor	a				;values, else we have reached end of pattern the previous frame
	ld	(de),a				;and now we set it back to 0 (beginning of pattern)
setpodoffset:
	add	a,c				;here we add the offset to the pattern start address
	ld	c,a				;first we add it to lowbyte, set the result in lowbyte
	adc	a,b				;then we perform an addition with carry of the result to
	sub	c				;the hibyte and consequently we subtract c.
	ld	b,a				;so we have in reg a the result of b+carry. so if a+c has
						;crossed the boudary b is incremented, else not
						;our address is updated and we can pick the right data
pod_patread:
	ld	l,0				;point to sprite0 ypos
	ld	a,(bc)				;read ypos offset from podpat
	add	a,(hl)				;add it to starship y
	ld	l,36				;point to pod ypos
	ld	(hl),a				;set obtained valued to it
	inc	bc				;point to xpos offset
	ld	a,(bc)				;read xpos offset from podpat
	ld	l,1				;point to sprite0 xpos
	add	a,(hl)				;add starship xpos to pod xpos offset
	ld	l,37				;point to pod xpos
	ld	(hl),a				;set obtained value
	ld	l,39				;point to pod color byte
	ld	a,(hl)				;load actual color value
	xor	14				;xoring it will be 7 or 9
	ld	(hl),a				;update it in SAT
	ld	a,(de)				;podpat pattern use 2 bytes per frame
	add	a,2				;so adding 2
	ld	(de),a				;we update its pattern offset


enemychk:					;from here now we update enemies' sprites
	ld	e,36				;point to active flag of sprite 12 (first enemy sprite)
	ld	l,48				;ramspttbl sprite 12 ypos
	ld	b,7				;max enemies on screen (sprites from 12 to 25 2sprites/object)
nextsprite:
	ld	a,(de)				;check if sprite is active
	or	a
	jp	nz,setmovpat			;if so go to setmovpat
	ld	a,6
	add	a,e
	ld	e,a				;else skip to next (like we did for midboss and endlevel boss)
	ld	a,8
	add	a,l
	ld	l,a
	djnz	nextsprite			;repeat for the 7 reserved slots
	jp	bullets				;when done go to update enemy bullets 
sprites_patterns:
	dw	0,movpat1,movpat2,movpat3,movpat4,movpat5,movpat6,explosion,movpat8,midpat2,midpat3,midpat4,midpat5
	dw	midpat6,midpat7,midpat8,endbossleft,endbossright,anim6
setmovpat:
	push	bc				;save object counter (we have a lot of work to do and need bc pair too)
						;I've commented this part when coding first time and added/modified
						;when improving the game to do the physical release
	inc	e				;point to pattern nr in actpat table
	ld	a,(de)				;load it in a
	push	hl				;save actual RAM SAT pos
	add	a,a				;double reg a value (we have to work 2 bytes, low and hi of an address)
	ld	hl,sprites_patterns		;point to look up table for movement pattern selection
	add	a,l				;add offset to l (to jump to the right low byte)
	ld	l,a				;and copy result to register l (yeah, the low byte of our address)
	adc	a,h				;then we add reg a value (and the carry flag too, 
						;in the case l value+a value crossed the boundary)
	sub	l				;and subtract l value (wich was added before) so practically 
						;we have added the carry flag to h
	ld	h,a				;copy "a" value to h (so now we have the right address
						; of our lookup table entry in hl)
	ld	c,(hl)				;first byte (low) in c
	inc	hl				;point to next byte
	ld	b,(hl)				;hi byte in b. So now we have pattern address in bc pair
offsetadd:
	pop	hl				;restore RAM SAT pos
	inc	e				;point to pattern offset
	ld	a,(de)				;load its value in a
	cp	96				;check if it has reached last pattern byte 
	jp	nz,setoffset			;if no jump to set offset
	xor	a				;else set a as 0
	ld	(de),a				;and reset pattern byte value
setoffset:
	add	a,c				;add offset lenght to C (low byte of pattern address)
	ld	c,a				;load the result on c register
	adc	a,b				;we add actual reg a value (and carry too) to b, 
						;in case C has passed the boundary
	sub	c				;the we subtract c (wich value was added in a before) 
						;so we have a=carry+b
	ld	b,a				;load obtained value in b so we have offsetted vale
updatevals:
	ld	a,(bc)				;read ypos offset
	add	a,(hl)				;add it to ramspttbl ypos
	sub	192				;ypos-192 give positive sign if out of screen range
	jp	p,deactivatespritey		;if so go to check if can deactivate
	add	a,192				;else restore A and continue
correct:
	ld	(hl),a				;update it in ramspttbl
	inc	e
	ld	a,(de)
	or	a
	jp	nz,enemy_alive
	ld	a,209
	jp	update_enemy_ypos
enemy_alive:
	ld	a,(hl)
update_enemy_ypos:
	inc	l				;point to ypos byte for color2 sprite
	inc	l
	inc	l
	inc	l
	ld	(hl),a				;and update its value
	dec	l				;point back to xpos value
	dec	l
	dec	l
	dec	e
	inc	bc				;point to xpos offset in selected pattern
check_boss_battle:
	ld	a,(bossbattle)			;check if a boss battle is active
	or	a
	jp	z,noborder			;if no continue sprites update
	ld	a,(bc)				;else load xpos offset in register a
	add	a,(hl)				;and add it to sprite coord x value in RAM SAT
	ld	(hl),a				;then update sprite coord x value in RAM SAT 

	ld	a,4				;point to next sprite coord x value in RAM SAT
	add	a,l
	ld	l,a
	ld	a,(bc)				;load xpos offset in register a
	add	a,(hl)				;and add it to sprite coord x value in RAM SAT

	ld	(hl),a				;then update sprite coord x value in RAM SAT 
	jp	shape_right			;jump to shape update
;	inc	bc				;we have to skip animations during boss battles, 
						;so we increase the pattern offset to do it
;	jp	color_right			;and jump directly to color updating
noborder:
	ld	a,(bc)				;xpos offset in register a
	bit	7,a				;check sign bit to know if moving left or right
	jp	m,look4leftexceed		;if negative move to left so search for left limit
;	ld	a,(bc)				;xpos offset in register a
	inc	l				;point to 4th sprite byte (color/ECB)
	inc	l
	bit	7,(hl)				;check if ECB is set
	jp	z,xposadd			;if no go to add xpos offset
	res	7,(hl)				;else reset ECB
	ld	a,4				;point to same byte for color2 sprite
	add	a,l
	ld	l,a
	res	7,(hl)				;and reset ECB
	ld	a,-6				;point back to xpos offset
	add	a,l
	ld	l,a

	ld	a,(bc)				;xpos offset in reg a
	add	a,(hl)				;add it to actual xpos value
	sub	32				;subtract 32 (prev value had ECB so it has to be corrected)
	jp	rightcheck
xposadd:
	ld	a,(bc)

	dec	l				;simply point again to xpos 
	dec	l
	add	a,(hl)				;and add offset to it
rightcheck:
	jp	c,deactivatespritex		;if carry set (xpos>255) go deactivate sprite
	ld	(hl),a				;else update it in ramspttbl
	inc	l
	inc	l
	inc	l
	inc	l
	ld	(hl),a				;and in color2 sprite too
shape_right:			
	dec	l
	dec	l
	dec	l
	inc	bc
	ld	a,(bc)				;shape offset (used to animate sprites)
	add	a,(hl)
	ld	(hl),a
	ld	a,4
	add	a,l
	ld	l,a
	ld	a,(bc)
	add	a,(hl)
	ld	(hl),a
	dec	l
;color_right:
	dec	l
	dec	l
	inc	bc
	ld	a,(bc)				;check color offset
	cp	220				;this value is used to check end of explosion animation
	jp	z,enemydead			;if color offset is 220 then enemy is dead
	add	a,(hl)				;else add it to actual color
	ld	(hl),a				;update in ramspttbl (can be used for special FX)
	ld	a,4
	add	a,l
	ld	l,a
	ld	a,(bc)
	add	a,(hl)
	ld	(hl),a
	jp	xposadded
look4leftexceed:
;	ld	a,(bc)
	inc	l				;same of rightcheck routine
	inc	l
	bit	7,(hl)				;check ECB
	jp	nz,lxposadd			;if already set go and add offset
	set	7,(hl)				;else set it (we want it set when sprites go left)
	ld	a,4				;so they can disappear smoothly under the left border
	add	a,l
	ld	l,a
	set	7,(hl)
	ld	a,-6
	add	a,l
	ld	l,a
	ld	a,(bc)
	add	a,32
	add	a,(hl)
	jp	leftcheck
lxposadd:
	ld	a,(bc)

	dec	l
	dec	l
	add	a,(hl)
leftcheck:
	cp	16
	jp	c,deactivatespritex		;parity set if x<0
	ld	(hl),a
	inc	l
	inc	l
	inc	l
	inc	l
	ld	(hl),a
	dec	l
	dec	l
	dec	l
	inc	bc
	ld	a,(bc)				;shape offset (used to animate sprites)
	add	a,(hl)
	ld	(hl),a
	ld	a,4
	add	a,l
	ld	l,a
	ld	a,(bc)
	add	a,(hl)
	ld	(hl),a
	dec	l
	dec	l
	dec	l
	inc	bc
	ld	a,(bc)				;color
	cp	220
	jp	z,enemydead
	add	a,(hl)
	ld	(hl),a				;update in ramspttbl (can be used for special FX)
	ld	a,4
	add	a,l
	ld	l,a
	ld	a,(bc)
	add	a,(hl)
	ld	(hl),a
xposadded:
	ld	a,(de)
	add	a,4
	ld	(de),a
	ld	a,4
	add	a,e
	ld	e,a				;point to next sprite in actpat table
	inc	l				;point to next sprite in ramspttbl
	pop	bc				;finally restore object counter
	dec	b				;decrease it
	jp	nz,nextsprite			;and repeat if we have more to check
bullets:
	ld	de,actpat+78			;point to active flag of sprite 26 (first bullet sprite)
	ld	hl,ramspttbl+104		;ramspttbl sprite 26 ypos
	ld	b,6				;max bullet sprites (from 26 to 31)
nextbullet:
	ld	a,(de)				;check if sprite is active
	or	a
	jp	nz,set_bullet_nr		;if so go to set_bullet_nr
	inc	e				;else skip to next 
	inc	e
	inc	e
	ld	a,4
	add	a,l
	ld	l,a
	djnz	nextbullet
	jp	showthem			;when finished with bullets update
set_bullet_nr:
	push	bc				;save counter (yes, a lot of work to do here too)
	ld	a,b				;well, we now wich bullet we have to update
	dec	a				;its number is inverted value of our counter
	jp	z,set_bullet6			;(we started from first bullet entry and counter value as 6)
	dec	a				;so if b=1 the bullet to update will be nr 6
	jp	z,set_bullet5			;insyead of "cp" instruction we check our accumulator
	dec	a				;value decreasing it and checking if the result is 0
	jp	z,set_bullet4			;this way is faster than "cp" and even shorter
	dec	a
	jp	z,set_bullet3
	dec	a
	jp	z,set_bullet2
set_bullet1:					;if none of above condition is true, then we have to set
	ld	bc,bullet1_dy			;bullet nr 1, so point bc to our "y displacement" value
	jp	set_bullet_pattern		;for bullet1 and jump to set its pattern
set_bullet2:					;same for all the bullets
	ld	bc,bullet2_dy
	jp	set_bullet_pattern
set_bullet3:
	ld	bc,bullet3_dy
	jp	set_bullet_pattern
set_bullet4:
	ld	bc,bullet4_dy
	jp	set_bullet_pattern
set_bullet5:
	ld	bc,bullet5_dy
	jp	set_bullet_pattern
set_bullet6:
	ld	bc,bullet6_dy
set_bullet_pattern:
	inc	e				;point to bullet pattern in actpat
	ld	a,(de)				;retrieve the value (we have set it at "set_bullet" routine)
	sub	7				;cp 7
	jp	z,dygreater_bydec_bxdec		;based on value we have we know wich direction
	dec	a				;cp 8
	jp	z,dxgreater_bxdec_bydec		;and if it has to increase more on x on or y coordinates
	dec	a				;cp 9
	jp	z,dygreater_byinc_bxdec		;so we will jump to proper routine
	dec	a				;cp 10
	jp	z,dxgreater_bxdec_byinc
	dec	a				;cp 11
	jp	z,dygreater_bydec_bxinc
	dec	a				;cp 12
	jp	z,dxgreater_bxinc_bydec
	dec	a				;cp 13
	jp	z,dygreater_byinc_bxinc
	dec	a				;cp 14
	jp	z,dxgreater_bxinc_byinc
dygreater_bydec_bxdec:
	inc	c				;point to bullet dx
	ld	a,(bc)				;bullet dx in a
	ld	ixl,a				;bullet dx in ixl
	inc	c				;point to tmp var where is bullet dy copy
						;so we can restore bullet dy if we need to
	ld	a,(bc)				;bullet tmp dy in a
	sub	ixl				;tmp=tmp-dx
	jp	nc,by_will_dec_dyg
	dec	c				;point to bullet dy original value
	dec	c				;by decrementing bc 2 times
	ld	a,(bc)				;load it in a
	inc	c				;increment bc two times
	inc	c				;to point to bullet tmp
	ld	(bc),a				;dy value in tmp var
	inc	l				;point to bullet xpos in SAT
	ld	a,(hl)				;bullet xpos in a
;	dec	a				;decrement it
;	dec	a				;2 times
	add	a,-2
	ld	(hl),a				;update xpos in SAT
	cp	3
	jp	c,deactivatebulletx		;if xpos is 2 or less deactivate bullet sprite
	inc	l
	jp	bullet_shape_update
by_will_dec_dyg:
	ld	(bc),a				;store subtraction result to bullet tmp
	ld	a,(hl)				;bullet ypos in a
;	dec	a				;decrement ypos
;	dec	a				;2 times
	add	a,-2
	ld	(hl),a				;ypos updated in SAT
	cp	15
	jp	c,deactivatebullety
	inc	l
	inc	l
	jp	bullet_shape_update
dxgreater_bxdec_bydec:
	ld	a,(bc)				;bullet dy in a
	ld	ixl,a				;bullet dy in ixl
	inc	c				;point to tmp var where is bullet dx copy
	inc	c				;so we can restore bullet dx if we need to
	ld	a,(bc)				;bullet tmp dx in a
	sub	ixl				;dx-dy
	jp	nc,bx_will_dec_dxg
	dec	c				;point to bullet dx original value
	ld	a,(bc)				;load it in a
	inc	c				;point to bullet tmp var
	ld	(bc),a				;dx value in tmp var
	ld	a,(hl)				;bullet ypos in a
;	dec	a				;decrement ypos
;	dec	a				;2 times
	add	a,-2
	ld	(hl),a				;ypos updated in SAT
	cp	15
	jp	c,deactivatebullety
	inc	l				;point to bullet xpos in SAT
	inc	l
	jp	bullet_shape_update
bx_will_dec_dxg:
	ld	(bc),a				;store subtraction result to bullet tmp
	inc	l				;point to bullet xpos in SAT
	ld	a,(hl)				;bullet xpos in a
;	dec	a				;decrement xpos
;	dec	a				;2 times
	add	a,-2
	ld	(hl),a				;xpos updated in SAT
	cp	3
	jp	c,deactivatebulletx
	inc	l
	jp	bullet_shape_update
dygreater_byinc_bxdec:
	inc	c				;point to bullet dx
	ld	a,(bc)				;bullet dx in a
	ld	ixl,a				;bullet dx in ixl
	inc	c				;point to tmp var where is bullet dy copy
						;so we can restore bullet dy if we need to
	ld	a,(bc)				;bullet tmp dy in a
	sub	ixl				;dy-dx
	jp	nc,by_will_inc_dyg
	dec	c				;point to bullet dy original value
	dec	c				;by decrementing bc 2 times
	ld	a,(bc)				;load it in a
	inc	c				;increment bc two times
	inc	c				;to point to bullet tmp
	ld	(bc),a				;dy value in tmp var
	inc	l				;point to bullet xpos in SAT
	ld	a,(hl)				;bullet xpos in a
;	dec	a				;increment it
;	dec	a				;2 times
	add	a,-2
	ld	(hl),a				;update xpos in SAT
	cp	253
	jp	nc,deactivatebulletx		;if zero is reached deactivate bullet sprite
	inc	l
	jp	bullet_shape_update	
by_will_inc_dyg:
	ld	(bc),a				;store subtraction result to bullet tmp
	ld	a,(hl)				;bullet ypos in a
;	inc	a
;	inc	a
	add	a,2
	ld	(hl),a
	cp	191				;sub 192 if positive value bullet is out of screen
	jp	nc,deactivatebullety
	inc	l
	inc	l
	jp	bullet_shape_update
dxgreater_bxdec_byinc:
	ld	a,(bc)				;bullet dy in a
	ld	ixl,a				;bullet dy in ixl
	inc	c				;point to tmp var where is bullet dx copy
	inc	c				;so we can restore bullet dx if we need to
	ld	a,(bc)				;bullet tmp dx in a
	sub	ixl				;dx-dy
	jp	nc,bx_will_dec_dxg2
	dec	c				;point to bullet dx original value
	ld	a,(bc)				;load it in a
	inc	c				;point to bullet tmp var
	ld	(bc),a				;dx value in tmp var
	ld	a,(hl)				;bullet ypos in a
;	inc	a
;	inc	a
	add	a,2
	ld	(hl),a
	cp	191
	jp	nc,deactivatebullety
	inc	l
	inc	l
	jp	bullet_shape_update
bx_will_dec_dxg2:
	ld	(bc),a				;store subtraction result to bullet tmp
	inc	l				;point to bullet xpos in SAT
	ld	a,(hl)				;bullet xpos in a
;	dec	a				;decrement xpos
;	dec	a				;2 timeas
	add	a,-2
	ld	(hl),a				;xpos updated in SAT
	cp	3
	jp	c,deactivatebulletx
	inc	l
	jp	bullet_shape_update
dygreater_bydec_bxinc:
	inc	c				;point to bullet dx
	ld	a,(bc)				;bullet dx in a
	ld	ixl,a				;bullet dx in ixl
	inc	c				;point to tmp var where is bullet dy copy
						;so we can restore bullet dy if we need to
	ld	a,(bc)				;bullet tmp dy in a
	sub	ixl				;dy-dx
	jp	nc,by_will_dec_dyg2
	dec	c				;point to bullet dy original value
	dec	c				;by decrementing bc 2 times
	ld	a,(bc)				;load it in a
	inc	c				;increment bc two times
	inc	c				;to point to bullet tmp
	ld	(bc),a				;dy value in tmp var
	inc	l				;point to bullet xpos in SAT
	ld	a,(hl)				;bullet xpos in a
;	inc	a				;increment it
;	inc	a				;2 times
	add	a,2
	ld	(hl),a				;update xpos in SAT
	cp	253
	jp	nc,deactivatebulletx		;if zero is reached deactivate bullet sprite
	inc	l
	jp	bullet_shape_update
by_will_dec_dyg2:
	ld	(bc),a				;store subtraction result to bullet tmp
	ld	a,(hl)				;bullet ypos in a
;	dec	a				;decrement ypos
;	dec	a				;2 times
	add	a,-2
	ld	(hl),a				;ypos updated in SAT
	cp	15
	jp	c,deactivatebullety
	inc	l
	inc	l
	jp	bullet_shape_update
dxgreater_bxinc_bydec:
	ld	a,(bc)				;bullet dy in a
	ld	ixl,a				;bullet dy in ixl
	inc	c				;point to tmp var where is bullet dx copy
	inc	c				;so we can restore bullet dx if we need to
	ld	a,(bc)				;bullet tmp dx in a
	sub	ixl				;dx-dy
	jp	nc,bx_will_inc_dxg
	dec	c				;point to bullet dx original value
	ld	a,(bc)				;load it in a
	inc	c				;point to bullet tmp var
	ld	(bc),a				;dx value in tmp var
	ld	a,(hl)				;bullet ypos in a
;	dec	a				;decrement ypos
;	dec	a				;2 times
	add	a,-2
	ld	(hl),a				;update ypos in SAT
	cp	15
	jp	c,deactivatebullety
	inc	l
	inc	l
	jp	bullet_shape_update
bx_will_inc_dxg:
	ld	(bc),a				;store subtraction result to bullet tmp
	inc	l				;point to bullet xpos in SAT
	ld	a,(hl)				;bullet xpos in a
;	inc	a				;increment xpos
;	inc	a				;2 times
	add	a,2
	ld	(hl),a				;xpos updated in SAT
	cp	253
	jp	nc,deactivatebulletx
	inc	l
	jp	bullet_shape_update
dygreater_byinc_bxinc:
	inc	c				;point to bullet dx
	ld	a,(bc)				;bullet dx in a
	ld	ixl,a				;bullet dx in ixl
	inc	c				;point to tmp var where is bullet dy copy
						;so we can restore bullet dy if we need to
	ld	a,(bc)				;bullet tmp dy in a
	sub	ixl				;dy-dx
	jp	nc,by_will_inc_dyg2
	dec	c				;point to bullet dy original value
	dec	c				;by decrementing bc 2 times
	ld	a,(bc)				;load it in a
	inc	c				;increment bc two times
	inc	c				;to point to bullet tmp
	ld	(bc),a				;dy value in tmp var
	inc	l				;point to bullet xpos in SAT
	ld	a,(hl)				;bullet xpos in a
;	inc	a				;increment it
;	inc	a				;2 times
	add	a,2
	ld	(hl),a				;update xpos in SAT
	cp	253
	jp	nc,deactivatebulletx		;if zero is reached deactivate bullet sprite
	inc	l
	jp	bullet_shape_update	
by_will_inc_dyg2:
	ld	(bc),a				;store subtraction result to bullet tmp
	ld	a,(hl)				;bullet ypos in a
;	inc	a
;	inc	a
	add	a,2
	ld	(hl),a
	cp	191				;sub 192 if positive value bullet is out of screen
	jp	nc,deactivatebullety
	inc	l
	inc	l
	jp	bullet_shape_update
dxgreater_bxinc_byinc:
	ld	a,(bc)				;bullet dy in a
	ld	ixl,a				;bullet dy in ixl
	inc	c				;point to tmp var where is bullet dx copy
	inc	c				;so we can restore bullet dx if we need to
	ld	a,(bc)				;bullet tmp dx in a
	sub	ixl				;dx-dy
	jp	nc,bx_will_inc_dxg
	dec	c				;point to bullet dx original value
	ld	a,(bc)				;load it in a
	inc	c				;point to bullet tmp var
	ld	(bc),a				;dx value in tmp var
	ld	a,(hl)				;bullet ypos in a
;	inc	a
;	inc	a
	add	a,2
	ld	(hl),a
	cp	191				;sub 192 if positive value bullet is out of screen
	jp	nc,deactivatebullety
	inc	l
	inc	l
	jp	bullet_shape_update
bx_will_inc_dxg2:
	ld	(bc),a				;store subtraction result to bullet tmp
	inc	l				;point to bullet xpos in SAT
	ld	a,(hl)				;bullet xpos in a
;	inc	a				;increment xpos	
;	inc	a				;2
	add	a,2
	ld	(hl),a				;xpos updated in SAT
	cp	253
	jp	nc,deactivatebulletx
	inc	l
	jp	bullet_shape_update
deactivatebulletx:
	dec	l
deactivatebullety:
	ld	(hl),209
	dec	e
	xor	a
	ld	(de),a
	ld	a,l
	add	a,4
	ld	l,a
	inc	e
	inc	e
	inc	e
	pop	bc
	dec	b
	jp	nz,nextbullet
	jp	showthem
bullet_shape_update:				;obviuosly we don't have to update the bullet shapes
	inc	l				;here we simply increase the pointers to be ready
	inc	l				;for next loop
	inc	e
	inc	e
	pop	bc
	dec	b
	jp	nz,nextbullet

showthem:
bullet_color_update:
	ld	hl,ramspttbl+107		;ramspttbl sprite 26 color entry
	ld	b,6				;we have 6 bullets
	ld	a,(level)			;if we aren't in level3
	cp	30				;we have no need to change bullets color
	jp	c,notlv3			;usually they are white
	cp	40				;and we have issues only with moon level
	jp	nc,notlv3			;where white color rules...
lv3_bullet:
	ld	c,13				;else change their color
	jp	bullet_color_set
notlv3:
	cp	40				;but well, we set before if level=>40 don't change color
	jp	nz,not_endboss3			;but as we know level value change at the beginning of 
	ld	a,(bossbattle)			;"midlevel:" routine ao it will be 40 also for level3 boss
	or	a				;so we check for it: if level<>40 we are not fighting
	jp	nz,lv3_bullet			;3rd end level boss. If level=40 then check if we are in a
						;bossbattle. If so, certainly we are at 3rd level end boss
						;because 4th level midmoss is at level=45
not_endboss3:
	ld	c,15				;else color will be 15 (white)
bullet_color_set:
	ld	(hl),c				;update it in sprite color byte
	ld	a,4				;adding 4 to hl to point to next bullet color byte
	add	a,l
	ld	l,a
	djnz	bullet_color_set		;do this for all the 6 bullets

	ld	c,98h				;ready to plot all sprites on screen, so as always vdp
	xor	a				;data port in c, vram address set and sent by 2 out
	out	(99h),a				;through vdp address/regs port
	ld	a,91				;1bh + 64
	out	(99h),a

;	ld	a,(reverse_sat)			;check reverse_sat flag
;	xor	1				;as doublebuffer flag it alternates its value 1/0
;	ld	(reverse_sat),a	
	ld	hl,reverse_sat			;MDL optimization  1 byte, 1 t-state
	ld	a,(hl)
	xor	1
	ld	(hl),a

	jp	z,oddframe			;so, if flag=0 jump to show reversed sat
	ld	hl,ramspttbl			;else point to our sat buffer in ram
	ld	b,128				;set all 128 bytes of our buffer to be copied
showloop:					;and do this at an incredible speed (LoL)
	outi					;with a serie of 32 outi instruction
	outi					;wich is repeated 4 times
	outi					;until b=0 (so the jp at the end of this loop will make)
	outi					;this serie to be repeated
	outi					;b is decreased and hl is increased automatically by outi
	outi					;at the same time the vdp automatically increases
	outi					;vram address
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	jp	nz,showloop			;yeah, repeat until b=0 (so 4 times, 32*4=128)
	xor	a				;when done set vdp_busy=0 so the vdp is free for
	ld	(vdp_busy),a			;scrolling routine
only_play_music:				;and finally play one music frame+sfx.
						;if at the beginning of this hooked routine the vdp
						;is busy with scrolling then the code will jump here
						;to play the music so it will be always synchronized
	xor	a
	ld	(scncnt),a			;reset the bios keyboard scan counter
	ld	(intcnt),a			;reset "on interval" basic function counter
						;these two reset are done to decrease the cycles used
						;by bios isr and free them for us
	ld	a,(freq)			;check for VDP frequency (0=60Hz, 1=50Hz)
	or	a
	jp	nz,not_ntsc			;if running on a PAL machine go to play music
	ld	a,(frame_count)			;else load frame count
	inc	a				;increment it and if it is equal to 6
	cp	6				;so 6 frames are executed
	jp	z,do_not_play			;then avoid to play music
	ld	(frame_count),a			;else set new frame count value
not_ntsc:
	call	PLY_AKG_PLAY			;call music player

;	ld	a,1				;end of measurement, switch back border color to black
;	out	(99h),a
;	ld	a,7+128
;	out	(99h),a

	pop	af				;restore vdp status register value in a (needed by bios)
	ret					;exit from hooked routine 

do_not_play:					;every 6th frame on ntsc msx
	xor	a				;music has to not be played (so it will sound same way
	ld	(frame_count),a			;on pal and ntsc machines (this because FF musics are)
						;written @50Hz. so reset the counter to do so again
;	ld	a,1				;as before, if music is skipped
;	out	(99h),a				;the border colour ha sto be restored here
;	ld	a,7+128				;(if applied, of course)
;	out	(99h),a

	pop	af				;restore vdp status reg value
	ret					;and exit

oddframe:					;reverse sat routine
	ld	hl,ramspttbl			;every odd frame this is executed instead of the
;	ld	b,24				;32*outi routine
;	otir					;write at maxspeed unreversed sprites
	outi					;we have 24 bytes to be written at max spedd
	outi					;first 6 sprites attribute
	outi					;because first 6 sprites shall not flicker
	outi					;first 2 (0 & 1) form the player starship (one for each color)
	outi					;sprites from 2 to 5 are always placed on screen
	outi					;at the top right corner as invisible one
	outi					;and they make enemy sprites to disappear when
	outi					;moving over the scoreboard
	outi					;so if they would be reversed we would see
	outi					;enemy sprites flickering over the scoreboard.
	outi					;pretty ugly, don't you agree?
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	ld	b,104				;total nr of bytes to move from sprite 6 (shot)to last
	ld	hl,ramspttbl+136		;(last sprites to data address -8bytes (because we will 
						;reverse two sprites together), so penultimate one
						;+16 bytes (to compensate first subtraction)
	ld	de,-16				
show2:
	add	hl,de				;so we point to the couple of previous sprites address
	outi					;(but they are the last two the first time this is executed)
	outi					;because we write 8 bytes, then we go back 16 bytes
	outi					;(so 8 bytes before the address we have used previously)
	outi					;and we write them starting from the first byte of
	outi					;reversable sprites
	outi					;I must thank to Artrag (Arturo Ragozini) for this technique.
	outi					;he let me look his MSX Uridium code to learn it
	outi					;(I have adapted his code to my needs, of course)
	jp	nz,show2
	ld	a,(active_explosion)		;then we check if there is one active explosion
	dec	a				;of a boss battle (the one we put when we hit a boss)
	jp	nz,boss_not_hit			;we check it only every odd frame
	ld	hl,globe_tmp			;and write its attributes (8 bytes, 2 sprites as always)
	ld	a,48				;over the ones of the powerup globe,we have reserved
	out	(99h),a				;a sprite for the powerup globe at the start of the
	ld	a,91				;boss battle so (if still active) its attributes are
	out	(99h),a				;stored in our sat buffer in ram (ramspttbl)
	outi					;so globe_tmp can be considered as an 8 byte extension
	outi					;of the sat that is swapped with the sat bytes of the
	outi					;powerup if there is an "hit explosion"
	outi
	outi
	outi
	outi
	outi
	ld	hl,globe_tmp+2			;then we point to the explosion shape byte
	ld	a,(exp_frm)			;increase a counter for the explosion frame
	inc	a
	ld	(exp_frm),a
	cp	4				;if it hasn't reached the 4 value yet
	jp	nz,boss_not_hit			;we skip the next part of code (see further)
;	ld	a,4
	add	a,(hl)				;else we add its value to the explosion shape
	ld	(hl),a				;(so we write the next frame in its shape attribute:
						;as you know 16*16 sprites shape are accessed every 4 bytes,
						;because msx vdp has 256 8*8 sprites or 64 16*16 ones.
						;the access way is the same, so 4 8*8 sprites form a 16*16
						;one and this is why.
	xor	a				;then we reset the explosion frame counter
	ld	(exp_frm),a			
	jp	nz,boss_not_hit			;uh, this should have been here, maybe I forgot to delete
						;this "jp nz" when modifying the code
	ld	(hl),240			;then we reset also the shape number with the first of the
	ld	(active_explosion),a		;explosion and reset the active_explosion flag
boss_not_hit:
	xor	a				;free the vdp
	ld	(vdp_busy),a
	jp	only_play_music			;and go play music


resetshot:
	xor	a				;it was a long jump, just to deactivate a shot!
	ld	(hl),209			;put shot sprite out of screen
	ld	(de),a				;and set its actpat flag as inactive
	jp	shot_col			;jump back to flow
resetsecshot:
	xor	a				;same for 2nd central shot
	ld	(hl),209
	ld	(de),a
	jp	third_shot_check	
reset3rdshot:
	xor	a				;same for 3rd central shot
	ld	(hl),209
	ld	(de),a
	jp	shot2chk

donot:						;yeah, restore the reg a value if needed
	add	a,-16				;after the check
	jp	correct				;and jump back to the flow
enemydead:					
	dec	l				;when an enemy is dead we have to point back
	dec	l				;to its y position on sat ram buffer.
deactivatespritex:				;we checked it through the color byte
	dec	l				;so we have to go 3 bytes back
	jp continue
deactivatespritey:
	add	a,192+16			;restore A from early subtraction and add 16 to check
						;if we are in smooth enter zone (from -16 to 0)
	jp	p,donot				;if so jump to donot(hing), see few rows above
continue:
						;from here deactivate sprites
	ld	(hl),209			;ypos ->209 deactivate 1st color sprite
	ld	a,4				;point to 2nd color sprite
	add	a,l
	ld	l,a
	ld	(hl),209			;and deactivate it
	ld	a,4				;point to next sprite in SAT
	add	a,l
	ld	l,a
	dec	e				;back to actpat sprite active flag
	dec	e
	xor	a
	ld	(de),a				;1st color sprite is now marked as inactive
	inc	e				;point to 2nd color active flag
	inc	e
	inc	e
	ld	(de),a				;and reset it
	inc	e				;point to next sprite actpat first value
	inc	e
	inc	e
	pop	bc
	dec	b
	jp	nz,nextsprite			;yep, this is a part of "putsprite" routine
						;so as the rest of sprites checks we go back to
						;enemy sprites loop if there are more 
	jp	bullets				;or jump back to the flow


control:					;now we check our joystick (using bios routines)
	ld	a,(player_input)		;well this part is easy, we set our selected input
	call	gtstck				;and call teh bios routine
	dec	a				;check for values from 1 to 8 like we do in basic 
	jp	z,dey				;and jump consequently to the proper direction routine
	dec	a
	jp	z,diagdxup
	dec	a
	jp	z,inx
	dec	a
	jp	z,diagdxdown
	dec	a
	jp	z,iny
	dec	a
	jp	z,diagsxdown
	dec	a
	jp	z,dex
	dec	a
	jp	z,diagsxup
	jp	checkfire			;if no direction selected go and check for fire
dey:						;this one decrease y (so moves up)
	ld	hl,ramspttbl			;point to starship y attribute on sat ram buffer
	ld	a,(hl)				;load its value in a
	ld	bc,(coord_dec_speed)		;load decrement speed value on c (coord_dec_speed is an 8bit
						;value, so 1 byte, so we will have it on c and 0 in b.
						;seeing this now I have done it another way:
						;ld bc,(nn) takes 22 T-states and 4bytes so we could have 
						;gain some this way
						;ld hl, ramspttbl-----------------same
						;ld a,(coord_dec_speed)----14 T-states  3bytes
						;ld c,a---------------------5 T-states  1byte
						;so the cost is 19 T-states instead of 22, same lenght
						;then ld a,(hl) before continue
						;but well, only 3 T-state of gain for any direction
						;you can have only one direction (not the boyband)
						;per frame, so... who cares
						;we have this variable (and coord_inc_speed too) so we
						;change it when gaining or losing speed through powerups
						;or death
	add	a,c				;add the decrement value to our y
	cp	17				;check if would move over the scoreboard..
	jp	c,checkfire			;if so don't update the y and go to check for fire
	ld	(hl),a				;else update it
	ld	l,4				;point to second sprite (other color one) y
						;as you remember ramspttbl is aligned so we can
						;use l register directly to point our entries:
						;up to 256 but we need only 128 (sat lenght)
	ld	(hl),a				;and update it too
	jp	checkfire			;go and check for fire
						;other direction subroutines are pretty similar,
						;so no need to comment them
						;see you directly to "check_fire:"
diagdxup:
	ld	hl,ramspttbl
	ld	a,(hl)
	ld	bc,(coord_dec_speed)
	add	a,c
	cp	17
	jp	c,check_inc_x
	ld	(hl),a
	ld	l,4
	ld	(hl),a
check_inc_x:
	ld	l,1
	ld	a,(hl)
	ld	bc,(coord_inc_speed)
	add	a,c
	cp	236
	jp	nc,checkfire
	ld	(hl),a
	ld	l,5
	ld	(hl),a
	jp	checkfire
inx:
	ld	hl,ramspttbl+1
	ld	a,(hl)
	ld	bc,(coord_inc_speed)
	add	a,c
	cp	236
	jp	nc,checkfire
	ld	(hl),a
	ld	l,5
	ld	(hl),a
	jp	checkfire
diagdxdown:
	ld	hl,ramspttbl+1
	ld	a,(hl)
	ld	bc,(coord_inc_speed)
	add	a,c
	cp	236
	jp	nc,check_iny
	ld	(hl),a
	ld	l,5
	ld	(hl),a
check_iny:
	ld	l,0
	ld	a,(hl)
	add	a,c
	cp	174
	jp	nc,checkfire
	ld	(hl),a
	ld	l,4
	ld	(hl),a
	jp	checkfire
iny:
	ld	hl,ramspttbl
	ld	a,(hl)
	ld	bc,(coord_inc_speed)
	add	a,c
	cp	174
	jp	nc,checkfire
	ld	(hl),a
	ld	l,4
	ld	(hl),a
	jp	checkfire
diagsxdown:
	ld	hl,ramspttbl+1
	ld	a,(hl)
	ld	bc,(coord_dec_speed)
	add	a,c
	cp	7
	jp	c,check_inc_y
	ld	(hl),a
	ld	l,5	;set hl=ramspttbl+5
	ld	(hl),a
check_inc_y:
	ld	l,0
	ld	a,(hl)
	ld	bc,(coord_inc_speed)
	add	a,c
	cp	174
	jp	nc,checkfire
	ld	(hl),a
	ld	l,4
	ld	(hl),a
	jp	checkfire
dex:
	ld	hl,ramspttbl+1
	ld	a,(hl)
	ld	bc,(coord_dec_speed)
	add	a,c
	cp	7
	jp	c,checkfire
	ld	(hl),a
	ld	l,5
	ld	(hl),a
	jp	checkfire
diagsxup:
	ld	hl,ramspttbl
	ld	a,(hl)
	ld	bc,(coord_dec_speed)
	add	a,c
	cp	17
	jp	c,check_dec_x
	ld	(hl),a
	ld	l,4
	ld	(hl),a
check_dec_x:
	ld	l,1
	ld	a,(hl)
	add	a,c
	cp	7
	jp	c,checkfire
	ld	(hl),a
	ld	l,5
	ld	(hl),a
checkfire:					;ready to shoot aliens?
	ld	a,(player_input)		;our input device in a
	call	gttrig				;and we call the bios routine to read fire button
	ret	z				;ret if not pressed
fire:
	ld	de,actpat+18			;point to active flag of sprite 6(shot1)
fire1:
single_shot:

	ld	a,(de)				;check if first shot (of 3) is active (already on screen)
	dec	a				;if so its value is 1 so decreasing it
	jp	z,fire2				;we have zero, wich means we have to checl for 2nd shot
	ld	a,(cool_time)			;if it isn't active, before fire it out we have to check
	cp	5				;if enough time is passed since last shot fired
	jp	c,fire2				;so we check cool_time variable. if timer is less than 5
						;go and check for 2nd shot
	ld	a,1				;else we can fire it. set it as 
	ld	(de),a				;active
	ld	(just_shoot),a			;and set a flag needed for sfx
	ld	hl,ramspttbl			;point to y pos of sprite1 (starship)
	ld	a,(hl)				;read its value
	add	a,-8				;and subtract 8 pixels
	ld	l,24				;point to shot1 y pos
	ld	(hl),a				;and set there obtained value (so we put the shot 8 pixel)
	ld	l,1				;above the starship. the point to starship x
	ld	a,(hl)				;read it
	ld	l,25				;point to shot1 x
	ld	(hl),a				;and update its value
	xor	a				;then we reset cool_time counter (you have seen its purpouse)
	ld	(cool_time),a
	
fire2:						;same as shot1 except first check
	ld	a,(power)			;check for power level
	cp	9				;if it is below level9 we don't have 2nd shot yet
	jp	c,fire_diag			;nor 3rd shot, of course, so skip them and go
	ld	e,30				;to check diagonal shots
	ld	a,(de)
	dec	a
	jp	z,fire3
	ld	a,(cool_time)
	cp	5
	jp	c,fire3
	ld	a,1
	ld	(de),a
	ld	(just_shoot),a
	ld	hl,ramspttbl
	ld	a,(hl)
	add	a,-8
	ld	l,40
	ld	(hl),a
	ld	l,1
	ld	a,(hl)
	ld	l,41
	ld	(hl),a
	xor	a
	ld	(cool_time),a

fire3:						;same as previous shot routines
	ld	a,(power)
	cp	10
	jp	c,fire_diag
	ld	e,33
	ld	a,(de)
	dec	a
	jp	z,fire_diag
	ld	a,(cool_time)
	cp	5
	jp	c,fire_diag
	ld	a,1
	ld	(de),a
	ld	(just_shoot),a
	ld	hl,ramspttbl
	ld	a,(hl)
	add	a,-8
	ld	l,44
	ld	(hl),a
	ld	l,1
	ld	a,(hl)
	ld	l,45
	ld	(hl),a
	xor	a
	ld	(cool_time),a

fire_diag:					;here we check for diagonal shots
	ld	a,(power)
	cp	5				;if power value is less than 5...
	jp	c,noise_check			;avoid diagonals and go check for sfx

	ld	e,21				;else point to left diagonal shot active flag
	ld	a,(de)				;if it is already set we don't have to shot them again
	dec	a				;because one of the (in this case the left one)
	jp	z,noise_check			;is still on screen (they are fired together)
	ld	e,24				;else check for right diagonal shot
	ld	a,(de)
	dec	a
	jp	z,noise_check			;if active, same as previously
	ld	a,1				;else both are actually inactive
	ld	(de),a				;set both of them as active
	ld	e,21
	ld	(de),a
	ld	hl,ramspttbl			;point to starship y
	ld	a,(hl)				;add 8 pixels (diagonal starts from starship side)
	add	a,8
	ld	l,28				;point to shot1 left diag y
	ld	(hl),a				;and set it with obtained value
	ld	l,32				;do the same for 
	ld	(hl),a				;the other one
do_not_show_diag:				;we are here to do last settings or to skipping
	ld	l,1				;diagonals (if actpat active bytes aren't set sprites
	ld	a,(hl)				;won't be displayed). point to starship x coordinate
	sub	224				;this value is here because I've decided to set ecb
	jp	c,ecb				;(early clock bit) when sprites go to left
	add	a,232				;now some time has passed and maybe it wasn't really needed
						;(left diagonal shot goes obviously to left so I
						;should have set directly ecb
	ld	l,29				;without doing all these
	ld	(hl),a				;calculations...)
	ld	l,31				;point to shot1 diag sx color
	ld	(hl),9				;color 9
	add	a,-16				;add -16 to xpos to set xpos for shot1 diag dx
	jp	DIAGDXShOT1

ecb:
	add	a,8				;setting ecb
	ld	l,29		
	ld	(hl),a
	ld	l,31
	ld	(hl),128+9			;color 9 + ecb (128)
	add	a,-48
DIAGDXShOT1:
	ld	l,33				;point to posx shot1 diag dx
	ld	(hl),a				;update it with early obtained value
noise_check:
	ld	a,(just_shoot)			;if we have just shoot
	dec	a				;this subtraction will give zero
	ret	nz				;else we haven't just shoot, so exit without setting sfx
	ld	(just_shoot),a			;if we have just_shoot now we have to reset the flag
	ld	a,(sfx_nr)			;check if it is already an sfx set
	or	a
	jp	nz,no_shoot_sfx			;if so exit without setting shot sfx (we give priority to
						;explosions and/or collected powerups sfx)
shoot_sfx:
;	ld	a,1
	inc	a				;if we are here after previous check reg a is obviously
						;equal to zero so inc a= ld a,1
	ld	(sfx_nr),a			;set shot sfx
no_shoot_sfx:
	ret					;and exit
	
ship_collision:					;here start collision routines (all are pretty similar)
						;I've commented them long time ago, when writing them
						;the principle was to set a collision rectangle around
						;enemy sprite and check if starship sprite is inside it
						;doing coordinates comparisons considering sprites
						;dimensions. I know that the code is a bit cryptic
						;because I avoided using IX and IY registers to
						;gain speed. I apologize in advance for this and hope
						;you will understand it anyway

	ld	hl,ramspttbl+48			;point to first enemy (sprite 12) ypos
	ld	de,actpat+36			;point to active flag of sprite 12 (first enemy sprite)
	ld	b,7				;max enemy number (from sprite 12 to 26)
check_upper_y:
	ld	a,(de)
	or	a
	jp	z,to_next
	push	hl				;save enemy y pos for later
	ld	a,(hl)				;load enemy ypos in a
	add	a,-14				;add -14 for upper line of collision rectangle
	ld	c,a				;upper line in c
	ld	l,0				;point to player ypos
	ld	a,(hl)				;player1 ypos in a
	cp	c				;cp player ypos with upperline of rectangle
	jr	nc,check_bottom_y
	pop	hl				;point to enemy ypos again
to_next:
	ld	a,e				;increment de to point to next enemy infos
	add	a,6				;in actpat table (3 values for sprite)
	ld	e,a				;1st: 1/0 active/unactive 2nd: pattern movement nr 3:pattern position
	ld	a,l				;increment hl to point to next sprite in SAT (ramspttbl)
	add	a,8
	ld	l,a
	djnz	check_upper_y			;repeat until checked all enemies sprites
	ret
check_bottom_y:
	ld	c,a				;player ypos in c
	pop	hl				;point to enemy ypos
	ld	a,(hl)				;enemy ypos in a
	add	a,14				;add 14 for bottom line of collision rectangle
	cp	c				 
	jr	nc,check_left_x
	jp	to_next
check_left_x:
	inc	l				;point to enemy xpos
	push	hl
	ld	a,(hl)				;enemy xpos in a
	add	a,-14				;set most left axis for collision zone
	inc	l
	inc	l
	bit	7,(hl)				;check if early bit clock is set
	jp	z,no_ebc
	sub	32				;if so subtract 32 from enemy xpos
no_ebc:
	ld	c,a				;enemy xpos in c
	ld	l,1				;point to player xpos
	ld	a,(hl)				;player1 xpos in a
	cp	c				;compare player xpos with left x of collision rectangle
	jr	nc,check_right_x
	pop	hl
	dec	l
	jp	to_next
check_right_x:
	ld	c,a				;player xpos in c
	pop	hl				;point to enemy xpos
	ld	a,(hl)				;enemy xpos in a
	add	a,14				;set right border of collision rectangle
	inc	l
	inc	l
	bit	7,(hl)				;check for early bit clock (same of leftx check)
	jp	z,no_right_ebc
	sub	32
no_right_ebc:
	dec	l
	dec	l
	cp	c
	jr	nc,dead
	dec	l
	jp	to_next
dead:
	inc	l				;point to object shape in sat
	ld	a,(hl)				;load object shape in a
	cp	232				;weapon increase object?
	jp	z,bonus_get			;if so go and get this powerup!
	cp	240				;else check if it is an explosion sprite
	ret	nc				;if so return doing nothing
	ld	a,(respawn_time)		;else check if we are in respawn time
	or	a
	ret	nz				;if so (any value except 0) we can't be hit so exit
						;doing nothing
	ld	a,(bossbattle)			;else check if we are in a boss battle
	dec	a
	jp	z,boss_killed_me		;if so go to proper routine
	ld	(hl),240			;else we are dead and set first frame of axplosion sprite
	inc	l
	bit	7,(hl)				;check ebc
	jp	z,colnoecb
	ld	(hl),128+11			;if ebc set then set color 11 (+128=ebc)
	jp	colup
colnoecb:
	ld	(hl),11				;change only color for explosion
colup:
	inc	e				;point to second actpat value (pattern nr)
	ld	a,7
	ld	(de),a				;set it as 7 (explosion animation)
	inc	e				;point to next actpat value (pattern frame)
	xor	a
	ld	(de),a				;set it to 0 (first frame)
	inc	e				;inc de to next sprite actpat first value
	ld	(de),a				;seactivate second sprite
	inc	e				;unused, see below
	inc	e				;unused, see below
	inc	e				;unused, see below
	inc	l				;inc hl to next sprite first value
	ld	(hl),209			;and put it out of screen (explosions use only 1 sprite)

	ld	a,l				;just noticed that these 3 rows are unused
	add	a,4				;forgotten here during some change (as the above previously
	ld	l,a				;inc e inc e inc e) the meaning was to point to next sprite
						;actpat and ramspttbl to continue the loop
						;but we are about to completing the flow and exit, here...
boss_killed_me:
	ld	a,1				;if unused code is removed this should become "inc a"
	ld	(dead_flag),a			;set you_are_dead flag
	xor	a
	ld	(power),a			;reset power value
	ld	a,120
	ld	(respawn_time),a		;set respawn time (120 vblanks)
	ld	a,2
	ld	(sfx_nr),a			;set explosion sfx
	di
	ld	a,9				;switch to segment 9
	ld	(bank2),a
	call	weaponlvinc			;to change weapon
	ld	a,(current_seg)			;and switch back to current segment
	ld	(bank2),a
	ei

	ld	l,2
	ld	(hl),240			;set player first sprite shape as 1st explosion frame
	inc	l
	ld	(hl),11				;and its color to 11
;	ld	l,4
	inc	l
	ld	(hl),209			;remove from screen player 2nd sprite

	ld	a,(lives)			;decrease lives counter
	dec	a
	ld	(lives),a
	ret					;and exit

bonus_get:					;if we collect a powerup globe
	di
	ld	a,9				;switch to segment 9
	ld	(bank2),a
	call	weaponlvinc			;to run the proper routine
	ld	a,(current_seg)			;switch back
	ld	(bank2),a
	ei
	dec	l
	dec	l
	ld	(hl),209			;remove from screen 1st globe sprite
	ld	a,l
	add	a,4
	ld	l,a
	ld	(hl),209			;and second one
	xor	a
	ld	(de),a				;set first globe sprite as inactive
	inc	e
	inc	e
	inc	e
	ld	(de),a				;and do the same for second globe sprite
	ld	bc,0500h			;500 points for picking up bonus globe!
	call 	scoreadd			;add them
	ld	a,3
	ld	(sfx_nr),a			;set powerup sfx
	ret					;and exit

bullet_collision:
	ld	hl,ramspttbl+26*4		;point to first enemy (sprite 12) ypos
	ld	de,actpat+26*3			;point to active flag of sprite 12 (first enemy sprite)
	ld	b,6				;max bullet number (from sprite 12 to 26)
b_check_upper_y:
	ld	a,(de)
	or	a
	jp	z,b_to_next
	push	hl
	ld	a,(hl)				;load bullet ypos in a
	add	a,-8				;add -8 for upper line of collision rectangle
	ld	c,a				;upper line in c
	ld	l,0				;point to player ypos
	ld	a,(hl)				;player1 ypos in a
	cp	c				;cp player ypos with upperline of rectangle
	jr	nc,b_check_bottom_y
	pop	hl				;point to enemy ypos
b_to_next:
	ld	a,e				;increment de to point to next enemy infos
	add	a,3				;in actpat table (3 values for sprite)
	ld	e,a				;1st: 1/0 active/unactive 2nd: pattern movement nr 3:pattern position
	ld	a,l				;increment hl to point to next sprite in SAT (ramspttbl)
	add	a,4
	ld	l,a
	djnz	b_check_upper_y			;repeat until checked all enemies sprites
	ret
b_check_bottom_y:
	ld	c,a				;player ypos in c
	pop	hl				;point to enemy ypos
	ld	a,(hl)				;enemy ypos in a
	add	a,8				;add 6 for bottom line of collision rectangle
	cp	c
	jr	nc,b_check_left_x
	jp	b_to_next
b_check_left_x:
	inc	l				;point to enemy xpos
	push	hl
	ld	a,(hl)				;enemy xpos in a
	add	a,-8				;set most left axis for collision zone
	ld	c,a				;enemy xpos in c
	ld	l,1				;point to player xpos
	ld	a,(hl)				;player1 xpos in a
	cp	c				;compare player xpos with left x of collision rectangle
	jr	nc,b_check_right_x
	pop	hl
	dec	l
	jp	b_to_next
b_check_right_x:
	ld	c,a				;player xpos in c
	pop	hl				;point to enemy xpos
	ld	a,(hl)				;enemy xpos in a
	add	a,8				;set right border of collision rectangle
	cp	c
	jr	nc,b_dead
	dec	l
	jp	b_to_next
b_dead:
	dec	l
	ld	(hl),209
	xor	a
	ld	(de),a
	ld	a,1
	ld	(dead_flag),a			;set you_are_dead flag
	xor	a
	ld	(power),a
	ld	a,120
	ld	(respawn_time),a
	di
	ld	a,9
	ld	(bank2),a
	call	weaponlvinc
	ld	a,(current_seg)
	ld	(bank2),a
	ei
	ld	l,2				;point to player's 1st color sprite
	ld	(hl),240			;set explosion shape for player's 1st color sprite (explosions only need 1 sprite)
	inc	l				;point to player's 1st sprite color value
	ld	(hl),11				;set explosion's 1st frame color
	inc	l				;point to player's 2nd color sprite
	ld	(hl),209			;and remove it from the screen

	ld	a,(lives)
	dec	a
	ld	(lives),a
	ld	a,(sfx_nr)
	cp	2
	ret	nc
	ld	a,2
	ld	(sfx_nr),a
b_no_explosion_sfx:
	ret


cshot_collision:				;central shot collision
						;here are some differences so I'll add some comments
	ld	hl,ramspttbl+48			;point hl to sprite 12 ramspttbl (SAT)
	ld	de,actpat+36			;point de to sprite 12 actpat
	ld	b,7				;nr of enemy sprites to check
c_shot_upper_y:
	ld	a,(de)				;check if enemy sprite is active
	or	a
	jp	z,c_shot_to_next		;else check next one
	push	hl				;save first entry pointer for later
	inc	l				;incrementing hl by 2 it points to
	inc	l				;sprite shape nr
	ld	a,(hl)
	cp	232				;check if it is an object that cannot be hit
	jp	nc,c_explosion_sprite		;if its value is 232 (powerup) or higher (explosion)
	pop	hl				;retrieve first entry pointer
	push	hl				;and save it again for later
	ld	a,(hl)				;load enemy ypos in a
	add	a,-10				;add -8 for upper line of collision rectangle
	ld	c,a				;upper line in c
	ld	a,(shot_y)			;we use this routine to check all the 3 central shots
	ld	l,a				;so we used a variable to store the ypos byte pointer
						;in sat ram buffer
	ld	a,(hl)				;c_shot ypos in a
	cp	c				;cp c_shot ypos with upperline of rectangle
	jr	nc,c_shot_bottom_y
c_explosion_sprite:
	pop	hl				;point to enemy ypos
c_shot_to_next:
	ld	a,e
	add	a,6
	ld	e,a
	ld	a,l
	add	a,8
	ld	l,a
c_from_enemy_dead:
	djnz	c_shot_upper_y
	ret
c_shot_bottom_y:
	ld	c,a				;c_shot ypos in c
	pop	hl				;point to enemy ypos
	ld	a,(hl)				;enemy ypos in a
	add	a,10				;add 8 for bottom line of collision rectangle
	cp	c
	jr	nc,c_shot_left_x
	jp	c_shot_to_next
c_shot_left_x:
	inc	l				;point to enemy xpos
	push	hl
	ld	a,(power)			;depending on power level we can have thinner
	cp	4				;shots, so we have to set different
	jp	c,low_power			;rectangle axis
	ld	ixl,-15				;we set them through ix and iy lowbytes
	ld	iyl,15				;that we will pass then on register a when needed
	jp	low_power +6
low_power:
	ld	ixl,-8
	ld	iyl,8
	ld	a,(hl)				;enemy xpos in a
	add	a,ixl				;set most left axis for collision zone
	inc	l
	inc	l
	bit	7,(hl)				;check if early bit clock is set
	jp	z,c_shot_no_ebc
	sub	32				;if so subtract 32 from enemy xpos
c_shot_no_ebc:
	ld	c,a				;enemy xpos in c
	ld	a,(shot_y)
	inc	a
	ld	l,a
	ld	a,(hl)				;c_shot xpos in a
	cp	c				;compare c_shot xpos with left x of collision rectangle
	jr	nc,c_shot_right_x
	pop	hl
	dec	l
	jp	c_shot_to_next
c_shot_right_x:
	ld	c,a				;c_shot xpos in c
	pop	hl				;point to enemy xpos
	ld	a,(hl)				;enemy xpos in a
	add	a,iyl				;set right border of collision rectangle
	inc	l
	inc	l
	bit	7,(hl)
	jp	z,c_shot_no_right_ebc
	sub	32
c_shot_no_right_ebc:
	dec	l
	dec	l
	cp	c
	jr	nc,c_enemy_dead
	dec	l
	jp	c_shot_to_next
c_enemy_dead:
	ld	a,(power)			;based on weapon power level we have to assign
	dec	a				;different damage to shots
	jp	z,cdmg1				;we have dmg1 repeated 2 times
	dec	a				;because first powerup is speed
	jp	z,cdmg1				;so the shot power is the same for power level 1 and 2
	dec	a
	jp	z,cdmg3
	ld	a,3
	ld	(damage),a			;a little lenght optimization, removing this
	jp	damage_assigned			;and moving "damage_assigned:" label one row
						;up, just between "ld a,2" and "ld (damage),a"
cdmg1:
	ld	a,1
	ld	(damage),a
	jp	damage_assigned
cdmg3:
	ld	a,2
	ld	(damage),a
damage_assigned:
	ld	a,(bossbattle)			;if we are in a boss battle call the proper routine
	dec	a				;to decrease boss hp
	call	z,midboss
	ld	a,(bossbattle)			;and again, if we are in a boss bettle
	dec	a				;skip the "set enemy sprite as explosion" part
	jp	z,cshot_out
	inc	l				;else point to enemy sprite shape
	ld	(hl),240			;set it as 1st frame explosion
	inc	l				;point to enemy sprite color

	ld	a,(hl)				;read its value
	and	128				;keep only early clock bit
	add	a,11				;add color value
	ld	(hl),a				;and set it

ccolup:
	inc	e				;point to enemy sprite pattern nr entry in actpat
	ld	a,7				;and set it as explosion
	ld	(de),a
	inc	e
	xor	a
	ld	(de),a				;set pattern position as start
	inc	e				;point to next sprite actpat first value
	ld	(de),a				;and set it as inactive
;	inc	e				;oh, remember the unused code we have found earlier?
;	inc	e				;here it was properly removed
;	inc	e				;so yeah, previous one is there as forgotten...
	inc	l				;point to next sprite first value (y pos)
	ld	(hl),209			;and remove it
;	ld	a,l
;	add	a,4
;	ld	l,a
cshot_out:
	ld	a,(shot_y)			;if we are in a boss battle we have to
	cp	24				;remove the shot from the screen
	jp	nz,check_2nd			;so check wich one is (1st, 2nd or 3rd)
	ld	e,18				;point to the related active flag on actpat table 
	jp	proceed
check_2nd:
	cp	40
	jp	nz,check_3rd
	ld	e,30
	jp	proceed
check_3rd:
	ld	e,33
proceed:
	xor	a
	ld	(de),a				;set to 0 to deactivate shot
						;put an explosion when a Boss is hit
	ld	a,(bossbattle)			;check if we are in a boss battle
	dec	a				;if not
	jp	nz,lastcheck			;avoid the "explosion for boss hit" part
c_hit_boss:
	xor	a				;set explosion frame as 0
	ld	(exp_frm),a
	inc	a
	ld	(active_explosion),a		;and set boss hit explosion as active
	ld	de,globe_tmp			;remember the boss globe/explosion part
						;in the "putsprite" routine?
	ld	a,(shot_y)			;we are settings needed values here
	ld	l,a				;point to ramspttbl current central shot y
	ld	a,(hl)				;read its value

	ld	(de),a				;and write it to first globe_tmp byte (y)
						;(we have to write all the values we need for sprites)
	ld	a,(shot_y)
	inc	a
	ld	l,a				;point to shot x
	ld	a,(hl)				;read value

	inc	de				;point to globe_tmp x value
	ld	(de),a				;and write it there
	inc	de				;point to globe_tmp shape byte
	ld	a,240				;set as first explosion frame
	ld	(de),a
	inc	de				;point to globe_tmp color
	ld	a,11				;set color 11
	ld	(de),a

	inc	de				;set next globe_tmp sprite as out of screen
	ld	a,209				;because when switching globe and explosion
	ld	(de),a				;sprites during boss battle we have to put out of
						;screen 2nd powerup globe sprite
lastcheck:

	ld	a,(shot_y)			;central shot sprite ypos ref in ramspttbl
	ld	l,a				;point to it
	ld	(hl),209			;put it out of screen
	ld	a,(bossbattle)			;again, check if w eare in boss battle
	dec	a				;if so exit doing nothing more
	ret	z
	ld	bc,0001h			;else add 1 to the enemis hit counter (BCD)
	call	hitadd
	ld	bc,0100h			;100 points for blasting enemies! (BCD)
	call 	scoreadd
	ld	a,(sfx_nr)			;check if there is some sfx active
	cp	2				;if there is one with higher number of the explosion one
	ret	nc				;(powerup and boss explosion) exit without set explosion sfx
	ld	a,2				;else set it
	ld	(sfx_nr),a
	ret					;and exit


lshot_collision:				;same as cshot collision
	ld	hl,ramspttbl+48
	ld	de,actpat+36
	ld	b,7
l_shot_upper_y:
	ld	a,(de)
	or	a
	jp	z,l_shot_to_next
	push	hl
	inc	l
	inc	l
	ld	a,(hl)
	cp	232
	jp	nc,l_explosion_sprite
	pop	hl
	push	hl
	ld	a,(hl)				;load enemy ypos in a
	add	a,-16				;add -8 for upper line of collision rectangle
	ld	c,a				;upper line in c
	ld	l,28				;point to l_shot ypos
	ld	a,(hl)				;l_shot ypos in a
	cp	c				;cp l_shot ypos with upperline of rectangle
	jr	nc,l_shot_bottom_y
l_explosion_sprite:
	pop	hl				;point to enemy ypos
l_shot_to_next:
	ld	a,e
	add	a,6
	ld	e,a
	ld	a,l
	add	a,8
	ld	l,a
l_from_enemy_dead:
	djnz	l_shot_upper_y
	ret
l_shot_bottom_y:
	ld	c,a				;l_shot ypos in c
	pop	hl				;point to enemy ypos
	ld	a,(hl)				;enemy ypos in a
	add	a,16				;add 8 for bottom line of collision rectangle
	cp	c
	jr	nc,l_shot_left_x
	jp	l_shot_to_next
l_shot_left_x:
	inc	l				;point to enemy xpos
	push	hl
	ld	a,(hl)				;enemy xpos in a
	add	a,-16				;set most left axis for collision zone
	inc	l
	inc	l
	bit	7,(hl)				;check if early bit clock is set
	jp	z,l_shot_no_ebc
	sub	32				;if so subtract 32 from enemy xpos
l_shot_no_ebc:
	ld	c,a				;enemy xpos in c
	ld	l,29				;point to l_shot xpos
	ld	a,(hl)				;l_shot xpos in a
	ld	l,31				;point to diag left shot color+ebc byte
	bit	7,(hl)				;check for ebc
	jp	z,shotcheck
	sub	32				;if so sub 32
shotcheck:
	cp	c				;compare l_shot xpos with left x of collision rectangle
	jr	nc,l_shot_right_x
	pop	hl
	dec	l
	jp	l_shot_to_next
l_shot_right_x:
	ld	c,a				;l_shot xpos in c
	pop	hl				;point to enemy xpos
	ld	a,(hl)				;enemy xpos in a
	add	a,16				;set right border of collision rectangle
	inc	l
	inc	l
	bit	7,(hl)
	jp	z,l_shot_no_right_ebc
	sub	32
l_shot_no_right_ebc:
	dec	l
	dec	l
	cp	c
	jr	nc,l_enemy_dead
	dec	l
	jp	l_shot_to_next
l_enemy_dead:
	ld	a,(power)
	sub	5
	jp	z,ldmg1
	dec	a
	jp	z,ldmg3
	ld	a,3
	ld	(damage),a
	jp	ldamage_assigned
ldmg1:
	ld	a,1
	ld	(damage),a
	jp	ldamage_assigned
ldmg3:
	ld	a,2
	ld	(damage),a
ldamage_assigned:
	ld	a,(bossbattle)
	dec	a
	call	z,midboss
	ld	a,(bossbattle)
	dec	a
	jp	z,lshot_out
	inc	l
	ld	(hl),240
	inc	l

	ld	a,(hl)
	and	128
	add	a,11
	ld	(hl),a
lcolup:
	inc	e
	ld	a,7
	ld	(de),a
	inc	e
	xor	a
	ld	(de),a
	inc	e				;inc de to next sprite actpat first value
	ld	(de),a
;	inc	e
;	inc	e
;	inc	e
	inc	l				;inc hl to next sprite first value
	ld	(hl),209
;	ld	a,l
;	add	a,4
;	ld	l,a
lshot_out:
	xor	a
	ld	e,21				;set active flag for lshot to 0
	ld	(de),a
	;put an explosion when a Boss is hit
	ld	a,(bossbattle)
	dec	a
	jp	nz,llastcheck
l_hit_boss:
	xor	a
	ld	(exp_frm),a
	inc	a
	ld	(active_explosion),a
	ld	de,globe_tmp

	ld	l,28
	ld	a,(hl)
	ld	(de),a

	ld	l,29
	ld	a,(hl)

	inc	de
	ld	(de),a
	inc	de
	ld	a,240
	ld	(de),a
	inc	de
	ld	l,31
	ld	a,(hl)
	and	128
	add	a,11

	ld	(de),a
	inc	de
	ld	a,209
	ld	(de),a

llastcheck:
	ld	l,28
	ld	(hl),209			;deactive lshot sprite
	ld	a,(bossbattle)
	dec	a
	ret	z
	ld	bc,0001h
	call	hitadd
	ld	bc,0100h			;100 points for blasting enemies!
	call 	scoreadd
	ld	a,(sfx_nr)
	cp	2
	ret	nc
	ld	a,2
	ld	(sfx_nr),a
	ret

rshot_collision:				;same as cshot and lshot collision
	ld	hl,ramspttbl+48
	ld	de,actpat+36
	ld	b,7
r_shot_upper_y:
	ld	a,(de)
	or	a
	jp	z,r_shot_to_next
	push	hl
	inc	l
	inc	l
	ld	a,(hl)
	cp	232
	jp	nc,r_explosion_sprite
	pop	hl
	push	hl
	ld	a,(hl)				;load enemy ypos in a
	add	a,-16				;add -8 for upper line of collision rectangle
	ld	c,a				;upper line in c
	ld	l,32				;point to r_shot ypos
	ld	a,(hl)				;r_shot ypos in a
	cp	c				;cp r_shot ypos with upperline of rectangle
	jr	nc,r_shot_bottom_y
r_explosion_sprite:
	pop	hl				;point to enemy ypos
r_shot_to_next:
	ld	a,e
	add	a,6
	ld	e,a
	ld	a,l
	add	a,8
	ld	l,a
r_from_enemy_dead:
	djnz	r_shot_upper_y
	ret
r_shot_bottom_y:
	ld	c,a				;r_shot ypos in c
	pop	hl				;point to enemy ypos
	ld	a,(hl)				;enemy ypos in a
	add	a,16				;add 8 for bottom line of collision rectangle
	cp	c
	jr	nc,r_shot_left_x
	jp	r_shot_to_next
r_shot_left_x:
	inc	l				;point to enemy xpos
	push	hl
	ld	a,(hl)				;enemy xpos in a
	add	a,-16				;set most left axis for collision zone
	inc	l
	inc	l
	bit	7,(hl)				;check if early bit clock is set
	jp	z,r_shot_no_ebc
	sub	32				;if so subtract 32 from enemy xpos
r_shot_no_ebc:
	ld	c,a				;enemy xpos in c
	ld	l,33				;point to r_shot xpos
	ld	a,(hl)				;r_shot xpos in a
	ld	l,35				;point to diag right shot color+ebc byte
	bit	7,(hl)				;check for ebc
	jp	z,rshotcheck
	sub	32				;if so sub 32
rshotcheck:
	cp	c				;compare r_shot xpos with left x of collision rectangle
	jr	nc,r_shot_right_x
	pop	hl
	dec	l
	jp	r_shot_to_next
r_shot_right_x:
	ld	c,a				;r_shot xpos in c
	pop	hl				;point to enemy xpos
	ld	a,(hl)				;enemy xpos in a
	add	a,16				;set right border of collision rectangle
	inc	l
	inc	l
	bit	7,(hl)
	jp	z,r_shot_no_right_ebc
	sub	32
r_shot_no_right_ebc:
	dec	l
	dec	l
	cp	c
	jr	nc,r_enemy_dead
	dec	l
	jp	r_shot_to_next
r_enemy_dead:
	ld	a,(power)
	sub	5
	jp	z,rdmg1
	dec	a
	jp	z,rdmg3
	ld	a,3
	ld	(damage),a
	jp	rdamage_assigned
rdmg1:
	ld	a,1
	ld	(damage),a
	jp	rdamage_assigned
rdmg3:
	ld	a,2
	ld	(damage),a
rdamage_assigned:
	ld	a,(bossbattle)
	dec	a
	call	z,midboss
	ld	a,(bossbattle)
	dec	a
	jp	z,rshot_out
	inc	l
	ld	(hl),240
	inc	l

	ld	a,(hl)
	and	128
	add	a,11
	ld	(hl),a
rcolup:
	inc	e
	ld	a,7
	ld	(de),a
	inc	e
	xor	a
	ld	(de),a
	inc	e				;inc de to next sprite actpat first value
	ld	(de),a
;	inc	e
;	inc	e
;	inc	e
	inc	l				;inc hl to next sprite first value
	ld	(hl),209
;	ld	a,l
;	add	a,4
;	ld	l,a
rshot_out:
	xor	a
	ld	e,24				;set active flag for rshot to 0
	ld	(de),a
	;put an explosion when a Boss is hit
	ld	a,(bossbattle)
	dec	a
	jp	nz,rlastcheck
r_hit_boss:
	xor	a
	ld	(exp_frm),a
	inc	a
	ld	(active_explosion),a
	ld	de,globe_tmp

	ld	l,32
	ld	a,(hl)

	ld	(de),a

	ld	l,33
	ld	a,(hl)

	inc	de
	ld	(de),a
	inc	de
	ld	a,240
	ld	(de),a
	inc	de
	ld	a,11
	ld	(de),a
	inc	de
	ld	a,209
	ld	(de),a

rlastcheck:
	ld	l,32
	ld	(hl),209			;deactive rshot sprite

	ld	a,(bossbattle)
	dec	a
	ret	z
	ld	bc,0001h
	call	hitadd
	ld	bc,0100h			;100 points for blasting enemies!
	call 	scoreadd
	ld	a,(sfx_nr)
	cp	2
	ret	nc
	ld	a,2
	ld	(sfx_nr),a
	ret

pod_collision:					;same as previous ones (mostly written by copying/pasting)
						;so maybe sometimes you'll read enemy instead of bullet
	ld	hl,ramspttbl+26*4		;point to first bullet (sprite 26) ypos
	ld	de,actpat+26*3			;point to active flag of sprite 26 (first bullet sprite)
	ld	b,6				;max bullet number (from sprite 26 to 31)
pod_check_upper_y:
	ld	a,(de)
	or	a
	jp	z,pod_to_next
	push	hl
	ld	a,(hl)				;load bullet ypos in a
	add	a,-4				;add -6 for upper line of collision rectangle
	ld	c,a				;upper line in c
	ld	l,36				;point to pod ypos
	ld	a,(hl)				;pod ypos in a
	cp	c				;cp pod ypos with upperline of rectangle
	jr	nc,pod_check_bottom_y
	pop	hl				;point to enemy ypos
pod_to_next:
	ld	a,e				;increment de to point to next enemy infos
	add	a,3				;in actpat table (3 values for sprite)
	ld	e,a				;1st: 1/0 active/unactive 2nd: pattern movement nr 3:pattern position
	ld	a,l				;increment hl to point to next sprite in SAT (ramspttbl)
	add	a,4
	ld	l,a
	djnz	pod_check_upper_y		;repeat until checked all bullet sprites
	ret
pod_check_bottom_y:
	ld	c,a				;player ypos in c
	pop	hl				;point to enemy ypos
	ld	a,(hl)				;enemy ypos in a
	add	a,4				;add 6 for bottom line of collision rectangle
	cp	c
	jr	nc,pod_check_left_x
	jp	pod_to_next
pod_check_left_x:
	inc	l				;point to enemy xpos
	push	hl
	ld	a,(hl)				;enemy xpos in a
	add	a,-4				;set most left axis for collision zone
	ld	c,a				;enemy xpos in c
	ld	l,37				;point to pod xpos
	ld	a,(hl)				;pod xpos in a
	cp	c				;compare pod xpos with left x of collision rectangle
	jr	nc,pod_check_right_x
	pop	hl
	dec	l
	jp	pod_to_next
pod_check_right_x:
	ld	c,a				;pod xpos in c
	pop	hl				;point to enemy xpos
	ld	a,(hl)				;enemy xpos in a
	add	a,4				;set right border of collision rectangle
	cp	c
	jr	nc,pod_dead
	dec	l
	jp	pod_to_next
pod_dead:
	dec	l
	ld	(hl),209
	xor	a
	ld	(de),a
	ret

bossfire_collision:
	ld	a,(dead_flag)			;if boss is already dead
	or	a				;no fire collision will be detected
	ret	nz
	ld	a,(level)			;else jump to the proper collision detection routine
	cp	20				;based on level value (they are stored in proper
	jp	z,endboss_firecollision1	;level segments. see further for them)
	cp	30
	jp	z,endboss_firecollision2
	cp	40
	jp	z,endboss_firecollision3
	cp	50
	jp	z,endboss_firecollision4
	jp	endboss_firecollision5
i_am_dead:					;when we are hit from bosses the collision routines
						;will send we back here
	xor	a
	ld	(power),a			;reset our power level
	ld	(sfx_dur),a			;and sfx duration too
	inc	a				;here it is like ld a,1
	ld	(dead_flag),a			;set you_are_dead flag
	inc	a				;and so it is like ld a,2
	ld	(sfx_nr),a			;set explosion sfx
	ld	a,120
	ld	(respawn_time),a		;set respawn time (see "putsprite:" routine)
	di
	ld	a,9				;switch to segment 9 to manage
	ld	(bank2),a			;our weapons
	call	weaponlvinc
	ld	a,(current_seg)			;and back to current segment
	ld	(bank2),a
	ei
	ld	hl,ramspttbl+2			;point to player 1st sprite shape
	ld	(hl),240			;set the explosion one
	inc	l				;point to player 1st sprite color
	ld	(hl),11				;set color 11
	ld	l,4				;next player ship sprite y
	ld	(hl),209			;put 2nd sprite out of screen
	ld	a,(lives)			;decrease lives counter
	dec	a
	ld	(lives),a
	ret					;and exit

check_generic:					;simply a "collision between sprites and chars" routine
	ld	hl,ramspttbl+1			;point to player xpos
	ld	e,(hl)				;xpos in E
	ld	l,0				;point to player ypos
	ld	d,(hl)				;ypos in D
	ld	a,d				;copy it in reg a
	and	0f8h				;mask the value, keeping only 8 multiples
;	ld	h,0
	ld	h,l				;MDL optimization  l=0 here 1bytes, 3 t-states

	ld	l,a				;put obtained value on hl
	add	hl,hl				;double two times to have a multiply *4
	add	hl,hl 				;(y/8)*32 because y*4 is the same
	ld	a,e				;load x pos in a
	and	0F8h				;mask the value to keep only 8 multiples
	rrca					;shift to right 3 times
	rrca					;so it become
	rrca					; X/8
	add	a,l				;so now we add the result to hl
	ld	l,a				;and in the end we will have
	adc	a,h				;hl= int(x/8)+int(y/8)*32
	sub	l				
	ld	h,a
	ld 	de,chstart-768			;so we add to hl our nametable buffer start
	add	hl,de				;to obtain the nametable location (in our ram buffer)
	ld	bc,31				;overlapped by our sprite (by its top left 8*8 part)
						;so we set in bc an offset of one row (less 1 char)
	ld	a,(hl)				;then check if this location has a value different from 0
	or	a				;(wich is the background value during end level boss battles)
	jp	nz,i_am_dead			;so if there is any other value we are dead
	inc	hl				;if not check the location just on the right
	ld	a,(hl)				;(the 8*8 top right part of the sprite is there)
	or	a				;the same way
	jp	nz,i_am_dead
	add	hl,bc				;else add our offset (1 row less 1 char) to obtain
	ld	a,(hl)				;the address where 8*8 left bottom part of our sprite is
	or	a				;and do the same check
	jp	nz,i_am_dead
	inc	hl				;last, we move right again for last 8*8 sprite's square
	ld	a,(hl)
	or	a
	jp	nz,i_am_dead
	ret

hitadd:						;see "scoreadd:"" routine below
	ld	hl,enemies_hit+1		;same principle but with something more
	ld	a,(hl)
	add	a,c
	daa
	ld	(hl),a
	dec	hl
	ld	a,(hl)
	adc	a,b
	daa
	ld	(hl),a

	ret

scoreadd:					;here we do some BCD math so manage our score/highscore
	ld	hl,score+3			;point to first byte of our score (we have reserved 4 bytes)
						;so we will have 8 digits "12345678"
	ld	a,(hl)				;load last byte (rightmost 2 digits)
						;we have the score to add value in bc
	add	a,c				;so we add the value we have in c to our actual value
	daa					;then adjust the result with DAA (wich fix BCD result)
	ld	(hl),a				;and store it back
	dec	hl				;point to previous byte (digits 3 and 4)
	ld	a,(hl)				;load its value in a
	adc	a,b				;and add to it both the b value and the carry
						;in case previous addition has crossed the boundary
	daa					;and again we fix the BCD result
	ld	(hl),a				;and store it back
	dec	hl				;point to previous byte (digits 5 and 6)
	ld	a,(hl)				;load its value
	adc	a,0				;our value to add is 2bytes long (so up to 9999 points
						;having 2 digits for each byte) so now we have to add 0
						;and the carry, because all previous sums could have crossed
						;this boundary
	daa					;adjust the BCD result
	ld	(hl),a				;and we do the same with the first byte (mostleft digits)
	dec	hl
	ld	a,(hl)
	adc	a,0
	daa
	ld	(hl),a				;so we set our score. now we will check for highscore
	ld	bc,hiscore			;so point bc to 1st highscore byte
	ld	hl,score			;and hl to 1st score bytes
	ld	a,(bc)				;load first highscore byte content in a
	cp	(hl)				;and compare it with the first score byte content
	jp	c,newrecord			;if content of highscore is lesser than the score one
						;we have a new record
	ret	nz				;else, if it isn't at least the same we surely haven't
						;a new highscore so exit
	inc	bc				;else, if the value is the same we have to check the next
	inc	hl				;bytes contents se, point both hl and bc one byte ahead
	ld	a,(bc)				;and do exactly the same
	cp	(hl)
	jp	c,newrecord
	ret	nz
	inc	bc				;repeat the check again for the next byte, but
	inc	hl				;not for the last one (we can't have values lower than
	ld	a,(bc)				;100 points so there is no point in doing so
	cp	(hl)
	jp	c,newrecord
	ret	nz
newrecord:					;if we are here we have a new game record
	ld	hl,score			;so we simple overwrite the hiscore bytes
	ld	de,hiscore			;with the score ones
	ld	bc,4
	ldir	
	ret

digit:						;this routine print out a digit (don't tell me!)
	and	0fh				;keep only the low nibble
	add	a,"0"				;add to a the asc value of 0 (pointing so to number chars)
	out	(98h),a				;send it out through vdp data port
	ret

gameover:
	call	unhook				;remove current hooked routine from HTIMI
	call	PLY_AKG_STOP			;stop the music
	ld	a,6				;switch to segment 6
	ld	(bank2),a			;where game over misic is
	ld	hl,game_over_music
	xor	a
	call	PLY_AKG_INIT			;and initialize it for arkos player
	ld	hl,mtest_play			;hook mtest_play in HTIMI
	call	hook_routine
	ld	hl,ramspttbl			;point to our sat rem buffer
	ld	(hl),208			;write the magic number on 1st sprite y
	ld	de,01b00h			;point to the vram sat address
	ld	bc,128				;and copy there our sat (with first value as 208)
	call	ldirvm				;magic number 208 removes from screen all the sprites
						;starting from the one we have set at y 208
	ld	hl,death_write			;do some vram writings using bios routines
	ld	de,6507				;to set GAME OVER on screen
	ld	bc,4
	call	ldirvm
	ld	hl,death_write+4
	ld	de,6513
	ld	bc,4
	call	ldirvm
	call	kilbuf				;empty keyboard buffer
	ld	b,50				;wait 50 vblanks
	call	wait
no_fire_no_menu:
	ld	a,(player_input)		;wait until we press fire
	call	gttrig
	jp	z,no_fire_no_menu
ready_to_menu:
	call	unhook				;remove music test routine (wich we have used to play
						;game over music) from the hook
	call	PLY_AKG_STOP			;and stop the music
	ld	hl,Fight_for			;set title screen music
	xor	a
	call	PLY_AKG_INIT
	ld	b,20				;set wait time to 20 vblank
	call	wait
	jp	start				;return to title screen

wait:
	push	af				;we have to use AF and HL registers
	push	hl				;so we save their values
waitfrm:
	ld	a,(intro_is_active)		;this part is here to let some sequence to be
	or	a				;skipped, without waiting the timw we have set
	jr	z,not_intro			;because this code is executed it is mandatory
	ld	a,(skip_tmp)			;set the intro_is_active flag
	or	a				
	jr	z,donotwait
not_intro:
	ld	hl,jiffy			;load in hl jiffy address (jiffy is incremented
						; every 1/50th of sec)
	ld	a,(hl)				;load in reg a content of hl (jiffy value)
waitfrm_loop:
	cp	(hl)				;compare value in a with actual jiffy value
	jr	z,waitfrm_loop			;if it is equal then a 50th/sec isn't passed yet, repeat check
	djnz	waitfrm				;if value is changed then a 50th/sec is passed so decrease b
						;and repeat until it reaches 0
donotwait:
	pop	hl				;restore values
	pop	af				;of used registers
	ret			




; choose a random number in the set [0,127] with uniform distribution
; return: A = random value
rand8:						;this is part of the random number routine
	push	hl				;posted by Artrag on MSX Resource Center forum
	ld      hl,(randSeed)
	add     hl,hl
	sbc     a,a
	and     083h
	xor     l
	ld      l,a
	ld      (randSeed),hl
	pop	hl
	ret



midboss:					;this routine applies damages to the bosses
	ld	a,(damage)			;load in a the damage set
	ld	c,a				;copy it in c
	ld	a,(boss_hp)			;load in a the boss hp left
	sub	c				;and subtract from them the damage
	jr	z,boss_is_dead			;if result is zero
	jr	c,boss_is_dead			;or below zero the boss is dead
	ld	(boss_hp),a			;else store the result
	ret
boss_is_dead:					;if boss is dead
	xor	a				;set its hp as 0 (they can have a different value
	ld	(boss_hp),a			;because damage subtraction could have passed the boundary)
	inc	a				;same as ld a,1 here because a was 0
	ld	(deadboss),a			;set the deadboss flag
	ret	
midboss1:					;here we set midlevel boss parameters before the midlevel
						;boss fight start
	ld	hl,mid_boss_sprites		;first of all we set the address where the boss sprites
	ld	(mid_boss_spt),hl		;definitions are stored
	ld	hl,mid1_eventlist		;and point to its event_list address
	call	midbossprep			;then go to preparation routine and when back here again
	jp	mlloop				;we jump directly into the midlevel loop
midboss2:					;following are the same. see you at "midbossprep:"
	ld	hl,mid_boss_sprites2		;few rows ahead
	ld	(mid_boss_spt),hl
	ld	hl,mid2_eventlist
	call	midbossprep
	jp	mlloop
midboss3:
	ld	hl,mid_boss_sprites3
	ld	(mid_boss_spt),hl
	ld	hl,mid3_eventlist
	call	midbossprep
	jp	mlloop
midboss4:
	ld	hl,mid_boss_sprites4
	ld	(mid_boss_spt),hl
	ld	hl,mid4_eventlist
	call	midbossprep
	ld	a,8
	ld	(speed),a
	jp	mlloop
midboss5:
	ld	hl,mid_boss_sprites5
	ld	(mid_boss_spt),hl
	ld	hl,mid5_eventlist
	call	midbossprep
	jp	mlloop
midbossprep:
	ld	(evlist),hl			;store eventlist address
	ld	a,90				;set boss hp (same quantity for all mid level bosses)
	ld	(boss_hp),a
	xor	a
	ld	(event),a			;reset event number
	ld	(deadboss),a			;and deadboss flag
	inc	a
	ld	(bossbattle),a			;and set bossbattle as active
load_midboss_sprites:
	ld	c,98h				;vdp data port in c
mbvdpbusy:
	ld	hl,(mid_boss_spt)		;mid level bosses sprite definition address set as source
	ld	a,(vdp_busy)			;wait for vdp to be free
	dec	a
	jp	z,mbvdpbusy
	xor	a				;ld a,0
	ld	b,a				;ld b,0 so 256bytes
	di
	out	(99h),a				;send vram address destination low byte
	ld	a,7ah				;3ah + 64
	ei
	out	(99h),a				;send vram address destination hibyte +64
mshowloop:
	outi					;send 256 bytes (8 16*16 sprites definitions)
	jp	nz,mshowloop
	xor	a
	ld	(vdp_busy),a			;free the vdp
	ld	a,20				;set the acceleration counter
	ld	(speedcount),a
	ld	a,2				;set the speed different from default so the scrolling
	ld	(speed),a			;routine will notice it and start to accelerate
	ret


strtspttbl:					;starting sat 
	db	172,120,00,14			;sprite0	player1
	db	172,120,04,0			;sprite1	player1
	db	-1,255,00,0			;sprite2	mask sprite
	db	-1,255,00,0			;sprite3	mask sprite
	db	-1,255,00,0			;sprite4	mask sprite
	db	-1,255,00,0			;sprite5	mask sprite
	db	209,0,8,9			;sprite6	shot1
	db	209,0,12,9			;sprite7	shot diag sx
	db	209,0,16,9			;sprite8	shot diag dx
	db	209,0,44,9			;sprite9	pod
	db	209,0,32,9			;sprite10	shot 2 
	db	209,0,32,9			;sprite11	shot 3
	db	209,0,52,0			;sprite12
	db	209,0,52,0			;sprite13
	db	209,0,52,0			;sprite14
	db	209,0,52,0			;sprite15	
	db	209,0,52,0			;sprite16	
	db	209,0,52,0			;sprite17	
	db	209,0,52,0			;sprite18	
	db	209,0,52,0			;sprite19	
	db	209,0,52,0			;sprite20	
	db	209,0,52,0			;sprite21	
	db	209,0,52,0			;sprite22	
	db	209,0,52,0			;sprite23	
	db	209,0,52,0			;sprite24	
	db	209,0,52,0			;sprite25	
	db	209,0,60,15			;sprite26	enemy bullet
	db	209,0,60,15			;sprite27	enemy bullet
	db	209,0,60,15			;sprite28	enemy bullet
	db	209,0,60,15			;sprite29	enemy bullet
	db	209,0,60,15			;sprite30	enemy bullet
	db	209,0,60,15			;sprite31	enemy bullet
movpat1:					;from here on we have the movement patterns
						;stored in rows wich have dy,dx,dshape,dcol
						;pattern number: 1
	db	2,-1,0,0
	db	2,-1,0,0
	db	2,-1,8,0
	db	2,-1,0,0
	db	2,-1,0,0
	db	2,-1,8,0
	db	2,-1,0,0
	db	2,-1,0,0
	db	2,-1,8,0
	db	2,-1,0,0
	db	2,-1,0,0
	db	2,-1,-24,0
	db	2,-1,0,0
	db	2,-1,0,0
	db	2,-1,8,0
	db	2,-1,0,0
	db	2,-1,0,0
	db	2,-1,8,0
	db	2,-1,0,0
	db	2,-1,0,0
	db	2,-1,8,0
	db	1,-1,0,0
	db	1,-1,0,0
	db	1,-1,-24,0
movpat2:
						;pattern number: 2
	db	2,1,0,0
	db	2,1,0,0
	db	2,1,0,0
	db	2,1,8,0
	db	1,2,0,0
	db	1,2,0,0
	db	1,2,0,0
	db	1,2,8,0
	db	1,3,0,0
	db	1,3,0,0
	db	1,3,0,0
	db	1,3,-16,0
	db	1,2,0,0
	db	1,2,0,0
	db	1,2,0,0
	db	1,2,8,0
	db	2,1,0,0
	db	2,1,0,0
	db	2,1,0,0
	db	2,1,8,0
	db	3,0,0,0
	db	3,0,0,0
	db	3,0,0,0
	db	3,0,-16,0
movpat3:
						;pattern number: 3
	db	-2,+1,0,0
	db	-2,+1,0,0
	db	-2,+1,0,0
	db	-2,+1,8,0
	db	-2,+1,0,0
	db	-2,+1,0,0
	db	-2,+1,0,0
	db	-2,+1,8,0
	db	-2,+1,0,0
	db	-2,+1,0,0
	db	-2,+1,0,0
	db	-2,+1,-16,0
	db	-2,-1,0,0
	db	-2,-1,0,0
	db	-2,-1,0,0
	db	-2,-1,8,0
	db	-2,-1,0,0
	db	-2,-1,0,0
	db	-2,-1,0,0
	db	-2,-1,8,0
	db	-2,-1,0,0
	db	-2,-1,0,0
	db	-2,-1,0,0
	db	-2,-1,-16,0
movpat4:
						;pattern number: 4
	db	1,-1,0,0
	db	1,-1,0,0
	db	1,-1,8,0
	db	1,-1,0,0
	db	1,-2,0,0
	db	1,-2,8,0
	db	1,-2,0,0
	db	1,-2,0,0
	db	1,-3,8,0
	db	1,-3,0,0
	db	1,-3,0,0
	db	1,-3,-24,0
	db	1,-3,0,0
	db	1,-3,0,0
	db	1,-3,8,0
	db	1,-3,0,0
	db	1,-2,0,0
	db	1,-2,8,0
	db	1,-2,0,0
	db	1,-2,0,0
	db	1,-1,8,0
	db	1,-1,0,0
	db	1,-1,0,0
	db	1,-1,-24,0
movpat5:					;power up globe pattern
						;pattern number: 5
	db	1,0,0,0
	db	1,0,0,0
	db	1,0,0,0
	db	1,0,0,0
	db	1,0,0,0
	db	1,0,0,0
	db	1,0,0,0
	db	1,0,0,0
	db	1,0,0,0
	db	1,0,0,0
	db	1,0,0,0
	db	1,0,0,3
	db	1,0,0,0
	db	1,0,0,0
	db	1,0,0,0
	db	1,0,0,0
	db	1,0,0,0
	db	1,0,0,0
	db	1,0,0,0
	db	1,0,0,0
	db	1,0,0,0
	db	1,0,0,0
	db	1,0,0,0
	db	1,0,0,-3
movpat6:
						;pattern number: 6
	db	2,0,0,0
	db	2,0,0,0
	db	2,0,0,0
	db	2,0,0,0
	db	2,0,0,0
	db	2,0,0,0
	db	2,0,0,0
	db	2,0,8,0
	db	2,0,0,0
	db	2,0,0,0
	db	2,0,0,0
	db	2,0,0,0
	db	2,0,0,0
	db	2,0,0,0
	db	2,0,0,0
	db	2,0,8,0
	db	2,0,0,0
	db	2,0,0,0
	db	2,0,0,0
	db	2,0,0,0
	db	2,0,0,0
	db	2,0,0,0
	db	2,0,0,0
	db	2,0,-16,0
explosion:
						;pattern number: 7
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,4,-1
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,4,-1
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,4,-1
	db	0,0,0,220
movpat8:
						;pattern number: 8
	db	2,1,0,0
	db	2,1,0,0
	db	2,1,0,0
	db	2,1,8,0
	db	2,1,0,0
	db	2,1,0,0
	db	2,1,0,0
	db	2,1,8,0
	db	2,1,0,0
	db	2,1,0,0
	db	2,1,0,0
	db	2,1,-16,0
	db	2,1,0,0
	db	2,1,0,0
	db	2,1,0,0
	db	2,1,8,0
	db	2,1,0,0
	db	2,1,0,0
	db	2,1,0,0
	db	2,1,8,0
	db	2,1,0,0
	db	2,1,0,0
	db	2,1,0,0
	db	2,1,-16,0
podpat:						;this is the orbital pod pattern. it has no number	
	db	4,-10
	db	-2,-9
	db	-6,-6
	db	-9,-1
	db	-10,5
	db	-9,11
	db	-6,16
	db	-2,19
	db	4,20
	db	10,19
	db	16,16
	db	19,11
	db	20,5
	db	19,-1
	db	16,-6
	db	11,-9

midpat2:
						;pattern number: 9
	db	0,8,0,0
	db	1,8,0,0
	db	1,7,0,0
	db	2,7,0,0	
	db	2,6,0,0
	db	2,7,0,0
	db	2,6,0,0
	db	3,6,0,0
	db	2,4,0,0
	db	3,5,0,0
	db	2,4,0,0
	db	2,5,0,0
	db	3,5,0,0
	db	3,6,0,0
	db	3,5,0,0
	db	3,5,0,0
	db	4,5,0,0
	db	7,3,0,0
	db	4,2,0,0
	db	3,2,0,0
	db	3,1,0,0
	db	3,1,0,0
	db	3,1,0,0
	db	3,1,0,0
midpat3:
						;pattern number: 10
	db	5,0,0,0
	db	4,0,0,0
	db	4,-1,0,0
	db	4,0,0,0
	db	4,-1,0,0
	db	5,-2,0,0
	db	8,-3,0,0
	db	6,-5,0,0
	db	4,-5,0,0
	db	4,-5,0,0
	db	5,-5,0,0
	db	4,-5,0,0
	db	2,-5,0,0
	db	2,-4,0,0
	db	3,-5,0,0
	db	2,-4,0,0
	db	3,-6,0,0
	db	2,-6,0,0
	db	2,-6,0,0
	db	2,-6,0,0
	db	2,-7,0,0
	db	1,-6,0,0
	db	1,-7,0,0
	db	0,-7,0,0
midpat4:
						;pattern number: 11
	db	0,-8,0,0
	db	-1,-8,0,0
	db	-1,-7,0,0
	db	-2,-8,0,0
	db	-2,-6,0,0
	db	-2,-7,0,0
	db	-2,-6,0,0
	db	-3,-6,0,0
	db	-2,-4,0,0
	db	-3,-5,0,0
	db	-2,-4,0,0
	db	-2,-5,0,0
	db	-4,-5,0,0
	db	-4,-6,0,0
	db	-4,-5,0,0
	db	-4,-5,0,0
	db	-5,-5,0,0
	db	-7,-4,0,0
	db	-5,-2,0,0
	db	-5,-2,0,0
	db	-5,-1,0,0
	db	-5,-1,0,0
	db	-5,-1,0,0
	db	-4,-1,0,0
midpat5:
						;pattern number: 12
	db	-5,0,0,0
	db	-4,0,0,0
	db	-4,1,0,0
	db	-4,1,0,0
	db	-4,2,0,0
	db	-5,3,0,0
	db	-7,4,0,0
	db	-5,5,0,0
	db	-4,5,0,0
	db	-4,5,0,0
	db	-4,6,0,0
	db	-3,5,0,0
	db	-1,5,0,0
	db	-1,5,0,0
	db	-2,5,0,0
	db	-1,4,0,0
	db	-2,6,0,0
	db	-1,6,0,0
	db	-1,7,0,0
	db	-1,6,0,0
	db	-1,8,0,0
	db	0,7,0,0
	db	0,8,0,0
	db	0,8,0,0
midpat6:
						;pattern number: 13
	db	4,0,0,0
	db	4,0,0,0
	db	4,0,0,0
	db	4,0,0,0
	db	4,0,0,0
	db	4,0,0,0
	db	4,0,0,0
	db	4,0,0,0
	db	4,0,0,0
	db	4,0,0,0
	db	4,0,0,0
	db	4,0,0,0
	db	4,0,0,0
	db	4,0,0,0
	db	4,0,0,0
	db	4,0,0,0
	db	4,0,0,0
	db	4,0,0,0
	db	4,0,0,0
	db	4,0,0,0
	db	4,0,0,0
	db	4,0,0,0
	db	4,0,0,0
	db	4,0,0,0
midpat7:
						;pattern number: 14
	db	-4,0,0,0
	db	-4,0,0,0
	db	-4,0,0,0
	db	-4,0,0,0
	db	-4,0,0,0
	db	-4,0,0,0
	db	-4,0,0,0
	db	-4,0,0,0
	db	-4,0,0,0
	db	-4,0,0,0
	db	-4,0,0,0
	db	-4,0,0,0
	db	-4,0,0,0
	db	-4,0,0,0
	db	-4,0,0,0
	db	-4,0,0,0
	db	-4,0,0,0
	db	-4,0,0,0
	db	-4,0,0,0
	db	-4,0,0,0
	db	-4,0,0,0
	db	-4,0,0,0
	db	-4,0,0,0
	db	-4,0,0,0
midpat8:
						;pattern number: 15
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
	db	0,0,0,0
endbossleft:
						;pattern number: 16
	db	0,-4,0,0
	db	0,-4,0,0
	db	0,-4,0,0
	db	0,-4,0,0
	db	0,-4,0,0
	db	0,-4,0,0
	db	0,-4,0,0
	db	0,-4,0,0
	db	0,-4,0,0
	db	0,-4,0,0
	db	0,-4,0,0
	db	0,-4,0,0
	db	0,-4,0,0
	db	0,-4,0,0
	db	0,-4,0,0
	db	0,-4,0,0
	db	0,-4,0,0
	db	0,-4,0,0
	db	0,-4,0,0
	db	0,-4,0,0
	db	0,-4,0,0
	db	0,-4,0,0
	db	0,-4,0,0
	db	0,-4,0,0
endbossright:
						;pattern number: 17
	db	0,4,0,0
	db	0,4,0,0
	db	0,4,0,0
	db	0,4,0,0
	db	0,4,0,0
	db	0,4,0,0
	db	0,4,0,0
	db	0,4,0,0
	db	0,4,0,0
	db	0,4,0,0
	db	0,4,0,0
	db	0,4,0,0
	db	0,4,0,0
	db	0,4,0,0
	db	0,4,0,0
	db	0,4,0,0
	db	0,4,0,0
	db	0,4,0,0
	db	0,4,0,0
	db	0,4,0,0
	db	0,4,0,0
	db	0,4,0,0
	db	0,4,0,0
	db	0,4,0,0

anim6:
						;pattern number: 18
	db	3,1,0,0
	db	3,1,0,0
	db	3,1,0,0
	db	3,1,8,0
	db	3,1,0,0
	db	3,1,0,0
	db	3,1,0,0
	db	3,1,8,0
	db	2,1,0,0
	db	2,1,0,0
	db	2,1,0,0
	db	2,1,8,0
	db	2,2,0,0
	db	2,2,0,0
	db	2,2,0,0
	db	2,2,8,0
	db	1,2,0,0
	db	1,2,0,0
	db	1,2,0,0
	db	1,2,8,0
	db	1,2,0,0
	db	1,2,0,0
	db	1,2,0,0
	db	1,2,-40,0
no_event_list:
	db	255

arkos:
	include "player.asm"			;this code is distribuited with arkos tracker
						;and belong to Julien Nevo so I won't put it here

keyword_scan:					;this routine is hooked in the ISR
						;originally NYYRIKKI had show me how to do this
						;but I rewrote it (in a worst way) because I was
						;(well maybe still I am) a beginner and I wantyed
						;to understand all the code and not simply use
						;other people snipets. So I used only what I have
						;understood at that time and added other things
						;needed for the whole hooked routine during title screen

	push	af				;saving AF registers
	ld	a,(blink_tmp)			;in title screen the writing "press fire" has to blink
	inc	a				;so this counter will increase each vblank
	cp	25				;after about half sec (pal) or a bit less (ntsc)
	call	z,blinkstate			;it will change the blink state 
	ld	(blink_tmp),a 			;the counter is updated 
	ld	a,(tmp)				;another counter wich increase the scroller
	inc	a				;position every 5 vblanks
	cp	5
	call	z,scroller_inc
	ld	(tmp),a
	ld	a,6				;skip special keys matrix (6,7 and 8)to avoid slow down by
	call	snsmat				;pressing a lot of keys simultaniously
	inc	a				;(yep, someone thought to be a smart guy and did so
	jp	nz,simple_exit			;looking for bug...)
	ld	a,7
	call	snsmat
	inc	a
	jp	nz,simple_exit
	ld	a,8
	call	snsmat
	inc	a
	jp	nz,simple_exit
scan_valid:
	call	chsns				;bios routine that check keyboard buffer
	jp	z,simple_exit			;if buffer is empty exit from this routine
	call	chget				;bios routine that get a char from keyboard buffer
	cp	0dh             		;if RETURN key is pressed 
	jp	z,check_commands		;then go check valid commands
	cp	"a"				;else check that only a-z ascii chars
        jp	c,no_cmd			;were submitted
	cp	"z"+1				;else exit by no_cmd routine
	jp	nc,no_cmd			;that erase all submitted chars
	ld	hl,buffer_start+16		;setting end of buffer
	ld	de,(buffer_pointer)		;setting the temp pointer to our buffer
	ld	(de),a				;write the char we have in A reg from chget
						;(buffer_pointer was previously set equal to buffer_start)
	sbc	hl,de				;check if we have reached end of buffer
        jp	z,no_cmd			;if so the cmd is invalid and exit erasing keyword
	inc	de				;increment buffer_pointer by one byte
	ld	(buffer_pointer),de
simple_exit:					;and exit from this routine (will be called every 
						;frame from ISR)
	jp	mtest_play_from_keywordscan	
	pop	af
	ret


blinkstate:
	ld	a,(blink)
	xor	1
	ld	(blink),a
	xor	a
	ret

scroller_inc:
	ld	a,(scroller_pos)
	inc	a
	cp	96
	call	z,scroller_rst
	ld	(scroller_pos),a
scroller_rst:
	xor	a
	ret

check_commands:
	ld	hl,cmds      			;Table with valid commands
check_buffer:
	ld	de,buffer_start			;you know what this is...
check_loop:
	ld	a,(de)				;load buffer value in A
	or	a				;if there isn't a char
	jp	z,no_cmd			;exit from this routine and erase keyword
	cp	(hl)				;else compare it with table of commands content
	jp	nz,to_next_cmd			;if it isn't equal check next command
	inc	hl				;else increment position of commands table pointer
	inc	de				;and buffer pointer
	ld	a,(hl)				;check if we reached end of command
	or	a				;marker
	jp	nz,check_loop			;no end of instruction name, go checking
	inc	hl				;else increment and check in commands table
	ld	a,(hl)				;number of commands
	cp	1
	call	z,ship_select			;and call appropriate routine
	cp	2
	call	z,music_test_routine
	cp	3
	call	z,enable_cheats
no_cmd:
	ld	hl,buffer_start
	ld	(buffer_pointer),hl
	ld	b,16
erase_word:
	ld	(hl),0
	inc	hl
	djnz	erase_word
	jp	simple_exit

to_next_cmd:
	inc	hl
	ld	a,(hl)
	or	a
	jp	nz,to_next_cmd
	inc	hl
	inc	hl
	ld	a,(hl)
	inc	a
	jp	z,no_cmd
	jp	check_buffer

cmds:
	db	"wannafly",0,1
	db	"playforme",0,2
	db	"easywin",0,3
	db	255               ; No more commands

enable_cheats:
	ld	a,1
	ld	(cheat),a
	ret

active_cheats:
	ld	hl,cheat_write
	ld	de,6529
	ld	bc,30
	jp	ldirvm
	
cheat_write:
	db	93," SECRET 3 ",93," CHEATS ARE ACTIVE"

music_test_routine:
	call	unhook				;remove current hooked routine
	call	PLY_AKG_STOP			;stop current music
	ld	hl,instructions			;point to instructions' strings
	ld	de,6656				;set vram start address for writings
	ld	bc,128				;nr of bytes to copy (4 rows)
	call	ldirvm				;write using bios routine
	ld	hl,6656+128			;point to the area just below our writings
	ld	bc,32				;bytes involved
	call	del_vrm				;delete 32 bytes

	ld	a,1				;set 1st song as default
	jr	mtest_set			;and go to set it
mtest_curs:
	xor	a				;use arrow keys
	call	gtstck				;and check their status
	cp	7
	jr	z,mtest_prev			;if left jump to
	cp	3
	jr	z,mtest_next			;if right jump to
	cp	1
	jr	z,mtest_exit			;if up jump to
mtest_control:
	xor	a				;set spacebar
	call	gttrig				;and check its status
	jp	nz,mtest_selected		;if pressed jump to
	jr	mtest_curs			;else check again arrow keys
mtest_exit:
	call	unhook				;just about to leave music test, remove hooked routine
	call	PLY_AKG_STOP			;stop current music
	ld	a,6				;switch to segment6
	ld	(bank2),a			
	ld	hl,Fight_for			;and point to title screen music
	xor	a
	call	PLY_AKG_INIT			;set it as current song
	ld	hl,keyword_scan
	call	hook_routine			;hook title screen hooked routine
	jp	main_screen			;and go to title screen

mtest_prev:
	call	unhook				;remove hooked routine
	call	PLY_AKG_STOP			;stop current music
	ld	b,20				
	call	wait				;wait 20 vblanks before let another move
	ld	a,(mtest)			;decrease mtest value
	dec	a
	and	7				;between 0-7
	jr	mtest_set			;jump to
mtest_next:
	call	unhook				;remove hooked routine
	call	PLY_AKG_STOP			;stop current music
	ld	b,20				;wait 20 vblanks
	call	wait				;before let another move
	ld	a,(mtest)			;increase mtest value
	inc	a
	and	7				;between 0-7
mtest_set:
	ld	(mtest),a			;check current song and jump to its settings
	cp	1
	jr	z,mtest1
	cp	2
	jr	z,mtest2
	cp	3
	jr	z,mtest3
	cp	4
	jr	z,mtest4
	cp	5
	jr	z,mtest5
	cp	6
	jr	z,mtest6
	cp	7
	jp	z,mtest7

mtest0:
	ld	a,6				;switch to the segment where the music is stored
	ld	(bank2),a
	ld	hl,song0			;point to the music title string
	call	set_title			;jump to write song title on screen
	ld	hl,prologue_music		;point to the music selected
	jr	mtest_init			;jump to initialization
mtest1:						;the following are the same
	ld	(bank2),a
	ld	hl,song1
	call	set_title
	ld	hl,level1_music
	jr	mtest_init
mtest2:
	ld	(bank2),a
	ld	hl,song2
	call	set_title
	ld	hl,level2_music
	jr	mtest_init
mtest3:
	ld	(bank2),a
	ld	hl,song3
	call	set_title
	ld	hl,level3_music
	jr	mtest_init
mtest4:
	ld	(bank2),a
	ld	hl,song4
	call	set_title
	ld	hl,level4_music	
	jr	mtest_init
mtest5:
	ld	(bank2),a
	ld	hl,song5
	call	set_title
	ld	hl,level5_music	
	jr	mtest_init
mtest6:
	ld	a,6
	ld	(bank2),a
	ld	hl,song6
	call	set_title
	ld	hl,epilogue_music
	jr	mtest_init
mtest7:
	dec	a
	ld	(bank2),a
	ld	hl,song7
	call	set_title
	ld	hl,game_over_music
	jr	mtest_init
mtest_init:
	xor	a				;this set subsong
	call	PLY_AKG_INIT			;initialize song on arkos player
	jp	mtest_control			;repeat (until spacebar is pressed)

mtest_selected:
	ld	hl,mtest_play			;hook following routine in HTIMI
	call	hook_routine
	jp	mtest_curs			;in the meanwhile we check controls
						;for new song select or exit

mtest_play:
	push	af				;you know, mandatory when hooked in bios isr
mtest_play_from_keywordscan:			;when called from keywordscan we have already PUSHed af
	ld	a,(freq)			;check if pal or ntsc machine
	or	a				;if pal skip the ntsc counter (see ntsc counter explanation
	jp	nz,mtest_not_ntsc		;in "putsprite:" routine)
	ld	a,(frame_count)
	inc	a
	cp	6
	jp	z,do_not_play			;yep, it jumps to the code we have written for ingame isr
	ld	(frame_count),a			;routine (why write it again and waste precious bytes?)
mtest_not_ntsc:
	call	PLY_AKG_PLAY			;call music player
	ld	a,(intro_is_active)		;chek intro active flag
	or	a				;exit if 0
	jr	z,exit_play
	xor	a
	ld	(player_input),a		;check spacebar
	call	gttrig
	jr	nz,intro_skip			;if pressed jump to intro skip
	ld	a,1
	ld	(player_input),a
	call	gttrig
	jr	nz,intro_skip			;same for joystick1 button1
	ld	a,2
prol_skip:
	ld	(player_input),a
	call	gttrig
	jr	nz,intro_skip			;same for joystick2 button1
exit_play:
	pop	af				;resstore vdp status reg value
	ret					;exit from isr
intro_skip:
	xor	a
	ld	(skip_tmp),a			;reset skip_tmp variable so now all wait routine will
						;be ignored
	pop	af				;restore vdp status register value
	ret					;exit from isr


set_title:
	ld	de,6822				;lazyness, lazyness everywhere! set vram start address
	ld	bc,20				;set how many byte to copy
	jp	ldirvm				;copy song title to vram
	

cls:
	ld	hl,6144				;name table start
	ld	bc,768				;name table lenght
del_vrm:
	ld	a,32				;space ascii value
	jp	filvrm				;fill name table with spaces
	

hook_routine:					;this routine put routines wich address is pointed by hl
						;in HTIMI hook
	ld	a,l
	ld	(hook+1),a			;first we put low byte of routine address
	ld	a,h
	ld	(hook+2),a			;then hi byte
	ld	a,0cdh				;opcode for call
	ld	(hook),a			;last in the first byte of hook we put the call opcode
	ret
unhook:						;to unhook a routine we overwrite the first byte
						;of the hook bytes with the ret opcode
	ld	a,0c9h				;opcode for RET
	ld	(hook),a
	ret

unroll:						;this routine unrolls ldir instruction in many ldi
						;the bytes to move have to be 16multiple else it will
						;be necessary to jump in the right position in the middle
						;of some ldi instruction
						;the routine is repeated until bc (where lenght to move
						;is stored) become 0, setting pe flag
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	jp	pe,unroll
	ret

instructions:
	db	"    ",93,"SECRET 1",93,"    MUSIC TEST    "
	db	"LEFT",96,"RIGHT CURSORS ",95," SELECT SONG"
	db	"SPACE BAR ",95," PLAY SONG           "
	db	"CURSOR UP ",95," RETURN TO MAIN MENU "

ship_menu:
	db	"    ",93,"SECRET 2",93,"  SHIP SELECTION  "
	db	"                                "
	db	"LEFT",96,"RIGHT CURSORS ",95," SELECT SHIP"
	db	"SPACE BAR ",95," CONFIRM AND EXIT    "

song_titles:
song0:
	db	"      PROLOGUE      "
song1:
	db	"   RISE OF HUMANS   "
song2:
	db	"    ZERO GRAVITY    "
song3:
	db	"LUNAR CONFRONTATION "
song4:
	db	" INTO THE WORMHOLE  "
song5:
	db	" DEATH TO BEZQARRAT "
song6:
	db	"      EPILOGUE      "
song7:
	db	"  NO MORE FREEDOM   "

sprite_pos:					;set sat table at the start of a new level
	ld	hl,strtspttbl			;copy a fixed sat table
	ld	de,ramspttbl			;to our sat ram buffer
	ldir
	ld	hl,ramspttbl+7			;then set the second sprite of player starship color
	ld	a,(pl_col2)			;accordingly to the selected ship
	ld	(hl),a
	ld	l,0				;set source to ramspttbl (our sat ram buffer) as source
	ld	de,01b00h			;set vram sat address as destinations
	ld	bc,128				;bytes to move
	jp	ldirvm				;copy sat ram buffer to vram sat
						;jp is used instead call, so when ldirvm is ended, instead
						;of jumping back here, it will return where THIS routine
						;was called from

main_scroller:					;this routine print a 32 byte string at the screen top
	ld	hl,scroller			;modifying the source start address it does an easy scroller
	ld	a,(scroller_pos)		
	ld	d,0
	ld	e,a
	add	hl,de
	ld	de,6144
	ld	bc,32
	jp	ldirvm
	

SoundFX:
	include "Sfx.asm"

redefine_patterns:				;at this point it is very easy to understand
	ld	de,8				;only a series of data copying from rom to vram
	ld	c,98h				
	xor	a
	di
	out	(99h),a
	ld	a,64
	ei
	out	(99h),a
	call	write_data
;	xor	a				;returning from write_data routine reg a has 0 value yet
	di
	out	(99h),a
	ld	a,8+64
	ei
	out	(99h),a
	call	write_data
;	xor	a
	di
	out	(99h),a
	ld	a,16+64
	ei
	out	(99h),a
	jp	write_data
	

redefine_colors:
	ld	de,8
	ld	c,98h
	xor	a
	di
	out	(99h),a
	ld	a,32+64
	ei
	out	(99h),a
	call	write_data
;	xor	a
	di
	out	(99h),a
	ld	a,40+64
	ei
	out	(99h),a
	call	write_data
;	xor	a
	di
	out	(99h),a
	ld	a,48+64
	ei
	out	(99h),a
	jp	write_data
	

write_data:
	push	hl
	ld	b,8
	ld	a,30
	
write_tile_data:
	outi
	jp	nz,write_tile_data
	add	hl,de
	ld	b,8
	dec	a
	jp	nz,write_tile_data
	pop	hl
	ret

boss_shape_addresses:
	dw	240,1264,2288,3312,4336,5360
	dw	464,1488,2512,3536,4560,5584
	dw	784,1808,2832,3856,4880,5904

	dw	728,1752,2776,3800,4824,5848
boss_color_addresses:
	dw	8432,9456,10480,11504,12528,13552
	dw	8656,9680,10704,11728,12752,13776
	dw	8976,10000,11024,12048,13072,14096

	dw	8920,9944,10968,11992,13016,14040
data_lenght
	db	144,56,240,8

boss_redefine:					;this redefine bosses' shapes
	ld	iy,data_lenght
	ld	e,4
block_repeat:
	ld	c,98h
	ld	d,6
set_address:
	push	hl
	ld	a,(ix+0)
	di
	out	(99h),a
	ld	a,(ix+1)
	add	a,64
	ei
	out	(99h),a
	ld	b,(iy+0)
write_boss_values:
	outi
	jp	nz,write_boss_values
	inc	ix
	inc	ix
	pop	hl
	dec	d
	jp	nz,set_address
;	ld	b,0				;b has zero value yet because of previous outi instruction
	ld	c,(iy+0)
	add	hl,bc
	inc	iy
	dec	e
	jp	nz,block_repeat
	ret

unpack:
	include "unpack.asm"			;this code is distribuite with "pletter"
						;it isn't mine (I've simply adapted macros for Glass)
						;so I won't share it (but you can found it downloading
						;pletter)
fade_music:
	ld	a,(volume)			;read volume parameter (code added to the replayer, not
	ld	(PLY_AKG_PSGREG8),a		;present in original one) and set on PSG regs data before
	ld	(PLY_AKG_PSGREG9_10_INSTR),a	;they are outputted to the PSG
	ld	(PLY_AKG_PSGREG9_10_INSTR+1),a	;(so dynamically change volume)
	ret

	code_end:				;yep, the end. now last only end level bosses routines
						;you'll fine them in their segments, after levels' data
	DS	-$ & 3FFFh			;this pad/fill space to the next 16KB boundary


	org	8000h
;level1 data
ramchr1_1:
		;patterns
	db	008h,040h,004h,020h,010h,042h,084h,010h	;00
	db	008h,040h,004h,020h,010h,042h,084h,010h	;01
	db	000h,020h,004h,000h,048h,000h,020h,000h	;02
	db	080h,0e0h,0e0h,0B8h,0Eeh,0Feh,0Feh,0F7h	;03
	db	080h,0e0h,0e0h,0B8h,0Eeh,0Feh,0Feh,0F7h	;04
	db	008h,040h,004h,020h,010h,042h,084h,010h	;05
	db	007h,00Dh,007h,007h,00Fh,013h,007h,01Fh	;06
	db	007h,00Dh,007h,007h,00Fh,013h,007h,01Fh	;07
	db	080h,0e0h,0e0h,0B8h,0Eeh,0Feh,0Feh,0F7h	;08
	db	007h,00Dh,007h,007h,00Fh,013h,007h,01Fh	;09
	db	000h,020h,004h,000h,048h,000h,020h,000h	;10
	db	001h,003h,003h,005h,007h,0bFh,0fFh,0eFh	;11
	db	001h,003h,003h,005h,007h,0bFh,0fFh,0eFh	;12
	db	008h,040h,004h,020h,010h,042h,084h,010h	;13
	db	0E0h,0B0h,0E0h,0E0h,0F0h,0C8h,0E0h,0F8h	;14
	db	0E0h,0B0h,0E0h,0E0h,0F0h,0C8h,0E0h,0F8h	;15
	db	001h,003h,003h,005h,007h,0bFh,0fFh,0eFh	;16
	db	0E0h,0B0h,0E0h,0E0h,0F0h,0C8h,0E0h,0F8h	;17
	db	000h,020h,004h,000h,048h,000h,020h,000h	;18
	db	000h,020h,004h,000h,048h,000h,020h,000h	;19
	db	008h,040h,004h,020h,010h,042h,084h,010h	;20
	db	0F4h,0Fah,0F0h,0E0h,080h,0C0h,0C0h,080h	;21
	db	0F4h,0Fah,0F0h,0E0h,080h,0C0h,0C0h,080h	;22
	db	000h,020h,004h,000h,048h,000h,020h,000h	;23
	db	008h,040h,004h,020h,010h,042h,084h,010h	;24
	db	07Fh,01Fh,02Fh,017h,005h,003h,003h,001h	;25
	db	07Fh,01Fh,02Fh,017h,005h,003h,003h,001h	;26
	db	000h,020h,004h,000h,048h,000h,020h,000h	;27
	db	0E0h,0B0h,0E0h,0E0h,0F0h,0C8h,0E0h,0F8h	;28
	db	07Fh,01Fh,02Fh,017h,005h,003h,003h,001h	;29	
	db	007h,00Dh,007h,007h,00Fh,013h,007h,01Fh	;30
	db	0F4h,0Fah,0F0h,0E0h,080h,0C0h,0C0h,080h	;31
	db	008h,040h,002h,000h,020h,008h,080h,000h	;32
	db	008h,040h,002h,000h,020h,008h,080h,000h	;33
	db	008h,040h,004h,020h,010h,042h,084h,010h	;34
	db	008h,040h,002h,000h,020h,008h,080h,000h	;35
	db	008h,040h,002h,000h,020h,008h,080h,000h	;36
	db	008h,040h,004h,020h,010h,042h,084h,010h	;37
	db	008h,040h,004h,020h,010h,042h,084h,010h	;38
	db	000h,000h,03Fh,0FFh,0EEh,0FFh,0BBh,0FFh	;39
	db	000h,000h,03Fh,0FFh,0EEh,0FFh,0BBh,0FFh	;40
	db	0FFh,0FFh,0FFh,0FFh,0FFh,000h,000h,000h	;41
	db	0FFh,0FFh,0FFh,0FFh,0FFh,000h,000h,000h	;42
	db	008h,040h,004h,020h,010h,042h,084h,010h	;43
	db	008h,040h,004h,020h,010h,042h,084h,010h	;44
	db	000h,000h,000h,0F0h,0F0h,0F0h,0F0h,0F0h	;45
	db	000h,000h,000h,0F0h,0F0h,0F0h,0F0h,0F0h	;46
	db	0F0h,0F0h,0F0h,0F0h,0F0h,000h,000h,000h	;47
	db	0F0h,0F0h,0F0h,0F0h,0F0h,000h,000h,000h	;48
	db	008h,040h,004h,020h,010h,042h,084h,010h	;49
	db	001h,020h,004h,020h,048h,002h,020h,000h	;50
	db	001h,020h,004h,020h,048h,002h,020h,000h	;51
	db	000h,020h,004h,000h,048h,000h,020h,000h	;52
	db	001h,020h,004h,020h,048h,002h,020h,000h	;53
	db	001h,020h,004h,020h,048h,002h,020h,000h	;54
	db	000h,020h,004h,000h,048h,000h,020h,000h	;55
	db	008h,040h,004h,020h,010h,042h,084h,010h	;56
	db	007h,00Dh,007h,007h,00Fh,013h,007h,01Fh	;57
	db	008h,040h,004h,020h,010h,042h,084h,010h	;58
	db	0E0h,0B0h,0E0h,0E0h,0F0h,0C8h,0E0h,0F8h	;59
ramclr1_1:
		;colors
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;00
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;01
	db	044h,054h,054h,074h,054h,044h,054h,044h	;02
	db	024h,024h,024h,024h,024h,024h,024h,024h	;03
	db	024h,024h,024h,024h,024h,024h,024h,024h	;04
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;05
	db	042h,042h,042h,042h,042h,042h,042h,042h	;06
	db	042h,042h,042h,042h,042h,042h,042h,042h	;07
	db	024h,024h,024h,024h,024h,024h,024h,024h	;08
	db	042h,042h,042h,042h,042h,042h,042h,042h	;09
	db	044h,054h,054h,074h,054h,044h,054h,044h	;10
	db	024h,024h,024h,024h,024h,024h,024h,024h	;11
	db	024h,024h,024h,024h,024h,024h,024h,024h	;12
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;13
	db	042h,042h,042h,042h,042h,042h,042h,042h	;14
	db	042h,042h,042h,042h,042h,042h,042h,042h	;15
	db	024h,024h,024h,024h,024h,024h,024h,024h	;16
	db	042h,042h,042h,042h,042h,042h,042h,042h	;17
	db	044h,054h,054h,074h,054h,044h,054h,044h	;18
	db	044h,054h,054h,074h,054h,044h,054h,044h	;19
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;20
	db	024h,024h,024h,024h,024h,024h,024h,024h	;21
	db	024h,024h,024h,024h,024h,024h,024h,024h	;22
	db	044h,054h,054h,074h,054h,044h,054h,044h	;23
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;24
	db	024h,024h,024h,024h,024h,024h,024h,024h	;25
	db	024h,024h,024h,024h,024h,024h,024h,024h	;26
	db	044h,054h,054h,074h,054h,044h,054h,044h	;27
	db	042h,042h,042h,042h,042h,042h,042h,042h	;28
	db	024h,024h,024h,024h,024h,024h,024h,024h	;29
	db	042h,042h,042h,042h,042h,042h,042h,042h	;30
	db	024h,024h,024h,024h,024h,024h,024h,024h	;31
	db	0C2h,0C2h,0C2h,0C2h,0C2h,0C2h,0C2h,0C2h	;32
	db	0C2h,0C2h,0C2h,0C2h,0C2h,0C2h,0C2h,0C2h	;33
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;34
	db	0C2h,0C2h,0C2h,0C2h,0C2h,0C2h,0C2h,0C2h	;35
	db	0C2h,0C2h,0C2h,0C2h,0C2h,0C2h,0C2h,0C2h	;36
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;37
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;38
	db	0E2h,022h,0C2h,061h,068h,061h,068h,061h	;39
	db	0E2h,022h,0C2h,061h,068h,061h,068h,061h	;40
	db	082h,082h,082h,082h,062h,0C2h,0C2h,082h	;41
	db	082h,082h,082h,082h,062h,0C2h,0C2h,082h	;42
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;43
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;44
	db	0E2h,062h,01Ch,06Ch,06Ch,06Ch,06Ch,06Ch	;45
	db	0E2h,062h,01Ch,06Ch,06Ch,06Ch,06Ch,06Ch	;46
	db	08Ch,08Ch,08Ch,08Ch,062h,082h,082h,082h	;47
	db	08Ch,08Ch,08Ch,08Ch,062h,082h,082h,082h	;48
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;49
	db	074h,054h,054h,074h,054h,074h,054h,074h	;50
	db	074h,054h,054h,074h,054h,074h,054h,074h	;51
	db	044h,054h,054h,074h,054h,044h,054h,044h	;52
	db	074h,054h,054h,074h,054h,074h,054h,074h	;53
	db	074h,054h,054h,074h,054h,074h,054h,074h	;54
	db	044h,054h,054h,074h,054h,044h,054h,044h	;55
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;56
	db	042h,042h,042h,042h,042h,042h,042h,042h	;57
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;58
	db	042h,042h,042h,042h,042h,042h,042h,042h	;59
ramchr1_2:
	db	008h,040h,004h,020h,010h,042h,084h,010h	;064
	db	008h,040h,004h,020h,010h,042h,084h,010h	;065
	db	008h,040h,004h,020h,010h,042h,084h,010h	;066
	db	008h,090h,006h,007h,00eh,02dh,01eh,02fh	;067
	db	008h,090h,006h,007h,00eh,02dh,01eh,02fh	;068
	db	03fh,01bh,07fh,03eh,01fh,057h,03fh,07fh	;069
	db	03fh,01bh,07fh,03eh,01fh,057h,03fh,07fh	;070
	db	03fh,01bh,07fh,03eh,01fh,057h,03fh,07fh	;071
	db	03fh,01bh,07fh,03eh,01fh,057h,03fh,07fh	;072
	db	0e0h,0c0h,0f0h,0bah,0f8h,0fch,020h,008h	;073
	db	0e0h,0c0h,0f0h,0bah,0f8h,0fch,020h,008h	;074
	db	008h,040h,004h,020h,010h,042h,084h,010h	;075
	db	008h,040h,004h,020h,010h,042h,084h,010h	;076
	db	07fh,010h,00dh,0c5h,094h,002h,0a4h,020h	;077
	db	07fh,010h,00dh,0c5h,094h,002h,0a4h,020h	;078
	db	033h,046h,05ch,0b9h,01bh,072h,0cdh,019h	;079
	db	033h,046h,05ch,0b9h,01bh,072h,0cdh,019h	;080
	db	004h,025h,040h,029h,0a3h,0b0h,008h,0feh	;081
	db	004h,025h,040h,029h,0a3h,0b0h,008h,0feh	;082
	db	008h,040h,004h,020h,010h,042h,084h,010h	;083
	db	008h,040h,004h,020h,010h,042h,084h,010h	;084
	db	001h,0c8h,0c4h,0e0h,0a0h,0f0h,0fch,0fah	;085
	db	001h,0c8h,0c4h,0e0h,0a0h,0f0h,0fch,0fah	;086
	db	0feh,0fch,0eah,0f8h,07ch,0feh,0d8h,0fch	;087
	db	0feh,0fch,0eah,0f8h,07ch,0feh,0d8h,0fch	;088
	db	0feh,0fch,0eah,0f8h,07ch,0feh,0d8h,0fch	;089
	db	0feh,0fch,0eah,0f8h,07ch,0feh,0d8h,0fch	;090
	db	0fch,0feh,0f0h,0a2h,0e8h,0c0h,0c0h,080h	;091
	db	0fch,0feh,0f0h,0a2h,0e8h,0c0h,0c0h,080h	;092
	db	008h,040h,004h,020h,010h,042h,084h,010h	;093
	db	033h,046h,05ch,0b9h,01bh,072h,0cdh,019h	;094
	db	033h,046h,05ch,0b9h,01bh,072h,0cdh,019h	;095
	db	008h,040h,002h,000h,020h,008h,080h,000h	;096
	db	008h,040h,002h,000h,020h,008h,080h,000h	;097
	db	008h,040h,004h,020h,010h,042h,084h,010h	;098
	db	008h,040h,002h,000h,020h,008h,080h,000h	;099
	db	008h,040h,002h,000h,020h,008h,080h,000h	;100
	db	008h,040h,004h,020h,010h,042h,084h,010h	;101
	db	008h,040h,004h,020h,010h,042h,084h,010h	;102
	db	000h,000h,03Fh,0FFh,0EEh,0FFh,0BBh,0FFh	;103
	db	000h,000h,03Fh,0FFh,0EEh,0FFh,0BBh,0FFh	;104
	db	0FFh,0FFh,0FFh,0FFh,0FFh,000h,000h,000h	;105
	db	0FFh,0FFh,0FFh,0FFh,0FFh,000h,000h,000h	;106
	db	008h,040h,004h,020h,010h,042h,084h,010h	;107
	db	008h,040h,004h,020h,010h,042h,084h,010h	;108
	db	000h,000h,000h,0F0h,0F0h,0F0h,0F0h,0F0h	;109
	db	000h,000h,000h,0F0h,0F0h,0F0h,0F0h,0F0h	;110
	db	0F0h,0F0h,0F0h,0F0h,0F0h,000h,000h,000h	;111
	db	0F0h,0F0h,0F0h,0F0h,0F0h,000h,000h,000h	;112
	db	008h,040h,004h,020h,010h,042h,084h,010h	;113
	db	033h,046h,05ch,0b9h,01bh,072h,0cdh,019h	;114
	db	025h,069h,04ah,0a6h,024h,0d6h,02dh,099h	;115
	db	025h,069h,04ah,0a6h,024h,0d6h,02dh,099h	;116
	db	033h,046h,05ch,0b9h,01bh,072h,0cdh,019h	;117
	db	025h,069h,04ah,0a6h,024h,0d6h,02dh,099h	;118
	db	025h,069h,04ah,0a6h,024h,0d6h,02dh,099h	;119
	db	033h,046h,05ch,0b9h,01bh,072h,0cdh,019h	;120
	db	03fh,01bh,07fh,03eh,01fh,057h,03fh,07fh	;121
	db	033h,046h,05ch,0b9h,01bh,072h,0cdh,019h	;122
	db	0feh,0fch,0eah,0f8h,07ch,0feh,0d8h,0fch	;123
ramclr1_2:
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;064
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;065
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;066
	db	0c2h,032h,0a2h,0b2h,0b2h,0a2h,0b2h,0a2h	;067
	db	0c2h,032h,0a2h,0b2h,0b2h,0a2h,0b2h,0a2h	;068
	db	0b2h,0b2h,0a3h,0bch,0a2h,0a3h,0b2h,0a2h	;069
	db	0b2h,0b2h,0a3h,0bch,0a2h,0a3h,0b2h,0a2h	;070
	db	0b2h,0b2h,0a3h,0bch,0a2h,0a3h,0b2h,0a2h	;071
	db	0b2h,0b2h,0a3h,0bch,0a2h,0a3h,0b2h,0a2h	;072
	db	02bh,02ah,02bh,02ah,02bh,02ah,0c2h,032h	;073
	db	02bh,02ah,02bh,02ah,02bh,02ah,0c2h,032h	;074
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;075
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;076
	db	023h,032h,032h,02bh,0bah,02bh,0bah,02bh	;077
	db	023h,032h,032h,02bh,0bah,02bh,0bah,02bh	;078
	db	0abh,0abh,0abh,0abh,0abh,0abh,0abh,0abh	;079
	db	0abh,0abh,0abh,0abh,0abh,0abh,0abh,0abh	;080
	db	02bh,0bah,02bh,0bah,02bh,032h,032h,023h	;081
	db	02bh,0bah,02bh,0bah,02bh,032h,032h,023h	;082
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;083
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;084
	db	0a2h,0b2h,0a2h,0b2h,0a2h,0b2h,0b2h,0a2h	;085
	db	0a2h,0b2h,0a2h,0b2h,0a2h,0b2h,0b2h,0a2h	;086
	db	0a2h,0b3h,0ach,0a2h,0b2h,0a2h,0b3h,0b2h	;087
	db	0a2h,0b3h,0ach,0a2h,0b2h,0a2h,0b3h,0b2h	;088
	db	0a2h,0b3h,0ach,0a2h,0b2h,0a2h,0b3h,0b2h	;089
	db	0a2h,0b3h,0ach,0a2h,0b2h,0a2h,0b3h,0b2h	;090
	db	0b2h,0a2h,0b2h,0b2h,0a2h,0b2h,0b2h,0a2h	;091
	db	0b2h,0a2h,0b2h,0b2h,0a2h,0b2h,0b2h,0a2h	;092
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;093
	db	0abh,0abh,0abh,0abh,0abh,0abh,0abh,0abh	;094
	db	0abh,0abh,0abh,0abh,0abh,0abh,0abh,0abh	;095
	db	0C2h,0C2h,0C2h,0C2h,0C2h,0C2h,0C2h,0C2h	;096
	db	0C2h,0C2h,0C2h,0C2h,0C2h,0C2h,0C2h,0C2h	;097
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;098
	db	0C2h,0C2h,0C2h,0C2h,0C2h,0C2h,0C2h,0C2h	;099
	db	0C2h,0C2h,0C2h,0C2h,0C2h,0C2h,0C2h,0C2h	;100
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;101
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;102
	db	0E2h,022h,0C2h,061h,068h,061h,068h,061h	;103
	db	0E2h,022h,0C2h,061h,068h,061h,068h,061h	;104
	db	082h,082h,082h,082h,062h,0C2h,0C2h,082h	;105
	db	082h,082h,082h,082h,062h,0C2h,0C2h,082h	;106
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;107
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;108
	db	0E2h,062h,01Ch,06Ch,06Ch,06Ch,06Ch,06Ch	;109
	db	0E2h,062h,01Ch,06Ch,06Ch,06Ch,06Ch,06Ch	;110
	db	08Ch,08Ch,08Ch,08Ch,062h,082h,082h,082h	;111
	db	08Ch,08Ch,08Ch,08Ch,062h,082h,082h,082h	;112
	db	0C2h,0C2h,032h,032h,0C2h,032h,0C2h,032h	;113
	db	0abh,0abh,0abh,0abh,0abh,0abh,0abh,0abh	;114
	db	0bah,0abh,0abh,0bah,0abh,0bah,0bah,0bah	;115
	db	0bah,0abh,0abh,0bah,0abh,0bah,0bah,0bah	;116
	db	0abh,0abh,0abh,0abh,0abh,0abh,0abh,0abh	;117
	db	0bah,0abh,0abh,0bah,0abh,0bah,0bah,0bah	;118
	db	0bah,0abh,0abh,0bah,0abh,0bah,0bah,0bah	;119
	db	0abh,0abh,0abh,0abh,0abh,0abh,0abh,0abh	;120
	db	0b2h,0b2h,0a3h,0bch,0a2h,0a3h,0b2h,0a2h	;121
	db	0abh,0abh,0abh,0abh,0abh,0abh,0abh,0abh	;122
	db	0a2h,0b3h,0ach,0a2h,0b2h,0a2h,0b3h,0b2h	;123
spritedata:
sptdef1_16:						;64
	db	001h,003h,003h,003h,003h,003h,001h,007h		;1enemy1 color1 frame1
	db	003h,007h,003h,006h,006h,003h,003h,001h		;2enemy1 color1 frame1
	db	080h,0C0h,0C0h,0C0h,0C0h,0C0h,080h,0E0h		;3enemy1 color1 frame1
	db	0c0h,0E0h,0c0h,060h,060h,0C0h,0C0h,080h		;4enemy1 color1 frame1
sptdef1_17:						;68
	db	008h,01Ch,01Ch,01Ch,01Ch,008h,002h,000h		;1enemy1 color2 frame1
	db	004h,000h,004h,001h,001h,000h,000h,000h		;2enemy1 color2 frame1
	db	010h,038h,038h,038h,038h,010h,040h,000h		;3enemy1 color2 frame1
	db	020h,000h,020h,080h,080h,000h,000h,000h		;4enemy1 color2 frame1
sptdef1_18:						;72
	db	001h,000h,000h,000h,000h,001h,001h,007h		;1enemy1 color1 frame2
	db	003h,007h,003h,006h,006h,003h,003h,001h		;2enemy1 color1 frame2
	db	080h,0C0h,0C0h,0C0h,0C0h,0C0h,080h,0E0h		;3enemy1 color1 frame2
	db	0c0h,0E0h,0c0h,060h,060h,0C0h,0C0h,080h		;4enemy1 color1 frame2
sptdef1_19:						;76
	db	002h,007h,007h,007h,007h,002h,002h,000h		;1enemy1 color2 frame2
	db	004h,000h,004h,001h,001h,000h,000h,000h		;2enemy1 color2 frame2
	db	040h,020h,020h,020h,020h,000h,040h,000h		;3enemy1 color2 frame2
	db	020h,000h,020h,080h,080h,000h,000h,000h		;4enemy1 color2 frame2
sptdef1_20:						;80
	db	001h,003h,003h,003h,003h,003h,001h,007h		;1enemy1 color1 frame3
	db	003h,007h,003h,006h,006h,003h,003h,001h		;2enemy1 color1 frame3
	db	080h,000h,000h,000h,000h,080h,080h,0E0h		;3enemy1 color1 frame3
	db	0c0h,0E0h,0c0h,060h,060h,0C0h,0C0h,080h		;4enemy1 color1 frame3
sptdef1_21:						;84
	db	002h,004h,004h,004h,004h,000h,002h,000h		;1enemy1 color2 frame3
	db	004h,000h,004h,001h,001h,000h,000h,000h		;2enemy1 color2 frame3
	db	040h,0E0h,0E0h,0E0h,0E0h,040h,040h,000h		;3enemy1 color2 frame3
	db	020h,000h,020h,080h,080h,000h,000h,000h		;4enemy1 color2 frame3
sptdef1_22:						;88
	db	020h,060h,067h,061h,061h,067h,060h,020h		;1enemy2 color1 frame1
	db	000h,000h,000h,003h,001h,000h,000h,000h		;2enemy2 color1 frame1
	db	004h,006h,0E6h,086h,086h,0E6h,006h,004h		;3enemy2 color1 frame1
	db	000h,000h,000h,0C0h,080h,000h,000h,000h		;4enemy2 color1 frame1
sptdef1_23:						;92
	db	001h,003h,000h,09Ch,09Ch,000h,003h,001h		;1enemy2 color2 frame1
	db	001h,003h,007h,004h,006h,003h,001h,000h		;2enemy2 color2 frame1
	db	080h,0C0h,000h,039h,039h,000h,0C0h,080h		;3enemy2 color2 frame1
	db	080h,0C0h,0E0h,020h,060h,0C0h,080h,000h		;4enemy2 color2 frame1
sptdef1_24:						;96
	db	008h,018h,01Bh,009h,009h,01Bh,018h,008h		;1enemy2 color1 frame2
	db	000h,000h,000h,003h,001h,000h,000h,000h		;2enemy2 color1 frame2
	db	010h,018h,0D8h,088h,088h,0D8h,018h,010h		;3enemy2 color1 frame2
	db	000h,000h,000h,0C0h,080h,000h,000h,000h		;4enemy2 color1 frame2
sptdef1_25:						;100
	db	001h,003h,000h,036h,036h,000h,003h,001h		;1enemy2 color2 frame2
	db	001h,003h,007h,004h,006h,003h,001h,000h		;2enemy2 color2 frame2
	db	080h,0C0h,000h,034h,034h,000h,0C0h,080h		;3enemy2 color2 frame2
	db	080h,0C0h,0E0h,020h,060h,0C0h,080h,000h		;4enemy2 color2 frame2
sptdef1_26:						;104
	db	001h,003h,003h,002h,002h,003h,003h,001h		;1enemy2 color1 frame3
	db	000h,000h,000h,003h,001h,000h,000h,000h		;2enemy2 color1 frame3
	db	080h,0C0h,0C0h,040h,040h,0C0h,0C0h,080h		;3enemy2 color1 frame3
	db	000h,000h,000h,0C0h,080h,000h,000h,000h		;4enemy2 color1 frame3
sptdef1_27:						;108
	db	000h,000h,000h,001h,001h,000h,000h,001h		;1enemy2 color2 frame3
	db	001h,003h,007h,004h,006h,003h,001h,000h		;2enemy2 color2 frame3
	db	000h,000h,000h,080h,080h,000h,000h,080h		;3enemy2 color2 frame3
	db	080h,0C0h,0E0h,020h,060h,0C0h,080h,000h		;4enemy2 color2 frame3
sptdef1_28:						;112
	db	008h,018h,01Bh,011h,011h,01Bh,018h,008h		;1enemy2 color1 frame4
	db	000h,000h,000h,003h,001h,000h,000h,000h		;2enemy2 color1 frame4
	db	010h,018h,0D8h,090h,090h,0D8h,018h,010h		;3enemy2 color1 frame4
	db	000h,000h,000h,0C0h,080h,000h,000h,000h		;4enemy2 color1 frame4
sptdef1_29:						;116
	db	001h,003h,000h,02Ch,02Ch,000h,003h,001h		;1enemy2 color1 frame4
	db	001h,003h,007h,004h,006h,003h,001h,000h		;2enemy2 color1 frame4
	db	080h,0C0h,000h,06Ch,06Ch,000h,0C0h,080h		;3enemy2 color1 frame4
	db	080h,0C0h,0E0h,020h,060h,0C0h,080h,000h		;4enemy2 color1 frame4
sptdef1_30:						;120
	db	000h,000h,000h,00Bh,00Ch,00Ah,017h,017h		;1enemy3 color1 frame1
	db	012h,010h,008h,01Ch,003h,000h,000h,000h		;1enemy3 color1 frame1
	db	000h,000h,000h,0C0h,038h,010h,008h,008h		;1enemy3 color1 frame1
	db	008h,008h,010h,030h,0D0h,000h,000h,000h		;1enemy3 color1 frame1
sptdef1_31:						;124
	db	000h,000h,000h,000h,003h,005h,008h,008h		;1enemy3 color2 frame1
	db	00Dh,00Fh,007h,003h,000h,000h,000h,000h		;1enemy3 color2 frame1
	db	000h,000h,000h,000h,0C0h,0E0h,0F0h,0F0h		;1enemy3 color2 frame1
	db	0F0h,0F0h,0E0h,0C0h,000h,000h,000h,000h		;1enemy3 color2 frame1
sptdef1_32:						;128
	db	000h,000h,000h,003h,00Ch,008h,010h,030h		;1enemy3 color1 frame2
	db	010h,010h,008h,00Ch,003h,001h,000h,000h		;1enemy3 color1 frame2
	db	000h,000h,080h,0C0h,030h,010h,028h,078h		;1enemy3 color1 frame2
	db	07Ch,028h,010h,030h,0C0h,000h,000h,000h		;1enemy3 color1 frame2
sptdef1_33:						;132
	db	000h,000h,000h,000h,003h,007h,00Fh,00Fh		;1enemy3 color2 frame2
	db	00Fh,00Fh,007h,003h,000h,000h,000h,000h		;1enemy3 color2 frame2
	db	000h,000h,000h,000h,0C0h,0E0h,0D0h,080h		;1enemy3 color2 frame2
	db	080h,0D0h,0E0h,0C0h,000h,000h,000h,000h		;1enemy3 color2 frame2
sptdef1_34:						;136
	db	000h,000h,000h,003h,01Ch,008h,010h,011h		;1enemy3 color1 frame3
	db	013h,013h,009h,00Ch,007h,004h,000h,000h		;1enemy3 color1 frame3
	db	000h,000h,000h,0D0h,030h,010h,008h,008h		;1enemy3 color1 frame3
	db	088h,088h,010h,038h,0C0h,000h,000h,000h		;1enemy3 color1 frame3
sptdef1_35:						;140
	db	000h,000h,000h,000h,003h,007h,00Fh,00Eh		;1enemy3 color2 frame3
	db	00Ch,00Ch,006h,003h,000h,000h,000h,000h		;1enemy3 color2 frame3
	db	000h,000h,000h,000h,0C0h,0E0h,0F0h,0F0h		;1enemy3 color2 frame3
	db	070h,070h,0E0h,0C0h,000h,000h,000h,000h		;1enemy3 color2 frame3
sptdef1_36:						;144
	db	026h,035h,02Ch,034h,01Ch,016h,01Ah,00Eh		;1enemy4 color1 frame1
	db	00Ah,00Eh,006h,006h,006h,002h,003h,001h		;2enemy4 color1 frame1
	db	008h,018h,0A8h,0C8h,090h,090h,090h,0A0h		;3enemy4 color1 frame1
	db	0A0h,0A0h,0C0h,0C0h,0C0h,080h,080h,000h		;4enemy4 color1 frame1
sptdef1_37:						;148
	db	000h,002h,013h,00Bh,003h,009h,005h,001h		;1enemy4 color2 frame1
	db	005h,001h,001h,001h,001h,001h,000h,000h		;2enemy4 color2 frame1
	db	000h,000h,010h,030h,060h,060h,060h,040h		;3enemy4 color2 frame1
	db	040h,040h,000h,000h,000h,000h,000h,000h		;4enemy4 color2 frame1
sptdef1_38:						;152
	db	021h,039h,025h,023h,021h,011h,011h,009h		;1enemy4 color1 frame2
	db	009h,009h,005h,005h,005h,002h,002h,001h		;2enemy4 color1 frame2
	db	008h,038h,048h,088h,008h,010h,010h,020h		;3enemy4 color1 frame2
	db	020h,020h,040h,040h,040h,080h,080h,000h		;4enemy4 color1 frame2
sptdef1_39:						;156
	db	000h,000h,018h,01Ch,01Eh,00Eh,00Eh,006h		;1enemy4 color2 frame2
	db	006h,006h,002h,002h,002h,001h,001h,000h		;2enemy4 color2 frame2
	db	000h,000h,030h,070h,0F0h,0E0h,0E0h,0C0h		;3enemy4 color2 frame2
	db	0C0h,0C0h,080h,080h,080h,000h,000h,000h		;4enemy4 color2 frame2
sptdef1_40:						;160
	db	010h,018h,015h,013h,00Bh,009h,009h,005h		;1enemy4 color1 frame3
	db	005h,005h,003h,003h,003h,001h,001h,000h		;2enemy4 color1 frame3
	db	064h,0ACh,034h,02Ch,038h,068h,058h,070h		;3enemy4 color1 frame3
	db	050h,070h,060h,060h,060h,040h,0C0h,080h		;4enemy4 color1 frame3
sptdef1_41:						;164
	db	000h,000h,008h,00Ch,006h,006h,006h,002h		;1enemy4 color2 frame3
	db	002h,002h,000h,000h,000h,000h,000h,000h		;2enemy4 color2 frame3
	db	000h,040h,0C8h,0D0h,0C0h,090h,0A0h,080h		;3enemy4 color2 frame3
	db	0A0h,080h,080h,080h,080h,080h,000h,000h		;4enemy4 color2 frame3
sptdef1_42:						;168
	db	003h,00Fh,01Fh,01Ch,070h,060h,0E0h,0E1h		;1enemy5 color1 frame1
	db	0E1h,0F0h,050h,070h,000h,000h,000h,000h		;2enemy5 color1 frame1
	db	080h,0C0h,040h,0C0h,000h,000h,000h,080h		;3enemy5 color1 frame1
	db	080h,000h,000h,000h,000h,000h,000h,000h		;4enemy5 color1 frame1
sptdef1_43:						;172
	db	000h,000h,000h,020h,00Ch,01Eh,01Fh,00Eh		;1enemy5 color2 frame1
	db	002h,001h,020h,000h,000h,000h,000h,000h		;2enemy5 color2 frame1
	db	000h,000h,080h,000h,000h,000h,080h,040h		;3enemy5 color2 frame1
	db	040h,088h,008h,010h,060h,000h,000h,000h		;4enemy5 color2 frame1
sptdef1_44:						;176
	db	003h,00Fh,00Bh,00Eh,000h,000h,000h,001h		;1enemy5 color1 frame2
	db	001h,000h,000h,000h,000h,000h,000h,000h		;2enemy5 color1 frame2
	db	0C0h,0F0h,0F0h,01Ch,00Eh,00Eh,007h,087h		;3enemy5 color1 frame2
	db	08Bh,00Eh,000h,000h,000h,000h,000h,000h		;4enemy5 color1 frame2
sptdef1_45:						;180
	db	000h,000h,004h,000h,000h,000h,001h,002h		;1enemy5 color2 frame2
	db	002h,011h,010h,008h,006h,000h,000h,000h		;2enemy5 color2 frame2
	db	000h,000h,008h,060h,0F0h,0F0h,0E0h,040h		;3enemy5 color2 frame2
	db	044h,080h,000h,000h,000h,000h,000h,000h		;4enemy5 color2 frame2
sptdef1_46:						;184
	db	000h,000h,000h,000h,000h,000h,000h,001h		;1enemy5 color1 frame3
	db	001h,000h,000h,000h,003h,002h,003h,001h		;2enemy5 color1 frame3
	db	000h,000h,000h,000h,00Eh,00Ah,00Fh,087h		;3enemy5 color1 frame3
	db	087h,007h,006h,00Eh,038h,0F8h,0F0h,0C0h		;4enemy5 color1 frame3
sptdef1_47:						;188
	db	000h,000h,000h,006h,008h,010h,011h,002h		;1enemy5 color2 frame3
	db	002h,001h,000h,000h,000h,001h,000h,000h		;2enemy5 color2 frame3
	db	000h,000h,000h,000h,000h,004h,080h,040h		;3enemy5 color2 frame3
	db	070h,0F8h,078h,030h,004h,000h,000h,000h		;4enemy5 color2 frame3
sptdef1_48:						;192
	db	000h,000h,000h,000h,000h,000h,070h,0D1h		;1enemy5 color1 frame4
	db	0E1h,0E0h,070h,070h,038h,00Fh,00Fh,003h		;2enemy5 color1 frame4
	db	000h,000h,000h,000h,000h,000h,000h,080h		;3enemy5 color1 frame4
	db	080h,000h,000h,000h,070h,0D0h,0F0h,0C0h		;4enemy5 color1 frame4
sptdef1_49:						;196
	db	000h,000h,000h,000h,000h,000h,001h,022h		;1enemy5 color2 frame4
	db	002h,007h,00Fh,00Fh,006h,010h,000h,000h		;2enemy5 color2 frame4
	db	000h,000h,000h,060h,010h,008h,088h,040h		;3enemy5 color2 frame4
	db	040h,080h,000h,000h,000h,020h,000h,000h		;4enemy5 color2 frame4
sptdef1_50:						;200
	db	003h,00Fh,01Fh,03Fh,07Fh,07Fh,0FFh,0FFh		;1enemy6 color1 frame1
	db	0FFh,0FFh,07Fh,07Fh,03Fh,01Bh,00Eh,003h		;2enemy6 color1 frame1
	db	0C0h,0F0h,0F8h,0FCh,0FEh,0FEh,0FFh,0FFh		;3enemy6 color1 frame1
	db	0FFh,0FFh,0FEh,0BEh,0DCh,0F8h,0F0h,0C0h		;4enemy6 color1 frame1
sptdef1_51:						;204
	db	003h,007h,003h,000h,000h,000h,000h,000h		;1enemy6 color2 frame1
	db	000h,000h,000h,000h,000h,000h,000h,000h		;2enemy6 color2 frame1
	db	0C0h,0E0h,0C0h,000h,000h,000h,000h,000h		;3enemy6 color2 frame1
	db	000h,000h,000h,000h,000h,000h,000h,000h		;4enemy6 color2 frame1
sptdef1_52:						;208
	db	003h,00Fh,01Fh,03Fh,07Fh,07Fh,0FFh,0FFh		;1enemy6 color1 frame2
	db	0FFh,0FFh,07Fh,07Fh,03Fh,01Fh,00Fh,003h		;2enemy6 color1 frame2
	db	0C0h,0F0h,0F8h,0ECh,0FEh,0FEh,0FFh,0FFh		;3enemy6 color1 frame2
	db	0FFh,0FFh,0FEh,0FEh,0FCh,0F8h,0F0h,0C0h		;4enemy6 color1 frame2
sptdef1_53:						;212
	db	000h,000h,000h,000h,000h,000h,000h,003h		;1enemy6 color2 frame2
	db	007h,00Fh,00Fh,00Fh,007h,003h,000h,000h		;2enemy6 color2 frame2
	db	000h,000h,000h,000h,000h,000h,000h,080h		;3enemy6 color2 frame2
	db	0C0h,0E0h,060h,0E0h,0C0h,080h,000h,000h		;4enemy6 color2 frame2
sptdef1_54:						;216
	db	003h,00Fh,01Fh,03Fh,07Fh,07Fh,0FFh,0FFh		;1enemy6 color1 frame3
	db	0FFh,0FFh,07Fh,07Fh,03Fh,01Fh,00Fh,003h		;2enemy6 color1 frame3
	db	0C0h,0F0h,0F8h,0FCh,0FEh,0FEh,0FFh,0FFh		;3enemy6 color1 frame3
	db	0FFh,0FFh,0FEh,0FEh,0FCh,0F8h,0F0h,0C0h		;4enemy6 color1 frame3
sptdef1_55:						;220
	db	000h,001h,008h,010h,010h,000h,000h,000h		;1enemy6 color2 frame3
	db	000h,000h,000h,000h,000h,000h,000h,000h		;2enemy6 color2 frame3
	db	000h,020h,090h,000h,000h,000h,000h,000h		;3enemy6 color2 frame3
	db	000h,000h,000h,000h,000h,000h,000h,000h		;4enemy6 color2 frame3
sptdef1_56:						;224
	db	001h,00Ch,012h,012h,012h,012h,082h,082h		;1enemy7 color1
	db	082h,084h,080h,083h,081h,040h,000h,000h		;2enemy7 color1
	db	080h,030h,048h,048h,048h,048h,041h,041h		;3enemy7 color1
	db	041h,021h,001h,0C1h,081h,002h,000h,000h		;4enemy7 color1
sptdef1_57:						;228
	db	001h,005h,00Dh,00Dh,02Dh,06Dh,075h,071h		;1enemy7 color2
	db	041h,043h,047h,004h,006h,003h,001h,000h		;2enemy7 color2
	db	080h,0A0h,0B0h,0B0h,0B4h,0B6h,0AEh,08Eh		;3enemy7 color2
	db	082h,0C2h,0E2h,020h,060h,0C0h,080h,000h		;4enemy7 color2
sptdef1_58:						;232
	db	003h,00fh,01fh,003h,07bh,048h,04fh,074h		;power inc yl
	db	044h,057h,050h,01fh,03fh,01fh,00fh,003h		;power inc yl
	db	0c0h,0f0h,0f8h,0fch,0feh,008h,0aah,0a2h		;power inc yl
	db	0aah,094h,000h,0feh,0fch,0f8h,0f0h,0c0h		;power inc yl
	;030F1F037B484F744457501F3F1F0F03C0F0F8FCFE08AAA2AA9400FEFCF8F0C0
sptdef1_59:						;236
	db	000h,000h,000h,0fch,084h,0b7h,0b0h,08bh		;power inc blk
	db	0bbh,0a8h,0afh,0e0h,000h,000h,000h,000h		;power inc blk
	db	000h,000h,000h,000h,000h,0f7h,055h,05dh		;power inc blk
	db	055h,06bh,0feh,000h,000h,000h,000h,000h		;power inc blk
	;000000FC84B7B08BBBA8AFE0000000000000000000F7555D556BFE0000000000
sptdef1_60						;240
	db	000h,003h,00fh,01fh,03fh,03fh,07fh,07fh		;explosion frame1
	db	07fh,07fh,03fh,03fh,01fh,00fh,003h,000h		;explosion frame1
	db	000h,0c0h,0f0h,0f8h,0fch,0fch,0feh,0feh		;explosion frame1
	db	0feh,0feh,0fch,0fch,0f8h,0f0h,0c0h,000h		;explosion frame1
	;00030F1F3F3F7F7F7F7F3F3F1F0F030000C0F0F8FCFCFEFEFEFEFCFCF8F0C000
sptdef1_61:						;244
	db	000h,003h,00fh,01fh,03fh,03fh,07fh,07fh		;explosion frame2
	db	07fh,07fh,03fh,03fh,01fh,00fh,003h,000h		;explosion frame2
	db	000h,0c0h,0f0h,0d8h,08ch,004h,08eh,0deh		;explosion frame2
	db	0feh,0feh,0fch,0fch,0f8h,0f0h,0c0h,000h		;explosion frame2
	;00030F1F3F3F7F7F7F7F3F3F1F0F030000C0F0D88C048EDEFEFEFCFCF8F0C000
sptdef1_62:						;248
	db	000h,003h,00ch,018h,030h,030h,070h,070h		;explosion frame3
	db	070h,070h,038h,03ch,01eh,00fh,003h,000h		;explosion frame3
	db	000h,0c0h,030h,008h,000h,000h,002h,002h		;explosion frame3
	db	002h,002h,004h,004h,018h,0f0h,0c0h,000h		;explosion frame3
	;00030C18303070707070383C1E0F030000C03008000002020202040418F0C000
sptdef1_63:						;252
	db	000h,000h,00ch,018h,030h,030h,070h,070h		;explosion frame4
	db	070h,070h,038h,03ch,01eh,00fh,003h,000h		;explosion frame4
	db	000h,000h,000h,000h,000h,000h,000h,000h		;explosion frame4
	db	000h,000h,000h,000h,018h,0f0h,0c0h,000h		;explosion frame4
	;00000C18303070707070383C1E0F030000000000000000000000000018F0C000
sprtend:
mid_boss_sprites:
midspt1:
	db	0c0h,0f0h,79h,76h,28h,10h,10h,21h	;
	db	22h,22h,42h,42h,42h,41h,40h,40h		;
	db	00h,3fh,0c0h,00h,00h,00h,0f8h,04h	;
	db	72h,0fah,0fah,0fah,72h,04h,0f8h,00h	;
midspt2:
	db	00h,01h,06h,09h,17h,2fh,2fh,5eh		;
	db	5dh,5dh,0bdh,0bdh,0bdh,0beh,0bfh,0bfh	;
	db	3fh,0c0h,3fh,0ffh,0ffh,0ffh,07h,0fbh	;
	db	8dh,05h,05h,05h,8dh,0fbh,07h,0ffh	;
midspt3:
	db	00h,0fch,03h,00h,00h,00h,1fh,20h	;
	db	4eh,5fh,5fh,5fh,4eh,20h,1fh,00h		;
	db	03h,0fh,9eh,6eh,14h,08h,08h,84h		;
	db	44h,44h,42h,42h,42h,82h,02h,02h		;
midspt4:
	db	0fch,03h,0fch,0ffh,0ffh,0ffh,0e0h,0dfh	;
	db	0b1h,0a0h,0a0h,0a0h,0b1h,0dfh,0e0h,0ffh	;
	db	00h,80h,60h,90h,0e8h,0f4h,0f4h,7ah	;
	db	0bah,0bah,0bdh,0bdh,0bdh,7dh,0fdh,0fdh	;
midspt5:
	db	40h,40h,41h,42h,42h,42h,22h,22h		;
	db	21h,10h,10h,28h,76h,79h,0f0h,0c0h	;
	db	00h,0f8h,04h,72h,0fah,0fah,0fah,72h	;
	db	04h,0f8h,00h,00h,00h,0c0h,3fh,00h	;
midspt6:
	db	0bfh,0bfh,0beh,0bdh,0bdh,0bdh,5dh,5dh	;
	db	5eh,2fh,2fh,17h,09h,06h,01h,00h		;
	db	0ffh,07h,0fbh,8dh,05h,05h,05h,8dh	;
	db	0fbh,07h,0ffh,0ffh,0ffh,3fh,0c0h,3fh	;
midspt7:
	db	00h,1fh,20h,4eh,5fh,5fh,5fh,4eh		;
	db	20h,1fh,00h,00h,00h,03h,0fch,00h	;
	db	02h,02h,82h,42h,42h,42h,44h,44h		;
	db	84h,08h,08h,14h,6eh,9eh,0fh,03h		;
midspt8:
	db	0ffh,0e0h,0dfh,0b1h,0a0h,0a0h,0a0h,0b1h	;
	db	0dfh,0e0h,0ffh,0ffh,0ffh,0fch,03h,0fch	;
	db	0fdh,0fdh,7dh,0bdh,0bdh,0bdh,0bah,0bah	;
	db	7ah,0f4h,0f4h,0e8h,90h,60h,80h,00h	;
mboss_spt_end:

eventlist_10:
	;row,ystart,xstart,shape,color,pattern
	db	12,1,100,232,10,5
	db	1,100,236,4,5
	db	16,1,100,88,6,1
	db	1,100,92,11,1
	db	20,1,100,88,6,1
	db	1,100,92,11,1
	db	24,1,100,88,6,1
	db	1,100,92,11,1
	db	28,1,100,88,6,1
	db	1,100,92,11,1
	db	32,1,100,88,6,1
	db	1,100,92,11,1
	db	36,1,100,88,6,1
	db	1,100,92,11,1
	
	db	90,1,100,232,10,5
	db	1,100,236,4,5
	db	94,1,100,64,1,2
	db	1,100,68,14,2
	db	98,1,100,64,1,2
	db	1,100,68,14,2
	db	102,1,100,64,1,2
	db	1,100,68,14,2
	db	106,191,200,120,5,3
	db	191,200,124,14,3
	db	110,191,200,120,5,3
	db	191,200,124,14,3
	db	114,191,200,120,5,3
	db	191,200,124,14,3

	db	168,1,100,232,10,5	
	db	1,100,236,4,5
	db	172,1,100,64,1,2
	db	1,100,68,14,2
	db	176,1,100,64,1,2
	db	1,100,68,14,2
	db	180,1,100,168,9,1
	db	1,100,172,11,1
	db	184,191,200,120,5,3
	db	191,200,124,14,3
	db	188,191,200,120,5,3
	db	191,200,124,14,3
	db	192,191,200,120,5,3
	db	191,200,124,14,3

	db	246,1,100,232,10,5	
	db	1,100,236,4,5
	db	250,1,100,168,6,1
	db	1,100,172,11,1
	db	254,1,100,144,5,2
	db	1,100,148,14,2
	db	4,1,100,168,6,1
	db	1,100,172,11,1
	db	8,1,100,168,6,1
	db	1,100,172,11,1
	db	12,1,100,144,5,2
	db	1,100,148,14,2
	db	16,1,100,144,5,2
	db	1,100,148,14,2		

	db	70,1,100,232,10,5	
	db	1,100,236,4,5
	db	74,1,100,88,6,1
	db	1,100,92,11,1
	db	78,1,100,88,6,1
	db	1,100,92,11,1
	db	82,1,100,88,6,1
	db	1,100,92,11,1
	db	86,191,18,120,9,3
	db	191,18,124,11,3
	db	90,191,18,120,9,3
	db	191,18,124,11,3
	db	94,191,18,120,9,3
	db	191,18,124,11,3

	db	148,1,100,232,10,5	
	db	1,100,236,4,5
	db	152,1,200,168,7,4
	db	1,200,172,15,4
	db	156,1,200,168,7,4
	db	1,200,172,15,4
	db	160,1,200,168,7,4
	db	1,200,172,15,4
	db	164,1,200,168,7,4
	db	1,200,172,15,4
	db	168,1,200,168,7,4
	db	1,200,172,15,4
	db	172,1,200,168,7,4
	db	1,200,172,15,4			

	db	226,1,100,232,10,5
	db	1,100,236,4,5
	db	230,1,100,88,1,1
	db	1,100,92,14,1
	db	234,1,100,88,1,1
	db	1,100,92,14,1
	db	238,1,100,88,1,1
	db	1,100,92,14,1
	db	242,1,100,88,1,1
	db	1,100,92,14,1
	db	246,1,100,88,1,1
	db	1,100,92,14,1
	db	250,1,100,88,1,1
	db	1,100,92,14,1			

	db	48,1,100,232,10,5
	db	1,100,236,4,5
	db	52,1,100,144,9,2
	db	1,100,148,11,2
	db	56,1,100,144,9,2
	db	1,100,148,11,2
	db	60,1,100,144,9,2
	db	1,100,148,11,2
	db	64,191,18,120,5,3
	db	191,18,124,14,3
	db	68,191,18,120,5,3
	db	191,18,124,14,3
	db	72,191,18,120,5,3
	db	191,18,124,14,3

	db	126,1,100,232,10,5
	db	1,100,236,4,5
	db	130,1,100,120,5,2
	db	1,100,124,14,2
	db	134,1,100,120,5,2
	db	1,100,124,14,2
	db	138,1,100,88,6,1
	db	1,100,92,11,1
	db	142,191,200,120,9,3
	db	191,200,124,11,3
	db	146,191,200,120,9,3
	db	191,200,124,11,3
	db	150,191,200,120,9,3
	db	191,200,124,11,3

	db	204,1,100,232,10,5
	db	1,100,236,4,5
	db	208,1,100,168,6,1
	db	1,100,172,11,1
	db	212,1,100,144,5,2
	db	1,100,148,14,2
	db	216,1,100,168,1,1
	db	1,100,172,14,1
	db	220,1,100,168,1,1
	db	1,100,172,14,1
	db	224,1,100,144,5,2
	db	1,100,148,14,2
	db	228,1,100,144,5,2
	db	1,100,148,14,2

	db	26,1,100,232,10,5
	db	1,100,236,4,5
	db	30,1,100,64,1,2
	db	1,100,68,5,2
	db	34,1,100,64,1,2
	db	1,100,68,5,2
	db	38,1,100,64,1,2		
	db	1,100,68,5,2
	db	42,191,18,120,13,3
	db	191,18,124,15,3
	db	46,191,18,120,13,3
	db	191,18,124,15,3
	db	50,191,18,120,13,3
	db	191,18,124,15,3

	db	104,1,100,232,10,5
	db	1,100,236,4,5
	db	108,1,100,144,1,2
	db	1,100,148,14,2
	db	112,1,100,144,1,2
	db	1,100,148,14,2
	db	116,1,100,144,1,2
	db	1,100,148,14,2
	db	120,191,200,120,10,3
	db	191,200,124,15,3
	db	124,191,200,120,10,3
	db	191,200,124,15,3
	db	128,191,200,120,10,3
	db	191,200,124,15,3

	db	182,1,200,168,6,4
	db	1,200,172,10,4
	db	186,1,200,168,6,4
	db	1,200,172,10,4
	db	190,1,200,168,6,4
	db	1,200,172,10,4
	db	194,191,18,120,14,3
	db	191,18,124,15,3
	db	198,191,200,120,6,3
	db	191,200,124,14,3
	db	202,191,18,120,14,3
	db	191,18,124,15,3
	db	206,191,200,120,6,3
	db	191,200,124,14,3

	db	4,1,100,232,10,5
	db	1,100,236,4,5
	db	8,1,100,88,6,1
	db	1,100,92,1,1
	db	12,1,100,64,15,2
	db	1,100,68,13,2
	db	16,1,100,88,6,1
	db	1,100,92,1,1
	db	20,1,100,88,6,1
	db	1,100,92,1,1
	db	24,1,100,64,15,2
	db	1,100,68,13,2
	db	28,1,100,64,15,2
	db	1,100,68,13,2	

	db	82,1,80,204,1,6
	db	1,80,200,15,6
	db	86,1,175,204,1,6
	db	1,175,200,15,6
	db	90,1,112,204,1,6
	db	1,112,200,15,6
	db	94,1,80,204,1,6
	db	1,80,200,15,6
	db	112,1,175,204,1,6
	db	1,175,200,15,6
	db	116,1,112,204,1,6
	db	1,112,200,15,6
	db	120,1,80,204,1,6
	db	1,80,200,15,6

	db	200,1,72,224,6,13
	db	1,72,228,1,13
	db	204,1,112,224,6,13
	db	1,112,228,1,13
	db	208,1,200,224,5,13
	db	1,200,228,14,13
	db	212,1,80,224,5,13
	db	1,80,228,14,13
	db	216,1,100,232,10,5
	db	1,100,236,4,5
	db	220,1,175,224,6,13
	db	1,175,228,1,13
	db	224,1,112,224,6,13
	db	1,112,228,1,13

	db	10,1,80,224,5,13
	db	1,80,228,14,13
	db	14,1,175,224,5,13
	db	1,175,228,14,13
	db	18,1,112,224,5,13
	db	1,112,228,14,13
	db	22,1,72,224,5,13
	db	1,72,228,1,13
	db	24,1,112,224,5,13
	db	1,112,228,1,13

	db	62,1,100,232,10,5
	db	1,100,236,4,5
	db	66,1,175,168,1,1
	db	1,175,172,7,1
	db	70,1,80,144,1,8
	db	1,80,148,14,8
	db	74,1,175,168,1,1
	db	1,175,172,7,1
	db	78,1,80,144,1,8
	db	1,80,148,14,8
	db	82,1,175,168,1,1
	db	1,175,172,7,1

	db	136,1,100,232,10,5
	db	1,100,236,4,5
	db	140,1,72,224,13,13
	db	1,72,228,1,13
	db	144,1,112,224,13,13
	db	1,112,228,1,13
	db	148,1,200,224,13,13
	db	1,200,228,1,13
	db	152,1,80,224,13,13
	db	1,80,228,1,13
	db	156,1,190,224,13,13
	db	1,190,228,1,13
	db	160,1,130,224,13,13
	db	1,130,228,1,13

	db	200,1,100,232,10,5
	db	1,100,236,4,5
	db	204,1,100,64,15,2
	db	1,100,68,1,2
	db	208,1,100,64,15,2
	db	1,100,68,1,2
	db	212,1,100,88,6,1
	db	1,100,92,1,1
	db	216,191,200,120,9,3
	db	191,200,124,11,3
	db	220,191,200,120,9,3
	db	191,200,124,11,3
	db	224,191,200,120,9,3
	db	191,200,124,11,3

	db	22,1,100,232,10,5
	db	1,100,236,4,5
	db	26,1,20,144,1,8
	db	1,20,148,7,8
	db	30,1,20,144,1,8
	db	1,20,148,14,8
	db	34,1,20,144,1,8
	db	1,20,148,12,8
	db	38,1,20,144,1,8
	db	1,20,148,13,8
	db	42,1,20,144,1,8
	db	1,20,148,8,8
	db	46,1,20,144,1,8
	db	1,20,148,4,8

	db	100,1,40,204,1,6
	db	1,40,200,15,6
	db	104,1,175,204,1,6
	db	1,175,200,15,6
	db	108,1,92,204,1,6
	db	1,92,200,15,6
	db	112,1,80,204,1,6
	db	1,80,200,15,6
	db	116,1,235,204,1,6
	db	1,235,200,15,6
	db	120,1,112,204,1,6
	db	1,112,200,15,6
	db	124,1,80,204,1,6
	db	1,80,200,15,6

	db	182,1,180,168,4,4
	db	1,180,172,7,4
	db	186,1,180,168,4,4
	db	1,180,172,7,4
	db	190,1,180,168,4,4
	db	1,180,172,7,4
	db	194,191,18,120,1,3
	db	191,18,124,9,3
	db	198,191,18,120,1,3
	db	191,18,124,9,3
	db	202,191,18,120,1,3
	db	191,18,124,9,3
	db	206,191,18,120,1,3
	db	191,18,124,9,3

	db	6,1,100,232,10,5
	db	1,100,236,4,5
	db	10,1,175,88,7,1
	db	1,175,92,1,1
	db	14,1,80,88,7,8
	db	1,80,92,1,8
	db	18,1,175,88,7,1
	db	1,175,92,1,1
	db	22,1,80,88,7,8
	db	1,80,92,1,8
	db	26,1,175,88,7,1
	db	1,175,92,1,1
	db	30,1,80,88,7,8
	db	1,80,92,1,8

	db	120,191,200,120,5,3
	db	191,200,124,14,3
	db	124,191,18,120,5,3
	db	191,18,124,14,3
	db	128,191,200,120,1,3
	db	191,200,124,14,3
	db	132,191,18,120,1,3
	db	191,18,124,14,3
	db	136,191,200,120,13,3
	db	191,200,124,11,3
	db	140,191,18,120,13,3
	db	191,18,124,11,3	

	db	255

eventlist_15:
	;row,ystart,xstart,shape,color,pattern
	db	16,1,130,168,6,1
	db	1,130,172,11,1
	db	20,1,130,168,6,1
	db	1,130,172,11,1
	db	24,1,130,168,6,1
	db	1,130,172,11,1
	db	28,1,130,168,6,1
	db	1,130,172,11,1
	db	32,1,130,168,6,1
	db	1,130,172,11,1
	db	36,1,130,168,6,1
	db	1,130,172,11,1		

	db	90,1,100,232,10,5
	db	1,100,236,4,5
	db	94,191,200,120,5,3
	db	191,200,124,14,3
	db	98,191,200,120,5,3
	db	191,200,124,14,3
	db	102,191,200,120,5,3
	db	191,200,124,14,3
	db	106,1,100,64,1,2
	db	1,100,68,14,2
	db	110,1,100,64,1,2
	db	1,100,68,14,2
	db	114,1,100,64,1,2
	db	1,100,68,14,2		


	db	168,1,50,232,10,5	
	db	1,50,236,4,5
	db	172,1,60,64,1,2
	db	1,60,68,14,2
	db	176,1,70,64,1,2
	db	1,70,68,14,2
	db	180,1,160,168,9,1
	db	1,160,172,11,1
	db	184,191,200,120,5,3
	db	191,200,124,14,3
	db	188,191,200,120,5,3
	db	191,200,124,14,3
	db	192,191,200,120,5,3
	db	191,200,124,14,3		

	db	246,1,100,232,10,5	
	db	1,100,236,4,5
	db	250,1,130,168,6,1
	db	1,130,172,11,1
	db	254,1,70,144,5,2
	db	1,70,148,14,2
	db	4,1,130,168,6,1
	db	1,130,172,11,1
	db	8,1,130,168,6,1
	db	1,130,172,11,1
	db	12,1,70,144,5,2
	db	1,70,148,14,2
	db	16,1,70,144,5,2
	db	1,70,148,14,2		

	db	70,1,150,232,10,5	
	db	1,150,236,4,5
	db	74,1,100,88,6,1
	db	1,100,92,11,1
	db	78,1,100,88,6,1
	db	1,100,92,11,1
	db	82,1,100,88,6,1
	db	1,100,92,11,1
	db	86,191,18,120,9,3
	db	191,18,124,11,3
	db	90,191,18,120,9,3
	db	191,18,124,11,3
	db	94,191,18,120,9,3
	db	191,18,124,11,3

	db	148,1,100,232,10,5	
	db	1,100,236,4,5
	db	152,1,230,168,13,4
	db	1,230,172,15,4
	db	156,1,230,168,7,4
	db	1,230,172,15,4
	db	160,1,230,168,13,4
	db	1,230,172,15,4
	db	164,1,230,168,7,4
	db	1,230,172,15,4
	db	168,1,230,168,13,4
	db	1,230,172,15,4
	db	172,1,230,168,7,4
	db	1,230,172,15,4		

	db	226,1,200,232,10,5
	db	1,200,236,4,5
	db	230,1,180,88,14,1
	db	1,180,92,1,1
	db	234,1,160,88,1,1
	db	1,160,92,13,1
	db	238,1,100,88,6,1
	db	1,100,92,1,1
	db	242,1,180,88,6,1
	db	1,180,92,1,1
	db	246,1,120,88,1,1
	db	1,120,92,13,1
	db	250,1,140,88,14,1
	db	1,140,92,1,1			

	db	48,1,20,232,10,5
	db	1,20,236,4,5
	db	52,1,80,144,9,2
	db	1,80,148,11,2
	db	56,1,80,144,9,2
	db	1,80,148,11,2
	db	60,1,100,144,9,2
	db	1,100,148,11,2
	db	64,191,200,120,5,3
	db	191,200,124,14,3
	db	68,191,200,120,5,3
	db	191,200,124,14,3
	db	72,191,200,120,5,3
	db	191,200,124,14,3

	db	126,1,200,232,10,5
	db	1,200,236,4,5
	db	130,1,40,120,9,2
	db	1,40,124,11,2
	db	134,1,20,120,9,2
	db	1,20,124,11,2
	db	138,1,160,88,14,1
	db	1,160,92,1,1
	db	142,191,18,120,5,3
	db	191,18,124,14,3
	db	146,191,18,120,5,3
	db	191,18,124,14,3
	db	150,191,18,120,5,3
	db	191,18,124,14,3	

	db	204,1,100,232,10,5
	db	1,100,236,4,5
	db	208,1,100,168,6,1
	db	1,100,172,11,1
	db	212,1,100,144,5,2
	db	1,100,148,14,2
	db	216,1,100,168,1,1
	db	1,100,172,14,1
	db	220,1,100,168,1,1
	db	1,100,172,14,1
	db	224,1,100,144,5,2
	db	1,100,148,14,2
	db	228,1,100,144,5,2
	db	1,100,148,14,2

	db	26,1,180,232,10,5
	db	1,180,236,4,5
	db	30,1,100,64,1,2
	db	1,100,68,5,2
	db	34,1,100,64,1,2
	db	1,100,68,5,2
	db	38,1,100,64,1,2		
	db	1,100,68,5,2
	db	42,191,18,120,13,3
	db	191,18,124,15,3
	db	46,191,18,120,13,3
	db	191,18,124,15,3
	db	50,191,18,120,13,3
	db	191,18,124,15,3

	db	104,1,100,232,10,5
	db	1,100,236,4,5
	db	108,1,100,144,1,2
	db	1,100,148,14,2
	db	112,1,100,144,1,2
	db	1,100,148,14,2
	db	116,1,100,144,1,2
	db	1,100,148,14,2
	db	120,191,200,120,10,3
	db	191,200,124,15,3
	db	124,191,200,120,10,3
	db	191,200,124,15,3
	db	128,191,200,120,10,3
	db	191,200,124,15,3

	db	182,1,200,168,6,4
	db	1,200,172,10,4
	db	186,1,200,168,6,4
	db	1,200,172,10,4
	db	190,1,200,168,6,4
	db	1,200,172,10,4
	db	194,191,18,120,14,3
	db	191,18,124,15,3
	db	198,191,18,120,6,3
	db	191,18,124,14,3
	db	202,191,18,120,14,3
	db	191,18,124,15,3
	db	206,191,18,120,6,3
	db	191,18,124,14,3

	db	4,1,100,232,10,5
	db	1,100,236,4,5
	db	8,1,100,88,6,1
	db	1,100,92,1,1
	db	12,1,100,64,15,2
	db	1,100,68,13,2
	db	16,1,100,88,6,1
	db	1,100,92,1,1
	db	20,1,100,88,6,1
	db	1,100,92,1,1
	db	24,1,100,64,15,2
	db	1,100,68,13,2
	db	28,1,100,64,15,2
	db	1,100,68,13,2

	db	82,1,80,204,1,6
	db	1,80,200,15,6
	db	86,1,175,204,1,6
	db	1,175,200,15,6
	db	90,1,112,204,1,6
	db	1,112,200,15,6
	db	94,1,80,204,1,6
	db	1,80,200,15,6
	db	112,1,175,204,1,6
	db	1,175,200,15,6
	db	116,1,112,204,1,6
	db	1,112,200,15,6
	db	120,1,80,204,1,6
	db	1,80,200,15,6

	db	200,1,72,224,6,13
	db	1,72,228,1,13
	db	204,1,112,224,6,13
	db	1,112,228,1,13
	db	208,1,200,224,5,13
	db	1,200,228,14,13
	db	212,1,80,224,5,13
	db	1,80,228,14,13
	db	216,1,100,232,10,5
	db	1,100,236,4,5
	db	220,1,175,224,6,13
	db	1,175,228,1,13
	db	224,1,112,224,6,13
	db	1,112,228,1,13

	db	10,1,80,224,5,13
	db	1,80,228,14,13
	db	14,1,175,224,5,13
	db	1,175,228,14,13
	db	18,1,112,224,5,13
	db	1,112,228,14,13
	db	22,1,72,224,5,13
	db	1,72,228,1,13
	db	24,1,112,224,5,13
	db	1,112,228,1,13

	db	62,1,100,232,10,5
	db	1,100,236,4,5
	db	66,1,175,168,1,1
	db	1,175,172,7,1
	db	70,1,80,144,1,8
	db	1,80,148,14,8
	db	74,1,175,168,1,1
	db	1,175,172,7,1
	db	78,1,80,144,1,8
	db	1,80,148,14,8
	db	82,1,175,168,1,1
	db	1,175,172,7,1

	db	136,1,100,232,10,5
	db	1,100,236,4,5
	db	140,1,72,224,13,13
	db	1,72,228,1,13
	db	144,1,112,224,13,13
	db	1,112,228,1,13
	db	148,1,200,224,13,13
	db	1,200,228,1,13
	db	152,1,80,224,13,13
	db	1,80,228,1,13
	db	156,1,190,224,13,13
	db	1,190,228,1,13
	db	160,1,130,224,13,13
	db	1,130,228,1,13

	db	200,1,100,232,10,5
	db	1,100,236,4,5
	db	204,1,100,64,15,2
	db	1,100,68,1,2
	db	208,1,100,64,15,2
	db	1,100,68,1,2
	db	212,1,100,88,6,1
	db	1,100,92,1,1
	db	216,191,200,120,9,3
	db	191,200,124,11,3
	db	220,191,200,120,9,3
	db	191,200,124,11,3
	db	224,191,200,120,9,3
	db	191,200,124,11,3

	db	22,1,100,232,10,5
	db	1,100,236,4,5
	db	26,1,20,144,1,8
	db	1,20,148,7,8
	db	30,1,20,144,1,8
	db	1,20,148,14,8
	db	34,1,20,144,1,8
	db	1,20,148,12,8
	db	38,1,20,144,1,8
	db	1,20,148,13,8
	db	42,1,20,144,1,8
	db	1,20,148,8,8
	db	46,1,20,144,1,8
	db	1,20,148,4,8

	db	100,1,40,204,1,6
	db	1,40,200,15,6
	db	104,1,175,204,1,6
	db	1,175,200,15,6
	db	108,1,92,204,1,6
	db	1,92,200,15,6
	db	112,1,80,204,1,6
	db	1,80,200,15,6
	db	116,1,235,204,1,6
	db	1,235,200,15,6
	db	120,1,112,204,1,6
	db	1,112,200,15,6
	db	124,1,80,204,1,6
	db	1,80,200,15,6

	db	182,1,180,168,4,4
	db	1,180,172,7,4
	db	186,1,180,168,4,4
	db	1,180,172,7,4
	db	190,1,180,168,4,4
	db	1,180,172,7,4
	db	194,191,200,120,1,3
	db	191,200,124,9,3
	db	198,191,200,120,1,3
	db	191,200,124,9,3
	db	202,191,200,120,1,3
	db	191,200,124,9,3
	db	206,191,200,120,1,3
	db	191,200,124,9,3

	db	6,1,100,232,10,5
	db	1,100,236,4,5
	db	10,1,175,88,7,1
	db	1,175,92,1,1
	db	14,1,80,88,7,8
	db	1,80,92,1,8
	db	18,1,175,88,7,1
	db	1,175,92,1,1
	db	22,1,80,88,7,8
	db	1,80,92,1,8
	db	26,1,175,88,7,1
	db	1,175,92,1,1
	db	30,1,80,88,7,8
	db	1,80,92,1,8

	db	120,191,18,120,5,3
	db	191,18,124,14,3
	db	124,191,18,120,5,3
	db	191,18,124,14,3
	db	128,191,18,120,1,3
	db	191,18,124,14,3
	db	132,191,200,120,1,3
	db	191,200,124,14,3
	db	136,191,200,120,13,3
	db	191,200,124,11,3
	db	140,191,200,120,13,3
	db	191,200,124,11,3

	db	255

mid1_eventlist:
	db	8,9
	db	16,112,64,1,16,112,68,13
	db	16,128,72,1,16,128,76,13
	db	32,112,80,1,32,112,84,13
	db	32,128,88,1,32,128,92,13

	db	20,10
	db	80,222,64,1,80,222,68,13
	db	80,238,72,1,80,238,76,13
	db	96,222,80,1,96,222,84,13
	db	96,238,88,1,96,238,92,13

	db	32,11
	db	159,112,64,1,159,112,68,13
	db	159,128,72,1,159,128,76,13
	db	175,112,80,1,175,112,84,13
	db	175,128,88,1,175,128,92,13

	db	44,12
	db	80,0,64,1,80,0,68,13
	db	80,16,72,1,80,16,76,13
	db	96,0,80,1,96,0,84,13
	db	96,16,88,1,96,16,92,13

	db	56,13
	db	16,112,64,1,16,112,68,13
	db	16,128,72,1,16,128,76,13
	db	32,112,80,1,32,112,84,13
	db	32,128,88,1,32,128,92,13

	db	68,14
	db	112,112,64,1,112,112,68,13
	db	112,128,72,1,112,128,76,13
	db	128,112,80,1,128,112,84,13
	db	128,128,88,1,128,128,92,13

	db	80,15
	db	16,112,64,1,16,112,68,13
	db	16,128,72,1,16,128,76,13
	db	32,112,80,1,32,112,84,13
	db	32,128,88,1,32,128,92,13

	db	92,9
	db	16,112,64,1,16,112,68,13
	db	16,128,72,1,16,128,76,13
	db	32,112,80,1,32,112,84,13
	db	32,128,88,1,32,128,92,13

	db	104,10
	db	80,222,64,1,80,222,68,13
	db	80,238,72,1,80,238,76,13
	db	96,222,80,1,96,222,84,13
	db	96,238,88,1,96,238,92,13

	db	116,11
	db	159,112,64,1,159,112,68,13
	db	159,128,72,1,159,128,76,13
	db	175,112,80,1,175,112,84,13
	db	175,128,88,1,175,128,92,13

	db	128,12
	db	80,0,64,1,80,0,68,13
	db	80,16,72,1,80,16,76,13
	db	96,0,80,1,96,0,84,13
	db	96,16,88,1,96,16,92,13

	db	140,13
	db	16,112,64,1,16,112,68,13
	db	16,128,72,1,16,128,76,13
	db	32,112,80,1,32,112,84,13
	db	32,128,88,1,32,128,92,13

	db	152,14
	db	112,112,64,1,112,112,68,13
	db	112,128,72,1,112,128,76,13
	db	128,112,80,1,128,112,84,13
	db	128,128,88,1,128,128,92,13

	db	164,15
	db	16,112,64,1,16,112,68,13
	db	16,128,72,1,16,128,76,13
	db	32,112,80,1,32,112,84,13
	db	32,128,88,1,32,128,92,13

	db	176,9
	db	16,112,64,1,16,112,68,13
	db	16,128,72,1,16,128,76,13
	db	32,112,80,1,32,112,84,13
	db	32,128,88,1,32,128,92,13

	db	188,10
	db	80,222,64,1,80,222,68,13
	db	80,238,72,1,80,238,76,13
	db	96,222,80,1,96,222,84,13
	db	96,238,88,1,96,238,92,13

	db	200,11
	db	159,112,64,1,159,112,68,13
	db	159,128,72,1,159,128,76,13
	db	175,112,80,1,175,112,84,13
	db	175,128,88,1,175,128,92,13

	db	212,12
	db	80,0,64,1,80,0,68,13
	db	80,16,72,1,80,16,76,13
	db	96,0,80,1,96,0,84,13
	db	96,16,88,1,96,16,92,13

	db	224,15
	db	16,112,64,1,16,112,68,13
	db	16,128,72,1,16,128,76,13
	db	32,112,80,1,32,112,84,13
	db	32,128,88,1,32,128,92,13

	db	255

elb1_entering:
	db	1,55
	
elb1_eventlist:
	db	9,15
	db	16,88,48,0,16,88,48,0
	db	16,160,48,0,16,160,48,0
	db	32,104,48,0,32,104,48,0
	db	32,144,48,0,32,144,48,0
	db	64,116,48,0,64,116,48,0
	db	64,132,48,0,64,132,48,0

	db	19,16
	db	16,88,48,0,16,88,48,0
	db	16,160,48,0,16,160,48,0
	db	32,104,48,0,32,104,48,0
	db	32,144,48,0,32,144,48,0
	db	64,116,48,0,64,116,48,0
	db	64,132,48,0,64,132,48,0

	db	30,17
	db	16,0,48,0,16,0,48,0
	db	16,72,48,0,16,72,48,0
	db	32,16,48,0,32,16,48,0
	db	32,56,48,0,32,56,48,0
	db	64,28,48,0,64,28,48,0
	db	64,44,48,0,64,44,48,0

	db	51,15
	db	16,168,48,0,16,168,48,0
	db	16,240,48,0,16,240,48,0
	db	32,184,48,0,32,184,48,0
	db	32,224,48,0,32,224,48,0
	db	64,196,48,0,64,196,48,0
	db	64,212,48,0,64,212,48,0

	db	61,16
	db	16,168,48,0,16,168,48,0
	db	16,240,48,0,16,240,48,0
	db	32,184,48,0,32,184,48,0
	db	32,224,48,0,32,224,48,0
	db	64,196,48,0,64,196,48,0
	db	64,212,48,0,64,212,48,0

	db	82,13
	db	16,0,48,0,16,0,48,0
	db	16,72,48,0,16,72,48,0
	db	32,16,48,0,32,16,48,0
	db	32,56,48,0,32,56,48,0
	db	64,28,48,0,64,28,48,0
	db	64,44,48,0,64,44,48,0

	db	95,14
	db	120,0,48,0,120,0,48,0
	db	120,72,48,0,120,72,48,0
	db	136,16,48,0,136,16,48,0
	db	136,56,48,0,136,56,48,0
	db	168,28,48,0,168,28,48,0
	db	168,44,48,0,168,44,48,0

	db	108,15
	db	16,0,48,0,16,0,48,0
	db	16,72,48,0,16,72,48,0
	db	32,16,48,0,32,16,48,0
	db	32,56,48,0,32,56,48,0
	db	64,28,48,0,64,28,48,0
	db	64,44,48,0,64,44,48,0

	db	118,17
	db	16,0,48,0,16,0,48,0
	db	16,72,48,0,16,72,48,0
	db	32,16,48,0,32,16,48,0
	db	32,56,48,0,32,56,48,0
	db	64,28,48,0,64,28,48,0
	db	64,44,48,0,64,44,48,0

	db	139,13
	db	16,168,48,0,16,168,48,0
	db	16,240,48,0,16,240,48,0
	db	32,184,48,0,32,184,48,0
	db	32,224,48,0,32,224,48,0
	db	64,196,48,0,64,196,48,0
	db	64,212,48,0,64,212,48,0

	db	152,14
	db	120,168,48,0,120,168,48,0
	db	120,240,48,0,120,240,48,0
	db	136,184,48,0,136,184,48,0
	db	136,224,48,0,136,224,48,0
	db	168,196,48,0,168,196,48,0
	db	168,212,48,0,168,212,48,0	

	db	165,15
	db	16,168,48,0,16,168,48,0
	db	16,240,48,0,16,240,48,0
	db	32,184,48,0,32,184,48,0
	db	32,224,48,0,32,224,48,0
	db	64,196,48,0,64,196,48,0
	db	64,212,48,0,64,212,48,0

	db	175,16
	db	16,168,48,0,16,168,48,0
	db	16,240,48,0,16,240,48,0
	db	32,184,48,0,32,184,48,0
	db	32,224,48,0,32,224,48,0
	db	64,196,48,0,64,196,48,0
	db	64,212,48,0,64,212,48,0

	db	185,15
	db	16,88,48,0,16,88,48,0
	db	16,160,48,0,16,160,48,0
	db	32,104,48,0,32,104,48,0
	db	32,144,48,0,32,144,48,0
	db	64,116,48,0,64,116,48,0
	db	64,132,48,0,64,132,48,0

	db	195,50
	db	16,88,48,0,16,88,48,0
	db	16,160,48,0,16,160,48,0
	db	32,104,48,0,32,104,48,0
	db	32,144,48,0,32,144,48,0
	db	64,116,48,0,64,116,48,0
	db	64,132,48,0,64,132,48,0

	db	255

level1_music:
	include "Rise.asm"
music1_end:

first_boss:
	ld	hl,actpat+37			;point to boss pattern number
						;we always use the first sprite used for boss hitpoints
						;to read params. Sprites are managed from "putsprite:"
						;routine, as always, but we use patterns to set things
						;properly for chars/tiles we will put on our nametable
						;buffer in ram (as always will be the scrolling routine
						;"cngchr:" to copy all the gfx from the buffer to vram)
	ld	a,(hl)
	sub	13			;cp	13
	jr	z,fb_boss_goes_down
	dec	a			;cp	14
	jr	z,fb_boss_goes_up
	dec	a			;cp	15
	jr	z,fb_to_nametable
	dec	a			;cp	16
	jr	z,fb_boss_goes_left
	dec	a			;cp	17
	jr	z,fb_boss_goes_right
	ret
fb_boss_goes_left:
	ld	hl,(boss_pos)			;as you know boos_pos is an offset that we add to
	dec	hl				;a nametable ram buffer address to print at desired
	ld	(boss_pos),hl			;position. So knowing the top left corner address as source
	ld	de,chstart-693			;we can determine other desired printing (or erasing) zone
	jp	erase_left_right		;too, according to boss data size/shape
						;so if the boss goes left we have to delete the right part
						;(where it is NOW, else it will be there next frame because
						;bosses aren't hardware sprites)
						;so, those arbitrary numbers you will see subtracted from
						;chstart are offset related to the boss. origin is set
						;always at chstart (our first variable just after the unpacked map)
						;-704,wich is our game area, the whole screen lenght (768) without
						;the first 2 rows (64) wich are the scoreboard
fb_boss_goes_right:
	ld	hl,(boss_pos)
	inc	hl				;so, to move right we will increase our offset by 1
	ld	(boss_pos),hl			;now the offset is set
	ld	de,chstart-704			;point de to the start of the nametable ram buffer
	dec	hl				;(restore old value, so where the boss is NOW, before
						;moving it)
erase_left_right:
	add	hl,de				;add the offset to the origin, so now hl point to the
						;top left corner of the boss, its start address
	ld	b,8				;the bass is 8 rows tall
	ld	de,32				;row offset (32 chars, pretty obvious)
erase_part:
	ld	(hl),0				;delete actual byte
	add	hl,de				;point to a row below
	djnz	erase_part			;repeat deleting first boss char for each row
	jp	fb_to_nametable			;the jump to print the boss to new position (well, in our
						;nametable ram buffer, at least)
fb_boss_goes_down:
	ld	bc,32				;to go down, obviously, we have to add 32 bytes (1 row)
	ld	hl,(boss_pos)
	add	hl,bc
	ld	(boss_pos),hl			;offset ready
;	ld	bc,16
	ld	c,16				;MDL optimization  1byte, 3 t-state
	ld	de,chstart-736			;instead of doing a subtraction we directly add a negative
						;offset to our origin so we have ready the address
						;where offset will be applied for deletion
	jp	erase_up_down			;go and delete first row of current position
fb_boss_goes_up:				;same as the goes_down one
	ld	bc,-32				;but we will add -32, to move up a row
	ld	hl,(boss_pos)
	add	hl,bc
	ld	(boss_pos),hl
	ld	bc,16
	ld	de,chstart-448			;now we have to delete the LAST row where the boss is now
						;so the origin has to be moved down 8x32bytes (8 rows) so
						;256 bytes. -704+256=-448
erase_up_down:
	ld	hl,(boss_pos)			;load current offset
	add	hl,de				;add it to fixed origin (result in hl)
	ld	d,h				;set de=hl
	ld	e,l
	ld	(hl),0				;set address pointed by hl=0
	inc	de				;inc de to set ldi destination
	call	unroll				;fill those byte with 0

						;now that we are able to set boss address to move it
						;in nametable ram buffer, then let's send it to
						;the nametable
fb_to_nametable:
	ld	hl,(boss_pos)			;load offset to add
	ld	de,chstart-704			;set nametable origin in de
	add	hl,de				;add them, result in hl
	ex	de,hl				;we need it as destination, so swap hl and de
	ld	hl,ELB_data1			;point hl to boss data start address 
	ld	a,8				;rows counter
fb_copy:
	ld	bc,11				;chars per row counter
	call	unroll+10			;send these 11 bytes as fast as possible
	push	hl				;save current address of data source so we can continue
						;from here later
	ld	hl,21				;we have sent a full row (11 chars) so now we need 
	add	hl,de				;to add 21 bytes to reach the start of new boss row
	ex	de,hl				;(11+21=32, you know...) and as you know we need this
						;address in de, so swap hl and de
	pop	hl				;retrieve the source address where we were 
	dec	a				;decrease row counter
	jp	nz,fb_copy			;and jump back for a new row if we haven't finished

	ld	a,(boss_fire)			;when check if the boss is firing (it is possible when it)
	or	a				;is stopped, so...
	ret	z				;if no then ret, else...

bossfire_level1:
	ld	hl,(boss_pos)			;load offset value
	ld	de,chstart-444			;add fixed origin (the fire beam start centered at the
						;bottom of the boss)
						;the whole boss is 8 row tall, so to reach its last row
						;we have to add 8x32=256 bytes. 704-256=448
						;but we have to arrive to the center, so 4 bytes
						;more (the beam is 3 characters long): 704-260=444
	add	hl,de				;add offset and fixed origin
	ld	de,30				;set next row offset
	ld	a,33				;set in a and c two of the 3 values for a beam row draw
;	ld	b,14				;and in b the beam lenght (in rows, the boss fires only when
;	ld	c,34				;stopped at the top center of the screen)
	ld	bc,14*256 + 34
gigafire_loop:
	ld	(hl),a				;the tree following will write the 3 chars beam values 
	inc	l				;one after each other
	ld	(hl),c
	inc	l
	ld	(hl),35
	add	hl,de				;then we add the net row offset
	djnz	gigafire_loop			;decrease row counter and repeat until done
	ld	a,6				;set boss fire sfx number
	ld	(sfx_nr),a
	ld	a,(boss_fire)			;decrease fire timer
	dec	a
	ld	(boss_fire),a
	ret	nz				;ret if it hasn't reached zero yet
nofire_level1:					;else we have to delete the beam from the screen
	ld	hl,(boss_pos)			;pretty the same routine but we set 0 for all the 3
	ld	de,chstart-444			;characters. no need to explain more
	add	hl,de
	ld	de,30
	ld	b,14
	xor	a
	ld	(boss_fire),a
nofire_loop:
	ld	(hl),a
	inc	l
	ld	(hl),a
	inc	l
	ld	(hl),a
	add	hl,de	
	djnz	nofire_loop
	ret	

endboss_firecollision1:				;check if beam hit us
	ld	hl,ramspttbl+1			;point to player xpos
;	ld	b,105		;15*8-15	;when beam is on, occupies the part of the screen
;	ld	c,143		;17*8+7		;between 15th and 17th cahrs in all the rows
						;so, being the starship 16 pixel wide, if it is
						;at an x coordinate between values we have set
						;in b and c then we were hit. no doubt about it

	ld	bc,105*256 + 143		;faster and shorter
	ld	a,(hl)				;player xpos in a
	cp	b				;compare with x set in b
	ret	c				;exit if lower (we are at the left of the beam)
	cp	c				;else compare with x set in c
	ret	nc				;and exit if greater (we are at the right of the beam)
	jp	i_am_dead			;else we are dead...
						;level1 data until the end of the segment
						;we will see at the next segment, to end level boss code

ELB_data1:
	db	036,037,038,039,040,041,042,043,044,045,046		;row1
	db	047,058,059,060,061,062,063,064,098,099,100		;row2
	db	000,000,101,102,103,104,105,106,107,000,000		;row3
	db	000,000,108,109,110,111,112,113,114,000,000		;row4
	db	000,000,000,000,115,116,117,000,000,000,000		;row5
	db	000,000,000,000,115,116,117,000,000,000,000		;row6
	db	000,000,000,000,115,116,117,000,000,000,000		;row7
	db	000,000,000,000,118,119,120,000,000,000,000		;row8
level1map:
	db	0
	db	255,0										;001
	db	253,18,18,18,18,254,0,252,0,0							;002
	db	253,16,16,16,16,254,0,252,0,0							;003
	db	253,16,16,16,17,0,21,24,254,0,0,0						;004
	db	253,16,16,17,0,0,20,23,0,0,18,253,0,0,18,18,18,0,0,0				;005
	db	253,16,17,0,0,0,19,22,0,18,16,18,18,18,0,0,0,18,18,18,16,16,16,18,0,0		;006
	db	253,16,0,21,24,21,24,0,18,16,252,17,0,0,18,252,16,16,16,17,18,18		;007
	db	17,252,16,16,16,17,0,20,23,20,23,0,16,17,252,0,0,0,252,16,16,16,16,0,17,17	;008
	db	0,17,16,16,16,17,17,0,0,19,22,19,22,18,17,252,0,0,0,0,17,252,16,16,16,18,0,0	;009
	db	0,0,17,17,17,253,0,17,253,0,0,17,17,16,16,17,17,17,0,0				;010
	db	252,0,0,0,0,21,24,253,0,0,0,0,2,6,0,0,0,17,17,252,0,0				;011
	db	0,18,18,18,21,24,0,20,23,18,21,24,0,0,0,2,6,0,0,2,1,5,6,253,0,0			;012
	db	18,16,16,16,20,23,0,19,22,17,20,23,0,0,2,1,5,6,2,1,9,9,5,6,0,0,2,6,252,0	;013
	db	17,16,17,17,19,22,21,24,21,24,19,22,0,2,1,9,9,5,1,252,9,5,6,2,1,5,6,0,0,0	;014
	db	0,17,21,21,21,24,20,23,20,23,0,0,2,1,253,9,9,9,5,1,9,9,5,6,0,0			;015
	db	0,0,20,20,20,23,19,22,19,22,0,2,1,254,9,5,6,0					;016
	db	0,0,19,19,19,22,18,18,0,0,2,1,254,9,9,9,5,6					;017
	db	6,252,0,0,16,16,0,2,1,254,9,252,9,5						;018
	db	5,6,0,0,2,6,17,17,2,1,254,9,252,9,9,9						;019
	db	9,5,6,2,1,5,6,2,1,254,9,252,9,9,9,9						;020
	db	9,9,5,1,9,9,5,1,253,9,252,9,9,9,27,253,9,13					;021
	db	254,9,252,9,9,9,26,252,9,9,9,9,13,12						;022
	db	254,9,253,9,252,9,9,13,12,0							;023
	db	254,9,27,27,253,9,9,9,9,14,0,0							;024
	db	254,9,25,25,27,253,9,9,9,7,0,0							;025
	db	254,9,26,26,26,27,253,9,13,29,0,0						;026
	db	254,9,9,9,9,26,252,9,9,9,9,13,12,0,0,18						;027
	db	252,9,27,254,9,252,9,9,13,12,0,0,18,16						;028
	db	252,9,26,254,9,252,9,13,12,0,0,18,16,16						;029
	db	254,9,253,9,9,14,0,0,0,16,16,16							;030
	db	254,9,253,9,9,7,0,0,0,17,16,16							;031
	db	254,9,253,9,9,7,252,0,17,16							;032
	db	252,9,27,27,27,254,9,9,9,7,252,0,0,17						;033
	db	252,9,25,25,26,254,9,9,9,8,252,0,0,0						;034
	db	252,9,26,26,254,9,27,9,9,5,6,252,0,0						;035
	db	254,9,252,9,9,9,26,9,9,9,5,6,252,0						;036
	db	254,9,253,9,9,9,9,5,6,0,0,0							;037
	db	254,9,253,9,252,9,5,6,0,0							;038
	db	254,9,253,9,252,9,9,5,6,0							;039
	db	254,9,253,9,252,9,9,9,5,6							;040
	db	254,9,253,9,252,9,9,9,9,5							;041
	db	255,9										;042
	db	255,9										;043
	db	253,9,252,9,9,13,11,254,9,9							;044
	db	253,9,252,9,13,12,10,11,254,9							;045
	db	11,253,9,13,11,13,12,0,0,10,11,253,9,252,9,9,9,9				;046
	db	10,11,252,9,13,11,13,12,10,12,252,0,10,11,253,9,252,9,9,9			;047
	db	0,10,11,13,11,13,12,10,12,253,0,15,252,9,9,27,9,13,11,252,9,9			;048
	db	0,0,10,12,10,12,252,0,0,0,18,18,18,0,0,3,252,9,9,26,9,14,10,11,9,9,13,11	;049
	db	253,0,0,0,0,18,16,16,17,0,0,3,252,9,9,9,9,7,0,10,11,13,12,10			;050
	db	253,0,0,0,0,17,17,17,0,0,0,3,252,9,9,9,9,7,0,0,10,12,0,0			;051
	db	253,18,252,18,18,252,0,3,252,9,9,9,9,7,252,0,0,0				;052
	db	253,16,252,16,17,252,0,4,9,27,252,9,9,7,252,0,0,0				;053
	db	253,17,252,17,0,0,2,6,2,1,9,26,252,9,9,7,252,0,0,0				;054
	db	253,0,0,2,6,2,6,2,1,5,1,252,9,9,9,9,13,29,252,0,0,0				;055 215
	db	253,0,2,1,5,1,5,1,253,9,9,9,14,252,0,0,0,0					;056
	db	252,0,0,2,6,2,1,253,9,252,9,9,9,13,29,252,0,0,0,0				;057
	db	2,6,0,0,2,1,5,1,253,9,252,9,9,9,9,14,253,0					;058
	db	1,5,6,2,1,254,9,9,13,29,253,0							;059
	db	9,9,5,1,254,9,13,11,14,253,0,0							;060
	db	254,9,252,9,14,15,7,253,0,0							;061
	db	252,9,27,253,9,252,9,9,9,13,29,28,29,253,0,0					;062
	db	11,9,9,9,26,253,9,9,9,9,13,11,13,12,253,0,252,0					;063
	db	15,253,9,252,9,9,9,9,14,15,14,253,0,252,0,0					;064
	db	3,253,9,252,9,9,9,13,29,28,29,253,0,252,0,0					;065
	db	3,253,9,9,9,27,9,9,9,14,254,0							;066
	db	28,11,253,9,9,26,9,9,9,7,254,0							;067
	db	0,10,11,253,9,9,9,9,13,29,254,0							;068
	db	0,0,15,253,9,9,9,9,14,0,252,18,253,0,252,0					;069
	db	0,0,4,253,9,9,9,9,7,0,252,16,18,253,0,0,0,0					;070 200
	db	0,2,1,253,9,9,9,9,7,0,252,17,17,253,0,0,0,0					;071
	db	2,1,253,9,9,9,9,13,29,254,0,0							;072
	db	1,253,9,252,9,14,254,0,0,0							;073
	db	11,253,9,252,9,7,254,0,0,0							;074
	db	10,11,253,9,9,9,9,7,254,0,0,0							;075
	db	0,10,11,253,9,9,9,8,254,0,0,0							;076
	db	0,0,10,11,27,27,252,9,9,9,9,5,6,253,0,252,0,252,18,18				;077
	db	0,0,0,15,26,25,253,9,5,6,253,0,0,18,18,252,16,16				;078
	db	0,0,0,3,9,26,253,9,9,5,6,2,6,252,0,0,0,252,17,17,16,16				;079
	db	0,0,0,3,253,9,252,9,5,1,5,6,2,6,2,6,252,0,0,0,17,16				;080 190
	db	0,0,0,28,11,253,9,252,9,9,9,5,1,5,1,5,6,252,0,0,0,17				;081
	db	252,0,10,11,254,9,9,9,5,6,2,6,252,0						;082
	db	252,0,0,10,11,254,9,9,9,5,1,5,6,0,0,0						;083
	db	252,0,0,0,10,11,254,9,252,9,5,6,2,6						;084
	db	252,0,0,0,0,15,254,9,252,9,9,5,1,5						;085
	db	252,0,0,0,0,3,254,9,253,9							;086
	db	252,0,0,0,0,28,11,254,9,252,9,9,9,9						;087
	db	253,0,10,11,254,9,9,27,27,9,9,9							;088
	db	253,0,0,10,11,254,9,25,25,27,9,9						;089
	db	253,0,0,0,15,254,9,26,26,26,27,9						;090 180
	db	253,0,0,0,3,254,9,9,9,9,26,9							;091
	db	253,0,0,0,3,13,11,254,9,9,9,9							;092
	db	253,0,0,0,3,14,15,11,254,9,9,9							;093
	db	253,0,0,0,28,29,28,10,11,253,9,27,253,9						;094
	db	253,0,252,0,0,0,10,11,13,11,13,11,9,9,9,26,253,9				;095
	db	253,0,252,0,0,0,0,10,12,10,12,10,11,13,11,253,9,9				;096
	db	254,0,252,0,10,12,15,13,11,252,9,9,9,9						;097
	db	252,0,0,0,0,253,18,18,252,0,0,0,3,14,10,11,13,11,9,27,9,9			;098
	db	0,0,252,18,18,253,16,16,18,18,252,0,28,29,0,10,12,10,11,26,9,9			;099
	db	0,0,253,16,252,16,252,17,253,0,0,0,10,11,9,13					;100 170
	db	0,0,17,253,16,16,16,16,253,0,252,0,0,0,0,15,13,12				;101
	db	0,0,0,253,17,17,17,17,253,0,252,0,0,0,0,3,14,0					;102
	db	254,0,253,0,252,0,0,28,29,0							;103
	db	255,0										;104
	db	255,0										;105
	db	255,0										;106
	db	255,0										;107
	db	253,18,254,0,253,0								;108
	db	253,16,253,18,252,18,253,0,252,0						;109
	db	252,17,254,16,253,0,252,0							;110 160
	db	252,0,254,17,253,0,252,0							;111
	db	255,0										;112
	db	254,0,252,0,0,0,253,18,0,0							;113
	db	254,0,252,0,0,0,253,16,0,0							;114
	db	254,18,252,0,0,0,253,17,0,0							;115
	db	254,16,0,0,18,18,18,253,0,0,0,0							;116
	db	254,17,0,0,17,17,17,253,0,0,0,0							;117
	db	254,0,254,18									;118
	db	254,0,254,16									;119
	db	254,0,254,17									;120 150
	db	255,0										;121
	db	254,0,252,18,18,18,18,253,0,0							;122
	db	254,0,252,16,16,16,16,253,0,0							;123
	db	254,0,17,16,16,16,17,17,17,253,0,0						;124
	db	254,0,0,17,17,17,0,0,252,18,18,252,0,0						;125
	db	252,0,18,18,18,253,0,252,0,0,0,0,252,16,16,252,0,0				;126
	db	252,0,17,17,17,253,0,252,0,0,0,0,252,17,17,252,0,0				;127
	db	255,0										;128
	db	253,0,0,0,5,254,9,252,9,9							;129
	db	253,0,0,0,4,254,8,252,8,8							;130 140
	db	253,0,0,0,3,254,15,252,15,15							;131
	db	253,0,0,5,28,254,15,252,15,15							;132
	db	253,0,0,4,254,15,252,15,15,15							;133
	db	253,0,5,28,254,15,252,15,15,15							;134
	db	253,0,4,254,15,252,15,15,15,15							;135
	db	253,0,3,254,15,252,15,15,15,15							;136
	db	252,0,0,0,0,5,28,254,15,252,15,15,15,15						;137
	db	252,0,0,0,0,4,253,15,252,15,253,26,26,15,15,15					;138
	db	252,0,0,0,5,28,253,15,15,15,26,26,253,27,27,26,26,26				;139
	db	252,0,0,0,4,252,15,15,15,15,252,26,253,27,252,27,27,27				;140 130
	db	252,0,0,5,28,252,15,15,15,26,25,254,27,27					;141
	db	252,0,0,4,252,15,15,15,15,25,15,252,25,25,253,27,252,27				;142
	db	252,0,5,28,253,15,252,15,15,15,252,25,25,25,25,252,27,27			;143
	db	252,0,4,254,15,252,15,15,15,252,25,25						;144
	db	0,0,0,5,28,254,15,253,15,15,15,15						;145
	db	0,0,0,4,254,15,253,15,252,15							;146
	db	0,0,5,28,254,15,253,15,252,15							;147
	db	0,0,4,254,15,253,15,252,15,15							;148
	db	0,5,28,254,15,253,15,252,15,15							;149
	db	0,4,254,15,253,15,252,15,15,15							;150 120
	db	5,28,254,15,253,15,252,15,15,15							;151
	db	4,254,15,253,15,252,15,15,15,15							;152
	db	28,254,15,253,15,252,15,15,15,15						;153
	db	255,15										;154
	db	255,15										;155
	db	15,15,15,253,26,26,26,254,15,15,15,15						;156
	db	15,15,15,253,27,27,27,252,26,26,253,15,252,15,15,15				;157
	db	15,15,15,25,253,27,252,27,27,27,253,15,252,15,15,15				;158
	db	252,15,253,25,252,25,25,25,253,15,252,15,15,15					;159
	db	255,15										;160 110
	db	255,15										;161
	db	7,254,15,253,15,252,15,15,15,15							;162
	db	6,7,254,15,253,15,252,15,15,15							;163
	db	0,6,254,7,253,7,252,7,7,7							;164
	db	0,0,254,6,253,6,252,6,6,6							;165
	db	254,0,252,0,0,253,18,18,0,0							;166
	db	253,18,253,0,252,0,0,253,16,16,0,0						;167
	db	253,17,253,0,252,0,18,252,16,16,16,17,17,17,0,0					;168
	db	254,0,252,0,252,16,16,16,16,252,0,5						;169
	db	253,9,252,9,14,252,0,0,0,0,252,16,16,16,17,252,0,4				;170 100
	db	253,8,252,8,13,252,0,0,0,0,252,16,16,16,18,18,0,0,0,3				;171
	db	15,15,15,252,26,26,252,15,29,9,9,9,14,0,0,18,253,16,18,18,0,3			;172
	db	15,15,15,252,27,27,26,252,15,8,8,8,13,0,0,17,253,16,16,16,0,3			;173
	db	15,15,15,252,25,25,25,252,15,15,15,15,12,0,0,0,17,252,16,16,16,17,17,17,0,3	;174
	db	254,7,11,252,0,17,252,16,17,252,0,3						;175
	db	254,6,10,252,0,0,252,17,252,0,0,3						;176
	db	253,18,252,18,18,18,18,253,0,252,0,0,0,0,5,28					;177
	db	253,16,252,16,16,16,16,253,18,18,252,0,0,0,4,15					;178
	db	254,16,253,16,5,252,9,9,28,15							;179
	db	253,16,252,16,16,16,16,253,17,17,4,252,8,8,15,15				;180 090
	db	253,16,252,16,16,16,16,5,253,9,28,252,15,15,15,15				;181
	db	253,17,252,16,16,16,16,4,253,8,253,15						;182
	db	253,0,252,17,16,16,16,3,254,15							;183
	db	253,0,252,0,17,17,17,2,254,7							;184
	db	253,0,252,0,0,0,0,1,254,6							;185
	db	255,0										;186
	db	0,5,9,14,254,0,253,0,252,0							;187
	db	0,4,8,13,254,0,253,0,252,0							;188
	db	0,3,15,12,254,0,253,0,252,0							;189
	db	0,2,7,11,254,0,253,0,252,0							;190 080
	db	0,1,6,10,254,0,253,0,252,0							;191
	db	255,0										;192
	db	255,0										;193
	db	253,0,252,0,253,18,252,18,253,0							;194
	db	253,0,252,18,253,16,252,16,253,0						;195
	db	252,0,252,18,253,16,252,16,252,17,253,0						;196
	db	252,0,253,16,252,16,252,17,253,0,252,0						;197
	db	252,0,253,16,252,16,252,18,253,0,252,0						;198
	db	252,0,252,17,253,16,252,16,253,0,252,0						;199
	db	253,0,253,17,252,17,253,0,252,0							;200 070
	db	255,0										;201
	db	253,0,252,0,0,0,21,21,24,252,0,0,21,24,253,0					;202
	db	253,0,0,0,0,21,24,0,20,20,23,0,21,24,0,0,20,23,0,0,21,24,252,0			;203
	db	252,0,0,0,21,21,24,0,0,20,23,0,19,19,22,0,20,23,0,0,19,22,0,0,20,23,252,0	;204
	db	252,0,0,0,20,20,23,0,0,19,22,0,21,24,0,0,19,22,0,21,24,0,0,0,19,22,252,0	;205
	db	252,0,0,0,19,19,22,21,21,21,24,0,20,23,0,21,24,0,0,20,23,0,21,24,252,0,0,0	;206
	db	253,0,0,20,20,20,23,0,19,22,0,20,23,0,0,19,22,0,20,23,252,0,0,0			;207
	db	253,0,0,19,19,19,22,252,0,19,22,252,0,0,19,22,252,0,0,0				;208
	db	255,0										;209
	db	255,0										;210
	db	255,0										;211
	db	255,0										;212
	db	255,0										;213
	db	255,0										;214
	db	255,0										;215
	db	255,0										;216
	db	255,0										;217
	db	252,18,254,0,253,0,252,0							;218
	db	252,16,252,18,254,0,253,0							;219
	db	253,16,253,18,254,0								;220
	db	254,16,254,18									;221
	db	255,16										;222
	db	255,16										;223
	db	255,16										;224
	db	254,16,253,16,252,16,252,17							;225
	db	254,16,253,16,252,16,252,0							;226
	db	254,16,253,16,252,16,252,18							;227
	db	255,16										;228
	db	253,16,252,16,254,17,252,17							;229
	db	253,17,252,17,254,0,252,0							;230
	db	255,0										;231
	db	255,0										;232
	db	255,0										;233
	db	252,21,24,253,0,252,0,0,21,24,9,21,24,9,21,24,9,21,24,9,21,24			;234
	db	252,20,23,253,0,252,0,0,20,23,8,20,23,8,20,23,8,20,23,8,20,23			;235
	db	252,19,22,252,0,0,253,0,19,22,15,19,22,15,19,22,15,19,22,15,19,22		;236
	db	254,9,252,9,15,9,9,15,9,9,15,9,9,15,9,9						;237
	db	254,8,252,8,15,8,8,15,8,8,15,8,8,15,8,8						;238
	db	254,7,252,7,15,7,7,15,7,7,15,7,7,15,7,7						;239
	db	254,6,252,6,15,6,6,15,6,6,15,6,6,15,6,6						;240
	db	254,0,0,0,21,24,15,21,24,15,21,24,15,21,24,15,21,24				;241
	db	254,0,0,0,20,23,7,20,23,7,20,23,7,20,23,7,20,23					;242
	db	254,0,0,0,19,22,6,19,22,6,19,22,6,19,22,6,19,22					;243
	db	255,0										;244
	db	255,0										;245
	db	255,0										;246
	db	255,0										;247
	db	255,0										;248
	db	255,0										;249
	db	255,0										;250
	db	255,0										;251
	db	255,0										;252
	db	255,0										;253
	db	255,0										;254
	db	255,0										;255
	db	255,0										;256
	db	255,0										;257
	db	255,0										;258
	db	255,0										;259
	db	255,0										;260
	db	255,0										;261
	db	255,0										;262
	db	255,0										;263
	db	255,0										;264
	db	255,0										;265
	db	255,0										;266
	db	255,0										;267
	db	255,0										;268
	db	255,0										;269
	db	255,0										;270
	db	255,0										;271
	db	255,0										;272
	db	255,0										;273
	db	251
boss1_t1:
	db	000h,000h,000h,000h,000h,000h,000h,000h		;030	boss
	db	000h,000h,000h,000h,000h,000h,000h,000h		;031	boss
	db	000h,000h,000h,000h,000h,000h,000h,000h		;032	space

	db	05fh,03fh,05fh,03fh,05fh,03fh,05fh,03fh		;033	boss laser
	DB	0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh		;034	boss laser
	db	0fch,0fah,0fch,0fah,0fch,0fah,0fch,0fah		;035	boss laser
	db	000h,001h,007h,00Fh,01Fh,01Fh,03Fh,03Fh		;036	boss	
	db	07Ch,0FFh,08Fh,007h,08Fh,08Fh,08Fh,08Fh		;037	boss	
	db	000h,09Fh,0AFh,0AFh,0AFh,0AFh,0AFh,0A7h		;038	boss
	db	000h,003h,0F9h,0F5h,0F5h,0F5h,0F5h,0F5h		;039	boss	
	db	0FCh,0FEh,0FFh,0FFh,0FFh,0F8h,0F7h,0F7h		;040	boss
	db	018h,03Ch,0FFh,0FFh,000h,0FFh,0FFh,081h		;041	boss
	db	03Fh,07Fh,0FFh,0FFh,0FFh,01Fh,0EFh,0EFh		;042	boss
	db	000h,0C0h,09Fh,0AFh,0AFh,0AFh,0AFh,0AFh		;043	boss	
	db	000h,0F9h,0F5h,0F5h,0F5h,0F5h,0F5h,0E5h		;044	boss	
	db	03Eh,0FFh,0F1h,0E0h,0F1h,0F1h,0F1h,0F1h		;045	boss	
	db	000h,080h,0E0h,0F0h,0F8h,0F8h,0FCh,0FCh		;046	boss	
	db	01Fh,01Fh,00Fh,00Fh,00Fh,007h,003h,001h		;047	boss
boss1_t1_end:
boss1_t2:
	db	08Fh,08Fh,0DFh,08Fh,08Fh,0DFh,0FFh,0C3h		;058	boss
	db	0B7h,0B7h,0B7h,0B7h,0B7h,0D7h,0D7h,0E7h		;059	boss
	db	0EDh,0EDh,0EDh,0EDh,0EDh,0EBh,0EBh,0E7h		;060	boss
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0F7h,0F7h,0FBh		;061	boss
	db	000h,000h,000h,040h,040h,081h,081h,0C3h		;062	boss
	db	0F7h,0F7h,0F7h,0F7h,0F7h,0EFh,0EFh,0DFh		;063	boss
	db	0B7h,0B7h,0B7h,0B7h,0B7h,0D7h,0D7h,0E7h		;064	boss
boss1_t2_end:
boss1_t3:
	db	0EDh,0EDh,0EDh,0EDh,0EDh,0EBh,0EBh,0E7h		;098	boss
	db	0F1h,0F1h,0FBh,0F1h,0F1h,0FBh,0FFh,0C3h		;099	boss
	db	0F8h,0F8h,0F0h,0F0h,0F0h,0E0h,0C0h,080h		;100	boss
	db	0FFh,0FFh,0FEh,0FFh,07Fh,07Fh,07Fh,03Fh		;101	boss
	db	0FFh,01Fh,00Fh,01Fh,01Fh,01Fh,01Fh,01Fh		;102	boss
	db	0FBh,0FBh,0FDh,0FEh,0FFh,0FFh,0FFh,0FFh		;103	boss
	db	0FFh,0FFh,0FFh,0FFh,07Eh,07Eh,0BDh,0C3h		;104	boss
	db	0DFh,0DFh,0BFh,07Fh,0FFh,0FFh,0FFh,0FFh		;105	boss
	db	0FFh,0F8h,0F0h,0F8h,0F8h,0F8h,0F8h,0F8h		;106	boss
	db	0FFh,0FFh,07Fh,0FFh,0FEh,0FEh,0FEh,0FCh		;107	boss
	db	03Fh,03Fh,03Fh,03Fh,03Fh,01Fh,01Eh,00Ch		;108	boss
	db	01Fh,0BFh,01Fh,01Fh,0BFh,0FFh,01Fh,003h		;109	boss
	db	087h,0B8h,080h,0BFh,080h,0ACh,0DDh,0FEh		;110	boss
	db	0E7h,0FFh,07Eh,099h,0E0h,0FFh,0E0h,07Eh		;111	boss
	db	0E1h,01Dh,001h,0FDh,001h,035h,0BBh,07Fh		;112	boss
	db	0F8h,0FDh,0F8h,0F8h,0FDh,0FFh,0F8h,0C0h		;113	boss
	db	0FCh,0FCh,0FCh,0FCh,0FCh,0F8h,078h,030h		;114	boss
	db	0FFh,0FFh,0FFh,07Fh,07Fh,07Fh,03Fh,03Fh		;115	boss
	db	081h,07Eh,0E0h,07Eh,0E0h,07Eh,0E0h,07Eh		;116	boss
	db	0FFh,0FFh,0FFh,0FEh,0FEh,0FEh,0FCh,0FCh		;117	boss
	db	07Fh,07Fh,07Fh,07Fh,07Fh,07Fh,03Fh,03Bh		;118	boss
	db	0E0h,07Eh,0E0h,07Eh,0E0h,03Ch,081h,0DBh		;119	boss
	db	0FEh,0FEh,0FEh,0FEh,0FEh,0FEh,0FCh,0DCh		;120	boss
	db	0,0,0,0,0,0,0,0					;121
	db	0,0,0,0,0,0,0,0					;122
	db	0,0,0,0,0,0,0,0					;123
	db	0,0,0,0,0,0,0,0					;124
	db	0,0,0,0,0,0,0,0					;125
	db	0,0,0,0,0,0,0,0					;126
	db	0,0,0,0,0,0,0,0					;127
boss1_t3_end:
	db	0,0,0,0,0,0,0,0					;091	boss

boss1_c1:
	db	000h,000h,000h,000h,000h,000h,000h,000h		;030	boss
	db	000h,000h,000h,000h,000h,000h,000h,000h		;031	boss
	db	011h,011h,011h,011h,011h,011h,011h,011h		;032	space

	db	0f7h,0f7h,0f7h,0f7h,0f7h,0f7h,0f7h,0f7h		;033		
	DB	0f7h,0f7h,0f7h,0f7h,0f7h,0f7h,0f7h,0f7h		;034	
	db	0f7h,0f7h,0f7h,0f7h,0f7h,0f7h,0f7h,0f7h		;035	
	DB	012h,012h,012h,012h,012h,012h,012h,012h		;036	
	db	012h,010h,016h,014h,01Eh,01Eh,01Eh,01Eh		;037	
	DB	0A2h,014h,014h,014h,014h,014h,014h,014h		;038	
	db	0A2h,012h,014h,014h,014h,014h,014h,014h		;039	
	DB	012h,012h,010h,010h,010h,015h,015h,015h		;040	
	db	012h,012h,010h,010h,015h,015h,010h,014h		;041		
	DB	012h,012h,010h,010h,010h,015h,015h,015h		;042		
	db	0A2h,012h,014h,014h,014h,014h,014h,014h		;043	
	DB	0A2h,014h,014h,014h,014h,014h,014h,014h		;044		
	db	012h,010h,016h,014h,01Eh,01Eh,01Eh,01Eh		;045	
	DB	012h,012h,012h,012h,012h,012h,012h,012h		;046		
	db	012h,012h,012h,012h,012h,012h,012h,012h		;047
boss1_c1_end:
boss1_c2:		
	DB	01Eh,01Eh,01Eh,016h,016h,016h,010h,012h		;058	
	DB	014h,014h,014h,014h,014h,014h,014h,014h		;059	
	DB	014h,014h,014h,014h,014h,014h,014h,014h		;060	
	DB	015h,015h,015h,015h,015h,015h,015h,015h		;061	
	DB	014h,014h,014h,0F4h,0F4h,014h,014h,014h		;062	
	DB	015h,015h,015h,015h,015h,015h,015h,015h		;063	
	DB	014h,014h,014h,014h,014h,014h,014h,014h		;064	
boss1_c2_end:
boss1_c3:
	db	014h,014h,014h,014h,014h,014h,014h,014h		;098	
	db	01Eh,01Eh,01Eh,016h,016h,016h,010h,012h		;099	
	db	012h,012h,012h,012h,012h,012h,012h,012h		;100	
	db	016h,016h,014h,015h,012h,012h,012h,012h		;101	
	db	010h,016h,014h,01Eh,01Eh,01Eh,01Eh,01Eh		;102	
	db	015h,015h,015h,015h,010h,010h,010h,010h		;103	
	db	015h,010h,010h,015h,015h,015h,015h,015h		;104	
	db	015h,015h,015h,015h,010h,010h,010h,010h		;105	
	db	010h,016h,014h,01Eh,01Eh,01Eh,01Eh,01Eh		;106	
	db	016h,016h,014h,015h,012h,012h,012h,012h		;107	
	db	012h,012h,012h,012h,012h,012h,012h,012h		;108	
	db	01Eh,01Eh,016h,016h,016h,010h,012h,012h		;109	
	db	01Fh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh		;110	
	db	015h,010h,01Eh,01Eh,0FEh,010h,0FEh,01Eh		;111	
	db	01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh		;112	
	db	01Eh,01Eh,016h,016h,016h,010h,012h,012h		;113	
	db	012h,012h,012h,012h,012h,012h,012h,012h		;114	
	db	010h,010h,010h,012h,012h,012h,012h,012h		;115	
	db	01Eh,01Eh,0FEh,01Eh,0FEh,01Eh,0FEh,01Eh		;116	
	db	010h,010h,010h,012h,012h,012h,012h,012h		;117	
	db	012h,012h,012h,012h,012h,012h,012h,012h		;118	
	db	0FEh,01Eh,0FEh,01Eh,0FEh,01Eh,01Eh,01Eh		;119	
	db	012h,012h,012h,012h,012h,012h,012h,012h		;120
	db	0,0,0,0,0,0,0,0					;121
	db	0,0,0,0,0,0,0,0					;122
	db	0,0,0,0,0,0,0,0					;123
	db	0,0,0,0,0,0,0,0					;124
	db	0,0,0,0,0,0,0,0					;125
	db	0,0,0,0,0,0,0,0					;126
	db	0,0,0,0,0,0,0,0					;127
boss1_c3_end:	
	db	0,0,0,0,0,0,0,0					;091	boss

panel:
	db	"  SCORE   LIVES  POWER  HI",95,"SCORE"
	db	"00000000    3           00005000"

lv1_data_end:
	DS	-$ & 3FFFh

	org	08000h
;level2
ramchr2_1:
		;patterns
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 000
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 001
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 002
	db	000h,000h,000h,010h,000h,000h,000h,000h ; 003
	db	000h,000h,000h,010h,000h,000h,000h,000h ; 004
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 005
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 006
	db	001h,003h,003h,007h,007h,007h,00Fh,00Fh ; 007
	db	001h,003h,003h,007h,007h,007h,00Fh,00Fh ; 008
	db	00Fh,01Fh,01Fh,03Fh,03Fh,03Fh,07Fh,07Fh ; 009
	db	00Fh,01Fh,01Fh,03Fh,03Fh,03Fh,07Fh,07Fh ; 010
	db	000h,016h,033h,027h,007h,013h,0C9h,080h ; 011
	db	000h,016h,033h,027h,007h,013h,0C9h,080h ; 012
	db	002h,004h,001h,00Ch,015h,009h,012h,044h ; 013
	db	002h,004h,001h,00Ch,015h,009h,012h,044h ; 014
	db	0AFh,015h,0D3h,06Dh,0B9h,066h,099h,0CFh ; 015
	db	0AFh,015h,0D3h,06Dh,0B9h,066h,099h,0CFh ; 016
	db	002h,004h,001h,00Ch,015h,009h,012h,044h ; 017
	db	0AFh,015h,0D3h,06Dh,0B9h,066h,099h,0CFh ; 018
	db	07Fh,07Fh,03Fh,03Fh,03Fh,01Fh,01Fh,00Fh ; 019
	db	07Fh,07Fh,03Fh,03Fh,03Fh,01Fh,01Fh,00Fh ; 020
	db	00Fh,00Fh,007h,007h,007h,003h,003h,001h ; 021
	db	00Fh,00Fh,007h,007h,007h,003h,003h,001h ; 022
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 023
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 024
	db	000h,000h,000h,000h,001h,001h,001h,003h ; 025
	db	000h,000h,000h,000h,001h,001h,001h,003h ; 026
	db	003h,003h,003h,007h,007h,007h,007h,007h ; 027
	db	003h,003h,003h,007h,007h,007h,007h,007h ; 028
	db	007h,007h,007h,00Fh,00Fh,00Fh,00Fh,00Fh ; 029
	db	007h,007h,007h,00Fh,00Fh,00Fh,00Fh,00Fh ; 030
	db	00Fh,00Fh,00Fh,00Fh,00Fh,00Fh,00Fh,00Fh ; 031
	db	00Fh,00Fh,00Fh,00Fh,00Fh,00Fh,00Fh,00Fh ; 032
	db	01Fh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh ; 033
	db	01Fh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh ; 034
	db	01Fh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh ; 035
	db	01Fh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh ; 036
	db	03Fh,03Fh,03Fh,03Fh,03Fh,03Fh,03Fh,03Fh ; 037
	db	03Fh,03Fh,03Fh,03Fh,03Fh,03Fh,03Fh,03Fh ; 038
	db	03Fh,03Fh,03Fh,03Fh,03Fh,03Fh,03Fh,03Fh ; 039
	db	03Fh,03Fh,03Fh,03Fh,03Fh,03Fh,03Fh,03Fh ; 040
	db	01Fh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh ; 041
	db	01Fh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh ; 042
	db	00Fh,00Fh,00Fh,00Fh,00Fh,00Fh,00Fh,00Fh ; 043
	db	00Fh,00Fh,00Fh,00Fh,00Fh,00Fh,00Fh,00Fh ; 044
	db	00Fh,00Fh,00Fh,00Fh,00Fh,007h,007h,007h ; 045
	db	00Fh,00Fh,00Fh,00Fh,00Fh,007h,007h,007h ; 046
	db	007h,007h,007h,007h,007h,003h,003h,003h ; 047
	db	007h,007h,007h,007h,007h,003h,003h,003h ; 048
	db	003h,001h,001h,001h,000h,000h,000h,000h ; 049
	db	003h,001h,001h,001h,000h,000h,000h,000h ; 050
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 051
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 052
	db	000h,000h,000h,000h,000h,004h,000h,000h ; 053
	db	000h,000h,000h,000h,000h,004h,000h,000h ; 054
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 055
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 056
	db	000h,008h,01Ch,008h,000h,000h,000h,000h ; 057
	db	000h,008h,01Ch,008h,000h,000h,000h,000h ; 058
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 059
ramclr2_1:
		;colors
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 000
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 001
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 002
	db	001h,001h,001h,0F1h,001h,001h,001h,001h ; 003
	db	001h,001h,001h,0F1h,001h,001h,001h,001h ; 004
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 005
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 006
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 007
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 008
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 009
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 010
	db	074h,054h,054h,054h,054h,054h,054h,054h ; 011
	db	074h,054h,054h,054h,054h,054h,054h,054h ; 012
	db	0F4h,0F4h,074h,0F4h,0F4h,074h,0F4h,0F4h ; 013
	db	0F4h,0F4h,074h,0F4h,0F4h,074h,0F4h,0F4h ; 014
	db	047h,04Fh,057h,04Fh,04Fh,05Fh,057h,04Fh ; 015
	db	047h,04Fh,057h,04Fh,04Fh,05Fh,057h,04Fh ; 016
	db	0F4h,0F4h,074h,0F4h,0F4h,074h,0F4h,0F4h ; 017
	db	047h,04Fh,057h,04Fh,04Fh,05Fh,057h,04Fh ; 018
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 019
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 020
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 021
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 022
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 023
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 024
	db	001h,001h,001h,001h,041h,041h,041h,041h ; 025
	db	001h,001h,001h,001h,041h,041h,041h,041h ; 026
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 027
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 028
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 029
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 030
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 031
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 032
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 033
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 034
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 035
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 036
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 037
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 038
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 039
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 040
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 041
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 042
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 043
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 044
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 045
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 046
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 047
	db	041h,041h,041h,041h,041h,041h,041h,041h ; 048
	db	041h,041h,041h,041h,001h,001h,001h,001h ; 049
	db	041h,041h,041h,041h,001h,001h,001h,001h ; 050
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 051
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 052
	db	001h,001h,001h,001h,001h,0E1h,001h,001h ; 053
	db	001h,001h,001h,001h,001h,0E1h,001h,001h ; 054
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 055
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 056
	db	001h,0E1h,0F1h,0E1h,0F1h,001h,001h,001h ; 057
	db	001h,0E1h,0F1h,0E1h,0F1h,001h,001h,001h ; 058
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 059
ramchr2_2:
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 064
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 065
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 066
	db	000h,000h,000h,010h,000h,000h,000h,000h ; 067
	db	000h,000h,000h,010h,000h,000h,000h,000h ; 068
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 069
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 070
	db	000h,0EEh,0EEh,0EEh,0EEh,0EEh,0EEh,0EEh ; 071
	db	000h,0EEh,0EEh,0EEh,0EEh,0EEh,0EEh,0EEh ; 072
	db	0EEh,0EEh,0EEh,0EEh,0EEh,0EEh,0EEh,0EEh ; 073
	db	0EEh,0EEh,0EEh,0EEh,0EEh,0EEh,0EEh,0EEh ; 074
	db	0FEh,0FEh,010h,010h,010h,01Fh,07Fh,0BFh ; 075
	db	0FEh,0FEh,010h,010h,010h,01Fh,07Fh,0BFh ; 076
	db	0BFh,07Fh,01Fh,010h,010h,010h,0FEh,0FEh ; 077
	db	0BFh,07Fh,01Fh,010h,010h,010h,0FEh,0FEh ; 078
	db	0EEh,0EEh,0EEh,0EEh,0EEh,0EEh,0EEh,0EEh ; 079
	db	0EEh,0EEh,0EEh,0EEh,0EEh,0EEh,0EEh,0EEh ; 080
	db	0EEh,0EEh,0EEh,0EEh,0EEh,0EEh,0EEh,000h ; 081
	db	0EEh,0EEh,0EEh,0EEh,0EEh,0EEh,0EEh,000h ; 082
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 083
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 084
	db	000h,000h,000h,000h,000h,0E7h,0FFh,0FFh ; 085
	db	000h,000h,000h,000h,000h,0E7h,0FFh,0FFh ; 086
	db	0FFh,0FFh,0E7h,000h,000h,000h,000h,000h ; 087
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 088
	db	000h,000h,000h,000h,000h,066h,099h,0E7h ; 089
	db	000h,000h,000h,000h,000h,066h,099h,0E7h ; 090
	db	07Eh,018h,03Ch,07Eh,0FFh,099h,0FFh,099h ; 091
	db	07Eh,018h,03Ch,07Eh,0FFh,099h,0FFh,099h ; 092
	db	0FFh,099h,0FFh,099h,0FFh,000h,000h,000h ; 093
	db	0FFh,099h,0FFh,099h,0FFh,000h,000h,000h ; 094
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 095
	db	000h,000h,000h,000h,000h,0E7h,0FFh,0FFh ; 096
	db	0FFh,0FFh,07Eh,07Eh,034h,02Ch,008h,018h ; 097
	db	0FFh,0FFh,07Eh,07Eh,034h,02Ch,008h,018h ; 098
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 099
	db	0EEh,0EEh,0EEh,0EEh,0EEh,0EEh,0EEh,0EEh ; 100
	db	0EEh,0EEh,0EEh,0EEh,0EEh,0EEh,0EEh,0EEh ; 101
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 102
	db	000h,000h,000h,000h,000h,070h,0C0h,0E0h ; 103
	db	000h,000h,000h,000h,000h,070h,0C0h,0E0h ; 104
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 105
	db	0FFh,0FFh,0E7h,000h,000h,000h,000h,000h ; 106
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 107
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 116
	db	03Ch,024h,05Ah,0A5h,0A5h,05Ah,042h,03Ch ; 117
	db	03Ch,024h,05Ah,0A5h,0A5h,05Ah,042h,03Ch ; 118
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 119
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 120
	db	000h,000h,000h,000h,0FFh,0ABh,0FFh,000h ; 121
	db	000h,000h,000h,000h,0FFh,0ABh,0FFh,000h ; 122
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 123
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 108
	db	000h,000h,000h,000h,000h,004h,000h,000h ; 109
	db	000h,000h,000h,000h,000h,004h,000h,000h ; 110
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 111
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 112
	db	000h,008h,01Ch,008h,000h,000h,000h,000h ; 113
	db	000h,008h,01Ch,008h,000h,000h,000h,000h ; 114
	db	000h,000h,000h,000h,000h,000h,000h,000h ; 115

ramclr2_2:
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 064
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 065
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 066
	db	001h,001h,001h,0F1h,001h,001h,001h,001h ; 067
	db	001h,001h,001h,0F1h,001h,001h,001h,001h ; 068
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 069
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 070
	db	011h,0F1h,061h,0F1h,061h,0F1h,061h,0F1h ; 071
	db	011h,0F1h,061h,0F1h,061h,0F1h,061h,0F1h ; 072
	db	061h,0F1h,061h,0F1h,061h,0F1h,061h,0F1h ; 073
	db	061h,0F1h,061h,0F1h,061h,0F1h,061h,0F1h ; 074
	db	0E1h,0E1h,0E1h,0E1h,0E1h,051h,0E1h,0E1h ; 075
	db	0E1h,0E1h,0E1h,0E1h,0E1h,051h,0E1h,0E1h ; 076
	db	0E1h,051h,041h,0E1h,0E1h,0E1h,0E1h,0E1h ; 077
	db	0E1h,051h,041h,0E1h,0E1h,0E1h,0E1h,0E1h ; 078
	db	061h,0F1h,061h,0F1h,061h,0F1h,061h,0F1h ; 079
	db	061h,0F1h,061h,0F1h,061h,0F1h,061h,0F1h ; 080
	db	061h,0F1h,061h,0F1h,061h,0F1h,061h,011h ; 081
	db	061h,0F1h,061h,0F1h,061h,0F1h,061h,011h ; 082
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 083
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 084
	db	0E1h,0E1h,0E1h,0E1h,0E1h,051h,0E1h,0E1h ; 085
	db	0E1h,0E1h,0E1h,0E1h,0E1h,051h,0E1h,0E1h ; 086
	db	0E1h,051h,041h,0E1h,0E1h,0E1h,0E1h,0E1h ; 087
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 088
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h ; 089
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h ; 090
	db	0E1h,0E1h,0E1h,0F1h,041h,04Fh,041h,04Fh ; 091
	db	0E1h,0E1h,0E1h,0F1h,041h,04Fh,041h,04Fh ; 092
	db	041h,04Fh,041h,04Fh,041h,0F1h,0F1h,0F1h ; 093
	db	041h,04Fh,041h,04Fh,041h,0F1h,0F1h,0F1h ; 094
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 095
	db	0E1h,0E1h,0E1h,0E1h,0E1h,051h,0E1h,0E1h ; 096
	db	0E1h,051h,041h,0E1h,0E1h,0E1h,051h,041h ; 097
	db	0E1h,051h,041h,0E1h,0E1h,0E1h,051h,041h ; 098
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 099
	db	061h,0F1h,061h,0F1h,061h,0F1h,061h,0F1h ; 100
	db	061h,0F1h,061h,0F1h,061h,0F1h,061h,0F1h ; 101
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 102
	db	001h,001h,001h,001h,001h,051h,051h,0E1h ; 103
	db	001h,001h,001h,001h,001h,051h,051h,0E1h ; 104
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 105
	db	0E1h,051h,041h,0E1h,0E1h,0E1h,0E1h,0E1h ; 106
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 107
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 116
	db	061h,0E1h,051h,0E1h,0E1h,0E1h,0E1h,041h ; 117
	db	061h,0E1h,051h,0E1h,0E1h,0E1h,0E1h,041h ; 118
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 119
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 120
	db	001h,001h,001h,051h,051h,041h,051h,001h ; 121
	db	001h,001h,001h,051h,051h,041h,051h,001h ; 122
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 123
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 108
	db	001h,001h,001h,001h,001h,0E1h,001h,001h ; 109
	db	001h,001h,001h,001h,001h,0E1h,001h,001h ; 110
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 111
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 112
	db	001h,0E1h,0F1h,0E1h,0F1h,001h,001h,001h ; 113
	db	001h,0E1h,0F1h,0E1h,0F1h,001h,001h,001h ; 114
	db	001h,001h,001h,001h,001h,001h,001h,001h ; 115

spritedata2:
sptdef2_16:						;64
	db	000h,003h,007h,007h,004h,035h,006h,037h		;1enemy1color1frame1
	db	002h,002h,010h,010h,000h,000h,000h,000h		;2enemy1color1frame1
	db	000h,0C0h,0E0h,0E0h,020h,0ACh,060h,0ECh		;3enemy1color1frame1
	db	040h,040h,008h,008h,000h,000h,000h,000h		;4enemy1color1frame1
sptdef2_17:						;68
	db	000h,003h,01Fh,03Fh,07Fh,07Fh,07Fh,07Fh		;1enemy1color2frame1
	db	07Ah,03Ah,03Ah,038h,018h,018h,008h,000h		;2enemy1color2frame1
	db	000h,0C0h,0F8h,0FCh,0FEh,0FEh,0FEh,0FEh		;3enemy1color2frame1
	db	05Eh,05Ch,05Ch,01Ch,018h,018h,010h,000h		;4enemy1color2frame1
sptdef2_18:						;72
	db	000h,001h,001h,001h,001h,00Dh,001h,00Dh		;1enemy1color1frame2
	db	001h,001h,005h,004h,000h,000h,000h,000h		;2enemy1color1frame2
	db	000h,080h,0C0h,0C0h,000h,0C0h,010h,0C0h		;3enemy1color1frame2
	db	0D0h,000h,020h,020h,000h,000h,000h,000h		;4enemy1color1frame2
sptdef2_19:						;76
	db	000h,001h,007h,00Fh,01Fh,01Fh,01Fh,01Fh		;1enemy1color2frame2
	db	01Fh,00Fh,00Fh,00Eh,006h,006h,002h,000h		;2enemy1color2frame2
	db	000h,080h,0E0h,0E0h,0F0h,0F0h,0F0h,0F0h		;3enemy1color2frame2
	db	0F0h,060h,060h,060h,040h,040h,040h,000h		;4enemy1color2frame2
sptdef2_20:						;80
	db	000h,000h,000h,004h,002h,002h,003h,002h		;1enemy1color1frame3
	db	003h,002h,002h,002h,002h,002h,002h,000h		;2enemy1color1frame3
	db	000h,000h,000h,040h,0A0h,0A0h,0A0h,0A0h		;3enemy1color1frame3
	db	0A0h,0A0h,0A0h,080h,080h,080h,080h,000h		;4enemy1color1frame3
sptdef2_21:						;84
	db	000h,001h,007h,007h,00Fh,00Fh,00Fh,00Fh		;1enemy1color2frame3
	db	00Fh,006h,006h,006h,002h,002h,002h,000h		;2enemy1color2frame3
	db	000h,080h,0E0h,0F0h,0F8h,0F8h,0F8h,0F8h		;3enemy1color2frame3
	db	0F8h,0F0h,0F0h,070h,060h,060h,040h,000h		;4enemy1color2frame3
sptdef2_22:						;88
	db	000h,000h,000h,010h,02Ah,02Ah,029h,02Bh		;1enemy1color1frame4
	db	028h,028h,028h,008h,008h,008h,008h,000h		;2enemy1color1frame4
	db	000h,000h,000h,008h,054h,054h,094h,0D4h		;3enemy1color1frame4
	db	014h,014h,014h,010h,010h,010h,010h,000h		;4enemy1color1frame4
sptdef2_23:						;92
	db	000h,003h,01Fh,03Fh,07Fh,07Fh,07Fh,07Fh		;1enemy1color2frame4
	db	07Ah,03Ah,03Ah,038h,018h,018h,008h,000h		;2enemy1color2frame4
	db	000h,0C0h,0F8h,0FCh,0FEh,0FEh,0FEh,0FEh		;3enemy1color2frame4
	db	05Eh,05Ch,05Ch,01Ch,018h,018h,010h,000h		;4enemy1color2frame4
sptdef2_24:						;96
	db	000h,000h,000h,002h,005h,005h,005h,005h		;1enemy1color1frame5
	db	005h,005h,005h,001h,001h,001h,001h,000h		;2enemy1color1frame5
	db	000h,000h,000h,020h,040h,040h,0C0h,040h		;3enemy1color1frame5
	db	0C0h,040h,040h,040h,040h,040h,040h,000h		;4enemy1color1frame5
sptdef2_25:						;100
	db	000h,001h,007h,00Fh,01Fh,01Fh,01Fh,01Fh		;1enemy1color2frame5
	db	01Fh,00Fh,00Fh,00Eh,006h,006h,002h,000h		;2enemy1color2frame5
	db	000h,080h,0E0h,0E0h,0F0h,0F0h,0F0h,0F0h		;3enemy1color2frame5
	db	0F0h,060h,060h,060h,040h,040h,040h,000h		;4enemy1color2frame5
sptdef2_26:						;104
	db	000h,001h,003h,003h,000h,003h,008h,003h		;1enemy1color1frame6
	db	00Bh,000h,004h,004h,000h,000h,000h,000h		;2enemy1color1frame6
	db	000h,080h,080h,080h,080h,0B0h,080h,0B0h		;3enemy1color1frame6
	db	080h,080h,0A0h,020h,000h,000h,000h,000h		;4enemy1color1frame6
sptdef2_27:						;108
	db	000h,001h,007h,007h,00Fh,00Fh,00Fh,00Fh		;1enemy1color2frame6
	db	00Fh,006h,006h,006h,002h,002h,002h,000h		;2enemy1color2frame6
	db	000h,080h,0E0h,0F0h,0F8h,0F8h,0F8h,0F8h		;3enemy1color2frame6
	db	0F8h,0F0h,0F0h,070h,060h,060h,040h,000h		;4enemy1color2frame6
sptdef2_28:						;112
	db	000h,024h,016h,00Ah,004h,004h,004h,002h		;1enemy2color1
	db	001h,000h,000h,003h,001h,004h,004h,000h		;2enemy2color1
	db	000h,024h,068h,050h,020h,020h,020h,040h		;3enemy2color1
	db	080h,000h,000h,0C0h,080h,020h,020h,000h		;4enemy2color1
sptdef2_29:						;116
	db	000h,00Ah,009h,015h,03Bh,07Bh,063h,061h		;1enemy2color2
	db	042h,007h,007h,004h,006h,003h,001h,000h		;2enemy2color2
	db	000h,050h,090h,0A8h,0DCh,0DEh,0C6h,086h		;3enemy2color2
	db	042h,0E0h,0E0h,020h,060h,0C0h,080h,000h		;4enemy2color2
sptdef2_30:						;120
	db	001h,003h,002h,006h,006h,006h,00Eh,00Ah		;1enemy3color1frame1
	db	00Eh,01Ah,016h,01Ch,034h,02Ch,035h,026h		;2enemy3color1frame1
	db	000h,080h,080h,0C0h,0C0h,0C0h,0A0h,0A0h		;3enemy3color1frame1
	db	0A0h,090h,090h,090h,0C8h,0A8h,018h,008h		;4enemy3color1frame1
sptdef2_31:						;124
	db	000h,000h,001h,001h,001h,001h,001h,005h		;1enemy3color2frame1
	db	001h,005h,009h,003h,00Bh,013h,002h,000h		;2enemy3color2frame1
	db	000h,000h,000h,000h,000h,000h,040h,040h		;3enemy3color2frame1
	db	040h,060h,060h,060h,030h,010h,000h,000h		;4enemy3color2frame1
sptdef2_32:						;128
	db	001h,002h,002h,005h,005h,005h,009h,009h		;1enemy3color1frame2
	db	009h,011h,011h,021h,023h,025h,039h,021h		;2enemy3color1frame2
	db	000h,080h,080h,040h,040h,040h,020h,020h		;3enemy3color1frame2
	db	020h,010h,010h,008h,088h,048h,038h,008h		;4enemy3color1frame2
sptdef2_33:						;132
	db	000h,001h,001h,002h,002h,002h,006h,006h		;1enemy3color2frame2
	db	006h,00Eh,00Eh,01Eh,01Ch,018h,000h,000h		;2enemy3color2frame2
	db	000h,000h,000h,080h,080h,080h,0C0h,0C0h		;3enemy3color2frame2
	db	0C0h,0E0h,0E0h,0F0h,070h,030h,000h,000h		;4enemy3color2frame2
sptdef2_34:						;136
	db	000h,001h,001h,003h,003h,003h,005h,005h		;1enemy3color1frame3
	db	005h,009h,009h,00Bh,013h,015h,018h,010h		;2enemy3color1frame3
	db	080h,0C0h,040h,060h,060h,060h,070h,050h		;3enemy3color1frame3
	db	070h,058h,068h,038h,02Ch,034h,0ACh,064h		;4enemy3color1frame3
sptdef2_35:						;140
	db	000h,000h,000h,000h,000h,000h,002h,002h		;1enemy3color2frame3
	db	002h,006h,006h,006h,00Ch,008h,000h,000h		;2enemy3color2frame3
	db	000h,000h,080h,080h,080h,080h,080h,0A0h		;3enemy3color2frame3
	db	080h,0A0h,090h,0C0h,0D0h,0C8h,040h,000h		;4enemy3color2frame3
sptdef2_36:						;144
	db	000h,001h,001h,003h,003h,007h,007h,007h		;1enemy4color1frame1
	db	003h,003h,003h,003h,002h,002h,001h,000h		;2enemy4color1frame1
	db	000h,080h,080h,0C0h,0C0h,0E0h,0E0h,0E0h		;3enemy4color1frame1
	db	0C0h,0C0h,0C0h,0C0h,040h,040h,080h,000h		;4enemy4color1frame1
sptdef2_37:						;148
	db	000h,010h,038h,038h,038h,038h,038h,038h		;1enemy4color2frame1
	db	038h,038h,038h,010h,001h,001h,000h,000h		;2enemy4color2frame1
	db	000h,008h,01Ch,01Ch,01Ch,01Ch,01Ch,01Ch		;3enemy4color2frame1
	db	01Ch,01Ch,01Ch,008h,080h,080h,000h,000h		;4enemy4color2frame1
sptdef2_38:						;152
	db	000h,001h,000h,000h,000h,000h,000h,000h		;1enemy4color1frame2
	db	000h,000h,000h,001h,002h,002h,001h,000h		;2enemy4color1frame2
	db	000h,080h,080h,0C0h,0C0h,0C0h,0C0h,0C0h		;3enemy4color1frame2
	db	0C0h,0C0h,0C0h,0C0h,040h,040h,080h,000h		;4enemy4color1frame2
sptdef2_39:						;156
	db	000h,002h,007h,007h,007h,007h,007h,007h		;1enemy4color2frame2
	db	007h,007h,007h,002h,001h,001h,000h,000h		;2enemy4color2frame2
	db	000h,040h,060h,020h,020h,020h,020h,020h		;3enemy4color2frame2
	db	020h,020h,020h,020h,080h,080h,000h,000h		;4enemy4color2frame2
sptdef2_40:						;160
	db	000h,001h,001h,003h,003h,003h,003h,003h		;1enemy4color1frame3
	db	003h,003h,003h,003h,002h,002h,001h,000h		;2enemy4color1frame3
	db	000h,080h,000h,000h,000h,000h,000h,000h		;3enemy4color1frame3
	db	000h,000h,000h,080h,040h,040h,080h,000h		;4enemy4color1frame3
sptdef2_41:						;164
	db	000h,002h,006h,004h,004h,004h,004h,004h		;1enemy4color2frame3
	db	004h,004h,004h,004h,001h,001h,000h,000h		;2enemy4color2frame3
	db	000h,040h,0E0h,0E0h,0E0h,0E0h,0E0h,0E0h		;3enemy4color2frame3
	db	0E0h,0E0h,0E0h,040h,080h,080h,000h,000h		;4enemy4color2frame3
sptdef2_42:						;168
	db	000h,030h,078h,078h,030h,000h,001h,003h		;1enemy5color1frame1
	db	003h,001h,000h,030h,078h,078h,030h,000h		;2enemy5color1frame1
	db	000h,00Ch,01Eh,01Eh,00Ch,000h,080h,0C0h		;3enemy5color1frame1
	db	0C0h,080h,000h,00Ch,01Eh,01Eh,00Ch,000h		;4enemy5color1frame1
sptdef2_43:						;172
	db	030h,048h,087h,087h,048h,031h,032h,034h		;1enemy5color2frame1
	db	034h,032h,031h,048h,087h,087h,048h,030h		;2enemy5color2frame1
	db	00Ch,012h,0E1h,0E1h,012h,08Ch,04Ch,02Ch		;3enemy5color2frame1
	db	02Ch,04Ch,08Ch,012h,0E1h,0E1h,012h,00Ch		;4enemy5color2frame1
sptdef2_44:						;176
	db	000h,01Ch,01Ch,01Ch,000h,000h,000h,001h		;1enemy5color1frame2
	db	001h,000h,070h,070h,070h,000h,000h,000h		;2enemy5color1frame2
	db	000h,000h,000h,00Eh,00Eh,00Eh,000h,080h		;3enemy5color1frame2
	db	080h,000h,000h,000h,038h,038h,038h,000h		;4enemy5color1frame2
sptdef2_45:						;180
	db	01Ch,022h,023h,023h,01Ch,018h,019h,032h		;1enemy5color2frame2
	db	032h,071h,088h,08Eh,08Fh,071h,000h,000h		;2enemy5color2frame2
	db	000h,000h,08Eh,0F1h,071h,011h,08Eh,04Ch		;3enemy5color2frame2
	db	04Ch,098h,018h,038h,0C4h,0C4h,044h,038h		;4enemy5color2frame2
sptdef2_46:						;184
	db	000h,001h,003h,003h,001h,000h,030h,078h		;1enemy5color1frame3
	db	078h,030h,000h,001h,003h,003h,001h,000h		;2enemy5color1frame3
	db	000h,080h,0C0h,0C0h,080h,000h,00Ch,01Eh		;3enemy5color1frame3
	db	01Eh,00Ch,000h,080h,0C0h,0C0h,080h,000h		;4enemy5color1frame3
sptdef2_47:						;188
	db	001h,002h,004h,004h,00Eh,03Dh,048h,085h		;1enemy5color2frame3
	db	085h,048h,03Dh,00Eh,004h,004h,002h,001h		;2enemy5color2frame3
	db	080h,040h,020h,020h,070h,0BCh,012h,0A1h		;3enemy5color2frame3
	db	0A1h,012h,0BCh,070h,020h,020h,040h,080h		;4enemy5color2frame3
sptdef2_48:						;192
	db	000h,000h,000h,070h,070h,070h,000h,001h		;1enemy5color1frame4
	db	001h,000h,000h,000h,01Ch,01Ch,01Ch,000h		;2enemy5color1frame4
	db	000h,038h,038h,038h,000h,000h,000h,080h		;3enemy5color1frame4
	db	080h,000h,00Eh,00Eh,00Eh,000h,000h,000h		;4enemy5color1frame4
sptdef2_49:						;196
	db	000h,000h,071h,08Fh,08Eh,088h,071h,032h		;1enemy5color2frame4
	db	032h,019h,018h,01Ch,023h,023h,022h,01Ch		;2enemy5color2frame4
	db	038h,044h,0C4h,0C4h,038h,018h,098h,04Ch		;3enemy5color2frame4
	db	04Ch,08Eh,011h,071h,0F1h,08Eh,000h,000h		;4enemy5color2frame4
sptdef2_50:						;200
	db	000h,070h,075h,077h,077h,076h,076h,07Fh		;1enemy6color1frame1
	db	07Fh,03Bh,019h,00Ch,006h,003h,001h,000h		;2enemy6color1frame1
	db	000h,00Eh,0AEh,0EEh,0EEh,06Eh,06Eh,0EEh		;3enemy6color1frame1
	db	0FEh,0DCh,098h,030h,060h,0C0h,080h,000h		;4enemy6color1frame1
sptdef2_51:						;204
	db	000h,008h,008h,008h,008h,009h,009h,008h		;1enemy6color2frame1
	db	000h,004h,006h,003h,001h,000h,000h,000h		;2enemy6color2frame1
	db	000h,010h,010h,010h,010h,090h,090h,010h		;3enemy6color2frame1
	db	000h,020h,060h,0C0h,080h,000h,000h,000h		;4enemy6color2frame1
sptdef2_52:						;208
	db	000h,030h,035h,037h,037h,037h,037h,03Fh		;1enemy6color1frame2
	db	03Fh,03Bh,019h,00Ch,006h,003h,001h,000h		;2enemy6color1frame2
	db	000h,00Ch,0ACh,0ECh,0ECh,0ECh,0ECh,0ECh		;3enemy6color1frame2
	db	0FCh,0DCh,098h,030h,060h,0C0h,080h,000h		;4enemy6color1frame2
sptdef2_53:						;212
	db	000h,008h,008h,008h,008h,009h,009h,008h		;1enemy6color2frame2
	db	000h,004h,006h,003h,001h,000h,000h,000h		;2enemy6color2frame2
	db	000h,010h,010h,010h,010h,090h,090h,010h		;3enemy6color2frame2
	db	000h,020h,060h,0C0h,080h,000h,000h,000h		;4enemy6color2frame2
sptdef2_54:						;216
	db	000h,000h,015h,017h,017h,037h,037h,03Fh		;1enemy6color1frame3
	db	03Fh,03Bh,019h,00Ch,006h,003h,001h,000h		;2enemy6color1frame3
	db	000h,000h,0A8h,0E8h,0E8h,0ECh,0ECh,0ECh		;3enemy6color1frame3
	db	0FCh,0DCh,098h,030h,060h,0C0h,080h,000h		;4enemy6color1frame3
sptdef2_55:						;220
	db	000h,008h,008h,008h,008h,009h,009h,008h		;1enemy6color2frame3
	db	000h,004h,006h,003h,001h,000h,000h,000h		;2enemy6color2frame3
	db	000h,010h,010h,010h,010h,090h,090h,010h		;3enemy6color2frame3
	db	000h,020h,060h,0C0h,080h,000h,000h,000h		;4enemy6color2frame3
;sptdef1_56:						;224
	db	001h,00Ch,012h,012h,012h,012h,082h,082h		;1enemy7 color1
	db	082h,084h,080h,083h,081h,040h,000h,000h		;2enemy7 color1
	db	080h,030h,048h,048h,048h,048h,041h,041h		;3enemy7 color1
	db	041h,021h,001h,0C1h,081h,002h,000h,000h		;4enemy7 color1
;sptdef1_57:						;228
	db	001h,005h,00Dh,00Dh,02Dh,06Dh,075h,071h		;1enemy7 color2
	db	041h,043h,047h,004h,006h,003h,001h,000h		;2enemy7 color2
	db	080h,0A0h,0B0h,0B0h,0B4h,0B6h,0AEh,08Eh		;3enemy7 color2
	db	082h,0C2h,0E2h,020h,060h,0C0h,080h,000h		;4enemy7 color2
;sptdef1_58:						;232
	db	003h,00fh,01fh,003h,07bh,048h,04fh,074h		;power inc yl
	db	044h,057h,050h,01fh,03fh,01fh,00fh,003h		;power inc yl
	db	0c0h,0f0h,0f8h,0fch,0feh,008h,0aah,0a2h		;power inc yl
	db	0aah,094h,000h,0feh,0fch,0f8h,0f0h,0c0h		;power inc yl
;sptdef1_59:						;236
	db	000h,000h,000h,0fch,084h,0b7h,0b0h,08bh		;power inc blk
	db	0bbh,0a8h,0afh,0e0h,000h,000h,000h,000h		;power inc blk
	db	000h,000h,000h,000h,000h,0f7h,055h,05dh		;power inc blk
	db	055h,06bh,0feh,000h,000h,000h,000h,000h		;power inc blk
;sptdef1_60						;240
	db	000h,003h,00fh,01fh,03fh,03fh,07fh,07fh		;explosion frame1
	db	07fh,07fh,03fh,03fh,01fh,00fh,003h,000h		;explosion frame1
	db	000h,0c0h,0f0h,0f8h,0fch,0fch,0feh,0feh		;explosion frame1
	db	0feh,0feh,0fch,0fch,0f8h,0f0h,0c0h,000h		;explosion frame1
;sptdef1_61:						;244
	db	000h,003h,00fh,01fh,03fh,03fh,07fh,07fh		;explosion frame2
	db	07fh,07fh,03fh,03fh,01fh,00fh,003h,000h		;explosion frame2
	db	000h,0c0h,0f0h,0d8h,08ch,004h,08eh,0deh		;explosion frame2
	db	0feh,0feh,0fch,0fch,0f8h,0f0h,0c0h,000h		;explosion frame2
;sptdef1_62:						;248
	db	000h,003h,00ch,018h,030h,030h,070h,070h		;explosion frame3
	db	070h,070h,038h,03ch,01eh,00fh,003h,000h		;explosion frame3
	db	000h,0c0h,030h,008h,000h,000h,002h,002h		;explosion frame3
	db	002h,002h,004h,004h,018h,0f0h,0c0h,000h		;explosion frame3
;sptdef1_63:						;252
	db	000h,000h,00ch,018h,030h,030h,070h,070h		;explosion frame4
	db	070h,070h,038h,03ch,01eh,00fh,003h,000h		;explosion frame4
	db	000h,000h,000h,000h,000h,000h,000h,000h		;explosion frame4
	db	000h,000h,000h,000h,018h,0f0h,0c0h,000h		;explosion frame4
sprtend2:
mid_boss_sprites2:
;midspt1:
	db	000h,017h,037h,077h,077h,077h,077h,077h
	db	077h,077h,077h,077h,073h,071h,020h,000h
	db	000h,000h,083h,09Eh,09Eh,09Eh,09Eh,0DEh
	db	0DEh,0DEh,0DEh,0DFh,0DFh,0DCh,0FAh,0FBh
;midspt2:
	db	000h,008h,008h,008h,008h,008h,008h,008h
	db	008h,008h,008h,008h,000h,000h,000h,000h
	db	000h,060h,060h,061h,061h,061h,061h,021h
	db	021h,021h,021h,020h,020h,023h,005h,004h
;midspt3:
	db	000h,000h,0C1h,079h,079h,079h,079h,07Bh
	db	07Bh,07Bh,07Bh,0FBh,0FBh,03Bh,05Fh,0DFh
	db	000h,0E8h,0ECh,0EEh,0EEh,0EEh,0EEh,0EEh
	db	0EEh,0EEh,0EEh,0EEh,0CEh,08Eh,004h,000h
;midspt4:
	db	000h,006h,006h,086h,086h,086h,086h,084h
	db	084h,084h,084h,004h,004h,0C4h,0A0h,020h
	db	000h,010h,010h,010h,010h,010h,010h,010h
	db	010h,010h,010h,010h,000h,000h,000h,000h
;midspt5:
	db	000h,000h,001h,003h,01Fh,02Fh,037h,039h
	db	030h,030h,030h,018h,034h,024h,020h,010h
	db	0E8h,0E8h,068h,078h,0B8h,0BCh,0BEh,0DFh
	db	01Dh,00Dh,007h,007h,003h,000h,000h,000h
;midspt6:
	db	000h,000h,000h,000h,000h,000h,000h,000h
	db	000h,000h,000h,000h,000h,000h,000h,000h
	db	017h,017h,017h,007h,007h,003h,001h,000h
	db	000h,000h,000h,000h,000h,000h,000h,000h
;midspt7:
	db	017h,017h,016h,01Eh,01Dh,03Dh,07Dh,0FBh
	db	0B8h,0B0h,0E0h,0E0h,0C0h,000h,000h,000h
	db	000h,000h,080h,0C0h,0F8h,0F4h,0ECh,09Ch
	db	00Ch,00Ch,00Ch,018h,02Ch,024h,004h,008h
;midspt8:
	db	0E8h,0E8h,0E8h,0E0h,0E0h,0C0h,080h,000h
	db	000h,000h,000h,000h,000h,000h,000h,000h
	db	000h,000h,000h,000h,000h,000h,000h,000h
	db	000h,000h,000h,000h,000h,000h,000h,000h
mboss_spt_end2:

eventlist_20:
	;row,ystart,xstart,shape,color,pattern
	db	12,1,30,232,10,5
	db	1,30,236,4,5
	db	16,1,160,168,6,4
	db	1,160,172,11,4
	db	20,1,160,168,6,4
	db	1,160,172,11,4
	db	24,1,160,168,6,4
	db	1,160,172,11,4
	db	28,1,160,168,6,4
	db	1,160,172,11,4
	db	32,1,160,168,6,4
	db	1,160,172,11,4
	db	36,1,160,168,6,4
	db	1,160,172,11,4

	db	90,1,150,232,10,5
	db	1,150,236,4,5
	db	94,1,40,224,5,13
	db	1,40,228,14,13
	db	98,1,200,224,5,13
	db	1,200,228,14,13
	db	102,1,120,224,5,13
	db	1,120,228,14,13
	db	106,28,1,112,13,17
	db	28,1,116,14,17
	db	110,48,1,112,13,17
	db	48,1,116,14,17
	db	114,68,1,112,13,17
	db	68,1,116,14,17


	db	168,1,90,232,10,5	
	db	1,90,236,4,5
	db	172,1,60,144,12,2
	db	1,60,148,14,2
	db	176,1,70,144,12,2
	db	1,70,148,14,2
	db	180,1,180,168,9,1
	db	1,180,172,11,1
	db	184,191,18,120,5,3
	db	191,18,124,14,3
	db	188,191,18,120,5,3
	db	191,18,124,14,3
	db	192,191,18,120,5,3
	db	191,18,124,14,3

	db	246,1,190,232,10,5
	db	1,190,236,4,5
	db	250,1,20,64,5,18
	db	1,20,68,14,18
	db	254,1,20,64,5,18
	db	1,20,68,14,18
	db	4,1,20,64,5,18
	db	1,20,68,14,18
	db	8,1,20,64,5,18
	db	1,20,68,14,18
	db	12,1,20,64,5,18
	db	1,20,68,14,18
	db	16,1,20,64,5,18
	db	1,20,68,14,18

	db	70,1,170,232,10,5	
	db	1,170,236,4,5
	db	74,1,100,168,6,1
	db	1,100,172,11,1
	db	78,1,100,168,6,1
	db	1,100,172,11,1
	db	82,1,100,168,6,1
	db	1,100,172,11,1
	db	86,191,200,120,9,3
	db	191,200,124,11,3
	db	90,191,200,120,9,3
	db	191,200,124,11,3
	db	94,191,200,120,9,3
	db	191,200,124,11,3

	db	148,1,40,232,10,5
	db	1,40,236,4,5

	db	226,1,200,232,10,5
	db	1,200,236,4,5
	db	230,1,120,200,14,6
	db	1,120,204,4,6
	db	234,1,56,200,14,6
	db	1,56,204,4,6
	db	238,1,184,200,14,6
	db	1,184,204,4,6
	db	242,1,124,200,14,6
	db	1,124,204,4,6
	db	246,1,120,200,14,6
	db	1,120,204,4,6
	db	250,1,216,200,14,6
	db	1,216,204,4,6

	db	48,1,20,232,10,5
	db	1,20,236,4,5
	db	52,1,10,144,9,2
	db	1,10,148,11,2
	db	56,1,30,144,9,2
	db	1,30,148,11,2
	db	60,1,50,144,9,2
	db	1,50,148,11,2

	db	126,1,200,232,10,5
	db	1,200,236,4,5
	db	130,1,40,200,14,2
	db	1,40,204,13,2
	db	134,1,20,200,14,2
	db	1,20,204,13,2
	db	138,1,160,168,12,1
	db	1,160,172,15,1
	db	142,191,18,120,5,3
	db	191,18,124,7,3
	db	146,191,18,120,5,3
	db	191,18,124,7,3
	db	150,191,18,120,5,3
	db	191,18,124,7,3

	db	204,1,100,232,10,5
	db	1,100,236,4,5
	db	208,24,1,168,6,17
	db	24,1,172,11,17
	db	212,40,223,144,5,16
	db	40,223,148,14,16
	db	216,56,1,168,1,17
	db	56,1,172,14,17
	db	220,72,223,168,1,16
	db	72,223,172,14,16
	db	224,88,1,144,5,17
	db	88,1,148,14,17
	db	228,104,223,144,5,16
	db	104,223,148,14,16

	db	26,1,180,232,10,5
	db	1,180,236,4,5
	db	30,1,100,64,10,18
	db	1,100,68,5,18
	db	34,1,100,64,10,18
	db	1,100,68,5,18
	db	38,1,100,64,10,18		
	db	1,100,68,5,18
	db	42,1,180,144,6,6
	db	1,180,148,2,6
	db	46,1,160,144,6,6
	db	1,160,148,2,6
	db	50,1,200,144,6,6
	db	1,200,148,2,6

	db	104,1,100,232,10,5
	db	1,100,236,4,5
	db	108,1,100,144,6,2
	db	1,100,148,11,2
	db	112,1,100,144,6,2
	db	1,100,148,11,2
	db	116,1,100,144,6,2
	db	1,100,148,11,2
	db	120,191,200,120,10,3
	db	191,200,124,15,3
	db	124,191,200,120,10,3
	db	191,200,124,15,3
	db	128,191,200,120,10,3
	db	191,200,124,15,3

	db	182,1,150,168,6,4
	db	1,150,172,10,4
	db	186,1,170,168,6,4
	db	1,170,172,10,4
	db	190,1,130,168,6,4
	db	1,130,172,10,4
	db	194,191,200,120,14,3
	db	191,200,124,15,3
	db	198,191,200,120,6,3
	db	191,200,124,14,3
	db	202,191,18,120,14,3
	db	191,18,124,15,3
	db	206,191,18,120,6,3
	db	191,18,124,14,3

	db	4,1,100,232,10,5
	db	1,100,236,4,5
	db	8,1,20,200,15,8
	db	1,20,204,13,8
	db	12,1,60,112,4,13
	db	1,60,116,2,13
	db	16,1,20,200,15,8
	db	1,20,204,13,8
	db	20,1,128,112,4,13
	db	1,128,116,2,13
	db	24,1,20,200,15,8
	db	1,20,204,13,8
	db	28,1,190,112,4,13
	db	1,190,116,2,13

	db	82,1,80,204,1,6
	db	1,80,200,15,6
	db	86,1,175,200,15,6
	db	1,175,204,12,6
	db	90,1,112,200,14,6
	db	1,112,204,4,6
	db	94,1,80,200,14,6
	db	1,80,204,4,6
	db	112,1,175,200,15,6
	db	1,175,204,12,6
	db	116,1,112,200,15,6
	db	1,112,204,12,6
	db	120,1,80,200,14,6
	db	1,80,204,13,6

	db	200,1,120,224,5,13
	db	1,120,228,14,13
	db	204,1,160,224,6,13
	db	1,160,228,14,13
	db	208,1,80,224,6,13
	db	1,80,228,14,13
	db	212,1,200,224,5,13
	db	1,200,228,14,13
	db	216,1,30,232,10,5
	db	1,30,236,4,5
	db	220,1,40,224,5,13
	db	1,40,228,14,13
	db	224,1,112,224,6,13
	db	1,112,228,14,13

	db	10,1,80,224,5,13
	db	1,80,228,14,13
	db	14,1,175,112,15,13
	db	1,175,116,7,13
	db	18,1,112,224,12,13
	db	1,112,228,14,13
	db	22,1,72,112,15,13
	db	1,72,116,7,13
	db	24,1,112,224,13,13
	db	1,112,228,14,13

	db	62,1,100,232,10,5
	db	1,100,236,4,5
	db	66,1,175,168,15,1
	db	1,175,172,7,1
	db	70,1,80,144,12,8
	db	1,80,148,11,8
	db	74,1,175,168,15,1
	db	1,175,172,7,1
	db	78,1,80,144,5,8
	db	1,80,148,14,8
	db	82,1,175,168,15,1
	db	1,175,172,7,1

	db	136,1,100,232,10,5
	db	1,100,236,4,5
	db	140,191,18,120,13,14
	db	191,18,124,9,14
	db	144,191,18,120,13,14
	db	191,18,124,9,14
	db	148,191,200,120,13,14
	db	191,200,124,9,14
	db	152,1,80,168,13,4
	db	1,80,172,15,4
	db	156,1,190,168,13,4
	db	1,190,172,4,4
	db	160,1,130,168,13,4
	db	1,130,172,15,4

	db	200,1,100,232,10,5
	db	1,100,236,4,5
	db	204,1,60,64,5,18
	db	1,60,68,15,18
	db	208,1,60,64,5,18
	db	1,60,68,14,18
	db	212,1,60,64,5,18
	db	1,60,68,15,18
	db	216,1,120,64,5,18
	db	1,120,68,14,18
	db	220,1,120,64,5,18
	db	1,120,68,15,18
	db	224,1,120,64,5,18
	db	1,120,68,14,18

	db	22,1,100,232,10,5
	db	1,100,236,4,5
	db	26,1,20,144,14,8
	db	1,20,148,7,8
	db	30,1,20,144,13,8
	db	1,20,148,14,8
	db	34,1,20,144,14,8
	db	1,20,148,12,8
	db	38,1,20,144,14,8
	db	1,20,148,13,8
	db	42,1,20,144,14,8
	db	1,20,148,8,8
	db	46,1,20,144,14,8
	db	1,20,148,4,8

	db	100,1,40,204,13,6
	db	1,40,200,15,6
	db	104,1,175,204,12,6
	db	1,175,200,15,6
	db	108,1,92,204,8,6
	db	1,92,200,15,6
	db	112,1,80,204,4,6
	db	1,80,200,15,6
	db	116,1,235,204,8,6
	db	1,235,200,15,6
	db	120,1,112,204,13,6
	db	1,112,200,15,6
	db	124,1,80,204,12,6
	db	1,80,200,15,6

	db	182,1,180,168,4,4
	db	1,180,172,7,4
	db	186,1,180,168,4,4
	db	1,180,172,7,4
	db	190,1,180,168,4,4
	db	1,180,172,7,4
	db	194,191,18,120,6,3
	db	191,18,124,9,3
	db	198,191,18,120,6,3
	db	191,18,124,9,3
	db	202,191,18,120,6,3
	db	191,18,124,9,3
	db	206,191,18,120,6,3
	db	191,18,124,9,3

	db	6,1,100,232,10,5
	db	1,100,236,4,5
	db	10,1,175,168,6,1
	db	1,175,172,10,1
	db	14,1,80,200,14,8
	db	1,80,204,12,8
	db	18,1,175,168,6,1
	db	1,175,172,10,1
	db	22,1,80,200,14,8
	db	1,80,204,12,8
	db	26,1,175,168,6,1
	db	1,175,172,10,1
	db	30,1,80,200,14,8
	db	1,80,204,12,8

	db	120,191,18,120,5,3
	db	191,18,124,14,3
	db	124,191,18,120,5,3
	db	191,18,124,14,3
	db	128,191,18,120,12,3
	db	191,18,124,14,3
	db	132,191,200,120,12,3
	db	191,200,124,14,3
	db	136,191,200,120,13,3
	db	191,200,124,11,3
	db	140,191,200,120,13,3
	db	191,200,124,11,3

	db	255

eventlist_25:
	;row,ystart,xstart,shape,color,pattern

	db	16,1,20,144,14,8
	db	1,20,148,7,8
	db	20,1,20,144,13,8
	db	1,20,148,14,8
	db	24,1,20,144,14,8
	db	1,20,148,12,8
	db	28,1,20,144,14,8
	db	1,20,148,13,8
	db	32,1,20,144,14,8
	db	1,20,148,8,8
	db	36,1,20,144,14,8
	db	1,20,148,4,8

	db	90,1,40,204,13,6
	db	1,40,200,15,6
	db	94,1,175,204,12,6
	db	1,175,200,15,6
	db	98,1,92,204,8,6
	db	1,92,200,15,6
	db	102,1,80,204,4,6
	db	1,80,200,15,6
	db	106,1,235,204,8,6
	db	1,235,200,15,6
	db	110,1,112,204,13,6
	db	1,112,200,15,6
	db	114,1,80,204,12,6
	db	1,80,200,15,6

	db	168,1,180,168,4,4
	db	1,180,172,7,4
	db	172,1,180,168,4,4
	db	1,180,172,7,4
	db	176,1,180,168,4,4
	db	1,180,172,7,4
	db	180,191,18,120,6,3
	db	191,18,124,9,3
	db	184,191,18,120,6,3
	db	191,18,124,9,3
	db	188,191,18,120,6,3
	db	191,18,124,9,3
	db	192,191,18,120,6,3
	db	191,18,124,9,3

	db	246,1,190,232,10,5
	db	1,190,236,4,5
	db	250,1,20,64,5,18
	db	1,20,68,14,18
	db	254,1,20,64,5,18
	db	1,20,68,14,18
	db	4,1,20,64,5,18
	db	1,20,68,14,18
	db	8,1,20,64,5,18
	db	1,20,68,14,18
	db	12,1,20,64,5,18
	db	1,20,68,14,18
	db	16,1,20,64,5,18
	db	1,20,68,14,18

	db	70,1,170,232,10,5	
	db	1,170,236,4,5
	db	74,1,100,168,6,1
	db	1,100,172,11,1
	db	78,1,100,168,6,1
	db	1,100,172,11,1
	db	82,1,100,168,6,1
	db	1,100,172,11,1
	db	86,191,200,120,9,3
	db	191,200,124,11,3
	db	90,191,200,120,9,3
	db	191,200,124,11,3
	db	94,191,200,120,9,3
	db	191,200,124,11,3

	db	148,1,40,232,10,5
	db	1,40,236,4,5

	db	226,1,200,232,10,5
	db	1,200,236,4,5
	db	230,1,120,200,14,6
	db	1,120,204,4,6
	db	234,1,56,200,14,6
	db	1,56,204,4,6
	db	238,1,184,200,14,6
	db	1,184,204,4,6
	db	242,1,24,200,14,6
	db	1,24,204,4,6
	db	246,1,120,200,14,6
	db	1,120,204,4,6
	db	250,1,216,200,14,6
	db	1,216,204,4,6

	db	48,1,20,232,10,5
	db	1,20,236,4,5
	db	52,1,10,144,9,2
	db	1,10,148,11,2
	db	56,1,30,144,9,2
	db	1,30,148,11,2
	db	60,1,50,144,9,2
	db	1,50,148,11,2

	db	126,1,200,232,10,5
	db	1,200,236,4,5
	db	130,1,40,200,14,2
	db	1,40,204,13,2
	db	134,1,20,200,14,2
	db	1,20,204,13,2
	db	138,1,160,168,12,1
	db	1,160,172,15,1
	db	142,191,18,120,5,3
	db	191,18,124,7,3
	db	146,191,18,120,5,3
	db	191,18,124,7,3
	db	150,191,18,120,5,3
	db	191,18,124,7,3

	db	204,1,100,232,10,5
	db	1,100,236,4,5
	db	208,24,1,168,6,17
	db	24,1,172,11,17
	db	212,40,223,144,5,16
	db	40,223,148,14,16
	db	216,56,1,168,1,17
	db	56,1,172,14,17
	db	220,72,223,168,1,16
	db	72,223,172,14,16
	db	224,88,1,144,5,17
	db	88,1,148,14,17
	db	228,104,223,144,5,16
	db	104,223,148,14,16

	db	26,1,180,232,10,5
	db	1,180,236,4,5
	db	30,1,100,64,10,18
	db	1,100,68,5,18
	db	34,1,100,64,10,18
	db	1,100,68,5,18
	db	38,1,100,64,10,18		
	db	1,100,68,5,18
	db	42,1,180,144,6,6
	db	1,180,148,2,6
	db	46,1,160,144,6,6
	db	1,160,148,2,6
	db	50,1,200,144,6,6
	db	1,200,148,2,6

	db	104,1,100,232,10,5
	db	1,100,236,4,5
	db	108,1,100,144,6,2
	db	1,100,148,11,2
	db	112,1,100,144,6,2
	db	1,100,148,11,2
	db	116,1,100,144,6,2
	db	1,100,148,11,2
	db	120,191,200,120,10,3
	db	191,200,124,15,3
	db	124,191,200,120,10,3
	db	191,200,124,15,3
	db	128,191,200,120,10,3
	db	191,200,124,15,3

	db	182,1,150,168,6,4
	db	1,150,172,10,4
	db	186,1,170,168,6,4
	db	1,170,172,10,4
	db	190,1,130,168,6,4
	db	1,130,172,10,4
	db	194,191,200,120,14,3
	db	191,200,124,15,3
	db	198,191,18,120,6,3
	db	191,18,124,14,3
	db	202,191,200,120,14,3
	db	191,200,124,15,3
	db	206,191,18,120,6,3
	db	191,18,124,14,3

	db	4,1,100,232,10,5
	db	1,100,236,4,5
	db	8,1,20,200,15,8
	db	1,20,204,13,8
	db	12,1,60,112,4,13
	db	1,60,116,2,13
	db	16,1,20,200,15,8
	db	1,20,204,13,8
	db	20,1,128,112,4,13
	db	1,128,116,2,13
	db	24,1,20,200,15,8
	db	1,20,204,13,8
	db	28,1,190,112,4,13
	db	1,190,116,2,13

	db	82,1,80,204,1,6
	db	1,80,200,15,6
	db	86,1,175,200,15,6
	db	1,175,204,12,6
	db	90,1,112,200,14,6
	db	1,112,204,4,6
	db	94,1,80,200,14,6
	db	1,80,204,4,6
	db	112,1,175,200,15,6
	db	1,175,204,12,6
	db	116,1,112,200,15,6
	db	1,112,204,12,6
	db	120,1,80,200,14,6
	db	1,80,204,13,6

	db	200,1,120,224,5,13
	db	1,120,228,14,13
	db	204,1,160,224,6,13
	db	1,160,228,14,13
	db	208,1,80,224,6,13
	db	1,80,228,14,13
	db	212,1,200,224,5,13
	db	1,200,228,14,13
	db	216,1,30,232,10,5
	db	1,30,236,4,5
	db	220,1,40,224,5,13
	db	1,40,228,14,13
	db	224,1,112,224,6,13
	db	1,112,228,14,13

	db	10,1,80,224,5,13
	db	1,80,228,14,13
	db	14,1,175,112,15,13
	db	1,175,116,7,13
	db	18,1,112,224,12,13
	db	1,112,228,14,13
	db	22,1,72,112,15,13
	db	1,72,116,7,13
	db	24,1,112,224,13,13
	db	1,112,228,14,13

	db	62,1,100,232,10,5
	db	1,100,236,4,5
	db	66,1,175,168,15,1
	db	1,175,172,7,1
	db	70,1,80,144,12,8
	db	1,80,148,11,8
	db	74,1,175,168,15,1
	db	1,175,172,7,1
	db	78,1,80,144,5,8
	db	1,80,148,14,8
	db	82,1,175,168,15,1
	db	1,175,172,7,1

	db	136,1,100,232,10,5
	db	1,100,236,4,5
	db	140,191,18,120,13,14
	db	191,18,124,9,14
	db	144,191,200,120,13,14
	db	191,200,124,9,14
	db	148,191,18,120,13,14
	db	191,18,124,9,14
	db	152,1,80,168,13,4
	db	1,80,172,15,4
	db	156,1,190,168,13,4
	db	1,190,172,4,4
	db	160,1,130,168,13,4
	db	1,130,172,15,4

	db	200,1,100,232,10,5
	db	1,100,236,4,5
	db	204,1,60,64,5,18
	db	1,60,68,15,18
	db	208,1,60,64,5,18
	db	1,60,68,14,18
	db	212,1,60,64,5,18
	db	1,60,68,15,18
	db	216,1,120,64,5,18
	db	1,120,68,14,18
	db	220,1,120,64,5,18
	db	1,120,68,15,18
	db	224,1,120,64,5,18
	db	1,120,68,14,18

	db	22,1,30,232,10,5
	db	1,30,236,4,5
	db	26,1,160,168,6,4
	db	1,160,172,11,4
	db	30,1,160,168,6,4
	db	1,160,172,11,4
	db	34,1,160,168,6,4
	db	1,160,172,11,4
	db	38,1,160,168,6,4
	db	1,160,172,11,4
	db	42,1,160,168,6,4
	db	1,160,172,11,4
	db	46,1,160,168,6,4
	db	1,160,172,11,4

	db	100,1,150,232,10,5
	db	1,150,236,4,5
	db	104,1,40,224,5,13
	db	1,40,228,14,13
	db	108,1,200,224,5,13
	db	1,200,228,14,13
	db	112,1,120,224,5,13
	db	1,120,228,14,13
	db	116,48,1,112,13,17
	db	48,1,116,14,17
	db	120,28,1,112,13,17
	db	28,1,116,14,17
	db	124,56,1,112,13,17
	db	56,1,116,14,17

	db	182,1,90,232,10,5	
	db	1,90,236,4,5
	db	186,1,60,144,12,2
	db	1,60,148,14,2
	db	190,1,70,144,12,2
	db	1,70,148,14,2
	db	194,1,180,168,9,1
	db	1,180,172,11,1
	db	198,191,18,120,5,3
	db	191,18,124,14,3
	db	202,191,18,120,5,3
	db	191,18,124,14,3
	db	206,191,18,120,5,3
	db	191,18,124,14,3

	db	6,1,100,232,10,5
	db	1,100,236,4,5
	db	10,1,175,168,6,1
	db	1,175,172,10,1
	db	14,1,80,200,14,8
	db	1,80,204,12,8
	db	18,1,175,168,6,1
	db	1,175,172,10,1
	db	22,1,80,200,14,8
	db	1,80,204,12,8
	db	26,1,175,168,6,1
	db	1,175,172,10,1
	db	30,1,80,200,14,8
	db	1,80,204,12,8

	db	120,191,18,120,5,3
	db	191,18,124,14,3
	db	124,191,18,120,5,3
	db	191,18,124,14,3
	db	128,191,200,120,12,3
	db	191,200,124,14,3
	db	132,191,200,120,12,3
	db	191,200,124,14,3
	db	136,191,18,120,13,3
	db	191,18,124,11,3
	db	140,191,18,120,13,3
	db	191,18,124,11,3

	db	255

mid2_eventlist:
	db	1,15
	db	16,112,64,14,16,112,68,6		;N
	db	16,128,72,14,16,128,76,6
	db	32,112,80,14,32,112,84,4
	db	32,128,88,14,32,128,92,4

	db	18,13
	db	16,112,64,14,16,112,68,6		;N
	db	16,128,72,14,16,128,76,6
	db	32,112,80,14,32,112,84,4
	db	32,128,88,14,32,128,92,4

	db	36,11
	db	159,112,64,14,159,112,68,6		;S
	db	159,128,72,14,159,128,76,6
	db	175,112,80,14,175,112,84,4
	db	175,128,88,14,175,128,92,4

	db	48,17
	db	80,0,64,14,80,0,68,6			;W
	db	80,16,72,14,80,16,76,6
	db	96,0,80,14,96,0,84,4
	db	96,16,88,14,96,16,92,4

	db	74,10
	db	80,222,64,14,80,222,68,6		;E
	db	80,238,72,14,80,238,76,6
	db	96,222,80,14,96,222,84,4
	db	96,238,88,14,96,238,92,4

	db	86,14
	db	159,112,64,14,159,112,68,6		;S
	db	159,128,72,14,159,128,76,6
	db	175,112,80,14,175,112,84,4
	db	175,128,88,14,175,128,92,4

	db	104,9
	db	16,112,64,14,16,112,68,6		;N
	db	16,128,72,14,16,128,76,6
	db	32,112,80,14,32,112,84,4
	db	32,128,88,14,32,128,92,4

	db	116,10
	db	80,222,64,14,80,222,68,6		;E
	db	80,238,72,14,80,238,76,6
	db	96,222,80,14,96,222,84,4
	db	96,238,88,14,96,238,92,4

	db	128,11
	db	159,112,64,14,159,112,68,6		;S
	db	159,128,72,14,159,128,76,6
	db	175,112,80,14,175,112,84,4
	db	175,128,88,14,175,128,92,4

	db	140,12
	db	80,0,64,14,80,0,68,6			;W
	db	80,16,72,14,80,16,76,6
	db	96,0,80,14,96,0,84,4
	db	96,16,88,14,96,16,92,4

	db	152,13
	db	16,112,64,14,16,112,68,6		;N
	db	16,128,72,14,16,128,76,6
	db	32,112,80,14,32,112,84,4
	db	32,128,88,14,32,128,92,4

	db	170,11
	db	159,112,64,14,159,112,68,6		;S
	db	159,128,72,14,159,128,76,6
	db	175,112,80,14,175,112,84,4
	db	175,128,88,14,175,128,92,4

	db	182,17
	db	80,0,64,14,80,0,68,6			;W
	db	80,16,72,14,80,16,76,6
	db	96,0,80,14,96,0,84,4
	db	96,16,88,14,96,16,92,4

	db	208,10
	db	80,222,64,14,80,222,68,6		;E
	db	80,238,72,14,80,238,76,6
	db	96,222,80,14,96,222,84,4
	db	96,238,88,14,96,238,92,4

	db	220,14
	db	159,112,64,14,159,112,68,6		;S
	db	159,128,72,14,159,128,76,6
	db	175,112,80,14,175,112,84,4
	db	175,128,88,14,175,128,92,4

	db	238,15
	db	16,112,64,14,16,112,68,6		;N
	db	16,128,72,14,16,128,76,6
	db	32,112,80,14,32,112,84,4
	db	32,128,88,14,32,128,92,4

	db	255

elb2_entering:
	db	1,55
	
elb2_eventlist:
	db	9,15					;N
	db	16,88,64,0,16,88,68,0
	db	16,152,64,0,16,152,68,0
	db	32,112,64,0,32,112,68,0
	db	32,128,64,0,32,128,68,0
	db	60,100,64,0,60,100,68,0
	db	60,140,64,0,60,140,68,0

	db	19,13					;N
	db	16,88,64,0,16,88,68,0
	db	16,152,64,0,16,152,68,0
	db	32,112,64,0,32,112,68,0
	db	32,128,64,0,32,128,68,0
	db	60,100,64,0,60,100,68,0
	db	60,140,64,0,60,140,68,0

	db	26,15					;C
	db	72,88,64,0,72,88,68,0
	db	72,152,64,0,72,02,68,0
	db	88,112,64,0,88,112,68,0
	db	88,128,64,0,88,128,68,0
	db	116,100,64,0,116,100,68,0
	db	116,140,64,0,116,140,68,0

	db	30,50					;C
	db	72,88,64,0,72,88,68,0
	db	72,152,64,0,72,02,68,0
	db	88,112,64,0,88,112,68,0
	db	88,128,64,0,88,128,68,0
	db	116,100,64,0,116,100,68,0
	db	116,140,64,0,116,140,68,0

	db	50,16					;C
	db	72,88,64,0,72,88,68,0
	db	72,152,64,0,72,02,68,0
	db	88,112,64,0,88,112,68,0
	db	88,128,64,0,88,128,68,0
	db	116,100,64,0,116,100,68,0
	db	116,140,64,0,116,140,68,0

	db	61,15					;W
	db	72,0,64,0,72,0,68,0
	db	72,64,64,0,72,64,68,0
	db	88,24,64,0,88,24,68,0
	db	88,40,64,0,88,40,68,0
	db	116,12,64,0,116,12,68,0
	db	116,52,64,0,116,52,68,0

	db	66,50					;W
	db	72,0,64,0,72,0,68,0
	db	72,64,64,0,72,64,68,0
	db	88,24,64,0,88,24,68,0
	db	88,40,64,0,88,40,68,0
	db	116,12,64,0,116,12,68,0
	db	116,52,64,0,116,52,68,0

	db	86,17					;W
	db	72,0,64,0,72,0,68,0
	db	72,64,64,0,72,64,68,0
	db	88,24,64,0,88,24,68,0
	db	88,40,64,0,88,40,68,0
	db	116,12,64,0,116,12,68,0
	db	116,52,64,0,116,52,68,0

	db	108,15					;E
	db	72,176,64,0,72,176,68,0
	db	72,240,64,0,72,240,68,0
	db	88,200,64,0,88,200,68,0
	db	88,216,64,0,88,216,68,0
	db	116,188,64,0,116,188,68,0
	db	116,228,64,0,116,228,68,0

	db	113,50					;E
	db	72,176,64,0,72,176,68,0
	db	72,240,64,0,72,240,68,0
	db	88,200,64,0,88,200,68,0
	db	88,216,64,0,88,216,68,0
	db	116,188,64,0,116,188,68,0
	db	116,228,64,0,116,228,68,0

	db	133,13					;E
	db	72,176,64,0,72,176,68,0
	db	72,240,64,0,72,240,68,0
	db	88,200,64,0,88,200,68,0
	db	88,216,64,0,88,216,68,0
	db	116,188,64,0,116,188,68,0
	db	116,228,64,0,116,228,68,0

	db	139,16					;SE
	db	120,176,64,0,120,176,68,0
	db	120,240,64,0,120,240,68,0
	db	136,200,64,0,136,200,68,0
	db	136,216,64,0,136,216,68,0
	db	164,188,64,0,164,188,68,0
	db	164,228,64,0,164,228,68,0

	db	161,14					;SW
	db	120,0,64,0,120,0,68,0
	db	120,64,64,0,120,64,68,0
	db	136,24,64,0,136,24,68,0
	db	136,40,64,0,136,40,68,0
	db	164,12,64,0,164,12,68,0
	db	164,52,64,0,164,52,68,0

	db	174,17					;NW
	db	16,0,64,0,16,0,68,0
	db	16,64,64,0,16,64,68,0
	db	32,24,64,0,32,24,68,0
	db	32,40,64,0,32,40,68,0
	db	60,12,64,0,60,12,68,0
	db	60,52,64,0,60,52,68,0

	db	185,15					;C
	db	16,88,64,0,16,88,68,0
	db	16,152,64,0,16,152,68,0
	db	32,112,64,0,32,112,68,0
	db	32,128,64,0,32,128,68,0
	db	60,100,64,0,60,100,68,0
	db	60,140,64,0,60,140,68,0

	db	255
level2_music:
	include "Zero.asm"
music2_end:

second_boss:
	ld	hl,actpat+37			;well same as first level boss
						;because they use the same patterns.
						;only offsets and nametable ram buffer origin changes
						;so no point on explainin it
						;even if it has 2 fire draw/delete loops
						;but they act as the first level one
						;take a look if you want but then jump to 3rd boss :)
	ld	a,(hl)
	sub	13			;cp	13
	jr	z,sb_boss_goes_down
	dec	a			;cp	14
	jr	z,sb_boss_goes_up
	dec	a			;cp	15
	jr	z,sb_stopped_boss
	dec	a			;cp	16
	jr	z,sb_boss_goes_left
	dec	a			;cp	17
	jr	z,sb_boss_goes_right
	ret
sb_boss_goes_left:
	ld	hl,(boss_pos)
	dec	hl
	ld	(boss_pos),hl
	ld	bc,240
	ld	de,chstart-704
	jp	sb_boss_to_nametable
sb_boss_goes_right:
	ld	hl,(boss_pos)
	inc	hl
	ld	(boss_pos),hl
	ld	bc,240
	ld	de,chstart-705
	jp	sb_boss_to_nametable
sb_boss_goes_down:
	ld	bc,32	
	ld	hl,(boss_pos)
	add	hl,bc
	ld	(boss_pos),hl
;	ld	bc,16
	ld	c,16
	ld	de,chstart-736
	jp	sb_boss_to_nametable
sb_boss_goes_up:
	ld	bc,-32	
	ld	hl,(boss_pos)
	add	hl,bc
	ld	(boss_pos),hl
	ld	bc,16
	ld	de,chstart-448
	jp	sb_boss_to_nametable
sb_stopped_boss:
	ld	bc,256
	ld	de,chstart-704
sb_boss_to_nametable:
	ld	hl,(boss_pos)
	add	hl,de
	ld	d,h
	ld	e,l
	ld	(hl),0
	inc	de
	call	unroll

	ld	hl,(boss_pos)
	ld	de,chstart-704
	add	hl,de
	ex	de,hl
	ld	hl,ELB_data2
	ld	bc,240
	call	unroll
	ld	a,(boss_fire)
	or	a
	ret	z
	ld	hl,(boss_pos)
bossfire_level2:
	ld	de,chstart-572
	add	hl,de
	ld	de,31
	ld	a,30
;	ld	b,11
;	ld	c,31
	ld	bc,11*256 + 31			;MDL
giga2_loop:
	ld	(hl),a
	inc	l
	ld	(hl),c
	add	hl,de
	djnz	giga2_loop
	ld	hl,(boss_pos)
	ld	de,chstart-668
	add	hl,de
	ld	de,-33
	ld	b,9
giga2_loop2:
	ld	(hl),a
	inc	l
	ld	(hl),c
	add	hl,de
	djnz	giga2_loop2
	ld	a,6
	ld	(sfx_nr),a
	ld	a,(boss_fire)
	dec	a
	ld	(boss_fire),a
	ret	nz
nofire_level2:
	ld	hl,(boss_pos)
	ld	de,chstart-572
	add	hl,de
	ld	de,31
	ld	b,11
	xor	a
	ld	(boss_fire),a
nofire2_loop:
	ld	(hl),a
	inc	l
	ld	(hl),a
	add	hl,de	
	djnz	nofire2_loop
	ld	hl,(boss_pos)
	ld	de,chstart-668
	add	hl,de
	ld	de,-33
	ld	b,9
nofire2_loop2:
	ld	(hl),a
	inc	l
	ld	(hl),a
	add	hl,de	
	djnz	nofire2_loop2
	ret	

endboss_firecollision2:
	ld	hl,ramspttbl+1			;point to player xpos
	ld	de,ramspttbl+69
	ld	a,(de)
	cp	112
	jp	z,fire_point1
	cp	24
	jp	z,fire_point2
	cp	200
	jp	z,fire_point3
fire_point1:
;	ld	b,105				;14*8-15
;	ld	c,135				;15*8+7
	ld	bc,105*256 + 135		;MDL
	jp	check_collision2
fire_point2:
;	ld	b,17
;	ld	c,49
	ld	bc,17*256 + 49			;MDL
	jp	check_collision2
fire_point3:
	ld	b,193				;wtf? forget to
	ld	c,223				;comment these 2 lines to remove them
						;so time and room wasted
	ld	bc,193*256 + 223		;because this one do the same and is faster...
check_collision2:
	ld	a,(hl)				;player xpos in a
	cp	b
	ret	c
	cp	c
	ret	nc
	jp	i_am_dead

ELB_data2:
	db	021h,022h,023h,020h,020h,020h,020h,06Dh,06Eh,06Fh,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0	;row1
	db	024h,025h,026h,040h,020h,020h,062h,070h,071h,072h,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0	;row2
	db	027h,028h,029h,063h,064h,065h,066h,073h,074h,075h,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0	;row3
	db	02Ah,02Bh,02Ch,067h,068h,069h,06Ah,076h,077h,078h,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0	;row4
	db	02Dh,02Eh,02Fh,06Bh,020h,020h,06Ch,079h,07Ah,07Bh,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0	;row5
	db	020h,03Ah,03Bh,020h,020h,020h,020h,07Ch,07Dh,020h,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0	;row6
	db	020h,03Dh,03Eh,020h,020h,020h,020h,07Eh,07Fh,020h,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0	;row7
	db	020h,020h,03Fh,020h,020h,020h,020h,05Bh,020h,020h,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0	;row8
level2map:
	db	0
	db	255,0									;000
	db	253,0,0,0,0,27,254,0,252,0						;001
	db	253,0,0,0,0,26,254,0,252,0						;002
	db	254,0,0,0,0,2,253,0,0,0,0,0						;003
	db	254,0,0,0,0,1,253,0,0,0,0,11						;004
	db	254,0,252,0,0,27,253,0,0,10						;005
	db	254,0,252,0,0,26,253,0,25,9						;006
	db	252,0,0,0,0,2,0,27,254,0,252,0,24,7					;007
	db	252,0,0,0,0,1,0,26,254,0,252,0,23,8					;008
	db	254,0,252,0,0,0,0,2,252,0,0,0,22,7					;009
	db	0,0,0,27,254,0,0,0,0,1,252,0,0,0,21,8					;010
	db	0,0,0,26,254,0,253,0,0,0,20,7						;011
	db	253,0,252,0,2,254,0,0,19,8						;012
	db	253,0,252,0,1,253,0,0,0,2,252,0,0,0,19,7				;013
	db	252,0,0,27,253,0,0,27,252,0,0,0,0,1,252,0,0,0,19,8			;014
	db	252,0,0,26,253,0,0,26,253,0,252,0,0,0,19,7				;015
	db	254,0,253,0,252,0,0,0,19,8						;016
	db	254,0,252,0,27,253,0,0,19,7						;017
	db	253,0,0,27,253,0,0,0,26,253,0,0,19,8					;018
	db	253,0,0,26,253,0,0,0,27,252,0,0,0,2,0,0,18,7				;019
	db	0,0,2,254,0,0,26,252,0,0,0,1,0,0,17,8					;020
	db	0,0,1,254,0,253,0,0,0,0,16,7						;021
	db	252,0,27,253,0,27,0,0,2,253,0,252,0,0,15,8				;022
	db	252,0,26,253,0,0,0,0,1,253,0,252,0,0,14,7				;023
	db	253,0,252,0,0,0,27,253,0,252,0,0,0,0,13,6				;024
	db	253,0,252,0,0,0,26,253,0,27,252,0,0,0,12,5				;025
	db	254,0,252,0,0,0,0,26,252,0,0,0,0,4					;026
	db	252,0,0,2,254,0,253,0,0,3						;027
	db	252,0,0,1,254,0,253,0,0,0						;028
	db	255,0									;029
	db	253,0,0,29,253,0,252,0,2,253,0,0					;030
	db	252,0,0,0,27,0,0,28,253,0,252,0,1,253,0,0				;031
	db	252,0,0,0,26,254,0,253,0,0						;032
	db	254,0,253,0,0,2,252,0,0,0						;033
	db	254,0,253,0,0,1,252,0,0,0						;034
	db	253,0,29,252,0,0,0,0,27,253,0,27,252,0,0,0				;035
	db	253,0,28,252,0,0,0,0,26,253,0,252,0,0,0,0				;036
	db	255,0									;037
	db	254,0,0,0,2,253,0,0,252,0						;038
	db	253,0,27,0,29,252,0,0,0,0,1,253,0,0,252,0				;039
	db	26,253,0,2,28,254,0,27,252,0						;040
	db	253,0,0,1,252,0,0,0,254,0						;041
	db	0,0,2,254,0,253,0,252,0,0						;042
	db	0,0,1,253,0,0,29,254,0,0,0,0						;043
	db	253,0,252,0,28,253,0,252,0,0,27,0,252,0					;044
	db	254,0,29,253,0,0,26,252,0,0						;045
	db	254,0,28,253,0,252,0,0,0,0						;046
	db	27,252,0,27,254,0,253,0,0,0						;047
	db	252,0,0,26,253,0,252,0,0,0,0,27,253,0,0,26				;048
	db	254,0,252,0,0,0,253,0,0,0						;049
	db	253,0,252,0,27,254,0,0,0,0						;050
	db	253,0,252,0,26,253,0,0,0,27,253,0					;051
	db	254,0,29,252,0,0,0,26,253,0						;052
	db	254,0,28,253,0,252,0,0,27,0						;053
	db	253,0,0,0,0,29,254,0,252,0						;054
	db	253,0,0,0,0,28,254,0,252,0						;055
	db	255,0									;056
	db	255,0									;057
	db	254,0,0,0,0,2,253,0,0,27,0,0						;058
	db	254,0,0,0,0,1,253,0,0,26,0,0						;059
	db	253,0,0,27,254,0,252,0,0,0						;060
	db	253,0,0,26,254,0,252,0,0,0						;061
	db	255,0									;062
	db	255,0									;063
	db	0,27,2,254,0,253,0,252,0,0						;064
	db	0,0,1,254,0,253,0,252,0,0						;065
	db	253,0,252,0,0,0,27,252,0,0,0,0,27,253,0,0				;066
	db	253,0,252,0,0,0,26,252,0,0,0,0,26,253,0,0				;067
	db	255,0									;068
	db	254,0,253,0,0,0,0,2,252,0						;069
	db	252,0,0,0,0,27,254,0,0,0,0,1,252,0					;070
	db	252,0,0,0,0,26,254,0,253,0						;071
	db	255,0									;072
	db	254,0,253,0,0,27,252,0,0,0						;073
	db	254,0,0,27,252,0,0,0,0,26,252,0,0,0					;074
	db	252,0,0,0,0,2,253,0,0,26,253,0,252,0,0,0				;075
	db	252,0,0,0,0,1,253,0,0,0,27,253,0,252,0,0				;076
	db	254,0,0,0,26,253,0,252,0,0						;077
	db	255,0									;078
	db	255,0									;079
	db	0,27,252,0,0,27,0,27,254,0,252,0,0,0					;080
	db	0,0,252,0,0,26,0,26,0,27,254,0,252,0					;081
	db	252,0,27,252,0,0,0,26,253,0,252,0,0,27,252,0,0,0			;082
	db	252,0,26,254,0,252,0,26,252,0,0,0					;083
	db	255,0									;084
	db	254,0,252,0,0,0,2,253,0,0						;085
	db	254,0,252,0,0,0,1,253,0,0						;086
	db	255,0									;087
	db	0,0,27,252,0,2,253,0,0,0,0,29,253,0,252,0				;088
	db	0,0,0,252,0,1,253,0,0,0,0,28,0,0,29,253,0,0				;089
	db	254,0,252,0,0,0,28,253,0,0						;090
	db	253,0,0,0,0,2,254,0,252,0						;091
	db	253,0,0,26,0,1,253,0,0,0,0,2,252,0,0,2,0,0				;092
	db	254,0,252,0,0,0,0,1,252,0,0,1,0,0					;093
	db	255,0									;094
	db	255,0									;095
	db	252,0,27,254,0,253,0,0,0,0						;096
	db	252,0,26,253,0,0,0,0,2,253,0,252,0,2,0,0				;097
	db	254,0,1,0,0,0,2,253,0,1,0,0						;098
	db	254,0,252,0,1,253,0,26,0,0						;099
	db	255,0									;100
	db	255,0									;101
	db	255,0									;102
	db	253,0,252,0,27,0,2,254,0,0						;103
	db	253,0,0,0,0,2,2,0,1,0,0,0,2,253,0,252,0,0				;104
	db	253,0,0,0,0,1,1,252,0,0,1,253,0,252,0,26				;105
	db	255,0									;106
	db	255,0									;107
	db	255,0									;108
	db	252,0,0,0,0,2,254,0,253,0						;109
	db	252,0,0,0,0,1,254,0,0,27,252,0,0,0					;110
	db	254,0,253,0,0,26,252,0,0,0						;111
	db	253,0,0,0,27,254,0,0,252,0						;112
	db	253,0,0,0,26,252,0,0,29,253,0,27,252,0,0,0				;113
	db	29,26,0,0,253,0,2,0,0,0,28,253,0,252,0,0,0,0				;114
	db	28,0,0,27,253,0,1,254,0,0,0,0						;115
	db	0,0,0,26,254,0,253,0,252,0						;116
	db	253,0,0,0,0,29,254,0,252,0						;117
	db	253,0,0,0,0,28,254,0,252,0						;118
	db	255,0									;119
	db	255,0									;120
	db	253,0,252,0,0,0,0,29,29,29,253,0,252,0,0,0				;121
	db	253,0,27,252,0,0,0,28,28,28,253,0,252,0,0,0				;122
	db	252,0,0,0,0,27,26,254,0,252,0,0,0,0					;123
	db	252,0,0,0,0,26,253,0,0,2,253,0,26,0,0,27,0,0				;124
	db	254,0,0,1,0,0,29,253,0,26,0,0						;125
	db	254,0,29,0,0,0,28,253,0,0,0,0						;126
	db	254,0,28,253,0,2,252,0,0,27						;127
	db	254,0,253,0,0,1,252,0,0,0						;128
	db	255,0									;129
	db	0,0,26,254,0,0,0,0,27,253,0,0						;130
	db	254,0,252,0,0,0,26,253,0,0						;131
	db	255,0									;132
	db	255,0									;133
	db	255,0									;134
	db	252,0,27,254,0,253,0,0,26,0						;135
	db	252,0,26,254,0,0,0,0,2,252,0,0,0,0					;136
	db	254,0,253,0,1,27,252,0,0,0						;137
	db	255,0									;138
	db	254,0,252,0,0,27,253,0,0,0						;139
	db	254,0,252,0,0,26,253,0,0,26						;140
	db	255,0									;141
	db	255,0									;142
	db	255,0									;143
	db	27,252,0,27,254,0,253,0,0,0						;144
	db	252,0,0,26,254,0,26,253,0,0						;145
	db	254,0,253,0,0,0,0,27,252,0						;146
	db	254,0,253,0,0,0,0,26,252,0						;147
	db	255,0									;148
	db	253,0,1,252,0,27,254,0,0,0						;149
	db	253,0,252,0,0,26,254,0,2,0						;150
	db	255,0									;151
	db	255,0									;152
	db	255,0									;153
	db	255,0									;154
	db	255,0									;155
	db	254,0,252,0,0,0,0,27,253,0						;156
	db	0,0,1,254,0,252,0,26,253,0						;157
	db	252,0,27,254,0,253,0,0,2,0						;158
	db	252,0,26,254,0,253,0,0,0,0						;159
	db	255,0									;160
	db	255,0									;161
	db	0,0,26,253,0,27,254,0,252,0						;162
	db	0,0,0,253,0,26,254,0,0,27,0,0						;163
	db	254,0,253,0,252,0,0,26,0,0						;164
	db	255,0									;165
	db	255,0									;166
	db	255,0									;167
	db	0,1,253,0,2,254,0,252,0,0						;168
	db	253,0,0,0,1,254,0,252,0,0						;169
	db	255,0									;170
	db	255,0									;171
	db	254,0,0,0,27,253,0,252,0,2						;172
	db	254,0,0,0,26,253,0,252,0,0						;173
	db	255,0									;174
	db	255,0									;175
	db	255,0									;176
	db	253,0,252,0,0,0,2,254,0,0						;177
	db	0,26,252,0,253,0,1,254,0,0						;178
	db	252,0,0,27,0,0,253,0,254,0						;179
	db	252,0,0,26,254,0,2,0,0,27,252,0,0,0					;180
	db	254,0,253,0,0,26,252,0,0,0						;181
	db	255,0									;182
	db	255,0									;183
	db	255,0									;184
	db	255,0									;185
	db	255,0									;186
	db	255,0									;187
	db	252,0,0,0,0,2,254,0,0,0,27,252,0,0					;188
	db	252,0,0,0,0,1,254,0,0,0,26,252,0,0					;189
	db	255,0									;190
	db	255,0									;191
	db	254,0,1,0,252,0,2,253,0,0						;192
	db	253,0,252,0,27,253,0,0,1,253,0,0					;193
	db	27,0,252,0,0,2,253,0,0,25,23,253,0,252,0,0				;194
	db	252,0,0,0,0,1,253,0,0,24,22,253,0,252,0,0				;195
	db	255,0									;196
	db	253,0,252,0,0,27,253,0,252,0,0,25,252,0					;197
	db	253,0,252,0,0,26,253,0,27,0,0,2,0,24,29,0,0,0				;198
	db	252,0,0,2,254,0,0,0,0,1,0,0,28,0,0,0					;199
	db	252,0,0,1,254,0,1,253,0,0						;200
	db	252,0,0,9,0,9,0,0,20,254,0,252,0,0					;201
	db	252,0,0,8,0,8,0,0,19,254,0,252,0,0					;202
	db	0,0,2,0,0,18,0,18,252,0,0,0,0,9,254,0					;203
	db	0,0,1,0,0,18,0,18,0,15,0,0,0,15,0,8,254,0				;204
	db	26,252,0,7,21,7,21,14,21,17,21,14,21,7,253,0,0,0,0,20,252,0		;205
	db	252,0,0,6,11,6,11,13,11,16,11,13,11,6,20,252,0,0,0,0,27,0,0,19,252,0	;206
	db	252,0,0,5,10,5,10,12,10,10,10,12,10,5,19,0,27,0,252,0,26,252,0,0,0,0	;207
	db	252,0,0,18,0,18,0,0,2,252,0,18,0,252,0,0,20,253,0,0			;208
	db	0,29,0,0,0,18,0,4,0,0,1,252,0,18,252,0,0,0,19,252,0,2,252,0		;209
	db	0,28,0,0,0,4,0,3,252,0,20,0,0,4,253,0,0,0,0,1,252,0			;210
	db	0,2,0,0,0,3,252,0,0,0,19,0,0,3,254,0					;211
	db	0,1,254,0,27,253,0,252,0,0						;212
	db	255,0									;213
	db	252,0,0,2,254,0,253,0,252,0						;214
	db	26,252,0,1,254,0,253,0,0,0						;215
	db	255,0									;216
	db	254,0,1,252,0,0,0,27,253,0						;217
	db	254,0,252,0,0,27,0,26,253,0						;218
	db	253,0,26,252,0,27,252,0,0,0,0,26,252,0,0,27,252,0			;219
	db	253,0,252,0,0,26,253,0,252,0,0,26,252,0					;220
	db	255,0									;221
	db	255,0									;222
	db	255,0									;223
	db	255,0									;224
	db	253,0,252,0,2,254,0,0,0,0						;225
	db	253,0,252,0,1,253,0,252,0,0,27,252,0,0					;226
	db	254,0,253,0,0,0,26,252,0,0						;227
	db	255,0									;228
	db	0,0,27,254,0,253,0,252,0,0						;229
	db	0,0,26,254,0,253,0,1,253,0						;230
	db	255,0									;231
	db	254,0,0,27,253,0,252,0,0,0						;232
	db	254,0,0,26,253,0,252,0,0,0						;233
	db	255,0									;234
	db	255,0									;235
	db	255,0									;236
	db	253,0,27,254,0,252,0,0,0,0						;237
	db	253,0,26,254,0,252,0,0,0,0						;238
	db	255,0									;239
	db	255,0									;240
	db	255,0									;241
	db	255,0									;242
	db	255,0									;243
	db	255,0									;244
	db	255,0									;245
	db	255,0									;246
	db	255,0									;247
	db	255,0									;248
	db	255,0									;249
	db	255,0									;250
	db	255,0									;251
	db	255,0									;252
	db	255,0									;253
	db	255,0									;254
	db	255,0									;255
	db	255,0									;256
	db	255,0									;257
	db	255,0									;258
	db	255,0									;259
	db	255,0									;260
	db	255,0									;261
	db	255,0									;262
	db	255,0									;263
	db	255,0									;264
	db	255,0									;265
	db	255,0									;266
	db	255,0									;267
	db	255,0									;268
	db	255,0									;269
	db	255,0									;270
	db	255,0									;271
	db	255,0									;272
	db	255,0									;273
	db	251

boss2_t1:
	db	05Fh,03Fh,05Fh,03Fh,05Fh,03Fh,05Fh,03Fh	;030
	db	0FCh,0FAh,0FCh,0FAh,0FCh,0FAh,0FCh,0FAh	;031
	db	000h,000h,000h,000h,000h,000h,000h,000h	;032
	db	000h,000h,000h,000h,000h,000h,001h,003h	;033
	db	000h,001h,001h,01Eh,03Fh,07Fh,0FCh,0F8h	;034
	db	0FCh,0E6h,09Ah,066h,0BEh,0BEh,0BEh,0BEh	;035
	db	00Fh,01Fh,03Fh,03Fh,07Fh,07Fh,07Fh,07Fh	;036
	db	0F0h,0E0h,0C0h,0E0h,0C0h,0E1h,0C3h,0EFh	;037
	db	0BEh,0BEh,0BEh,0BEh,0BFh,0BFh,0BFh,0BFh	;038
	db	07Fh,07Fh,07Fh,07Fh,03Fh,03Fh,03Fh,01Fh	;039
	db	0FFh,0FFh,0FFh,0FFh,0FFh,0FEh,0F9h,0E7h	;040
	db	0BFh,0BFh,0BFh,09Fh,0A7h,07Ah,0FDh,0FDh	;041
	db	01Fh,01Fh,00Fh,00Fh,007h,007h,007h,003h	;042
	db	0DBh,0DBh,0DBh,0DBh,0DBh,0BBh,0BBh,0BBh	;043
	db	0FEh,0FEh,0FEh,0FEh,0E7h,0C7h,0CFh,0FFh	;044
	db	003h,003h,001h,001h,000h,000h,000h,000h	;045
	db	0BBh,0BBh,07Bh,07Bh,0FBh,0FBh,0FBh,0FBh	;046
	db	0FFh,0FFh,0FFh,0E7h,0C7h,0CFh,0FFh,0FFh	;047
boss2_t1_end:
boss2_t2:
	db	0FBh,0FBh,07Bh,07Dh,03Dh,03Dh,03Eh,01Eh	;058
	db	0FFh,0FFh,0E7h,0C7h,0CFh,0FFh,0FEh,0FEh	;059
	db	0FFh,0FFh,0FFh,0E7h,0C7h,0CFh,0FFh,0FFh	;060
	db	01Fh,00Fh,007h,007h,007h,003h,003h,001h	;061
	db	07Ch,0BCh,0D8h,0E0h,0F0h,0F0h,0F8h,0FEh	;062
	db	0C3h,06Bh,075h,035h,03Bh,01Fh,00Eh,000h	;063
	db	001h,001h,003h,003h,006h,00Fh,01Eh,07Fh	;064
boss2_t2_end:
boss2_t3:
	db	080h,080h,0C0h,0C0h,060h,0F0h,078h,0FEh	;098
	db	0FFh,07Eh,078h,000h,03Fh,0C0h,0E0h,0E0h	;099
	db	09Ch,0FCh,0F0h,0E0h,0E0h,0E0h,0E0h,0E0h	;100
	db	039h,03Fh,00Fh,007h,007h,007h,007h,007h	;101
	db	0FFh,07Eh,01Eh,000h,0FCh,003h,007h,007h	;102
	db	0F0h,0F8h,0FCh,0FCh,0FEh,0FEh,0BEh,03Eh	;103
	db	0F1h,0F1h,0F0h,0F8h,0FCh,0FCh,0FEh,07Fh	;104
	db	08Fh,08Fh,00Fh,01Fh,03Fh,03Fh,07Fh,0FEh	;105
	db	00Fh,01Fh,03Fh,03Fh,07Fh,07Fh,07Dh,07Ch	;106
	db	01Eh,00Eh,00Eh,006h,003h,001h,000h,000h	;107
	db	078h,070h,070h,060h,0C0h,080h,000h,000h	;108
	db	03Fh,067h,059h,066h,07Dh,07Dh,07Dh,07Dh	;109
	db	000h,080h,080h,078h,0FCh,0FEh,03Fh,01Fh	;110
	db	000h,000h,000h,000h,000h,000h,080h,0C0h	;111
	db	07Dh,07Dh,07Dh,07Dh,0FDh,0FDh,0FDh,0FDh	;112
	db	00Fh,007h,003h,007h,003h,087h,0C3h,0F7h	;113
	db	0F0h,0F8h,0FCh,0FCh,0FEh,0FEh,0FEh,0FEh	;114
	db	0FDh,0FDh,0FDh,0F9h,0E5h,05Eh,0BFh,0BFh	;115
	db	0FFh,0FFh,0FFh,0FFh,0FFh,07Fh,09Fh,0E7h	;116
	db	0FEh,0FEh,0FEh,0FEh,0FCh,0FCh,0FCh,0F8h	;117
	db	07Fh,07Fh,07Fh,07Fh,0E7h,0E3h,0F3h,0FFh	;118
	db	0DBh,0DBh,0DBh,0DBh,0DBh,0DDh,0DDh,0DDh	;119
	db	0F8h,0F8h,0F0h,0F0h,0E0h,0E0h,0E0h,0C0h	;120
	db	0FFh,0FFh,0FFh,0E7h,0E3h,0F3h,0FFh,0FFh	;121
	db	0DDh,0DDh,0DEh,0DEh,0DFh,0DFh,0DFh,0DFh	;122
	db	0C0h,0C0h,080h,080h,000h,000h,000h,000h	;123
	db	0FFh,0FFh,0E7h,0E3h,0F3h,0FFh,07Fh,07Fh	;124
	db	0DFh,0DFh,0DEh,0BEh,0BCh,0BCh,07Ch,078h	;125
	db	03Eh,03Dh,01Bh,007h,00Fh,00Fh,01Fh,07Fh	;126
	db	0F8h,0F0h,0E0h,0E0h,0E0h,0C0h,0C0h,080h	;127
boss2_t3_end:
	db	0C3h,0D6h,0AEh,0ACh,0DCh,0F8h,070h,000h	;091

boss2_c1:
	db	0F7h,0F7h,0F7h,0F7h,0F7h,0F7h,0F7h,0F7h	;030
	db	0F7h,0F7h,0F7h,0F7h,0F7h,0F7h,0F7h,0F7h	;031
	db	011h,011h,011h,011h,011h,011h,011h,011h	;032
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h	;033
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E4h,0E5h	;034
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h	;035
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h	;036
	db	0E4h,0E5h,0E4h,0E5h,0E4h,0E5h,0E4h,0E5h	;037
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h	;038
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h	;039
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h	;040
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h	;041
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h	;042
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h	;043
	db	0E1h,0E1h,0E1h,0E1h,0E6h,0E6h,0E6h,0E5h	;044
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h	;045
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h	;046
	db	0E5h,0E5h,0E5h,0E8h,0E8h,0E8h,0E5h,0E5h	;047
boss2_c1_end:
boss2_c2:		
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h	;058
	db	0E5h,0E5h,0E9h,0E9h,0E9h,0E8h,0E1h,0E1h	;059
	db	0E5h,0E5h,0E5h,0E8h,0E8h,0E8h,0E5h,0E5h	;060
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,051h	;061
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,051h	;062
	db	058h,041h,041h,041h,041h,051h,051h,0E1h	;063
	db	041h,041h,041h,041h,041h,041h,041h,041h	;064
boss2_c2_end:
boss2_c3:
	db	041h,041h,041h,041h,041h,041h,041h,041h	;098
	db	045h,04Eh,04Eh,05Eh,06Eh,04Eh,04Eh,04Eh	;099
	db	057h,0EAh,0EAh,0EAh,06Ah,06Ah,0EAh,06Ah	;100
	db	057h,0EAh,0EAh,0EAh,06Ah,06Ah,0EAh,06Ah	;101
	db	045h,04Eh,04Eh,05Eh,06Eh,04Eh,04Eh,04Eh	;102
	db	04Eh,04Eh,04Eh,04Eh,04Eh,04Eh,041h,041h	;103
	db	0EAh,0EAh,0EAh,0EAh,0EAh,0EAh,04Ah,041h	;104
	db	0EAh,0EAh,0EAh,0EAh,0EAh,0EAh,04Ah,041h	;105
	db	04Eh,04Eh,04Eh,04Eh,04Eh,04Eh,041h,051h	;106
	db	051h,051h,051h,051h,051h,051h,0E1h,0E1h	;107
	db	051h,051h,051h,051h,051h,051h,0E1h,0E1h	;108
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h	;109
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E4h,0E5h	;110
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h	;111
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h	;112
	db	0E4h,0E5h,0E4h,0E5h,0E4h,0E5h,0E4h,0E5h	;113
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h	;114
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h	;115
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h	;116
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h	;117
	db	0E1h,0E1h,0E1h,0E1h,0E6h,0E6h,0E6h,0E5h	;118
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h	;119
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h	;120
	db	0E5h,0E5h,0E5h,0E8h,0E8h,0E8h,0E5h,0E5h	;121
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h	;122
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h	;123
	db	0E5h,0E5h,0E9h,0E9h,0E9h,0E8h,0E1h,0E1h	;124
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h	;125
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,051h	;126
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,051h	;127
boss2_c3_end:	
	db	058h,041h,041h,041h,041h,051h,051h,0E1h	;091


lv2_data_end:
	DS	-$ & 3FFFh

	org	8000h
;level3 data
ramchr3_1:
	db	008h,040h,000h,002h,020h,000h,000h,000h ;000
	db	008h,040h,000h,002h,020h,000h,000h,000h ;001
	db	000h,020h,004h,020h,002h,010h,042h,008h ;002
	db	000h,020h,004h,020h,002h,010h,042h,008h ;003
	db	008h,040h,000h,002h,020h,000h,000h,000h ;004
	db	000h,020h,004h,020h,002h,010h,042h,008h ;005
	db	000h,020h,004h,020h,002h,010h,042h,008h ;006
	db	008h,040h,000h,002h,020h,000h,000h,000h ;007
	db	000h,020h,004h,020h,002h,010h,042h,008h ;008
	db	021h,008h,004h,048h,001h,001h,040h,011h ;009
	db	021h,008h,004h,048h,001h,001h,040h,011h ;010
	db	005h,002h,002h,002h,085h,02Dh,005h,005h ;011
	db	005h,002h,002h,002h,085h,02Dh,005h,005h ;012
	db	005h,02Ah,082h,002h,011h,044h,002h,004h ;013
	db	005h,02Ah,082h,002h,011h,044h,002h,004h ;014
	db	010h,042h,010h,004h,001h,048h,000h,022h ;015
	db	010h,042h,010h,004h,001h,048h,000h,022h ;016
	db	000h,020h,004h,020h,002h,010h,042h,008h ;017
	db	000h,020h,004h,020h,002h,010h,042h,008h ;018
	db	008h,008h,045h,004h,007h,038h,0C7h,0BFh ;019
	db	008h,008h,045h,004h,007h,038h,0C7h,0BFh ;020
	db	07Dh,0FEh,0FEh,0F5h,0F8h,0E4h,0F0h,0E8h ;021
	db	07Dh,0FEh,0FEh,0F5h,0F8h,0E4h,0F0h,0E8h ;022
	db	0F4h,0E1h,0F0h,0F0h,078h,09Ch,043h,0B8h ;023
	db	0F4h,0E1h,0F0h,0F0h,078h,09Ch,043h,0B8h ;024
	db	00Fh,026h,08Dh,04Ah,011h,026h,021h,000h ;025
	db	00Fh,026h,08Dh,04Ah,011h,026h,021h,000h ;026
	db	000h,020h,004h,020h,002h,010h,042h,008h ;027
	db	000h,020h,004h,020h,002h,010h,042h,008h ;028
	db	00Ah,014h,021h,024h,0C1h,03Bh,0C6h,0E3h ;029
	db	00Ah,014h,021h,024h,0C1h,03Bh,0C6h,0E3h ;030
	db	0D9h,002h,002h,000h,001h,000h,002h,000h ;031
	db	0D9h,002h,002h,000h,001h,000h,002h,000h ;032
	db	000h,000h,000h,000h,001h,002h,007h,03Bh ;033
	db	000h,000h,000h,000h,001h,002h,007h,03Bh ;034
	db	0D5h,06Ah,0BDh,054h,0BAh,0ACh,042h,000h ;035
	db	0D5h,06Ah,0BDh,054h,0BAh,0ACh,042h,000h ;036
	db	000h,020h,004h,020h,002h,010h,042h,008h ;037
	db	000h,020h,004h,020h,002h,010h,042h,008h ;038
	db	080h,020h,012h,0A0h,088h,050h,0B4h,04Ch ;039
	db	080h,020h,012h,0A0h,088h,050h,0B4h,04Ch ;040
	db	07Ah,0F4h,08Ah,0D4h,06Ah,075h,04Eh,05Eh ;041
	db	07Ah,0F4h,08Ah,0D4h,06Ah,075h,04Eh,05Eh ;042
	db	04Fh,0B6h,0F5h,0BEh,05Eh,0E6h,078h,0BAh ;043
	db	04Fh,0B6h,0F5h,0BEh,05Eh,0E6h,078h,0BAh ;044
	db	049h,0B4h,059h,086h,0F0h,0A4h,012h,004h ;045
	db	049h,0B4h,059h,086h,0F0h,0A4h,012h,004h ;046
	db	000h,020h,004h,020h,002h,010h,042h,008h ;047
	db	008h,040h,000h,002h,020h,000h,000h,000h ;048
	db	048h,082h,03Dh,07Eh,005h,093h,07Eh,03Ch ;049
	db	048h,082h,03Dh,07Eh,005h,093h,07Eh,03Ch ;050
	db	008h,040h,000h,002h,020h,000h,000h,000h ;051
	db	008h,040h,000h,002h,020h,000h,000h,000h ;052
	db	001h,01Ah,030h,066h,01Ch,079h,0E6h,084h ;053
	db	001h,01Ah,030h,066h,01Ch,079h,0E6h,084h ;054
	db	001h,01Ah,030h,066h,01Ch,079h,0E6h,084h ;055
	db	001h,01Ah,030h,066h,01Ch,079h,0E6h,084h ;056
	db	008h,040h,000h,002h,020h,000h,000h,000h ;057
	db	001h,01Ah,030h,066h,01Ch,079h,0E6h,084h ;058
	db	000h,020h,004h,020h,002h,010h,042h,008h ;059
ramchr3_2:
	db	008h,040h,000h,002h,020h,000h,000h,000h ;064
	db	008h,040h,000h,002h,020h,000h,000h,000h ;065
	db	000h,020h,004h,020h,002h,010h,042h,008h ;066
	db	000h,020h,004h,020h,002h,010h,042h,008h ;067
	db	008h,040h,000h,002h,020h,000h,000h,000h ;068
	db	000h,020h,004h,020h,002h,010h,042h,008h ;069
	db	000h,020h,004h,020h,002h,010h,042h,008h ;070
	db	008h,040h,000h,002h,020h,000h,000h,000h ;071
	db	008h,040h,000h,002h,020h,000h,000h,000h ;072
	db	00Fh,03Fh,07Fh,06Ch,0F8h,0B0h,0E0h,0E0h ;073
	db	00Fh,03Fh,07Fh,06Ch,0F8h,0B0h,0E0h,0E0h ;074
	db	0E0h,0E0h,0B0h,0F8h,06Ch,07Fh,03Fh,00Fh ;075
	db	0E0h,0E0h,0B0h,0F8h,06Ch,07Fh,03Fh,00Fh ;076
	db	008h,040h,000h,002h,020h,000h,000h,000h ;077
	db	008h,040h,000h,002h,020h,000h,000h,000h ;078
	db	0F0h,0FCh,0FEh,036h,01Fh,00Dh,007h,007h ;079
	db	0F0h,0FCh,0FEh,036h,01Fh,00Dh,007h,007h ;080
	db	007h,007h,00Dh,01Fh,036h,0FEh,0FCh,0F0h ;081
	db	007h,007h,00Dh,01Fh,036h,0FEh,0FCh,0F0h ;082
	db	008h,040h,000h,002h,020h,000h,000h,000h ;083
	db	008h,040h,000h,002h,020h,000h,000h,000h ;084
	db	00Fh,031h,04Ah,044h,0A2h,092h,0AEh,0C1h ;085
	db	00Fh,031h,04Ah,044h,0A2h,092h,0AEh,0C1h ;086
	db	0C1h,0AEh,092h,0A2h,044h,04Ah,031h,00Fh ;087
	db	0C1h,0AEh,092h,0A2h,044h,04Ah,031h,00Fh ;088
	db	008h,040h,000h,002h,020h,000h,000h,000h ;089
	db	008h,040h,000h,002h,020h,000h,000h,000h ;090
	db	0F0h,08Ch,052h,022h,045h,049h,075h,083h ;091
	db	0F0h,08Ch,052h,022h,045h,049h,075h,083h ;092
	db	083h,075h,049h,045h,022h,052h,08Ch,0F0h ;093
	db	083h,075h,049h,045h,022h,052h,08Ch,0F0h ;094
	db	008h,040h,000h,002h,020h,000h,000h,000h ;095
	db	008h,040h,000h,002h,020h,000h,000h,000h ;096
	db	00Eh,02Eh,04Ah,0EEh,0EEh,04Ah,02Eh,00Eh ;097
	db	00Eh,02Eh,04Ah,0EEh,0EEh,04Ah,02Eh,00Eh ;098
	db	00Fh,03Fh,07Fh,06Ch,0F8h,0B0h,0E0h,0E0h ;099
	db	0E0h,0E0h,0B0h,0F8h,06Ch,07Fh,03Fh,00Fh ;100
	db	00Eh,02Eh,04Ah,0EEh,0EEh,04Ah,02Eh,00Eh ;101
	db	00Eh,02Eh,04Ah,0EEh,0EEh,04Ah,02Eh,00Eh ;102
	db	008h,040h,000h,002h,020h,000h,000h,000h ;103
	db	00Eh,02Eh,04Ah,0EEh,0EEh,04Ah,02Eh,00Eh ;104
	db	00Fh,031h,04Ah,044h,0A2h,092h,0AEh,0C1h ;105
	db	0C1h,0AEh,092h,0A2h,044h,04Ah,031h,00Fh ;106
	db	00Eh,02Eh,04Ah,0EEh,0EEh,04Ah,02Eh,00Eh ;107
	db	008h,040h,000h,002h,020h,000h,000h,000h ;108
	db	070h,074h,052h,077h,077h,052h,074h,070h ;109
	db	070h,074h,052h,077h,077h,052h,074h,070h ;110
	db	008h,040h,000h,002h,020h,000h,000h,000h ;111
	db	070h,074h,052h,077h,077h,052h,074h,070h ;112
	db	0F0h,0FCh,0FEh,036h,01Fh,00Dh,007h,007h ;113
	db	007h,007h,00Dh,01Fh,036h,0FEh,0FCh,0F0h ;114
	db	070h,074h,052h,077h,077h,052h,074h,070h ;115
	db	070h,074h,052h,077h,077h,052h,074h,070h ;116
	db	0F0h,08Ch,052h,022h,045h,049h,075h,083h ;117
	db	083h,075h,049h,045h,022h,052h,08Ch,0F0h ;118
	db	070h,074h,052h,077h,077h,052h,074h,070h ;119
	db	00Eh,02Eh,04Ah,0EEh,0EEh,04Ah,02Eh,00Eh ;120
	db	00Eh,02Eh,04Ah,0EEh,0EEh,04Ah,02Eh,00Eh ;121
	db	070h,074h,052h,077h,077h,052h,074h,070h ;122
	db	070h,074h,052h,077h,077h,052h,074h,070h ;123
ramclr3_1:
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;000
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;001
	db	0EFh,0EFh,0EFh,01Fh,01Fh,0EFh,0EFh,01Fh ;002
	db	0EFh,0EFh,0EFh,01Fh,01Fh,0EFh,0EFh,01Fh ;003
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;004
	db	0EFh,0EFh,0EFh,01Fh,01Fh,0EFh,0EFh,01Fh ;005
	db	0EFh,0EFh,0EFh,01Fh,01Fh,0EFh,0EFh,01Fh ;006
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;007
	db	0EFh,0EFh,0EFh,01Fh,01Fh,0EFh,0EFh,01Fh ;008
	db	0EFh,01Fh,01Fh,0EFh,01Fh,01Fh,01Fh,01Fh ;009
	db	0EFh,01Fh,01Fh,0EFh,01Fh,01Fh,01Fh,01Fh ;010
	db	01Fh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh ;011
	db	01Fh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh ;012
	db	01Fh,01Fh,01Fh,01Fh,01Fh,0EFh,01Fh,01Fh ;013
	db	01Fh,01Fh,01Fh,01Fh,01Fh,0EFh,01Fh,01Fh ;014
	db	01Fh,01Fh,0EFh,01Fh,01Fh,0EFh,01Fh,0EFh ;015
	db	01Fh,01Fh,0EFh,01Fh,01Fh,0EFh,01Fh,0EFh ;016
	db	0EFh,0EFh,0EFh,01Fh,01Fh,0EFh,0EFh,01Fh ;017
	db	0EFh,0EFh,0EFh,01Fh,01Fh,0EFh,0EFh,01Fh ;018
	db	01Fh,01Fh,0EFh,01Fh,01Fh,01Fh,01Fh,01Fh ;019
	db	01Fh,01Fh,0EFh,01Fh,01Fh,01Fh,01Fh,01Fh ;020
	db	01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh ;021
	db	01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh ;022
	db	01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh ;023
	db	01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh ;024
	db	01Fh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh ;025
	db	01Fh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh ;026
	db	0EFh,0EFh,0EFh,01Fh,01Fh,0EFh,0EFh,01Fh ;027
	db	0EFh,0EFh,0EFh,01Fh,01Fh,0EFh,0EFh,01Fh ;028
	db	0EFh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh ;029
	db	0EFh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh ;030
	db	01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh ;031
	db	01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh ;032
	db	01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Fh,01Fh ;033
	db	01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Fh,01Fh ;034
	db	01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Fh ;035
	db	01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Fh ;036
	db	0EFh,0EFh,0EFh,01Fh,01Fh,0EFh,0EFh,01Fh ;037
	db	0EFh,0EFh,0EFh,01Fh,01Fh,0EFh,0EFh,01Fh ;038
	db	0EFh,01Fh,0EFh,01Fh,01Fh,01Fh,01Fh,01Fh ;039
	db	0EFh,01Fh,0EFh,01Fh,01Fh,01Fh,01Fh,01Fh ;040
	db	01Fh,01Fh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh ;041
	db	01Fh,01Fh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh ;042
	db	01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh ;043
	db	01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh ;044
	db	01Eh,01Eh,01Eh,01Eh,0EFh,0EFh,0EFh,0EFh ;045
	db	01Eh,01Eh,01Eh,01Eh,0EFh,0EFh,0EFh,0EFh ;046
	db	0EFh,0EFh,0EFh,01Fh,01Fh,0EFh,0EFh,01Fh ;047
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;048
	db	0EFh,0EFh,0EFh,0EFh,01Eh,01Eh,01Fh,01Fh ;049
	db	0EFh,0EFh,0EFh,0EFh,01Eh,01Eh,01Fh,01Fh ;050
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;051
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;052
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;053
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;054
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;055
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;056
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;057
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;058
	db	0EFh,0EFh,0EFh,01Fh,01Fh,0EFh,0EFh,01Fh ;059
ramclr3_2:
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;064
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;065
	db	0EFh,0EFh,0EFh,01Fh,01Fh,0EFh,0EFh,01Fh ;066
	db	0EFh,0EFh,0EFh,01Fh,01Fh,0EFh,0EFh,01Fh ;067
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;068
	db	0EFh,0EFh,0EFh,01Fh,01Fh,0EFh,0EFh,01Fh ;069
	db	0EFh,0EFh,0EFh,01Fh,01Fh,0EFh,0EFh,01Fh ;070
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;071
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;072
	db	04Fh,05Fh,04Fh,047h,047h,047h,048h,048h ;073
	db	04Fh,05Fh,04Fh,047h,047h,047h,04Bh,04Bh ;074
	db	048h,048h,047h,047h,047h,04Fh,05Fh,04Fh ;075
	db	04Bh,04Bh,047h,047h,047h,04Fh,05Fh,04Fh ;076
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;077
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;078
	db	04Fh,05Fh,04Fh,047h,047h,047h,04Bh,04Bh ;079
	db	04Fh,05Fh,04Fh,047h,047h,047h,048h,048h ;080
	db	04Bh,04Bh,047h,047h,047h,04Fh,05Fh,04Fh ;081
	db	048h,048h,047h,047h,047h,04Fh,05Fh,04Fh ;082
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;083
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;084
	db	04Fh,047h,047h,04Eh,04Bh,04Ah,049h,048h ;085
	db	04Fh,047h,047h,04Eh,04Bh,04Ah,049h,048h ;086
	db	048h,049h,04Ah,04Bh,04Eh,047h,047h,04Fh ;087
	db	048h,049h,04Ah,04Bh,04Eh,047h,047h,04Fh ;088
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;089
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;090
	db	04Fh,047h,047h,04Eh,04Bh,04Ah,049h,048h ;091
	db	04Fh,047h,047h,04Eh,04Bh,04Ah,049h,048h ;092
	db	048h,049h,04Ah,04Bh,04Eh,047h,047h,04Fh ;093
	db	048h,049h,04Ah,04Bh,04Eh,047h,047h,04Fh ;094
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;095
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;096
	db	06Fh,08Eh,06Fh,06Eh,06Eh,06Fh,08Eh,06Fh ;097
	db	06Fh,08Eh,06Fh,06Eh,06Eh,06Fh,08Eh,06Fh ;098
	db	04Fh,05Fh,04Fh,047h,047h,047h,048h,048h ;099
	db	04Bh,04Bh,047h,047h,047h,04Fh,05Fh,04Fh ;100
	db	06Fh,08Eh,06Fh,06Eh,06Eh,06Fh,08Eh,06Fh ;101
	db	06Fh,08Eh,06Fh,06Eh,06Eh,06Fh,08Eh,06Fh ;102
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;103
	db	06Fh,08Eh,06Fh,06Eh,06Eh,06Fh,08Eh,06Fh ;104
	db	04Fh,047h,047h,04Eh,04Bh,04Ah,049h,048h ;105
	db	048h,049h,04Ah,04Bh,04Eh,047h,047h,04Fh ;106
	db	06Fh,08Eh,06Fh,06Eh,06Eh,06Fh,08Eh,06Fh ;107
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;108
	db	06Fh,08Eh,06Fh,06Eh,06Eh,06Fh,08Eh,06Fh ;109
	db	06Fh,08Eh,06Fh,06Eh,06Eh,06Fh,08Eh,06Fh ;110
	db	0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh,0EFh ;111
	db	06Fh,08Eh,06Fh,06Eh,06Eh,06Fh,08Eh,06Fh ;112
	db	04Fh,05Fh,04Fh,047h,047h,047h,04Bh,04Bh ;113
	db	048h,048h,047h,047h,047h,04Fh,05Fh,04Fh ;114
	db	06Fh,08Eh,06Fh,06Eh,06Eh,06Fh,08Eh,06Fh ;115
	db	06Fh,08Eh,06Fh,06Eh,06Eh,06Fh,08Eh,06Fh ;116
	db	04Fh,047h,047h,04Eh,04Bh,04Ah,049h,048h ;117
	db	048h,049h,04Ah,04Bh,04Eh,047h,047h,04Fh ;118
	db	06Fh,08Eh,06Fh,06Eh,06Eh,06Fh,08Eh,06Fh ;119
	db	06Fh,08Eh,06Fh,06Eh,06Eh,06Fh,08Eh,06Fh ;120
	db	06Fh,08Eh,06Fh,06Eh,06Eh,06Fh,08Eh,06Fh ;121
	db	06Fh,08Eh,06Fh,06Eh,06Eh,06Fh,08Eh,06Fh ;122
	db	06Fh,08Eh,06Fh,06Eh,06Eh,06Fh,08Eh,06Fh ;123


spritedata3:
sptdef3_16:						;64
	db	000h,003h,007h,007h,004h,035h,006h,037h	;enemy1color1frame1
	db	002h,002h,010h,010h,000h,000h,000h,000h	;enemy1color1frame1
	db	000h,0C0h,0E0h,0E0h,020h,0ACh,060h,0ECh	;enemy1color1frame1
	db	040h,040h,008h,008h,000h,000h,000h,000h	;enemy1color1frame1
sptdef3_17:						;68
	db	000h,003h,01Fh,03Fh,07Fh,07Fh,07Fh,07Fh	;enemy1color2frame1
	db	07Ah,03Ah,03Ah,038h,018h,018h,008h,000h	;enemy1color2frame1
	db	000h,0C0h,0F8h,0FCh,0FEh,0FEh,0FEh,0FEh	;enemy1color2frame1
	db	05Eh,05Ch,05Ch,01Ch,018h,018h,010h,000h	;enemy1color2frame1
sptdef3_18:						;72
	db	000h,001h,001h,001h,001h,00Dh,001h,00Dh	;enemy1color1frame2
	db	001h,001h,005h,004h,000h,000h,000h,000h	;enemy1color1frame2
	db	000h,080h,0C0h,0C0h,000h,0C0h,010h,0C0h	;enemy1color1frame2
	db	0D0h,000h,020h,020h,000h,000h,000h,000h	;enemy1color1frame2
sptdef3_19:						;76
	db	000h,001h,007h,00Fh,01Fh,01Fh,01Fh,01Fh	;enemy1color2frame2
	db	01Fh,00Fh,00Fh,00Eh,006h,006h,002h,000h	;enemy1color2frame2
	db	000h,080h,0E0h,0E0h,0F0h,0F0h,0F0h,0F0h	;enemy1color2frame2
	db	0F0h,060h,060h,060h,040h,040h,040h,000h	;enemy1color2frame2
sptdef3_20:						;80
	db	000h,000h,000h,004h,002h,002h,003h,002h	;enemy1color1frame3
	db	003h,002h,002h,002h,002h,002h,002h,000h	;enemy1color1frame3
	db	000h,000h,000h,040h,0A0h,0A0h,0A0h,0A0h	;enemy1color1frame3
	db	0A0h,0A0h,0A0h,080h,080h,080h,080h,000h	;enemy1color1frame3
sptdef3_21:						;84
	db	000h,001h,007h,007h,00Fh,00Fh,00Fh,00Fh	;enemy1color2frame3
	db	00Fh,006h,006h,006h,002h,002h,002h,000h	;enemy1color2frame3
	db	000h,080h,0E0h,0F0h,0F8h,0F8h,0F8h,0F8h	;enemy1color2frame3
	db	0F8h,0F0h,0F0h,070h,060h,060h,040h,000h	;enemy1color2frame3
sptdef3_22:						;88
	db	000h,000h,000h,010h,02Ah,02Ah,029h,02Bh	;enemy1color1frame4
	db	028h,028h,028h,008h,008h,008h,008h,000h	;enemy1color1frame4
	db	000h,000h,000h,008h,054h,054h,094h,0D4h	;enemy1color1frame4
	db	014h,014h,014h,010h,010h,010h,010h,000h	;enemy1color1frame4
sptdef3_23:						;92
	db	000h,003h,01Fh,03Fh,07Fh,07Fh,07Fh,07Fh	;enemy1color2frame4
	db	07Ah,03Ah,03Ah,038h,018h,018h,008h,000h	;enemy1color2frame4
	db	000h,0C0h,0F8h,0FCh,0FEh,0FEh,0FEh,0FEh	;enemy1color2frame4
	db	05Eh,05Ch,05Ch,01Ch,018h,018h,010h,000h	;enemy1color2frame4
sptdef3_24:						;96
	db	000h,000h,000h,002h,005h,005h,005h,005h	;enemy1color1frame5
	db	005h,005h,005h,001h,001h,001h,001h,000h	;enemy1color1frame5
	db	000h,000h,000h,020h,040h,040h,0C0h,040h	;enemy1color1frame5
	db	0C0h,040h,040h,040h,040h,040h,040h,000h	;enemy1color1frame5
sptdef3_25:						;100
	db	000h,001h,007h,00Fh,01Fh,01Fh,01Fh,01Fh	;enemy1color2frame5
	db	01Fh,00Fh,00Fh,00Eh,006h,006h,002h,000h	;enemy1color2frame5
	db	000h,080h,0E0h,0E0h,0F0h,0F0h,0F0h,0F0h	;enemy1color2frame5
	db	0F0h,060h,060h,060h,040h,040h,040h,000h	;enemy1color2frame5
sptdef3_26:						;104
	db	000h,001h,003h,003h,000h,003h,008h,003h	;enemy1color1frame6
	db	00Bh,000h,004h,004h,000h,000h,000h,000h	;enemy1color1frame6
	db	000h,080h,080h,080h,080h,0B0h,080h,0B0h	;enemy1color1frame6
	db	080h,080h,0A0h,020h,000h,000h,000h,000h	;enemy1color1frame6
sptdef3_27:						;108
	db	000h,001h,007h,007h,00Fh,00Fh,00Fh,00Fh	;enemy1color2frame6
	db	00Fh,006h,006h,006h,002h,002h,002h,000h	;enemy1color2frame6
	db	000h,080h,0E0h,0F0h,0F8h,0F8h,0F8h,0F8h	;enemy1color2frame6
	db	0F8h,0F0h,0F0h,070h,060h,060h,040h,000h	;enemy1color2frame6
sptdef3_28:						;112
	db	000h,024h,016h,00Ah,004h,004h,004h,002h	;enemy2color1frame1
	db	001h,000h,000h,003h,001h,004h,004h,000h	;enemy2color1frame1
	db	000h,024h,068h,050h,020h,020h,020h,040h	;enemy2color1frame1
	db	080h,000h,000h,0C0h,080h,020h,020h,000h	;enemy2color1frame1
sptdef3_29:						;116
	db	000h,00Ah,009h,015h,03Bh,07Bh,063h,061h	;enemy2color2frame1
	db	042h,007h,007h,004h,006h,003h,001h,000h	;enemy2color2frame1
	db	000h,050h,090h,0A8h,0DCh,0DEh,0C6h,086h	;enemy2color2frame1
	db	042h,0E0h,0E0h,020h,060h,0C0h,080h,000h	;enemy2color2frame1
sptdef3_30:						;120
	db	000h,001h,003h,006h,00Ch,019h,03Bh,07Fh	;enemy3color1frame1
	db	07Fh,076h,076h,077h,077h,075h,070h,000h	;enemy3color1frame1
	db	000h,080h,0C0h,060h,030h,098h,0DCh,0FEh	;enemy3color1frame1
	db	0EEh,06Eh,06Eh,0EEh,0EEh,0AEh,00Eh,000h	;enemy3color1frame1
sptdef3_31:						;124
	db	000h,000h,000h,001h,003h,006h,004h,000h	;enemy3color2frame1
	db	008h,009h,009h,008h,008h,008h,008h,000h	;enemy3color2frame1
	db	000h,000h,000h,080h,0C0h,060h,020h,000h	;enemy3color2frame1
	db	010h,090h,090h,010h,010h,010h,010h,000h	;enemy3color2frame1
sptdef3_32:						;128
	db	000h,001h,003h,006h,00Ch,019h,03Bh,03Fh	;enemy3color1frame2
	db	03Fh,036h,036h,037h,037h,035h,030h,000h	;enemy3color1frame2
	db	000h,080h,0C0h,060h,030h,098h,0DCh,0FCh	;enemy3color1frame2
	db	0ECh,06Ch,06Ch,0ECh,0ECh,0ACh,00Ch,000h	;enemy3color1frame2
sptdef3_33:						;132
	db	000h,000h,000h,001h,003h,006h,004h,000h	;enemy3color2frame2
	db	008h,009h,009h,008h,008h,008h,008h,000h	;enemy3color2frame2
	db	000h,000h,000h,080h,0C0h,060h,020h,000h	;enemy3color2frame2
	db	010h,090h,090h,010h,010h,010h,010h,000h	;enemy3color2frame2
sptdef3_34:						;136
	db	000h,001h,003h,006h,00Ch,019h,03Bh,03Fh	;enemy3color1frame3
	db	03Fh,036h,036h,017h,017h,015h,000h,000h	;enemy3color1frame3
	db	000h,080h,0C0h,060h,030h,098h,0DCh,0FCh	;enemy3color1frame3
	db	0ECh,06Ch,06Ch,0E8h,0E8h,0A8h,000h,000h	;enemy3color1frame3
sptdef3_35:						;140
	db	000h,000h,000h,001h,003h,006h,004h,000h	;enemy3color2frame3
	db	008h,009h,009h,008h,008h,008h,008h,000h	;enemy3color2frame3
	db	000h,000h,000h,080h,0C0h,060h,020h,000h	;enemy3color2frame3
	db	010h,090h,090h,010h,010h,010h,010h,000h	;enemy3color2frame3
sptdef3_36:						;144
	db	001h,001h,003h,003h,006h,00Ch,038h,0F0h	;enemy4color1frame1
	db	0F0h,038h,00Ch,006h,003h,003h,001h,001h	;enemy4color1frame1
	db	080h,080h,0C0h,0C0h,060h,030h,01Ch,00Fh	;enemy4color1frame1
	db	00Fh,01Ch,030h,060h,0C0h,0C0h,080h,080h	;enemy4color1frame1
sptdef3_37:						;148
	db	000h,000h,000h,000h,000h,002h,007h,003h	;enemy4color2frame1
	db	003h,007h,002h,000h,000h,000h,000h,000h	;enemy4color2frame1
	db	000h,000h,000h,000h,000h,040h,0E0h,0C0h	;enemy4color2frame1
	db	0C0h,0E0h,040h,000h,000h,000h,000h,000h	;enemy4color2frame1
sptdef3_38:						;152
	db	000h,000h,001h,0C3h,0EEh,07Ch,038h,030h	;enemy4color1frame2
	db	030h,018h,00Ch,006h,007h,00Fh,01Ch,018h	;enemy4color1frame2
	db	018h,038h,0F0h,0E0h,060h,030h,018h,00Ch	;enemy4color1frame2
	db	00Ch,01Ch,03Eh,067h,0C3h,080h,000h,000h	;enemy4color1frame2
sptdef3_39:						;156
	db	000h,000h,000h,000h,000h,001h,005h,00Fh	;enemy4color2frame2
	db	007h,001h,003h,001h,000h,000h,000h,000h	;enemy4color2frame2
	db	000h,000h,000h,000h,080h,0C0h,080h,0E0h	;enemy4color2frame2
	db	0F0h,0A0h,080h,000h,000h,000h,000h,000h	;enemy4color2frame2
sptdef3_40:						;160
	db	000h,060h,070h,03Bh,01Eh,00Ch,018h,018h	;enemy4color1frame3
	db	010h,018h,00Ch,01Fh,039h,070h,060h,000h	;enemy4color1frame3
	db	000h,006h,00Eh,0DCh,0F8h,030h,018h,008h	;enemy4color1frame3
	db	018h,018h,030h,078h,09Ch,00Eh,006h,000h	;enemy4color1frame3
sptdef3_41:						;164
	db	000h,000h,000h,000h,001h,003h,001h,007h	;enemy4color2frame3
	db	00Fh,005h,001h,000h,000h,000h,000h,000h	;enemy4color2frame3
	db	000h,000h,000h,000h,000h,080h,0A0h,0F0h	;enemy4color2frame3
	db	0E0h,080h,0C0h,080h,000h,000h,000h,000h	;enemy4color2frame3
sptdef3_42:						;168
	db	00Fh,007h,005h,006h,005h,006h,005h,002h	;enemy5color1frame1
	db	003h,003h,003h,003h,001h,001h,000h,000h	;enemy5color1frame1
	db	0F8h,0F8h,0F0h,000h,000h,000h,000h,000h	;enemy5color1frame1
	db	000h,0E0h,0E0h,0E0h,0C0h,0C0h,000h,000h	;enemy5color1frame1
sptdef3_43:						;172
	db	000h,008h,002h,001h,002h,001h,002h,001h	;enemy5color2frame1
	db	000h,000h,000h,000h,000h,000h,000h,000h	;enemy5color2frame1
	db	000h,000h,000h,0F0h,0F0h,0F0h,0F0h,0E0h	;enemy5color2frame1
	db	0E0h,000h,000h,000h,000h,000h,080h,080h	;enemy5color2frame1
sptdef3_44:						;176
	db	005h,00Ch,00Fh,007h,007h,005h,005h,002h	;enemy5color1frame2
	db	003h,003h,003h,003h,001h,001h,000h,000h	;enemy5color1frame2
	db	000h,018h,0F8h,0F0h,0F0h,0F0h,000h,080h	;enemy5color1frame2
	db	000h,000h,0E0h,0E0h,0C0h,0C0h,080h,000h	;enemy5color1frame2
sptdef3_45:						;180
	db	00Ah,003h,000h,000h,000h,002h,002h,001h	;enemy5color2frame2
	db	000h,000h,000h,000h,000h,000h,000h,000h	;enemy5color2frame2
	db	0F8h,0E0h,000h,000h,000h,000h,0F0h,060h	;enemy5color2frame2
	db	0E0h,0E0h,000h,000h,000h,000h,000h,080h	;enemy5color2frame2
sptdef3_46:						;184
	db	00Ch,00Ah,00Ch,006h,007h,007h,005h,002h	;enemy5color1frame3
	db	003h,002h,003h,003h,001h,001h,000h,000h	;enemy5color1frame3
	db	0F0h,000h,000h,000h,0C0h,0F0h,0F0h,080h	;enemy5color1frame3
	db	000h,080h,000h,0E0h,0C0h,0C0h,080h,080h	;enemy5color1frame3
sptdef3_47:						;188
	db	003h,005h,003h,001h,000h,000h,002h,001h	;enemy5color2frame3
	db	000h,001h,000h,000h,000h,000h,000h,000h	;enemy5color2frame3
	db	008h,0F8h,0F8h,0F0h,030h,000h,000h,060h	;enemy5color2frame3
	db	0E0h,060h,0E0h,000h,000h,000h,000h,000h	;enemy5color2frame3
sptdef3_48:						;192
	db	00Dh,00Ah,00Dh,006h,006h,007h,007h,003h	;enemy5color1frame4
	db	003h,002h,003h,002h,001h,001h,000h,000h	;enemy5color1frame4
	db	0F8h,070h,000h,000h,000h,080h,0F0h,0E0h	;enemy5color1frame4
	db	0E0h,060h,000h,080h,000h,0C0h,080h,080h	;enemy5color1frame4
sptdef3_49:						;196
	db	002h,005h,002h,001h,001h,000h,000h,000h	;enemy5color2frame4
	db	000h,001h,000h,001h,000h,000h,000h,000h	;enemy5color2frame4
	db	000h,088h,0F8h,0F0h,0F0h,070h,000h,000h	;enemy5color2frame4
	db	000h,080h,0E0h,060h,0C0h,000h,000h,000h	;enemy5color2frame4
sptdef3_50:						;200
	db	001h,007h,00Fh,0DFh,0DFh,0FEh,0FEh,0DFh	;enemy6color1frame1
	db	0DFh,0CFh,0C6h,0C3h,047h,004h,002h,001h	;enemy6color1frame1
	db	080h,0E0h,0F0h,0FBh,0FBh,077h,077h,0EBh	;enemy6color1frame1
	db	0EBh,093h,063h,0C3h,0E2h,020h,040h,080h	;enemy6color1frame1
sptdef3_51:						;204
	db	000h,040h,0C0h,000h,000h,001h,001h,000h	;enemy6color2frame1
	db	000h,000h,001h,000h,000h,003h,001h,000h	;enemy6color2frame1
	db	000h,002h,003h,000h,000h,088h,088h,010h	;enemy6color2frame1
	db	010h,060h,080h,000h,000h,0C0h,080h,000h	;enemy6color2frame1
sptdef3_52:						;208
	db	001h,006h,009h,0DFh,0DEh,0FCh,0FCh,0DEh	;enemy6color1frame2
	db	0DFh,0CFh,0C7h,0C3h,047h,004h,002h,001h	;enemy6color1frame2
	db	080h,060h,090h,0EBh,06Bh,03Fh,03Fh,07Bh	;enemy6color1frame2
	db	0FBh,0F3h,0E3h,0C3h,0E2h,020h,040h,080h	;enemy6color1frame2
sptdef3_53:						;212
	db	000h,001h,006h,000h,001h,003h,003h,001h	;enemy6color2frame2
	db	000h,000h,000h,000h,000h,003h,001h,000h	;enemy6color2frame2
	db	000h,080h,060h,010h,090h,0C0h,0C0h,080h	;enemy6color2frame2
	db	000h,000h,000h,000h,000h,0C0h,080h,000h	;enemy6color2frame2
sptdef3_54:						;216
	db	001h,007h,00Fh,0D7h,0D7h,0EEh,0EFh,0D7h	;enemy6color1frame3
	db	0D7h,0C9h,0C7h,0C3h,047h,004h,002h,001h	;enemy6color1frame3
	db	080h,0E0h,0F0h,0FBh,0FBh,0FFh,07Fh,0FBh	;enemy6color1frame3
	db	0FBh,0F3h,0E3h,0C3h,0E2h,020h,040h,080h	;enemy6color1frame3
sptdef3_55:						;220
	db	000h,080h,0C0h,008h,008h,011h,010h,008h	;enemy6color2frame3
	db	008h,006h,000h,000h,000h,003h,001h,000h	;enemy6color2frame3
	db	000h,001h,003h,000h,000h,000h,080h,000h	;enemy6color2frame3
	db	000h,000h,000h,000h,000h,0C0h,080h,000h	;enemy6color2frame3
sptdef3_56:						;224
	db	000h,001h,083h,0B7h,0B7h,0B7h,0BBh,09Dh	;enemy7color1frame1
	db	057h,013h,003h,00Eh,00Ch,006h,003h,001h	;enemy7color1frame1
	db	000h,080h,0C1h,0EDh,0EDh,0EDh,0DDh,0B9h	;enemy7color1frame1
	db	0EAh,0C8h,0C0h,070h,030h,060h,0C0h,080h	;enemy7color1frame1
sptdef3_57:						;228
	db	000h,040h,048h,048h,048h,048h,004h,002h	;enemy7color2frame1
	db	000h,000h,000h,001h,003h,001h,000h,000h	;enemy7color2frame1
	db	000h,002h,012h,012h,012h,012h,020h,040h	;enemy7color2frame1
	db	000h,000h,000h,080h,0C0h,080h,000h,000h	;enemy7color2frame1
;sptdef1_58:						;232
	db	003h,00fh,01fh,003h,07bh,048h,04fh,074h	;power inc yl
	db	044h,057h,050h,01fh,03fh,01fh,00fh,003h	;power inc yl
	db	0c0h,0f0h,0f8h,0fch,0feh,008h,0aah,0a2h	;power inc yl
	db	0aah,094h,000h,0feh,0fch,0f8h,0f0h,0c0h	;power inc yl
;sptdef1_59:						;236
	db	000h,000h,000h,0fch,084h,0b7h,0b0h,08bh	;power inc blk
	db	0bbh,0a8h,0afh,0e0h,000h,000h,000h,000h	;power inc blk
	db	000h,000h,000h,000h,000h,0f7h,055h,05dh	;power inc blk
	db	055h,06bh,0feh,000h,000h,000h,000h,000h	;power inc blk
;sptdef1_60						;240
	db	000h,003h,00fh,01fh,03fh,03fh,07fh,07fh	;explosion frame1
	db	07fh,07fh,03fh,03fh,01fh,00fh,003h,000h	;explosion frame1
	db	000h,0c0h,0f0h,0f8h,0fch,0fch,0feh,0feh	;explosion frame1
	db	0feh,0feh,0fch,0fch,0f8h,0f0h,0c0h,000h	;explosion frame1
;sptdef1_61:						;244
	db	000h,003h,00fh,01fh,03fh,03fh,07fh,07fh	;explosion frame2
	db	07fh,07fh,03fh,03fh,01fh,00fh,003h,000h	;explosion frame2
	db	000h,0c0h,0f0h,0d8h,08ch,004h,08eh,0deh	;explosion frame2
	db	0feh,0feh,0fch,0fch,0f8h,0f0h,0c0h,000h	;explosion frame2
;sptdef1_62:						;248
	db	000h,003h,00ch,018h,030h,030h,070h,070h	;explosion frame3
	db	070h,070h,038h,03ch,01eh,00fh,003h,000h	;explosion frame3
	db	000h,0c0h,030h,008h,000h,000h,002h,002h	;explosion frame3
	db	002h,002h,004h,004h,018h,0f0h,0c0h,000h	;explosion frame3
;sptdef1_63:						;252
	db	000h,000h,00ch,018h,030h,030h,070h,070h	;explosion frame4
	db	070h,070h,038h,03ch,01eh,00fh,003h,000h	;explosion frame4
	db	000h,000h,000h,000h,000h,000h,000h,000h	;explosion frame4
	db	000h,000h,000h,000h,018h,0f0h,0c0h,000h	;explosion frame4
sprtend3:
mid_boss_sprites3:
;midspt31:
	db	009h,010h,012h,009h,00Fh,003h,002h,006h
	db	00Ch,00Fh,00Fh,018h,018h,01Ch,01Eh,01Fh
	db	01Ch,0FCh,0F8h,0E8h,088h,009h,009h,030h
	db	0F0h,0F3h,0F3h,077h,017h,027h,020h,020h
;midspt32:
	db	006h,00Fh,00Dh,006h,000h,000h,001h,001h
	db	003h,000h,000h,007h,007h,003h,001h,000h
	db	003h,003h,007h,017h,077h,0F6h,0F6h,0CFh
	db	00Fh,00Ch,00Ch,088h,0E8h,0D8h,0DFh,0DFh
;midspt33:
	db	038h,03Eh,01Fh,017h,011h,090h,090h,00Ch
	db	00Fh,0CFh,0CFh,0EEh,0E8h,0E4h,004h,004h
	db	000h,000h,000h,080h,080h,0C0h,040h,060h
	db	030h,0F0h,0F6h,01Bh,01Bh,03Eh,07Eh,0F8h
;midspt34:
	db	0C0h,0C0h,0E0h,0E8h,0EEh,06Fh,06Fh,0F3h
	db	0F0h,030h,030h,011h,017h,01Bh,0FBh,0FBh
	db	000h,000h,000h,000h,000h,000h,080h,080h
	db	0C0h,000h,000h,0E0h,0E0h,0C0h,080h,000h
;midspt35:
	db	000h,000h,000h,000h,001h,003h,006h,00Ch
	db	018h,018h,01Fh,030h,030h,030h,0FCh,078h
	db	01Fh,03Fh,07Fh,0FFh,0E7h,087h,047h,027h
	db	017h,07Fh,087h,000h,000h,000h,000h,000h
;midspt36:
	db	0FBh,0F8h,03Bh,0C8h,0FBh,038h,0CBh,0F8h
	db	03Bh,0C8h,021h,018h,007h,001h,007h,003h
	db	0DFh,01Fh,0DCh,013h,0DFh,01Ch,0D3h,01Fh
	db	0DCh,013h,084h,018h,0E0h,080h,0E0h,0C0h
;midspt37:
	db	0F8h,0FCh,0FEh,0FFh,0E7h,0E1h,0E2h,0E4h
	db	0E8h,0FEh,0E1h,000h,000h,000h,000h,000h
	db	000h,000h,000h,000h,080h,0C0h,060h,030h
	db	018h,018h,0F8h,00Ch,00Ch,00Ch,03Fh,01Eh
;midspt38:
	db	004h,007h,0C4h,037h,004h,0C7h,034h,007h
	db	0C4h,037h,004h,007h,000h,000h,000h,000h
	db	020h,0E0h,023h,0ECh,020h,0E3h,02Ch,0E0h
	db	023h,0ECh,020h,0E0h,000h,000h,000h,000h
mboss_spt_end3:

eventlist_30:
	;row,ystart,xstart,shape,color,pattern
	db	12,1,200,232,10,5
	db	1,200,236,4,5
	db	16,1,30,112,10,13
	db	1,30,116,6,13
	db	20,1,130,112,10,13
	db	1,130,116,6,13
	db	24,1,180,112,10,13
	db	1,180,116,1,13
	db	28,1,80,112,10,13
	db	1,80,116,1,13
	db	32,1,160,112,1,13
	db	1,160,116,6,13
	db	36,1,220,112,1,13
	db	1,220,116,6,13

	db	90,1,100,232,10,5
	db	1,100,236,4,5
	db	94,1,120,224,1,13
	db	1,120,228,8,13
	db	98,1,80,224,1,13
	db	1,80,228,8,13
	db	102,1,180,224,1,13
	db	1,180,228,8,13
	db	106,1,40,64,1,13
	db	1,40,68,5,13
	db	110,1,100,64,1,13
	db	1,100,68,5,13
	db	114,1,160,64,1,13
	db	1,160,68,5,13

	db	168,1,50,232,10,5	
	db	1,50,236,4,5
	db	172,1,80,200,1,8
	db	1,80,204,6,8
	db	176,1,40,200,1,8
	db	1,40,204,6,8
	db	180,1,80,200,1,8
	db	1,80,204,6,8
	db	184,1,40,200,1,8
	db	1,40,204,6,8
	db	188,1,100,200,1,8
	db	1,100,204,6,8
	db	192,1,20,200,1,8
	db	1,20,204,6,8

	db	246,1,20,232,10,5
	db	1,20,236,4,5
	db	250,1,200,168,4,1
	db	1,200,172,10,1
	db	254,1,216,168,13,1
	db	1,216,172,11,1
	db	12,1,223,168,4,1
	db	1,223,172,10,1
	db	16,1,200,168,13,1
	db	1,200,172,11,1
	db	30,1,180,168,4,1
	db	1,180,172,10,1
	db	34,1,200,168,13,1
	db	1,200,172,11,1

	db	70,1,150,232,10,5	
	db	1,150,236,4,5
	db	74,1,16,64,1,18
	db	1,16,68,4,18
	db	78,1,16,64,1,18
	db	1,16,68,4,18
	db	82,1,16,64,1,18
	db	1,16,68,4,18
	db	86,1,92,64,4,18
	db	1,92,68,1,18
	db	90,1,92,64,4,18
	db	1,92,68,1,18
	db	94,1,92,64,4,18
	db	1,92,68,1,18

	db	148,1,40,232,10,5	
	db	1,40,236,4,5
	db	152,191,18,120,1,14
	db	191,18,124,9,14
	db	156,191,200,120,1,14
	db	191,200,124,9,14
	db	160,191,18,136,13,14
	db	191,18,140,11,14
	db	164,191,200,136,13,14
	db	191,200,140,11,14
	db	168,191,18,128,5,14
	db	191,18,132,7,14
	db	172,191,200,128,5,14
	db	191,200,132,7,14

	db	226,1,200,232,10,5
	db	1,200,236,4,5
	db	230,1,100,144,13,2
	db	1,100,148,3,2
	db	234,1,216,168,4,4
	db	1,216,172,10,4
	db	238,1,100,144,13,2
	db	1,100,148,3,2
	db	242,1,216,168,4,4
	db	1,216,172,10,4
	db	246,1,100,144,13,2
	db	1,100,148,3,2
	db	250,1,216,168,4,4
	db	1,216,172,10,4

	db	48,1,80,232,10,5
	db	1,80,236,4,5
	db	52,1,80,144,9,2
	db	1,80,148,11,2
	db	56,1,80,144,9,2
	db	1,80,148,11,2
	db	60,1,100,144,9,2
	db	1,100,148,11,2
	db	64,191,200,120,4,3
	db	191,200,124,7,3
	db	68,191,200,120,4,3
	db	191,200,124,7,3
	db	72,191,200,120,4,3
	db	191,200,124,7,3

	db	126,1,160,232,10,5
	db	1,160,236,4,5
	db	130,1,40,144,9,2
	db	1,40,148,4,2
	db	134,191,18,120,13,3
	db	191,18,124,3,3
	db	138,1,40,144,9,2
	db	1,40,148,4,2
	db	142,191,18,120,13,3
	db	191,18,124,3,3
	db	146,1,40,144,9,2
	db	1,40,148,4,2
	db	150,191,18,120,13,3
	db	191,18,124,3,3

	db	204,1,30,232,10,5
	db	1,30,236,4,5
	db	208,1,100,168,6,1
	db	1,100,172,11,1
	db	212,1,100,144,5,2
	db	1,100,148,14,2
	db	216,1,100,168,6,1
	db	1,100,172,11,1
	db	220,1,100,168,6,1
	db	1,100,172,11,1
	db	224,1,100,144,5,2
	db	1,100,148,14,2
	db	228,1,100,144,5,2
	db	1,100,148,14,2	

	db	26,1,100,232,10,5
	db	1,100,236,4,5
	db	30,1,100,64,1,18
	db	1,100,68,5,18
	db	34,1,100,64,1,18
	db	1,100,68,5,18
	db	38,1,100,64,1,18	
	db	1,100,68,5,18
	db	42,191,200,120,13,3
	db	191,200,124,3,3
	db	46,191,200,120,13,3
	db	191,200,124,3,3
	db	50,191,200,120,13,3
	db	191,200,124,3,3

	db	104,1,180,232,10,5
	db	1,180,236,4,5
	db	112,1,100,224,6,13
	db	1,100,228,10,13
	db	120,1,200,224,6,13
	db	1,200,228,10,13
	db	128,1,150,224,6,13
	db	1,150,228,10,13

	db	186,32,223,112,10,16
	db	32,223,116,12,16
	db	194,48,223,112,10,16
	db	48,223,116,12,16
	db	202,64,223,112,10,16
	db	64,223,116,12,16

	db	4,1,100,232,10,5
	db	1,100,236,4,5
	db	8,1,180,168,6,1
	db	1,180,172,9,1
	db	12,1,60,200,4,2
	db	1,60,204,7,2
	db	16,1,180,168,6,1
	db	1,180,172,9,1
	db	20,1,60,200,4,2
	db	1,60,204,7,2
	db	24,1,200,168,6,1
	db	1,200,172,9,1
	db	28,1,100,200,4,2
	db	1,100,204,7,2

	db	82,1,80,200,1,6
	db	1,80,204,6,6
	db	86,1,175,200,1,6
	db	1,175,204,6,6
	db	90,1,112,200,1,6
	db	1,112,204,6,6
	db	94,1,80,200,1,6
	db	1,80,204,6,6
	db	112,1,175,200,1,6
	db	1,175,204,6,6
	db	116,1,112,200,1,6
	db	1,112,204,6,6
	db	120,1,80,200,1,6
	db	1,80,204,6,6

	db	200,1,72,224,6,13
	db	1,72,228,1,13
	db	204,1,112,224,6,13
	db	1,112,228,1,13
	db	208,1,200,224,5,13
	db	1,200,228,14,13
	db	212,1,80,224,5,13
	db	1,80,228,14,13
	db	216,1,120,232,10,5
	db	1,120,236,4,5
	db	220,1,175,224,6,13
	db	1,175,228,1,13
	db	224,1,60,224,6,13
	db	1,60,228,1,13

	db	10,1,40,64,1,13
	db	1,40,68,4,13
	db	14,1,175,64,1,13
	db	1,175,68,8,13
	db	18,1,112,64,1,13
	db	1,112,68,4,13
	db	22,1,72,64,1,13
	db	1,72,68,8,13
	db	24,1,112,64,1,13
	db	1,112,68,4,13

	db	62,1,100,232,10,5
	db	1,100,236,4,5
	db	66,1,195,168,4,1
	db	1,195,172,7,1
	db	70,1,60,144,1,8
	db	1,60,148,3,8
	db	74,1,195,168,4,1
	db	1,195,172,7,1
	db	78,1,60,144,1,8
	db	1,60,148,3,8
	db	82,1,195,168,4,1
	db	1,195,172,7,1

	db	136,1,200,232,10,5
	db	1,200,236,4,5
	db	140,1,72,224,13,13
	db	1,72,228,14,13
	db	144,1,112,224,13,13
	db	1,112,228,1,13
	db	148,1,200,224,13,13
	db	1,200,228,14,13
	db	152,1,80,224,13,13
	db	1,80,228,1,13
	db	156,1,190,224,13,13
	db	1,190,228,14,13
	db	160,1,130,224,13,13
	db	1,130,228,1,13

	db	200,1,80,232,10,5
	db	1,80,236,4,5
	db	204,1,100,144,13,2
	db	1,100,148,3,2
	db	208,1,40,200,1,2
	db	1,40,204,6,2
	db	212,1,100,168,4,1
	db	1,100,172,10,1
	db	216,191,18,120,1,3
	db	191,18,124,13,3
	db	220,191,18,120,1,3
	db	191,18,124,13,3
	db	224,191,18,120,1,3
	db	191,18,124,13,3

	db	22,1,100,232,10,5
	db	1,100,236,4,5
	db	26,1,60,144,1,8
	db	1,60,148,7,8
	db	30,1,60,144,9,2
	db	1,60,148,7,2
	db	34,1,60,144,1,8
	db	1,60,148,7,8
	db	38,1,60,144,9,2
	db	1,60,148,7,2
	db	42,1,60,144,1,8
	db	1,60,148,8,8
	db	46,1,60,144,9,2
	db	1,60,148,7,2

	db	100,1,40,200,1,6
	db	1,40,204,6,6
	db	104,1,175,64,1,13
	db	1,175,68,4,13
	db	108,1,92,200,1,6
	db	1,92,204,7,6
	db	112,1,80,64,1,13
	db	1,80,68,9,13
	db	116,1,235,200,1,6
	db	1,235,204,7,6
	db	120,1,112,64,1,13
	db	1,112,68,4,13
	db	124,1,80,200,1,6
	db	1,80,204,6,6

	db	182,1,180,168,4,4
	db	1,180,172,7,4
	db	186,1,180,168,4,4
	db	1,180,172,7,4
	db	190,1,180,168,4,4
	db	1,180,172,7,4
	db	194,191,18,120,1,3
	db	191,18,124,9,3
	db	198,191,18,120,1,3
	db	191,18,124,9,3
	db	202,191,18,120,1,3
	db	191,18,124,9,3
	db	206,191,18,120,1,3
	db	191,18,124,9,3

	db	6,1,160,232,10,5
	db	1,160,236,4,5
	db	10,1,175,168,4,1
	db	1,175,172,7,1
	db	14,1,80,144,4,8
	db	1,80,148,10,8
	db	18,1,175,168,4,1
	db	1,175,172,7,1
	db	22,1,80,144,4,8
	db	1,80,148,10,8
	db	26,1,175,168,4,1
	db	1,175,172,7,1
	db	30,1,80,144,4,8
	db	1,80,148,10,8

	db	120,1,70,64,1,13
	db	1,70,68,4,13
	db	124,1,160,64,1,13
	db	1,160,68,4,13
	db	128,1,50,64,1,13
	db	1,50,68,9,13
	db	132,1,180,64,1,13
	db	1,180,68,9,13
	db	136,1,30,64,1,13
	db	1,30,68,11,13
	db	140,1,200,64,1,13
	db	1,200,68,11,13

	db	255

eventlist_35:
	;row,ystart,xstart,shape,color,pattern
	db	16,1,175,64,1,13
	db	1,175,68,4,13
	db	20,1,92,200,1,6
	db	1,92,204,7,6
	db	24,1,80,64,1,13
	db	1,80,68,9,13
	db	28,1,235,200,1,6
	db	1,235,204,7,6
	db	32,1,112,64,1,13
	db	1,112,68,4,13
	db	36,1,80,200,1,6
	db	1,80,204,6,6

	db	90,1,180,168,4,4
	db	1,180,172,7,4
	db	94,1,180,168,4,4
	db	1,180,172,7,4
	db	98,1,180,168,4,4
	db	1,180,172,7,4
	db	102,191,200,120,1,3
	db	191,200,124,9,3
	db	106,191,200,120,1,3
	db	191,200,124,9,3
	db	110,191,200,120,1,3
	db	191,200,124,9,3

	db	168,1,160,232,10,5
	db	1,160,236,4,5
	db	172,1,175,168,4,1
	db	1,175,172,7,1
	db	176,1,80,144,4,8
	db	1,80,148,10,8
	db	180,1,175,168,4,1
	db	1,175,172,7,1
	db	184,1,80,144,4,8
	db	1,80,148,10,8
	db	188,1,175,168,4,1
	db	1,175,172,7,1
	db	192,1,80,144,4,8
	db	1,80,148,10,8

	db	246,1,20,232,10,5
	db	1,20,236,4,5
	db	250,1,70,64,1,13
	db	1,70,68,4,13
	db	254,1,160,64,1,13
	db	1,160,68,4,13
	db	12,1,50,64,1,13
	db	1,50,68,9,13
	db	16,1,180,64,1,13
	db	1,180,68,9,13
	db	20,1,30,64,1,13
	db	1,30,68,11,13
	db	24,1,200,64,1,13
	db	1,200,68,11,13

	db	70,1,150,232,10,5	
	db	1,150,236,4,5
	db	74,1,16,64,1,18
	db	1,16,68,4,18
	db	78,1,16,64,1,18
	db	1,16,68,4,18
	db	82,1,16,64,1,18
	db	1,16,68,4,18
	db	86,1,92,64,4,18
	db	1,92,68,1,18
	db	90,1,92,64,4,18
	db	1,92,68,1,18
	db	94,1,92,64,4,18
	db	1,92,68,1,18

	db	148,1,40,232,10,5	
	db	1,40,236,4,5
	db	152,191,18,120,1,14
	db	191,18,124,9,14
	db	156,191,200,120,1,14
	db	191,200,124,9,14
	db	160,191,18,136,13,14
	db	191,18,140,11,14
	db	164,191,200,136,13,14
	db	191,200,140,11,14
	db	168,191,18,128,5,14
	db	191,18,132,7,14
	db	172,191,200,128,5,14
	db	191,200,132,7,14

	db	226,1,200,232,10,5
	db	1,200,236,4,5
	db	230,191,200,120,4,3
	db	191,200,124,7,3
	db	234,191,18,120,4,3
	db	191,18,124,7,3
	db	238,191,200,120,4,3
	db	191,200,124,7,3
	db	242,191,18,120,4,3
	db	191,18,124,7,3
	db	246,191,200,120,4,3
	db	191,200,124,7,3
	db	250,191,18,120,4,3
	db	191,18,124,7,3

	db	48,1,80,232,10,5
	db	1,80,236,4,5
	db	52,1,80,144,9,2
	db	1,80,148,11,2
	db	56,1,80,144,9,2
	db	1,80,148,11,2
	db	60,1,100,144,9,2
	db	1,100,148,11,2
	db	64,191,200,120,4,3
	db	191,200,124,7,3
	db	68,191,200,120,4,3
	db	191,200,124,7,3
	db	72,191,200,120,4,3
	db	191,200,124,7,3

	db	126,1,160,232,10,5
	db	1,160,236,4,5
	db	130,1,40,144,9,2
	db	1,40,148,4,2
	db	134,1,40,144,9,2
	db	1,40,148,4,2
	db	138,1,40,144,9,2
	db	1,40,148,4,2
	db	142,1,40,144,9,2
	db	1,40,148,4,2
	db	146,1,40,144,9,2
	db	1,40,148,4,2
	db	150,1,40,144,9,2
	db	1,40,148,4,2

	db	204,1,30,232,10,5
	db	1,30,236,4,5
	db	208,1,100,168,6,1
	db	1,100,172,11,1
	db	212,1,100,144,5,2
	db	1,100,148,14,2
	db	216,1,100,168,6,1
	db	1,100,172,11,1
	db	220,1,100,168,6,1
	db	1,100,172,11,1
	db	224,1,100,144,5,2
	db	1,100,148,14,2
	db	228,1,100,144,5,2
	db	1,100,148,14,2	

	db	26,1,100,232,10,5
	db	1,100,236,4,5
	db	30,1,100,64,1,18
	db	1,100,68,5,18
	db	34,1,100,64,1,18
	db	1,100,68,5,18
	db	38,1,100,64,1,18	
	db	1,100,68,5,18
	db	42,191,200,120,13,3
	db	191,200,124,3,3
	db	46,191,200,120,13,3
	db	191,200,124,3,3
	db	50,191,200,120,13,3
	db	191,200,124,3,3

	db	104,1,180,232,10,5
	db	1,180,236,4,5
	db	108,1,60,64,1,18
	db	1,60,68,10,18
	db	112,1,60,64,1,18
	db	1,60,68,10,18
	db	116,1,60,64,1,18
	db	1,60,68,10,18
	db	120,1,60,64,1,18
	db	1,60,68,10,18
	db	124,1,60,64,1,18
	db	1,60,68,10,18
	db	128,1,60,64,1,18
	db	1,60,68,10,18

	db	186,48,223,112,10,16
	db	48,223,116,12,16
	db	194,64,223,112,10,16
	db	64,223,116,12,16
	db	202,80,223,112,10,16
	db	80,223,116,12,16

	db	4,1,100,232,10,5
	db	1,100,236,4,5
	db	8,1,180,168,6,1
	db	1,180,172,9,1
	db	12,1,60,200,4,2
	db	1,60,204,7,2
	db	16,1,180,168,6,1
	db	1,180,172,9,1
	db	20,1,60,200,4,2
	db	1,60,204,7,2
	db	24,1,200,168,6,1
	db	1,200,172,9,1
	db	28,1,100,200,4,2
	db	1,100,204,7,2

	db	86,1,175,200,1,6
	db	1,175,204,6,6
	db	90,48,1,112,1,17
	db	48,1,116,6,17
	db	94,1,80,200,1,6
	db	1,80,204,6,6
	db	112,24,1,112,1,17
	db	24,1,116,6,17
	db	116,1,112,200,1,6
	db	1,112,204,6,6
	db	120,64,1,112,1,17
	db	64,1,116,6,17

	db	200,1,72,224,6,13
	db	1,72,228,1,13
	db	204,1,112,224,6,13
	db	1,112,228,1,13
	db	208,1,200,224,5,13
	db	1,200,228,14,13
	db	212,1,80,224,5,13
	db	1,80,228,14,13
	db	216,1,120,232,10,5
	db	1,120,236,4,5
	db	220,1,175,224,6,13
	db	1,175,228,1,13
	db	224,1,60,224,6,13
	db	1,60,228,1,13

	db	10,1,40,64,1,13
	db	1,40,68,4,13
	db	14,1,175,64,1,13
	db	1,175,68,8,13
	db	18,1,112,64,1,13
	db	1,112,68,4,13
	db	22,1,72,64,1,13
	db	1,72,68,8,13
	db	24,1,112,64,1,13
	db	1,112,68,4,13

	db	62,1,200,232,10,5
	db	1,200,236,4,5
	db	66,1,72,224,13,13
	db	1,72,228,14,13
	db	70,1,112,224,13,13
	db	1,112,228,1,13
	db	74,1,200,224,13,13
	db	1,200,228,14,13
	db	78,1,80,224,13,13
	db	1,80,228,1,13
	db	82,1,190,224,13,13
	db	1,190,228,14,13
	db	86,1,130,224,13,13
	db	1,130,228,1,13


	db	140,1,100,232,10,5
	db	1,100,236,4,5
	db	144,1,195,168,4,1
	db	1,195,172,7,1
	db	148,1,60,144,1,8
	db	1,60,148,3,8
	db	152,1,195,168,4,1
	db	1,195,172,7,1
	db	156,1,60,144,1,8
	db	1,60,148,3,8
	db	160,1,195,168,4,1
	db	1,195,172,7,1

	db	200,1,80,232,10,5
	db	1,80,236,4,5
	db	204,1,100,144,13,2
	db	1,100,148,3,2
	db	208,1,40,200,1,2
	db	1,40,204,6,2
	db	212,1,100,168,4,1
	db	1,100,172,10,1
	db	216,191,18,120,1,3
	db	191,18,124,13,3
	db	220,191,18,120,1,3
	db	191,18,124,13,3
	db	224,191,18,120,1,3
	db	191,18,124,13,3

	db	22,1,100,232,10,5
	db	1,100,236,4,5
	db	26,1,60,144,1,2
	db	1,60,148,7,2
	db	30,1,60,144,9,2
	db	1,60,148,7,2
	db	34,1,60,144,1,2
	db	1,60,148,7,2
	db	38,1,60,144,9,8
	db	1,60,148,7,8
	db	42,1,60,144,1,8
	db	1,60,148,8,8
	db	46,1,60,144,9,8
	db	1,60,148,7,8

	db	100,1,180,168,4,4
	db	1,180,172,7,4
	db	104,1,180,168,4,4
	db	1,180,172,7,4
	db	108,1,180,168,4,4
	db	1,180,172,7,4
	db	112,191,18,120,1,3
	db	191,18,124,9,3
	db	116,191,18,120,1,3
	db	191,18,124,9,3
	db	120,191,200,120,1,3
	db	191,200,124,9,3
	db	124,191,200,120,1,3
	db	191,200,124,9,3

	db	182,1,40,200,1,6
	db	1,40,204,6,6
	db	186,1,175,64,1,13
	db	1,175,68,4,13
	db	190,1,92,200,1,6
	db	1,92,204,7,6
	db	194,1,80,64,1,13
	db	1,80,68,9,13
	db	198,1,235,200,1,6
	db	1,235,204,7,6
	db	202,1,112,64,1,13
	db	1,112,68,4,13
	db	206,1,80,200,1,6
	db	1,80,204,6,6

	db	6,1,160,232,10,5
	db	1,160,236,4,5
	db	10,1,175,168,4,1
	db	1,175,172,7,1
	db	14,1,80,144,4,8
	db	1,80,148,10,8
	db	18,1,175,168,4,1
	db	1,175,172,7,1
	db	22,1,80,144,4,8
	db	1,80,148,10,8
	db	26,1,175,168,4,1
	db	1,175,172,7,1
	db	30,1,80,144,4,8
	db	1,80,148,10,8

	db	120,1,70,64,1,13
	db	1,70,68,4,13
	db	124,1,160,64,1,13
	db	1,160,68,4,13
	db	128,1,50,64,1,13
	db	1,50,68,9,13
	db	132,1,180,64,1,13
	db	1,180,68,9,13
	db	136,1,30,64,1,13
	db	1,30,68,11,13
	db	140,1,200,64,1,13
	db	1,200,68,11,13

	db	255
mid3_eventlist:
	db	8,13				;N
	db	16,112,64,1,16,112,68,14
	db	16,128,72,1,16,128,76,14
	db	32,104,80,10,32,120,84,10
	db	32,136,88,10,32,120,92,4

	db	16,10				;C
	db	80,112,64,1,80,112,68,14
	db	80,128,72,1,80,128,76,14
	db	96,104,80,10,96,120,84,10
	db	96,136,88,10,96,120,92,4

	db	28,14				;SW
	db	159,8,64,1,159,8,68,14
	db	159,24,72,1,159,24,76,14
	db	175,0,80,10,175,16,84,10
	db	175,32,88,10,175,16,92,4

	db	46,17				;NW
	db	16,8,64,1,16,8,68,14
	db	16,24,72,1,16,24,76,14
	db	32,0,80,10,32,16,84,10
	db	32,32,88,10,32,16,92,4

	db	71,13				;NE
	db	16,214,64,1,16,214,68,14
	db	16,230,72,1,16,230,76,14
	db	32,206,80,10,32,222,84,10
	db	32,238,88,10,32,222,92,4

	db	79,11				;E
	db	80,214,64,1,80,214,68,14
	db	80,230,72,1,80,230,76,14
	db	96,206,80,10,96,222,84,10
	db	96,238,88,10,96,222,92,4

	db	90,13				;N
	db	16,112,64,1,16,112,68,14
	db	16,128,72,1,16,128,76,14
	db	32,104,80,10,32,120,84,10
	db	32,136,88,10,32,120,92,4

	db	108,14				;S
	db	159,112,64,1,159,112,68,14
	db	159,128,72,1,159,128,76,14
	db	175,104,80,10,175,120,84,10
	db	175,136,88,10,175,120,92,4

	db	126,16				;N
	db	16,112,64,1,16,112,68,14
	db	16,128,72,1,16,128,76,14
	db	32,104,80,10,32,120,84,10
	db	32,136,88,10,32,120,92,4

	db	139,17				;NW
	db	16,8,64,1,16,8,68,14
	db	16,24,72,1,16,24,76,14
	db	32,0,80,10,32,16,84,10
	db	32,32,88,10,32,16,92,4

	db	164,16				;NE
	db	16,214,64,1,16,214,68,14
	db	16,230,72,1,16,230,76,14
	db	32,206,80,10,32,222,84,10
	db	32,238,88,10,32,222,92,4

	db	177,13				;N
	db	16,112,64,1,16,112,68,14
	db	16,128,72,1,16,128,76,14
	db	32,104,80,10,32,120,84,10
	db	32,136,88,10,32,120,92,4

	db	195,14				;S
	db	159,112,64,1,159,112,68,14
	db	159,128,72,1,159,128,76,14
	db	175,104,80,10,175,120,84,10
	db	175,136,88,10,175,120,92,4


	db	213,13				;N
	db	16,112,64,1,16,112,68,14
	db	16,128,72,1,16,128,76,14
	db	32,104,80,10,32,120,84,10
	db	32,136,88,10,32,120,92,4

	db	221,14				;C
	db	80,112,64,1,80,112,68,14
	db	80,128,72,1,80,128,76,14
	db	96,104,80,10,96,120,84,10
	db	96,136,88,10,96,120,92,4

	db	229,15				;N
	db	16,112,64,1,16,112,68,14
	db	16,128,72,1,16,128,76,14
	db	32,104,80,10,32,120,84,10
	db	32,136,88,10,32,120,92,4

	db	255

elb3_entering:
	db	1,55
	
elb3_eventlist:
	db	5,35
	db	32,16,64,0,32,16,68,0		;x=0 y=0
	db	32,32,64,0,32,32,68,0
	db	32,128,64,0,32,128,68,0
	db	32,144,64,0,32,144,68,0
	db	52,0,64,0,52,0,68,0
	db	52,239,64,0,52,239,68,0

	db	21,31
	db	32,16,64,0,32,16,68,0		;x=0 y=0
	db	32,32,64,0,32,32,68,0
	db	32,128,64,0,32,128,68,0
	db	32,144,64,0,32,144,68,0
	db	52,0,64,0,52,0,68,0
	db	52,239,64,0,52,239,68,0

	db	31,33
	db	32,96,64,0,32,96,68,0		;x=10 y=10
	db	32,112,64,0,32,112,68,0
	db	32,208,64,0,32,208,68,0
	db	32,224,64,0,32,224,68,0
	db	132,0,64,0,132,0,68,0
	db	132,239,64,0,132,239,68,0

	db	36,50
	db	32,56,64,0,32,56,68,0		;x=5 y=15
	db	32,72,64,0,32,72,68,0
	db	32,168,64,0,32,168,68,0
	db	32,184,64,0,32,184,68,0
	db	172,0,64,0,172,0,68,0
	db	172,239,64,0,172,239,68,0

	db	66,34
	db	32,56,64,0,32,56,68,0		;x=5 y=15
	db	32,72,64,0,32,72,68,0
	db	32,168,64,0,32,168,68,0
	db	32,184,64,0,32,184,68,0
	db	172,0,64,0,172,0,68,0
	db	172,239,64,0,172,239,68,0

	db	71,32
	db	32,16,64,0,32,16,68,0		;x=0 y=10
	db	32,32,64,0,32,32,68,0
	db	32,128,64,0,32,128,68,0
	db	32,144,64,0,32,144,68,0
	db	132,0,64,0,132,0,68,0
	db	132,239,64,0,132,239,68,0

	db	81,33
	db	32,96,64,0,32,96,68,0		;x=10 y=0
	db	32,112,64,0,32,112,68,0
	db	32,208,64,0,32,208,68,0
	db	32,224,64,0,32,224,68,0
	db	52,0,64,0,52,0,68,0
	db	52,239,64,0,52,239,68,0

	db	91,50
	db	32,16,64,0,32,16,68,0		;x=0 y=10
	db	32,32,64,0,32,32,68,0
	db	32,128,64,0,32,128,68,0
	db	32,144,64,0,32,144,68,0
	db	132,0,64,0,132,0,68,0
	db	132,239,64,0,132,239,68,0

	db	121,31
	db	32,16,64,0,32,16,68,0		;x=0 y=10
	db	32,32,64,0,32,32,68,0
	db	32,128,64,0,32,128,68,0
	db	32,144,64,0,32,144,68,0
	db	132,0,64,0,132,0,68,0
	db	132,239,64,0,132,239,68,0

	db	126,32
	db	32,56,64,0,32,56,68,0		;x=5 y=15
	db	32,72,64,0,32,72,68,0
	db	32,168,64,0,32,168,68,0
	db	32,184,64,0,32,184,68,0
	db	172,0,64,0,172,0,68,0
	db	172,239,64,0,172,239,68,0

	db	131,34
	db	32,96,64,0,32,96,68,0		;x=10 y=10
	db	32,112,64,0,32,112,68,0
	db	32,208,64,0,32,208,68,0
	db	32,224,64,0,32,224,68,0
	db	132,0,64,0,132,0,68,0
	db	132,239,64,0,132,239,68,0

	db	136,50
	db	32,56,64,0,32,56,68,0		;x=5 y=5
	db	32,72,64,0,32,72,68,0
	db	32,168,64,0,32,168,68,0
	db	32,184,64,0,32,184,68,0
	db	92,0,64,0,92,0,68,0
	db	92,239,64,0,92,239,68,0

	db	166,34
	db	32,56,64,0,32,56,68,0		;x=5 y=5
	db	32,72,64,0,32,72,68,0
	db	32,168,64,0,32,168,68,0
	db	32,184,64,0,32,184,68,0
	db	92,0,64,0,92,0,68,0
	db	92,239,64,0,92,239,68,0	

	db	171,50				;172
	db	32,16,64,0,32,16,68,0		;x=0 y=0
	db	32,32,64,0,32,32,68,0
	db	32,128,64,0,32,128,68,0
	db	32,144,64,0,32,144,68,0
	db	52,0,64,0,52,0,68,0
	db	52,239,64,0,52,239,68,0
	db	255
level3_music:
	include "Lunar.asm"
music3_end:

third_spmove:					;here we have also the boss sprite setting routine
	ld	hl,actpat+36			;it works like the usual one (you can verify it
	sub	31				;following the flow
	jp	z,rightdown			;first value here is 31 (so this is why it starts
	dec	a				;with "sub 31"
	jp	z,rightup
	dec	a
	jp	z,leftdown
	dec	a
	jp	z,leftup
	ld	a,15				;if none of the previous is true then set stopped frame
	jp	pattern_set
rightdown:
	ld	d,0
;	ld	b,8
;	ld	c,1
	ld	bc,8*256 + 1
	ld	a,17
	call	loop_sp
	ld	b,4
	ld	a,13
	call	loop_sp
	jp	actpat_set
rightup:
;	ld	b,8
;	ld	c,1
	ld	bc,8*256 + 1
	ld	d,0
	ld	a,17
	call	loop_sp
	ld	b,4
	ld	a,14
	call	loop_sp
	jp	actpat_set
leftdown:
;	ld	b,8
;	ld	c,1
	ld	bc,8*256 + 1
	ld	d,0
	ld	a,16
	call	loop_sp
	ld	b,4
	ld	a,13
	call	loop_sp
	jp	actpat_set
leftup:
;	ld	b,8
;	ld	c,1
	ld	bc,8*256 + 1
	ld	d,0
	ld	a,16
	call	loop_sp
	ld	b,4
	ld	a,14
	call	loop_sp
	jp	actpat_set
third_boss:					;here starts the 3d boss plotting routine
	ld	a,(bossframe)			;from this boss I've added some animations
	inc	a				;(the tracks in this one)
	cp	4				;so we check the frame counter to know wich one plot
	call	z,frm_rst			;(1-4) and when is time to reset (to value 1) the counter
	ld	(bossframe),a
	ld	hl,actpat+37
	ld	a,(hl)
	cp	13
	jr	z,enter_boss			;approaching routine
	sub	15
	jr	z,third_nametable		;generic 3rd boss plotting (stopped boss)
	dec	a
	jr	z,move_left
	dec	a
	jr	z,move_right
	ret
move_right:					;this boss has two mobile parts: the main body cannons
;	ld	a,(horiz_pos)			;that move horizontally and the flying cannons thet
;	inc	a				;move continuosly vertically up and down. so every time
;	ld	(horiz_pos),a			;one move the cannon right or left we set the horizontal
	ld	hl,horiz_pos			;pos increment (r) or decrement (l) ant the jump
	inc	(hl)				;to the updown routine
	jp	updown
move_left:
;	ld	a,(horiz_pos)
;	dec	a
;	ld	(horiz_pos),a
	ld	hl,horiz_pos
	dec	(hl)
updown:						;that check the pattern. if it is set to 13
	ld	bc,actpat+61			;then they are moving down, else up. and the right
	ld	a,(bc)				;offset (-32/32) is added
	cp	13
	jr	z,goingdown
	ld	de,-32
	jp	vert_add
goingdown:
	ld	de,32
vert_add:
	ld	hl,(vert_pos)
	add	hl,de
	ld	(vert_pos),hl
	jp	third_nametable
enter_boss:
	ld	bc,32				;boss approaches one row at time
	ld	hl,(boss_pos)
	add	hl,bc
	ld	(boss_pos),hl
third_nametable:				;the body is plotted each time. we could have written
	ld	hl,(boss_pos)			;a different routines for boss approaching so the
	ld	de,chstart-704			;one used in battle could have done without the following
	add	hl,de				;2 instruction (add hl,de and ex de,hl and the first one
	ex	de,hl				;(ld hl,(boss_pos)) because the boss body is always stopped
	ld	hl,ELB_data3
	ld	bc,128
	call	unroll

	ld	hl,(boss_pos)			;this part, until ret nz, is related to approaching
	ld	a,l				;sequence too. exit from the routine after plotting the
	or	h				;body until the boss offset=0
	ret	nz

	ld	a,(horiz_pos)			;load horizontal offset
	ld	de,chstart-672			;set the starting position of the left cannon
	add	a,e				;the offset never reaches th eend of a line, so we are
	ld	e,a				;sure that the 256 boundary won't be crossed and we can
						;add the offset with a fast 8 bit addiction
	ld	hl,cannon			;cannon have fixed distance in between so gfx are stored
	ld	bc,18				;as 3 slices of 18 characters (from l cannon to r cannon
	ldir					;along with their rail (the rest of the rail is drawn)
	ld	a,14				;when plotting the main body. then we add the offset to
	add	a,e				;reach the start of the next cannon-rail-cannon row
	ld	e,a				;on our nametable buffer
	ld	hl,cannon+18			;point to next slice data and so on until the cannons
	ld	bc,18
	ldir
	ld	a,14
	add	a,e
	ld	e,a
	ld	hl,cannon+36
	ld	bc,18
	ldir
	ld	hl,(vert_pos)			;then the vertical moving cannons are plotted
	ld	de,chstart-704			;simply writing their chars value and adding 
	add	hl,de				;the offset between left one and right one
	ld	a,35				;this is useless, there is no gain in set this value
	ld	(hl),34
	ld	de,31
	add	hl,de
	ld	(hl),37
	inc	hl
	ld	(hl),a				;to put it here 2 times. a gain of a total of 3 t-states
	add	hl,de				;for theese 2 instruction but ld a,35 is 8 t-states
	ld	(hl),a				;so 2 t-states lost -.-
	inc	hl
	ld	(hl),36
	add	hl,de
	ld	(hl),38	
	ld	bc,actpat+61
	ld	a,(bc)
	sub	13				;this is for checking if going up or down so we know
	jr	nz,chkup			;where write a 0 value to delete unwanted gfx from previous
	xor	a				;frame
	ld	de,-127				;if cannons are moving down we have to delete above them
	add	hl,de				;so move back 127 bytes
	ld	(hl),a
	ld	de,31
	add	hl,de
	ld	(hl),a
chkup:
	dec	a
	jr	nz,track_frames
	xor	a
	inc	hl				;else is enough to do a step forward to be below the left
	ld	(hl),a				;cannon
	add	hl,de
	ld	(hl),a
track_frames:
	ld	a,(bossframe)			;load current track frame number 
	ld	b,a				;copy it to b, so we can use it as a counter
	ld	a,-4				;to compensate first addiction, frame one has
						;0 byte offset
sel_frm:
	add	a,4				;add an offset of 4 bytes for each frame
	djnz	sel_frm				;to obtain the needed one
track_frm1:
	ld	bc,track1			;add the offset to the starting address of our tracks'
	add	a,c				;frames. Each frame, like the tracks obviously, is 4 bytes
	ld	c,a				;long so our max offset will be 12. No 256 bytes boundary
	call	drawtracks			;crossed  (checked on assembled code so when track1 label
						;was hardcoded so fast 8bit addiction
						;finally draw them
bossfirecheck:					;check the flag to se if boss is firing his beams
	ld	a,(boss_fire)
	or	a
	jp	nz,bossfire_level3
	ret

frm_rst:
	ld	a,1
	ret

drawtracks:					;even if you would be beginners, if you have followed
	ld	a,4				;the code till here you should at least know
	ld	de,31				;what this routine does ;)
	ld	hl,chstart-704
draw_loop:
	push	af
	ld	a,(bc)
	ld	(hl),a
	add	hl,de
	inc	a
	ld	(hl),a
	inc	l
	inc	bc
	pop	af
	dec	a
	jp	nz,draw_loop
	jp	bossfirecheck		

track1:
	db	113,111,109,107
track2:
	db	109,113,111,115
track3:
	db	111,109,113,117

bossfire_level3:				;beam rotuines are all pretty similar
	ld	a,(horiz_pos)			;here we have 2 vertical beams and an horizontal one
	ld	hl,chstart-575			;the way they are drawn is always the same
	add	a,l				;horizontal one is even simpler that the vertical ones
	ld	l,a
	ld	a,30
;	ld	b,18
;	ld	c,31
	ld	bc,18*256 + 31			;MDL	
	call	giga3_loop
	ld	a,33
	call	horizontal
	ld	a,6
	ld	(sfx_nr),a
	ld	a,(boss_fire)
	dec	a
	ld	(boss_fire),a
	ret	nz
nofire_level3:
	ld	a,(horiz_pos)
	ld	hl,chstart-575
	add	a,l
	ld	l,a
	ld	b,18
	xor	a
	ld	(boss_fire),a
	ld	c,a
	call	giga3_loop
	jp	horizontal

giga3_loop:
	ld	de,13
	ld	(hl),a
	inc	hl
	ld	(hl),c
	add	hl,de
	ld	(hl),a
	inc	hl
	ld	(hl),c
;	ld	de,17
	ld	e,17				;MDL
	add	hl,de
	djnz	giga3_loop
	ret

horizontal:	
	ld	hl,(vert_pos)
	ld	de,chstart-703
	add	hl,de
	ld	c,2
horiz_fire:
	ld	b,30
giga3_loop2:
	ld	(hl),a
	inc	l
	djnz	giga3_loop2
	ld	de,34
	add	hl,de
	dec	c
	jp	nz,horiz_fire	
	ret

endboss_firecollision3:				;collision routines too... 
	ld	a,(horiz_pos)			;beam is fired at fixed position (2)
	cp	2				;x=0
	jp	z,vert_1
;	ld	b,48				;x=5
;	ld	c,80				;so we have 2 fixed x coordinates for right beam
	ld	bc,48*256 + 80
	jp	check_vert_col
vert_1:
;	ld	b,8				;for each position
;	ld	c,40
	ld	bc,8*256 + 40			;MDL
check_vert_col:	
	ld	hl,ramspttbl+1			;point to player xpos
	ld	a,(hl)				;player xpos in a
	cp	b
	jp	c,check_horiz
	cp	c
	jp	c,i_am_dead
	ld	a,112				;and adding a fixed offset we will obtain the 
	add	a,b				;2 x coordinate sto check for left beam
	ld	b,a
	ld	a,112
	add	a,c
	ld	c,a
	ld	a,(hl)
	cp	b
	jp	c,check_horiz
	cp	c
	jp	nc,check_horiz
	jp	i_am_dead
check_horiz:					;y coordinates to avoid horizontal beam are taken from
	ld	l,80				;the first vertical moved sprite  ypos
	ld	a,(hl)				;we know it is overlapped to cannon gfx to become a
	add	a,-19				;hitpoint, so if we subtract an offset we have the
	ld	b,a				;high limit coordinate of the horizontal beem
	add	a,39				;and adding another offset the lower limit
	ld	c,a
	ld	l,0				;point to player ypos
	ld	a,(hl)
	cp	b
	ret	c
	cp	c
	ret	nc
	jp	i_am_dead 


ELB_data3:
	db	113,102,104,105,104,105,105,105,104,105,104,105,105,104,105,106,106,105,104,105,105,104,105,104,105,105,105,104,105,104,103,114
	db	111,100,062,062,062,062,062,062,062,062,062,062,062,062,062,062,062,062,062,062,062,062,062,062,062,062,062,062,062,062,101,112
	db	109,098,061,061,061,061,061,061,061,061,061,061,061,061,061,061,061,061,061,061,061,061,061,061,061,061,061,061,061,061,099,110
	db	107,064,063,063,063,063,063,063,063,063,063,063,063,063,063,063,063,063,063,063,063,063,063,063,063,063,063,063,063,063,091,108
cannon:
	db	039,040,041,042,062,062,062,062,062,062,062,062,062,062,039,040,041,042
	db	043,044,045,046,061,061,061,061,061,061,061,061,061,061,043,044,045,046
	db	047,058,059,060,063,063,063,063,063,063,063,063,063,063,047,058,059,060

LEVEL3MAP:
	db	0											
	db	255,0												;000
	db	255,0												;001
	db	0,25,254,0,253,0,252,0,0,0									;002
	db	0,24,253,0,0,0,0,252,3,253,0,252,0,0,0,0							;003
	db	253,0,252,0,0,8,13,18,23,253,0,252,0,0,0,0							;004
	db	253,0,252,0,0,7,12,17,22,252,0,0,0,0,252,3,252,0						;005
	db	253,0,252,0,0,6,11,16,21,252,0,0,0,0,8,13,18,23,252,0						;006
	db	252,0,252,3,252,0,0,5,10,15,20,252,0,0,0,0,7,12,17,22,252,0					;007
	db	252,0,8,13,18,23,252,0,0,4,9,14,19,252,0,0,0,0,6,11,16,21,252,0					;008
	db	252,0,7,12,17,22,252,0,0,252,2,252,0,0,0,0,5,10,15,20,252,0					;009
	db	252,0,6,11,16,21,254,0,4,9,14,19,252,0								;010
	db	252,0,5,10,15,20,0,252,3,252,0,0,0,0,25,0,0,0,252,2,252,0					;011
	db	252,0,4,9,14,19,0,8,13,18,23,252,0,0,0,0,24,253,0,0,0,0						;012
	db	252,0,252,2,0,7,12,17,22,254,0,0,0,0								;013
	db	253,0,0,6,11,16,21,254,0,0,0,0									;014
	db	253,0,0,5,10,15,20,252,0,0,0,252,3,253,0,0							;015
	db	253,0,0,4,9,14,19,252,0,0,0,8,13,18,23,253,0,0							;016
	db	253,0,0,252,2,252,0,0,0,7,12,17,22,252,3,252,0,0						;017
	db	254,0,0,0,0,6,11,16,21,8,13,18,23,252,0,0							;018
	db	254,0,0,0,0,5,10,15,20,7,12,17,22,252,0,0							;019
	db	25,254,0,0,0,4,9,14,19,6,11,16,21,252,0,0							;020
	db	24,254,0,0,0,252,2,5,10,15,20,252,0,0								;021
	db	252,0,0,0,0,252,3,3,3,253,0,0,0,4,9,14,19,252,0,0						;022
	db	28,28,252,0,0,1,8,13,18,23,1,253,0,0,0,252,2,252,0,0						;023
	db	27,27,28,0,0,0,3,1,7,12,17,22,1,254,0,0,0,0							;024
	db	26,26,27,28,28,0,1,1,6,11,16,21,1,3,253,0,0,252,3,252,0,0					;025
	db	0,0,26,27,27,28,1,1,5,10,15,20,1,1,253,0,0,8,13,18,23,252,0,0					;026
	db	0,0,0,26,27,27,29,1,4,9,14,19,1,2,253,0,0,7,12,17,22,252,0,0					;027
	db	252,0,26,27,27,252,29,29,29,253,0,0,0,6,11,16,21,252,0,0					;028
	db	252,0,0,26,252,27,27,27,27,252,28,28,252,0,0,5,10,15,20,252,0,0					;029
	db	252,0,0,0,26,26,26,253,27,27,252,0,0,4,9,14,19,252,0,0						;030
	db	253,0,28,252,27,252,26,26,252,0,0,252,2,252,0,0							;031
	db	252,0,0,0,0,28,252,27,26,254,0,0,0,0								;032
	db	252,0,0,0,0,27,252,26,0,0,252,3,253,0,252,0,0,0							;033
	db	252,0,0,0,0,26,252,0,0,0,8,13,18,23,253,0,25,252,0,0						;034
	db	252,0,0,3,3,252,0,0,0,0,7,12,17,22,253,0,24,252,0,0						;035
	db	252,0,0,1,1,3,252,0,0,0,6,11,16,21,253,0,252,0,0,0						;036
	db	252,0,0,2,1,1,252,0,0,0,5,10,15,20,253,0,252,0,0,0						;037
	db	252,0,3,3,1,1,252,0,0,0,4,9,14,19,253,0,252,0,0,0						;038
	db	252,0,252,1,252,0,0,0,252,2,253,0,252,0,0,0							;039
	db	252,0,252,2,254,0,253,0										;040
	db	255,0												;041
	db	255,0												;042
	db	254,0,253,0,0,0,252,3,0,0									;043
	db	253,0,252,0,0,0,252,3,253,0,8,13,18,23,0,25							;044
	db	253,0,252,0,0,0,8,13,18,23,253,0,7,12,17,22,0,24						;045
	db	252,0,0,25,253,0,7,12,17,22,253,0,6,11,16,21,0,0						;046
	db	252,0,0,24,253,0,6,11,16,21,0,252,3,0,0,0,5,10,15,20,0,0					;047
	db	253,0,252,0,0,0,5,10,15,20,0,8,13,18,23,0,0,0,4,9,14,19,0,0					;048
	db	253,0,252,0,0,0,4,9,14,19,0,7,12,17,22,0,0,0,252,2,0,28						;049
	db	253,0,252,0,0,0,252,2,0,6,11,16,21,252,0,0,0,0,28,27						;050
	db	254,0,0,0,0,5,10,15,20,252,0,0,0,28,27,27							;051
	db	252,0,0,252,3,253,0,0,0,4,9,14,19,252,0,0,28,27,27,27						;052
	db	252,0,0,8,13,18,23,252,0,25,252,0,0,252,2,0,0,28,28,28,252,27					;053
	db	252,0,0,7,12,17,22,252,0,24,253,0,0,0,28,252,27,27,27,26					;054
	db	252,0,0,6,11,16,21,253,0,252,0,0,28,28,252,27,27,26,26,0					;055
	db	252,0,0,5,10,15,20,253,0,252,0,28,27,27,27,252,26,0,0,0						;056
	db	252,0,0,4,9,14,19,253,0,0,0,28,28,27,27,27,26,252,0,0,0,0					;057
	db	252,0,0,252,2,252,0,0,0,0,28,28,28,252,27,27,253,0						;058
	db	253,0,252,0,0,0,28,28,253,27,28,252,0,0,0,0							;059
	db	253,0,252,0,0,28,253,27,27,27,27,252,0,0,0,0							;060
	db	253,0,252,0,0,253,27,252,27,252,28,0,0,0							;061
	db	253,0,252,0,0,26,26,26,253,27,252,27,27,0,0,0							;062
	db	254,0,253,26,252,26,26,0,0,0									;063
	db	253,0,25,254,0,252,0,0,0,0									;064
	db	253,0,24,253,0,252,0,0,0,0,252,3,252,0								;065
	db	254,0,253,0,8,13,18,23,252,0									;066
	db	254,0,253,0,7,12,17,22,252,0									;067
	db	0,0,252,3,254,0,0,0,6,11,16,21,252,0								;068
	db	0,0,8,13,18,23,254,0,0,0,5,10,15,20,252,0							;069
	db	0,0,7,12,17,22,253,0,252,3,252,0,0,0,4,9,14,19,252,0						;070
	db	0,0,6,11,16,21,253,0,8,13,18,23,252,0,0,0,252,2,252,0						;071
	db	0,0,5,10,15,20,253,0,7,12,17,22,253,0,252,0,0,0							;072
	db	0,0,4,9,14,19,253,0,6,11,16,21,253,0,252,0,0,0							;073
	db	0,0,252,2,253,0,5,10,15,20,253,0,252,0,0,0							;074
	db	253,0,252,0,0,0,4,9,14,19,253,0,252,0,0,0							;075
	db	253,0,252,0,0,0,252,2,252,0,0,0,0,252,3,0,0,0							;076
	db	254,0,253,0,0,8,13,18,23,0,0,0									;077
	db	254,0,253,0,0,7,12,17,22,0,0,0									;078
	db	3,253,0,0,25,253,0,252,0,0,0,6,11,16,21,0,0,0							;079
	db	1,253,0,0,24,253,0,0,252,3,0,5,10,15,20,0,0,0							;080
	db	29,254,0,0,0,0,8,13,18,23,0,4,9,14,19,0,0,0							;081
	db	27,28,254,0,0,0,7,12,17,22,0,252,2,0,0,0							;082
	db	26,27,28,253,0,0,0,0,252,3,0,0,6,11,16,21,253,0							;083
	db	0,26,27,28,253,0,0,0,8,13,18,23,0,0,5,10,15,20,253,0						;084
	db	0,0,27,27,253,0,0,0,7,12,17,22,0,0,4,9,14,19,253,0						;085
	db	0,0,26,26,253,0,0,0,6,11,16,21,0,0,252,2,253,0							;086
	db	253,0,252,0,0,0,5,10,15,20,253,0,252,0,0,0							;087
	db	253,0,252,0,0,0,4,9,14,19,252,3,253,0,0,0							;088
	db	253,0,0,0,252,3,252,2,8,13,18,23,253,0,0,0							;089
	db	253,0,0,0,8,13,18,23,252,0,7,12,17,22,253,0,0,0							;090
	db	253,0,0,0,7,12,17,22,252,3,6,11,16,21,253,0,0,0							;091
	db	0,0,252,3,252,0,6,11,16,21,8,13,18,23,5,10,15,20,253,0,0,0					;092
	db	0,0,8,13,18,23,252,0,5,10,15,20,7,12,17,22,4,9,14,19,253,0,0,0					;093
	db	0,0,7,12,17,22,252,0,4,9,14,19,6,11,16,21,252,2,252,0,0,252,3,0					;094
	db	0,0,6,11,16,21,252,0,252,2,5,10,15,20,253,0,0,8,13,18,23,0					;095
	db	0,0,5,10,15,20,253,0,4,9,14,19,253,0,0,7,12,17,22,0						;096
	db	0,0,4,9,14,19,253,0,252,2,253,0,0,6,11,16,21,0							;097
	db	0,0,252,2,252,0,0,0,25,253,0,0,0,252,3,5,10,15,20,0						;098
	db	253,0,252,0,24,253,0,0,0,8,13,18,23,4,9,14,19,0							;099
	db	254,0,252,0,0,0,0,7,12,17,22,252,2,0								;100
	db	254,0,252,0,0,0,0,6,11,16,21,252,0,0								;101
	db	3,3,254,0,252,0,0,5,10,15,20,0,252,3								;102
	db	18,23,254,0,252,0,0,4,9,14,19,0,8,13,18,23							;103
	db	17,22,253,0,252,0,0,28,28,28,252,0,0,252,2,0,7,12,17,22						;104
	db	16,21,253,0,252,0,28,27,27,27,253,0,0,0,6,11,16,21						;105
	db	15,20,0,0,0,25,252,0,0,0,0,28,27,27,27,26,253,0,0,0,5,10,15,20					;106
	db	14,19,0,0,0,24,252,0,0,0,0,27,27,26,26,253,0,0,0,0,4,9,14,19					;107
	db	2,2,253,0,0,0,0,27,27,28,253,0,252,0,252,2							;108
	db	253,0,252,0,0,27,27,27,28,28,253,0,0,0,0,3,3,3							;109
	db	253,0,252,0,0,26,252,27,28,253,0,25,0,8,13,18							;110
	db	252,3,253,0,0,0,26,26,26,27,27,28,252,0,0,0,0,24,0,7,12,17					;111
	db	8,13,18,23,253,0,252,0,0,27,27,27,28,28,252,0,0,0,0,6,11,16					;112
	db	7,12,17,22,253,0,252,0,0,26,252,27,28,252,0,0,0,5,10,15						;113
	db	6,11,16,21,253,0,252,0,0,0,26,252,27,28,252,0,0,4,9,14						;114
	db	5,10,15,20,253,0,252,0,0,0,0,26,252,27,28,252,0,2,2,2						;115
	db	4,9,14,19,253,0,252,0,0,0,28,28,252,27,27,252,0,0,0,0						;116
	db	252,2,253,0,0,0,0,28,28,28,252,27,27,27,27,252,0,0,3,3						;117
	db	253,0,252,0,0,28,28,253,27,27,27,252,0,0,8,13							;118
	db	253,0,0,0,0,28,28,253,27,27,27,26,26,252,0,0,7,12						;119
	db	3,253,0,0,28,253,27,27,26,26,26,252,0,0,0,0,6,11						;120
	db	23,253,0,0,253,27,27,26,253,0,0,0,5,10								;121
	db	22,253,0,0,253,26,26,253,0,0,0,0,4,9								;122
	db	21,254,0,253,0,252,0,0,2,2									;123
	db	20,254,0,253,0,252,0,0,0,0									;124
	db	19,254,0,253,0,25,252,0,0,0									;125
	db	2,254,0,253,0,24,252,0,0,0									;126
	db	252,0,25,254,0,253,0,0,0,0									;127
	db	252,0,24,253,0,25,254,0,0,0									;128
	db	253,0,252,0,0,24,254,0,0,0									;129
	db	255,0												;130
	db	255,0												;131
	db	255,0												;132
	db	255,0												;133
	db	255,0												;134
	db	255,0												;135
	db	255,0												;136
	db	252,0,0,3,254,0,253,0,0,0									;137
	db	252,0,0,1,254,0,253,0,0,0									;138
	db	252,0,0,2,253,0,252,0,0,0,3,253,0,0,0,0								;139
	db	254,0,252,0,1,253,0,0,0,0									;140
	db	254,0,252,0,2,253,0,0,0,0									;141
	db	255,0												;142
	db	255,0												;143
	db	255,0												;144
	db	255,0												;145
	db	255,0												;146
	db	255,0												;147
	db	255,0												;148
	db	254,0,253,0,252,0,3,0,0,0									;149
	db	254,0,253,0,252,0,2,0,0,0									;150
	db	255,0												;151
	db	255,0												;152
	db	255,0												;153
	db	255,0												;154
	db	253,0,0,0,0,3,254,0,252,0									;155
	db	253,0,0,0,0,1,252,3,254,0									;156
	db	253,0,0,0,0,2,252,1,3,253,0,252,0,0,0,0								;157
	db	253,0,252,0,2,2,1,1,1,253,0,252,0,0,0,0								;158
	db	253,0,252,0,0,0,2,2,2,253,0,252,0,0,0,0								;159
	db	255,0												;160
	db	255,0												;161
	db	255,0												;162
	db	255,0												;163
	db	255,0												;164
	db	255,0												;165
	db	255,0												;166
	db	252,0,6,9,19,23,19,23,6,9,19,23,19,23,19,23,19,23,6,9,19,23,19,23,6,9,252,0			;167
	db	252,0,5,8,28,29,28,29,5,8,28,29,28,29,28,29,28,29,5,8,28,29,28,29,5,8,252,0			;168
	db	252,0,4,7,16,22,16,22,17,24,16,22,16,22,16,22,16,22,17,24,16,22,16,22,4,7,252,0			;169
	db	253,0,0,0,28,29,253,0,28,29,253,0,0,0								;170
	db	3,253,0,0,28,29,253,0,28,29,253,0,0,0								;171
	db	1,253,0,0,28,29,253,0,28,29,253,0,3,0								;172
	db	2,253,0,0,28,29,253,0,28,29,253,0,1,0								;173
	db	253,0,0,0,28,29,253,0,28,29,253,0,2,0								;174
	db	253,0,0,0,28,29,253,0,28,29,253,0,0,0								;175
	db	253,0,0,0,28,29,253,0,28,29,253,0,0,0								;176
	db	12,15,19,23,19,23,19,23,19,23,18,25,253,0,18,25,19,23,19,23,19,23,19,23,12,15			;177
	db	11,14,28,29,28,29,28,29,28,29,5,8,253,0,5,8,28,29,28,29,28,29,28,29,11,14			;178
	db	20,26,16,22,16,22,16,22,16,22,4,7,253,0,4,7,16,22,16,22,16,22,16,22,20,26			;179
	db	28,29,254,0,253,0,252,0,28,29									;180
	db	28,29,253,0,0,0,0,12,15,6,9,12,15,253,0,0,0,3,28,29						;181
	db	28,29,0,6,9,252,0,6,9,6,9,11,14,5,8,11,14,6,9,6,9,252,0,6,9,1,28,29				;182
	db	28,29,0,5,8,252,0,5,8,5,8,10,13,4,7,10,13,5,8,5,8,252,0,5,8,2,28,29				;183
	db	28,29,0,4,7,252,0,4,7,4,7,252,0,0,0,4,7,4,7,252,0,4,7,0,28,29					;184
	db	28,29,254,0,253,0,252,0,28,29									;185
	db	28,29,19,23,19,23,19,23,19,23,19,23,19,23,19,23,19,23,19,23,19,23,19,23,19,23,19,23,19,23,28,29	;186
	db	28,29,28,29,28,29,28,29,28,29,28,29,28,29,28,29,28,29,28,29,28,29,28,29,28,29,28,29,28,29,28,29	;187
	db	16,22,16,22,16,22,16,22,16,22,16,22,16,22,16,22,16,22,16,22,16,22,16,22,16,22,16,22,16,22,16,22	;188
	db	255,0												;189
	db	255,0												;190
	db	255,0												;191
	db	0,0,12,15,254,0,253,0,12,15,0,3									;192
	db	3,0,11,14,253,0,0,0,0,19,23,253,0,0,0,0,11,14,0,1						;193
	db	2,0,10,13,253,0,0,0,0,28,29,253,0,0,0,0,10,13,0,2						;194
	db	253,0,252,0,0,0,0,28,29,253,0,252,0,0,0,0							;195
	db	253,0,252,0,0,0,0,28,29,253,0,252,0,0,0,0							;196
	db	253,0,252,0,0,0,0,28,29,253,0,252,0,0,0,0							;197
	db	253,0,252,0,0,0,0,28,29,253,0,252,0,0,0,0							;198
	db	253,0,0,0,0,19,23,19,23,21,27,19,23,19,23,253,0,0,0,0						;199
	db	253,0,0,0,0,28,29,28,29,11,14,28,29,28,29,253,0,0,0,0						;200
	db	253,0,0,0,0,28,29,16,22,10,13,16,22,28,29,0,0,3,253,0						;201
	db	253,0,0,0,0,28,29,252,0,0,0,28,29,0,0,1,253,0							;202
	db	253,0,0,0,0,18,25,252,0,0,0,18,25,0,0,2,253,0							;203
	db	253,0,0,0,0,5,8,252,0,0,0,5,8,253,0,0,0,0							;204
	db	253,0,0,0,0,17,24,252,0,0,0,17,24,253,0,0,0,0							;205
	db	252,0,0,6,9,19,23,19,23,28,29,252,0,0,0,28,29,19,23,19,23,6,9,252,0,0				;206
	db	252,0,0,5,8,28,29,28,29,28,29,252,0,0,0,28,29,28,29,28,29,5,8,252,0,0				;207
	db	252,0,0,4,7,16,22,16,22,16,22,252,0,0,0,16,22,16,22,16,22,4,7,252,0,0				;208
	db	255,0												;209
	db	252,0,6,9,6,9,0,19,23,19,23,19,23,19,23,19,23,19,23,19,23,0,6,9,6,9,252,0			;210
	db	252,0,5,8,5,8,0,28,29,28,29,28,29,28,29,28,29,28,29,28,29,0,5,8,5,8,252,0			;211
	db	252,0,4,7,4,7,0,16,22,16,22,16,22,28,29,16,22,16,22,16,22,0,4,7,4,7,252,0			;212
	db	253,0,252,0,0,0,0,28,29,253,0,252,0,0,0,0							;213
	db	252,0,6,9,6,9,252,0,0,0,0,28,29,252,0,0,0,0,6,9,6,9,252,0					;214
	db	252,0,5,8,5,8,252,0,0,0,0,28,29,252,0,0,0,0,5,8,5,8,252,0					;215
	db	252,0,4,7,4,7,252,0,0,0,0,28,29,252,0,0,0,0,4,7,4,7,252,0					;216
	db	253,0,252,0,0,12,15,21,27,12,15,253,0,252,0,0							;217
	db	253,0,252,0,0,11,14,11,14,11,14,253,0,252,0,0							;218
	db	253,0,0,12,15,12,15,10,13,10,13,10,13,12,15,12,15,253,0,0					;219
	db	253,0,0,11,14,11,14,252,0,0,0,11,14,11,14,253,0,0						;220
	db	253,0,0,10,13,10,13,12,15,12,15,12,15,10,13,10,13,253,0,0					;221
	db	253,0,252,0,0,11,14,11,14,11,14,253,0,252,0,0							;222
	db	253,0,252,0,0,10,13,20,26,10,13,253,0,252,0,0							;223
	db	253,0,252,0,0,0,0,28,29,253,0,252,0,0,0,0							;224
	db	253,0,252,0,0,0,0,28,29,253,0,252,0,0,0,0							;225
	db	253,0,252,0,0,0,0,28,29,253,0,252,0,0,0,0							;226
	db	253,0,252,0,0,0,0,28,29,253,0,252,0,0,0,0							;227
	db	253,0,252,0,0,0,0,28,29,252,0,3,3,253,0,0							;228
	db	253,0,252,0,0,0,0,28,29,252,0,1,1,3,253,0							;229
	db	253,0,252,0,0,0,0,28,29,252,0,2,1,2,253,0							;230
	db	253,0,252,0,0,0,0,28,29,252,0,0,2,253,0,0							;231
	db	253,0,252,0,0,0,0,28,29,253,0,252,0,0,0,0							;232
	db	253,0,252,0,3,0,0,28,29,253,0,252,0,0,0,0							;233
	db	253,0,252,0,1,0,0,28,29,253,0,252,0,0,0,0							;234
	db	253,0,252,0,2,0,0,28,29,253,0,252,0,0,0,0							;235
	db	253,0,252,0,0,0,0,28,29,253,0,252,0,0,0,0							;236
	db	253,0,252,0,0,0,0,28,29,253,0,252,0,0,0,0							;237
	db	252,0,0,6,9,253,0,28,29,253,0,6,9,3,252,0							;238
	db	252,0,0,5,8,253,0,28,29,253,0,5,8,1,252,0							;239
	db	252,0,0,4,7,253,0,16,22,253,0,4,7,2,252,0							;240
	db	255,0												;241
	db	253,0,252,0,0,12,15,12,15,12,15,253,0,252,0,0							;242
	db	253,0,0,0,0,12,15,11,14,11,14,11,14,12,15,253,0,0,0,0						;243
	db	253,0,0,0,0,11,14,10,13,10,13,10,13,11,14,253,0,0,0,0						;244
	db	253,0,0,0,0,10,13,252,0,0,0,10,13,253,0,0,0,0							;245
	db	253,0,252,0,0,0,6,9,6,9,253,0,252,0,0,0								;246
	db	252,0,6,9,253,0,5,8,5,8,253,0,6,9,252,0								;247
	db	252,0,5,8,253,0,4,7,4,7,253,0,5,8,252,0								;248
	db	252,0,4,7,254,0,252,0,4,7,252,0									;249
	db	255,0												;250
	db	255,0												;251
	db	255,0												;252
	db	255,0												;253
	db	255,0												;254
	db	255,0												;255
	db	255,0												;256
	db	255,0												;257
	db	255,0												;258
	db	255,0												;259
	db	255,0												;260
	db	255,0												;261
	db	255,0												;262
	db	255,0												;263
	db	255,0												;264
	db	255,0												;265
	db	255,0												;266
	db	255,0												;267
	db	255,0												;268
	db	255,0												;269
	db	255,0												;270
	db	255,0												;271
	db	255,0												;272
	db	255,0												;273
	db	251			;end of map marker
boss3_t1:
	db	05Fh,03Fh,05Fh,03Fh,05Fh,03Fh,05Fh,03Fh	;030
	db	0FCh,0FAh,0FCh,0FAh,0FCh,0FAh,0FCh,0FAh	;031
	db	000h,000h,000h,000h,000h,000h,000h,000h	;032
	db	000h,055h,0AAh,0FFh,0FFh,055h,0AAh,000h	;033
	db	01Eh,03Fh,07Fh,07Fh,0D5h,0D5h,0FFh,0C3h	;034
	db	0BDh,07Eh,0E7h,042h,042h,0E7h,07Eh,0BDh	;035
	db	0C3h,0FFh,0D5h,0D5h,07Fh,07Fh,03Fh,01Eh	;036
	db	078h,0FCh,0FEh,0FEh,0ABh,0ABh,0FFh,0C3h	;037
	db	0C3h,0FFh,0ABh,0ABh,0FEh,0FEh,0FCh,078h	;038
	db	0E0h,0DFh,0BFh,07Fh,07Fh,07Fh,07Fh,07Fh	;039
	db	000h,010h,030h,054h,054h,033h,010h,003h	;040
	db	000h,008h,00Ch,02Ah,02Ah,0CCh,008h,0C0h	;041
	db	007h,0FBh,0FDh,0FEh,0FEh,0FEh,0FEh,0FEh	;042
	db	080h,083h,084h,087h,084h,08Fh,088h,08Fh	;043
	db	03Fh,0C4h,022h,0FFh,007h,00Fh,00Fh,00Fh	;044
	db	0FCh,023h,044h,0FFh,0E0h,0F0h,0F0h,0F0h	;045
	db	001h,0C1h,021h,0E1h,021h,0F1h,011h,0F1h	;046
	db	084h,087h,082h,082h,081h,081h,001h,003h	;047
boss3_t1_end:
boss3_t2:
	db	00Fh,007h,007h,003h,001h,01Fh,0E0h,0E0h	;058
	db	0F0h,0E0h,0E0h,0C0h,080h,0F8h,007h,007h	;059
	db	021h,0E1h,041h,041h,081h,081h,080h,0C0h	;060
	db	0FFh,0FFh,0FFh,0FFh,000h,0FFh,0FFh,0FFh	;061
	db	000h,000h,000h,000h,024h,024h,000h,0FFh	;062
	db	0FFh,0FFh,092h,000h,000h,000h,081h,0FFh	;063
	db	081h,081h,080h,080h,080h,0C0h,0E1h,07Fh	;064
boss3_t2_end:
boss3_t3:
	db	081h,081h,081h,081h,080h,081h,081h,081h	;098
	db	081h,081h,081h,081h,001h,081h,081h,081h	;099
	db	080h,080h,080h,080h,080h,080h,080h,081h	;100
	db	001h,001h,001h,001h,001h,001h,001h,081h	;101
	db	080h,080h,087h,083h,083h,081h,081h,080h	;102
	db	001h,001h,0E1h,0C1h,0C1h,081h,081h,001h	;103
	db	000h,018h,03Ch,03Ch,03Ch,018h,018h,000h	;104
	db	000h,000h,0E7h,0C3h,0C3h,081h,081h,000h	;105
	db	000h,000h,0FFh,0C3h,0C3h,0C3h,0E7h,0E7h	;106
	db	07Fh,0FFh,07Fh,07Fh,0FFh,07Fh,07Fh,000h	;107
	db	0FEh,0FFh,0FEh,0FEh,0FFh,0FEh,0FEh,000h	;111
	db	0FFh,07Fh,07Fh,0FFh,07Fh,07Fh,0FFh,07Fh	;108
	db	0FFh,0FEh,0FEh,0FFh,0FEh,0FEh,0FFh,0FEh	;112
	db	07Fh,07Fh,0FFh,07Fh,07Fh,0FFh,07Fh,07Fh	;109
	db	0FEh,0FEh,0FFh,0FEh,0FEh,0FFh,0FEh,0FEh	;113
	db	07Fh,000h,07Fh,07Fh,000h,07Fh,07Fh,07Fh	;110
	db	0FEh,000h,0FEh,0FEh,000h,0FEh,0FEh,0FEh	;114
	db	000h,07Fh,07Fh,000h,07Fh,07Fh,07Fh,000h	;115
	db	000h,0FEh,0FEh,000h,0FEh,0FEh,0FEh,000h	;116
	db	07Fh,07Fh,000h,07Fh,07Fh,000h,07Fh,000h	;117
	db	0FEh,0FEh,000h,0FEh,0FEh,000h,0FEh,000h	;118
	db	000h,000h,000h,000h,000h,000h,000h,000h	;119
	db	000h,000h,000h,000h,000h,000h,000h,000h	;120
	db	000h,000h,000h,000h,000h,000h,000h,000h	;121
	db	000h,000h,000h,000h,000h,000h,000h,000h	;122
	db	000h,000h,000h,000h,000h,000h,000h,000h	;123
	db	000h,000h,000h,000h,000h,000h,000h,000h	;124
	db	000h,000h,000h,000h,000h,000h,000h,000h	;125
	db	000h,000h,000h,000h,000h,000h,000h,000h	;126
	db	000h,000h,000h,000h,000h,000h,000h,000h	;127
boss3_t3_end:
	db	081h,081h,001h,001h,001h,003h,087h,0FEh	;091

boss3_c1:
	db	0F8h,0F8h,0F9h,0F8h,0F8h,0F9h,0F8h,0F8h	;030
	db	0F8h,0F8h,0F9h,0F8h,0F8h,0F9h,0F8h,0F8h	;031
	db	011h,011h,011h,011h,011h,011h,011h,011h	;032
	db	0F8h,0F8h,0F9h,0F9h,0F9h,0F9h,0F8h,0F8h	;033
	db	04Fh,04Fh,04Fh,04Fh,04Bh,04Bh,04Dh,04Dh	;034
	db	04Dh,04Dh,047h,047h,047h,047h,04Dh,04Dh	;035
	db	04Dh,04Dh,04Bh,04Bh,04Fh,04Fh,04Fh,04Fh	;036
	db	04Fh,04Fh,04Fh,04Fh,04Bh,04Bh,04Dh,04Dh	;037
	db	04Dh,04Dh,04Bh,04Bh,04Fh,04Fh,04Fh,04Fh	;038
	db	041h,041h,041h,041h,041h,041h,041h,041h	;039
	db	041h,0E4h,0E4h,0E4h,0E4h,0E4h,0E4h,014h	;040
	db	041h,0E4h,0E4h,0E4h,0E4h,0E4h,0E4h,014h	;041
	db	041h,041h,041h,041h,041h,041h,041h,041h	;042
	db	014h,014h,014h,014h,014h,014h,014h,014h	;043
	db	014h,014h,014h,014h,0A4h,0A4h,0A4h,0A4h	;044
	db	014h,014h,014h,014h,0A4h,0A4h,0A4h,0A4h	;045
	db	014h,014h,014h,014h,014h,014h,014h,014h	;046
	db	014h,014h,014h,014h,014h,014h,074h,074h	;047
boss3_c1_end:
boss3_c2:		
	db	0A4h,0A4h,0A4h,0A4h,0A4h,074h,079h,096h	;058
	db	0A4h,0A4h,0A4h,0A4h,0A4h,074h,079h,096h	;059
	db	014h,014h,014h,014h,014h,014h,074h,074h	;060
	db	0E5h,0E5h,015h,015h,055h,015h,0E5h,0E5h	;061
	db	0E4h,074h,074h,0E5h,075h,075h,0E5h,015h	;062
	db	015h,015h,015h,015h,015h,015h,015h,015h	;063
	db	015h,015h,015h,015h,015h,015h,015h,01Fh	;064
boss3_c2_end:
boss3_c3:
	db	015h,015h,015h,015h,015h,015h,015h,015h	;098
	db	015h,015h,015h,015h,015h,015h,015h,015h	;099
	db	014h,014h,014h,015h,015h,015h,015h,015h	;100
	db	014h,014h,014h,015h,015h,015h,015h,015h	;101
	db	014h,014h,014h,014h,014h,014h,014h,014h	;102
	db	014h,014h,014h,014h,014h,014h,014h,014h	;103
	db	014h,064h,064h,064h,064h,064h,064h,014h	;104
	db	014h,064h,014h,0E4h,014h,0E4h,014h,064h	;105
	db	014h,0E4h,014h,0E2h,012h,0E2h,012h,0E2h	;106
	db	0E1h,01Fh,0E1h,0E1h,01Fh,0E1h,01Fh,01Fh	;107
	db	0E1h,01Fh,0E1h,0E1h,01Fh,0E1h,01Fh,01Fh	;111
	db	01Fh,0E1h,0E1h,01Fh,0E1h,0E1h,01Fh,0E1h	;108
	db	01Fh,0E1h,0E1h,01Fh,0E1h,0E1h,01Fh,0E1h	;112
	db	0E1h,0E1h,01Fh,0E1h,0E1h,01Fh,0E1h,0E1h	;109
	db	0E1h,0E1h,01Fh,0E1h,0E1h,01Fh,0E1h,0E1h	;113
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,011h	;110
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,011h	;114
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,01Fh,01Fh	;115
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,01Fh,01Fh	;116
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,01Fh,01Fh	;117
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E1h,01Fh,01Fh	;118
	db	0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh	;119
	db	0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh	;120
	db	0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh	;121
	db	0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh	;122
	db	0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh	;123
	db	0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh	;124
	db	0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh	;125
	db	0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh	;126
	db	01Fh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh,01Fh	;127
boss3_c3_end:	
	db	015h,015h,015h,015h,015h,015h,015h,01Fh	;091

lv3_data_end:

	DS	-$ & 3FFFh

	org	8000h
;level4 data
ramchr4_1:
		;patterns
	db	000h,000h,000h,000h,000h,000h,000h,000h	;000
	db	000h,000h,000h,000h,000h,000h,000h,000h	;001
	db	000h,000h,000h,000h,000h,000h,000h,000h	;002
	db	000h,000h,000h,010h,000h,000h,000h,000h	;003
	db	000h,000h,000h,010h,000h,000h,000h,000h	;004
	db	000h,008h,01Ch,008h,000h,000h,000h,000h	;005
	db	000h,000h,000h,000h,000h,000h,000h,000h	;006
	db	000h,000h,000h,003h,007h,00Eh,01Bh,01Fh	;007
	db	000h,000h,000h,003h,007h,00Eh,01Bh,01Fh	;008
	db	03Eh,07Fh,075h,068h,0C0h,0E0h,0F0h,0E8h	;009
	db	03Eh,07Fh,075h,068h,0C0h,0E0h,0F0h,0E8h	;010
	db	0D0h,0E8h,0FAh,0FDh,07Fh,07Fh,07Fh,03Fh	;011
	db	0D0h,0E8h,0FAh,0FDh,07Fh,07Fh,07Fh,03Fh	;012
	db	01Eh,01Fh,00Fh,007h,003h,000h,000h,000h	;013
	db	01Eh,01Fh,00Fh,007h,003h,000h,000h,000h	;014
	db	000h,000h,000h,000h,000h,000h,000h,000h	;015
	db	000h,000h,000h,000h,000h,000h,000h,000h	;016
	db	00Fh,07Fh,0E7h,08Fh,0C7h,03Fh,007h,000h	;017
	db	00Fh,07Fh,0E7h,08Fh,0C7h,03Fh,007h,000h	;018
	db	000h,001h,001h,003h,003h,007h,01Fh,03Eh	;019
	db	000h,001h,001h,003h,003h,007h,01Fh,03Eh	;020
	db	01Ch,008h,00Ch,0FCh,0CEh,087h,083h,0E3h	;021
	db	01Ch,008h,00Ch,0FCh,0CEh,087h,083h,0E3h	;022
	db	070h,038h,09Fh,0FBh,0FCh,0FFh,07Fh,00Fh	;023
	db	070h,038h,09Fh,0FBh,0FCh,0FFh,07Fh,00Fh	;024
	db	000h,000h,000h,000h,000h,000h,000h,000h	;025
	db	000h,000h,000h,000h,000h,000h,000h,000h	;026
	db	0F0h,0FEh,07Fh,03Fh,0DFh,0FFh,043h,081h	;027
	db	0F0h,0FEh,07Fh,03Fh,0DFh,0FFh,043h,081h	;028
	db	001h,087h,08Fh,0CFh,0EFh,0FFh,07Ch,03Bh	;029
	db	001h,087h,08Fh,0CFh,0EFh,0FFh,07Ch,03Bh	;030
	db	07Bh,07Ch,03Fh,01Fh,00Fh,001h,083h,0C7h	;031
	db	07Bh,07Ch,03Fh,01Fh,00Fh,001h,083h,0C7h	;032
	db	03Fh,07Fh,0FFh,0FFh,07Fh,0FFh,0FEh,0F0h	;033
	db	03Fh,07Fh,0FFh,0FFh,07Fh,0FFh,0FEh,0F0h	;034
	db	000h,000h,000h,000h,000h,000h,000h,000h	;035
	db	000h,000h,000h,000h,000h,000h,000h,000h	;036
	db	000h,000h,000h,0C0h,0E0h,0F0h,0F8h,0F8h	;037
	db	000h,000h,000h,0C0h,0E0h,0F0h,0F8h,0F8h	;038
	db	0FCh,0F6h,0FEh,0FAh,0BFh,0FEh,0CFh,07Eh	;039
	db	0FCh,0F6h,0FEh,0FAh,0BFh,0FEh,0CFh,07Eh	;040
	db	0FFh,0FEh,0BFh,0FDh,0FEh,0FEh,0EEh,0FCh	;041
	db	0FFh,0FEh,0BFh,0FDh,0FEh,0FEh,0EEh,0FCh	;042
	db	0F8h,0F8h,0F0h,0E0h,0C0h,000h,000h,000h	;043
	db	0F8h,0F8h,0F0h,0E0h,0C0h,000h,000h,000h	;044
	db	000h,000h,000h,000h,000h,000h,000h,000h	;045
	db	000h,000h,000h,000h,000h,000h,000h,000h	;046
	db	000h,000h,008h,000h,000h,000h,000h,000h	;047
	db	000h,000h,000h,000h,000h,000h,000h,000h	;048
	db	03Ch,07Eh,097h,0F9h,0EEh,0B3h,07Eh,03Ch	;049
	db	03Ch,07Eh,097h,0F9h,0EEh,0B3h,07Eh,03Ch	;050
	db	000h,000h,000h,000h,000h,000h,000h,000h	;051
	db	000h,000h,000h,000h,000h,000h,000h,000h	;052
	db	000h,004h,000h,000h,040h,000h,004h,000h	;053
	db	000h,000h,000h,000h,000h,000h,000h,000h	;054
	db	000h,004h,040h,000h,008h,000h,020h,000h	;055
	db	000h,000h,000h,000h,000h,000h,000h,000h	;056
	db	000h,020h,002h,000h,010h,000h,004h,000h	;057
	db	000h,000h,000h,000h,000h,000h,000h,000h	;058
	db	000h,020h,000h,002h,000h,000h,020h,000h	;059
ramclr4_1:
		;colors
	db	001h,001h,001h,001h,001h,001h,001h,001h	;000
	db	001h,001h,001h,001h,001h,001h,001h,001h	;001
	db	001h,001h,001h,001h,001h,001h,001h,001h	;002
	db	001h,001h,001h,0F1h,001h,001h,001h,001h	;003
	db	001h,001h,001h,0F1h,001h,001h,001h,001h	;004
	db	001h,0E1h,0F1h,0E1h,0F1h,001h,001h,001h	;005
	db	001h,001h,001h,001h,001h,001h,001h,001h	;006
	db	0F1h,0F1h,0F1h,0F1h,0F1h,0F1h,0F1h,0F1h	;007
	db	0F1h,0F1h,0F1h,0F1h,0F1h,0F1h,0F1h,0F1h	;008
	db	0F1h,0F1h,0F1h,0FEh,0FEh,0FEh,0FEh,0FEh	;009
	db	0F1h,0F1h,0F1h,0FEh,0FEh,0FEh,0FEh,0FEh	;010
	db	0FEh,0FEh,0FEh,0FEh,0F1h,0F1h,0F1h,0F1h	;011
	db	0FEh,0FEh,0FEh,0FEh,0F1h,0F1h,0F1h,0F1h	;012
	db	0F1h,0F1h,0F1h,0F1h,0F1h,0F1h,0F1h,0F1h	;013
	db	0F1h,0F1h,0F1h,0F1h,0F1h,0F1h,0F1h,0F1h	;014
	db	001h,001h,001h,001h,001h,001h,001h,001h	;015
	db	001h,001h,001h,001h,001h,001h,001h,001h	;016
	db	0F1h,0F1h,0FEh,0FEh,0FEh,0FEh,0FEh,0FEh	;017
	db	0F1h,0F1h,0FEh,0FEh,0FEh,0FEh,0FEh,0FEh	;018
	db	0FEh,0FEh,0FEh,0FEh,0FEh,0FEh,0FEh,0FEh	;019
	db	0FEh,0FEh,0FEh,0FEh,0FEh,0FEh,0FEh,0FEh	;020
	db	0FEh,0FEh,0FEh,0FEh,0FEh,0FEh,0FEh,0FEh	;021
	db	0FEh,0FEh,0FEh,0FEh,0FEh,0FEh,0FEh,0FEh	;022
	db	0FEh,0FEh,0FEh,0FEh,0FEh,0F1h,0F1h,0F1h	;023
	db	0FEh,0FEh,0FEh,0FEh,0FEh,0F1h,0F1h,0F1h	;024
	db	001h,001h,001h,001h,001h,001h,001h,001h	;025
	db	001h,001h,001h,001h,001h,001h,001h,001h	;026
	db	0F1h,0F1h,0FEh,0FEh,0FEh,0F1h,0FEh,0FEh	;027
	db	0F1h,0F1h,0FEh,0FEh,0FEh,0F1h,0FEh,0FEh	;028
	db	0FEh,0FEh,0FEh,0FEh,0FEh,0FEh,0FEh,0FEh	;029
	db	0FEh,0FEh,0FEh,0FEh,0FEh,0FEh,0FEh,0FEh	;030
	db	0FEh,0FEh,0FEh,0FEh,0FEh,0FEh,0FEh,0FEh	;031
	db	0FEh,0FEh,0FEh,0FEh,0FEh,0FEh,0FEh,0FEh	;032
	db	0FEh,0FEh,0F1h,0FEh,0FEh,0F1h,0F1h,0F1h	;033
	db	0FEh,0FEh,0F1h,0FEh,0FEh,0F1h,0F1h,0F1h	;034
	db	001h,001h,001h,001h,001h,001h,001h,001h	;035
	db	001h,001h,001h,001h,001h,001h,001h,001h	;036
	db	0F1h,0F1h,0F1h,0F1h,0F1h,0F1h,0F1h,0F1h	;037
	db	0F1h,0F1h,0F1h,0F1h,0F1h,0F1h,0F1h,0F1h	;038
	db	0F1h,0F1h,0F1h,0F1h,0FEh,0F1h,0FEh,0F1h	;039
	db	0F1h,0F1h,0F1h,0F1h,0FEh,0F1h,0FEh,0F1h	;040
	db	0F1h,0F1h,0FEh,0F1h,0F1h,0F1h,0F1h,0F1h	;041
	db	0F1h,0F1h,0FEh,0F1h,0F1h,0F1h,0F1h,0F1h	;042
	db	0F1h,0F1h,0F1h,0F1h,0F1h,0F1h,0F1h,0F1h	;043
	db	0F1h,0F1h,0F1h,0F1h,0F1h,0F1h,0F1h,0F1h	;044
	db	001h,001h,001h,001h,001h,001h,001h,001h	;045
	db	001h,001h,001h,001h,001h,001h,001h,001h	;046
	db	001h,001h,061h,001h,001h,001h,001h,001h	;047
	db	001h,001h,001h,001h,001h,001h,001h,001h	;048
	db	041h,041h,045h,04Fh,04Fh,04Fh,041h,041h	;049
	db	041h,041h,045h,04Fh,04Fh,04Fh,041h,041h	;050
	db	001h,001h,001h,001h,001h,001h,001h,001h	;051
	db	011h,011h,011h,011h,011h,011h,011h,011h	;052
	db	011h,0F1h,011h,011h,0E1h,011h,051h,011h	;053
	db	011h,011h,011h,011h,011h,011h,011h,011h	;054
	db	011h,0F1h,061h,061h,0F1h,011h,0E1h,011h	;055
	db	011h,011h,011h,011h,011h,011h,011h,011h	;056
	db	011h,0F1h,061h,061h,0F1h,011h,0E1h,011h	;057
	db	011h,011h,011h,011h,011h,011h,011h,011h	;058
	db	011h,051h,011h,0E1h,011h,011h,0F1h,011h	;059
ramchr4_2:
	db	000h,000h,000h,000h,000h,000h,000h,000h	;064
	db	000h,000h,000h,000h,000h,000h,000h,000h	;065
	db	000h,000h,000h,000h,000h,000h,000h,000h	;066
	db	000h,000h,000h,010h,000h,000h,000h,000h	;067
	db	000h,000h,000h,000h,000h,000h,000h,000h	;068
	db	000h,008h,01Ch,008h,000h,000h,000h,000h	;069
	db	000h,000h,000h,000h,000h,000h,000h,000h	;070
	db	006h,00Dh,007h,003h,007h,003h,000h,003h	;071
	db	000h,000h,000h,000h,000h,000h,000h,000h	;072
	db	003h,005h,001h,009h,005h,003h,003h,001h	;073
	db	000h,000h,000h,000h,000h,000h,000h,000h	;074
	db	010h,009h,0C0h,020h,018h,004h,002h,001h	;075
	db	000h,000h,000h,000h,000h,000h,000h,000h	;076
	db	00Dh,09Eh,068h,036h,02Fh,05Bh,078h,087h	;077
	db	000h,000h,000h,000h,000h,000h,000h,000h	;078
	db	030h,00Dh,0E0h,003h,00Ch,030h,043h,084h	;079
	db	000h,000h,000h,000h,000h,000h,000h,000h	;080
	db	013h,064h,009h,092h,024h,044h,051h,091h	;081
	db	000h,000h,000h,000h,000h,000h,000h,000h	;082
	db	0C1h,067h,095h,036h,02Bh,037h,042h,001h	;083
	db	000h,000h,000h,000h,000h,000h,000h,000h	;084
	db	081h,048h,044h,020h,014h,050h,008h,009h	;085
	db	000h,000h,000h,000h,000h,000h,000h,000h	;086
	db	080h,0C1h,0BEh,008h,024h,002h,089h,001h	;087
	db	000h,000h,000h,000h,000h,000h,000h,000h	;088
	db	0F0h,008h,004h,0F2h,00Dh,043h,01Dh,0E2h	;089
	db	000h,000h,000h,000h,000h,000h,000h,000h	;090
	db	00Eh,015h,02Ah,04Ah,092h,091h,011h,011h	;091
	db	000h,000h,000h,000h,000h,000h,000h,000h	;092
	db	014h,010h,048h,008h,0E5h,09Eh,002h,001h	;093
	db	000h,000h,000h,000h,000h,000h,000h,000h	;094
	db	000h,01Fh,0C0h,000h,000h,01Eh,040h,084h	;095
	db	000h,000h,000h,000h,000h,000h,000h,000h	;096
	db	080h,040h,079h,0A7h,010h,012h,008h,028h	;097
	db	000h,000h,000h,000h,000h,000h,000h,000h	;098
	db	0C9h,08Ah,0A9h,049h,052h,054h,0A9h,072h	;099
	db	000h,000h,000h,000h,000h,000h,000h,000h	;100
	db	047h,0B8h,0C0h,0B0h,04Fh,020h,090h,04Eh	;101
	db	000h,000h,000h,000h,000h,000h,000h,000h	;102
	db	080h,091h,040h,024h,010h,07Dh,083h,001h	;103
	db	000h,000h,000h,000h,000h,000h,000h,000h	;104
	db	000h,021h,020h,024h,040h,040h,082h,00Ch	;105
	db	000h,000h,000h,000h,000h,000h,000h,000h	;106
	db	080h,042h,0ECh,0D4h,06Ch,0A9h,0E6h,083h	;107
	db	000h,000h,000h,000h,000h,000h,000h,000h	;108
	db	091h,0AAh,012h,024h,068h,091h,026h,0C8h	;109
	db	000h,000h,000h,000h,000h,000h,000h,000h	;110
	db	081h,042h,08Ch,030h,0C0h,003h,098h,000h	;111
	db	000h,000h,000h,000h,000h,000h,000h,000h	;112
	db	0E1h,01Eh,0DAh,0F4h,06Ch,016h,079h,0B0h	;113
	db	000h,000h,000h,000h,000h,000h,000h,000h	;114
	db	0C0h,03Ch,003h,041h,080h,040h,030h,008h	;115
	db	000h,000h,000h,000h,000h,000h,000h,000h	;116
	db	080h,0C0h,0C0h,0A0h,090h,080h,0A0h,0C0h	;117
	db	000h,000h,000h,000h,000h,000h,000h,000h	;118
	db	080h,000h,080h,0C0h,080h,0C0h,0A0h,040h	;119
	db	000h,000h,000h,000h,000h,000h,000h,000h	;120
	db	004h,020h,009h,0C0h,030h,00Ch,002h,001h	;121
	db	000h,000h,000h,000h,010h,000h,000h,000h	;122
	db	000h,002h,000h,000h,000h,080h,002h,000h	;123

ramclr4_2:
	db	001h,001h,001h,001h,001h,001h,001h,001h	;064
	db	001h,001h,001h,001h,001h,001h,001h,001h	;065
	db	001h,001h,001h,001h,001h,001h,001h,001h	;066
	db	001h,001h,001h,0F1h,001h,001h,001h,001h	;067
	db	001h,001h,001h,001h,001h,001h,001h,001h	;068
	db	001h,0E1h,0F1h,0E1h,0F1h,001h,001h,001h	;069
	db	001h,001h,001h,001h,001h,001h,001h,001h	;070
	db	041h,041h,041h,0E1h,051h,051h,011h,051h	;071
	db	001h,001h,001h,001h,001h,001h,001h,001h	;072
	db	0E1h,051h,071h,051h,041h,041h,041h,071h	;073
	db	001h,001h,001h,001h,001h,001h,001h,001h	;074
	db	045h,045h,0E5h,0E5h,0E5h,0E4h,0E4h,0E4h	;075
	db	001h,001h,001h,001h,001h,001h,001h,001h	;076
	db	041h,051h,0E1h,041h,0E1h,071h,0E4h,0E4h	;077
	db	001h,001h,001h,001h,001h,001h,001h,001h	;078
	db	0E4h,0E4h,0E4h,0E4h,0E4h,0E4h,0E4h,0E4h	;079
	db	001h,001h,001h,001h,001h,001h,001h,001h	;080
	db	0E4h,0E4h,0E4h,0E4h,0E4h,0E4h,0E4h,0E4h	;081
	db	001h,001h,001h,001h,001h,001h,001h,001h	;082
	db	0E4h,0E4h,0E4h,0E1h,0E1h,0E1h,0E1h,0E1h	;083
	db	001h,001h,001h,001h,001h,001h,001h,001h	;084
	db	0E5h,0E5h,075h,0E5h,0E5h,0E4h,0E4h,0E4h	;085
	db	001h,001h,001h,001h,001h,001h,001h,001h	;086
	db	0E1h,0E1h,0E4h,0E4h,075h,0E5h,074h,0E5h	;087
	db	001h,001h,001h,001h,001h,001h,001h,001h	;088
	db	0E4h,0E4h,0E4h,0E4h,0E4h,074h,074h,071h	;089
	db	001h,001h,001h,001h,001h,001h,001h,001h	;090
	db	071h,074h,074h,0E4h,0E4h,0E4h,0E4h,0E4h	;091
	db	001h,001h,001h,001h,001h,001h,001h,001h	;092
	db	075h,0E4h,075h,0E5h,0E4h,0E4h,0E1h,0E1h	;093
	db	001h,001h,001h,001h,001h,001h,001h,001h	;094
	db	0E5h,0E5h,0E5h,0E5h,074h,054h,054h,074h	;095
	db	001h,001h,001h,001h,001h,001h,001h,001h	;096
	db	0E1h,0E1h,0E4h,0E4h,0E5h,075h,0E4h,075h	;097
	db	001h,001h,001h,001h,001h,001h,001h,001h	;098
	db	0E4h,0E4h,0E4h,0E4h,0E4h,0E4h,074h,071h	;099
	db	001h,001h,001h,001h,001h,001h,001h,001h	;100
	db	071h,074h,074h,0E4h,0E4h,0E4h,0E4h,0E4h	;101
	db	001h,001h,001h,001h,001h,001h,001h,001h	;102
	db	0E5h,074h,0E5h,075h,0E4h,0E4h,0E1h,0E1h	;103
	db	001h,001h,001h,001h,001h,001h,001h,001h	;104
	db	075h,0E5h,0E5h,0E5h,0E5h,0E4h,0E4h,0E4h	;105
	db	001h,001h,001h,001h,001h,001h,001h,001h	;106
	db	0E1h,0E1h,0E1h,0E1h,0E1h,0E4h,0E4h,0E4h	;107
	db	001h,001h,001h,001h,001h,001h,001h,001h	;108
	db	0E4h,054h,054h,0E4h,0E4h,054h,0E4h,0E4h	;109
	db	001h,001h,001h,001h,001h,001h,001h,001h	;110
	db	074h,074h,0E4h,0E4h,0E4h,0E4h,0E4h,0E4h	;111
	db	001h,001h,001h,001h,001h,001h,001h,001h	;112
	db	0E4h,0E4h,071h,0E1h,041h,0E1h,051h,041h	;113
	db	001h,001h,001h,001h,001h,001h,001h,001h	;114
	db	0E4h,0E4h,0E4h,074h,0E5h,0E5h,0E5h,0E5h	;115
	db	001h,001h,001h,001h,001h,001h,001h,001h	;116
	db	071h,041h,041h,041h,041h,071h,051h,0E1h	;117
	db	001h,001h,001h,001h,001h,001h,001h,001h	;118
	db	051h,011h,051h,051h,0E1h,041h,041h,041h	;119
	db	001h,001h,001h,001h,001h,001h,001h,001h	;120
	db	075h,045h,045h,0E5h,0E5h,0E5h,0E4h,0E5h	;121
	db	011h,011h,011h,011h,011h,011h,011h,011h	;122
	db	0F1h,061h,0F1h,061h,0F1h,0E1h,071h,0E1h	;123

spritedata4:
sptdef4_16:						;64
	db	000h,003h,007h,007h,004h,035h,006h,037h    ; enemy1color1frame1
	db	014h,010h,011h,013h,003h,001h,000h,000h    ; enemy1color1frame1
	db	000h,0C0h,0E0h,0E0h,020h,0ACh,060h,0ECh    ; enemy1color1frame1
	db	028h,008h,088h,0C8h,0C0h,080h,000h,000h    ; enemy1color1frame1
sptdef4_17:						;68
	db	000h,000h,018h,038h,07Bh,04Ah,079h,048h    ; enemy1color2frame1
	db	06Bh,02Fh,02Eh,02Ch,01Ch,01Eh,00Fh,007h    ; enemy1color2frame1
	db	000h,000h,018h,01Ch,0DEh,052h,09Eh,012h    ; enemy1color2frame1
	db	0D6h,0F4h,074h,034h,038h,078h,0F0h,0E0h    ; enemy1color2frame1
sptdef4_18:						;72
	db	000h,001h,001h,001h,001h,00Dh,001h,00Dh    ; enemy1color1frame2
	db	004h,004h,004h,005h,001h,000h,000h,000h    ; enemy1color1frame2
	db	000h,080h,0C0h,0C0h,040h,0C0h,0D0h,040h    ; enemy1color1frame2
	db	030h,020h,0A0h,0E0h,0C0h,080h,000h,000h    ; enemy1color1frame2
sptdef4_19:						;76
	db	000h,000h,006h,00Eh,01Eh,012h,01Eh,012h    ; enemy1color2frame2
	db	01Bh,00Bh,00Bh,00Ah,006h,007h,003h,001h    ; enemy1color2frame2
	db	000h,000h,020h,020h,0B0h,030h,020h,0B0h    ; enemy1color2frame2
	db	0C0h,0C0h,040h,000h,040h,040h,0C0h,080h    ; enemy1color2frame2
sptdef4_20:						;80
	db	000h,000h,000h,004h,002h,002h,003h,002h    ; enemy1color1frame3
	db	003h,002h,002h,002h,002h,002h,002h,000h    ; enemy1color1frame3
	db	000h,000h,000h,040h,0A0h,0A0h,0A0h,0A0h    ; enemy1color1frame3
	db	0A0h,0A0h,0A0h,080h,080h,080h,080h,000h    ; enemy1color1frame3
sptdef4_21:						;84
	db	000h,001h,007h,003h,00Dh,00Dh,00Ch,00Dh    ; enemy1color2frame3
	db	00Ch,005h,005h,005h,001h,001h,001h,001h    ; enemy1color2frame3
	db	000h,080h,0E0h,0B0h,058h,058h,058h,058h    ; enemy1color2frame3
	db	058h,050h,050h,070h,060h,060h,040h,080h    ; enemy1color2frame3
sptdef4_22:						;88
	db	000h,000h,000h,010h,02Ah,02Ah,029h,02Bh    ; enemy1color1frame4
	db	029h,029h,029h,009h,008h,009h,009h,001h    ; enemy1color1frame4
	db	000h,000h,000h,008h,054h,054h,094h,0D4h    ; enemy1color1frame4
	db	094h,094h,094h,090h,010h,090h,090h,080h    ; enemy1color1frame4
sptdef4_23:						;92
	db	000h,003h,01Fh,02Fh,055h,055h,056h,054h    ; enemy1color2frame4
	db	057h,017h,017h,037h,017h,017h,007h,007h    ; enemy1color2frame4
	db	000h,0C0h,0F8h,0F4h,0AAh,0AAh,06Ah,02Ah    ; enemy1color2frame4
	db	0EAh,0E8h,0E8h,0ECh,0E8h,0E8h,0E0h,0E0h    ; enemy1color2frame4
sptdef4_24:						;96
	db	000h,000h,000h,002h,005h,005h,005h,005h    ; enemy1color1frame5
	db	005h,005h,005h,001h,001h,001h,001h,000h    ; enemy1color1frame5
	db	000h,000h,000h,020h,040h,040h,0C0h,040h    ; enemy1color1frame5
	db	0C0h,040h,040h,040h,040h,040h,040h,000h    ; enemy1color1frame5
sptdef4_25:						;100
	db	000h,001h,007h,00Dh,01Ah,01Ah,01Ah,01Ah    ; enemy1color2frame5
	db	01Ah,00Ah,00Ah,00Eh,006h,006h,002h,001h    ; enemy1color2frame5
	db	000h,080h,0E0h,0C0h,0B0h,0B0h,030h,0B0h    ; enemy1color2frame5
	db	030h,0A0h,0A0h,0A0h,080h,080h,080h,080h    ; enemy1color2frame5
sptdef4_26:						;104
	db	000h,001h,003h,003h,002h,003h,00Bh,002h    ; enemy1color1frame6
	db	00Ch,004h,005h,007h,003h,001h,000h,000h    ; enemy1color1frame6
	db	000h,080h,080h,080h,080h,0B0h,080h,0B0h    ; enemy1color1frame6
	db	020h,020h,020h,0A0h,080h,000h,000h,000h    ; enemy1color1frame6
sptdef4_27:						;108
	db	000h,000h,004h,004h,00Dh,00Ch,004h,00Dh    ; enemy1color2frame6
	db	003h,003h,002h,000h,002h,002h,003h,001h    ; enemy1color2frame6
	db	000h,000h,060h,070h,078h,048h,078h,048h    ; enemy1color2frame6
	db	0D8h,0D0h,0D0h,050h,060h,0E0h,0C0h,080h    ; enemy1color2frame6
sptdef4_28:						;112
	db	000h,001h,083h,0B7h,0B7h,0B7h,0BBh,09Dh    ; enemy2color1
	db	057h,013h,003h,00Eh,00Ch,006h,003h,001h    ; enemy2color1
	db	000h,080h,0C1h,0EDh,0EDh,0EDh,0DDh,0B9h    ; enemy2color1
	db	0EAh,0C8h,0C0h,070h,030h,060h,0C0h,080h    ; enemy2color1
sptdef4_29:						;116
	db	000h,040h,048h,048h,048h,048h,004h,002h    ; enemy2color2
	db	000h,000h,000h,001h,003h,001h,000h,000h    ; enemy2color2
	db	000h,002h,012h,012h,012h,012h,020h,040h    ; enemy2color2
	db	000h,000h,000h,080h,0C0h,080h,000h,000h    ; enemy2color2
sptdef4_30:						;120
	db	001h,002h,004h,047h,0C3h,0C6h,0CFh,0DFh    ; enemy3color1frame1
	db	0DFh,0FEh,0FEh,0DFh,0DFh,00Fh,007h,001h    ; enemy3color1frame1
	db	080h,040h,020h,0E2h,0C3h,063h,093h,0EBh    ; enemy3color1frame1
	db	0EBh,077h,077h,0FBh,0FBh,0F0h,0E0h,080h    ; enemy3color1frame1
sptdef4_31:						;124
	db	000h,001h,003h,000h,000h,001h,000h,000h    ; enemy3color2frame1
	db	000h,001h,001h,000h,000h,0C0h,040h,000h    ; enemy3color2frame1
	db	000h,080h,0C0h,000h,000h,080h,060h,010h    ; enemy3color2frame1
	db	010h,088h,088h,000h,000h,003h,002h,000h    ; enemy3color2frame1
sptdef4_32:						;128
	db	001h,002h,004h,047h,0C3h,0C7h,0CFh,0DFh    ; enemy3color1frame2
	db	0DEh,0FCh,0FCh,0DEh,0DFh,009h,006h,001h    ; enemy3color1frame2
	db	080h,040h,020h,0E2h,0C3h,0E3h,0F3h,0FBh    ; enemy3color1frame2
	db	07Bh,03Fh,03Fh,06Bh,0EBh,090h,060h,080h    ; enemy3color1frame2
sptdef4_33:						;132
	db	000h,001h,003h,000h,000h,000h,000h,000h    ; enemy3color2frame2
	db	001h,003h,003h,001h,000h,006h,001h,000h    ; enemy3color2frame2
	db	000h,080h,0C0h,000h,000h,000h,000h,000h    ; enemy3color2frame2
	db	080h,0C0h,0C0h,090h,010h,060h,080h,000h    ; enemy3color2frame2
sptdef4_34:						;136
	db	001h,002h,004h,047h,0C3h,0C7h,0C9h,0D7h    ; enemy3color1frame3
	db	0D7h,0EFh,0EEh,0D7h,0D7h,00Fh,007h,001h    ; enemy3color1frame3
	db	080h,040h,020h,0E2h,0C3h,0E3h,0F3h,0FBh    ; enemy3color1frame3
	db	0FBh,07Fh,0FFh,0FBh,0FBh,0F0h,0E0h,080h    ; enemy3color1frame3
sptdef4_35:						;140
	db	000h,001h,003h,000h,000h,000h,006h,008h    ; enemy3color2frame3
	db	008h,010h,011h,008h,008h,0C0h,080h,000h    ; enemy3color2frame3
	db	000h,080h,0C0h,000h,000h,000h,000h,000h    ; enemy3color2frame3
	db	000h,080h,000h,000h,000h,003h,001h,000h    ; enemy3color2frame3
sptdef4_36:						;144
	db	001h,003h,003h,007h,007h,00Fh,00Fh,00Fh    ; enemy4color1frame1
	db	00Fh,00Fh,00Dh,004h,004h,002h,003h,001h    ; enemy4color1frame1
	db	080h,0C0h,0C0h,0E0h,0E0h,0F0h,0F0h,0F0h    ; enemy4color1frame1
	db	0F0h,0F0h,0B0h,020h,020h,040h,0C0h,080h    ; enemy4color1frame1
sptdef4_37:						;148
	db	020h,070h,070h,070h,070h,070h,070h,020h    ; enemy4color2frame1
	db	000h,000h,002h,003h,003h,001h,000h,000h    ; enemy4color2frame1
	db	004h,00Eh,00Eh,00Eh,00Eh,00Eh,00Eh,004h    ; enemy4color2frame1
	db	000h,000h,040h,0C0h,0C0h,080h,000h,000h    ; enemy4color2frame1
sptdef4_38:						;152
	db	001h,003h,001h,001h,001h,001h,001h,00Bh    ; enemy4color1frame2
	db	00Fh,00Fh,00Dh,004h,004h,002h,003h,001h    ; enemy4color1frame2
	db	080h,0C0h,0C0h,0E0h,0E0h,0F0h,0F0h,0F0h    ; enemy4color1frame2
	db	0F0h,0F0h,0B0h,020h,020h,040h,0C0h,080h    ; enemy4color1frame2
sptdef4_39:						;156
	db	004h,00Eh,00Eh,00Eh,00Eh,00Eh,00Eh,004h    ; enemy4color2frame2
	db	000h,000h,002h,003h,003h,001h,000h,000h    ; enemy4color2frame2
	db	020h,030h,030h,010h,010h,000h,000h,000h    ; enemy4color2frame2
	db	000h,000h,040h,0C0h,0C0h,080h,000h,000h    ; enemy4color2frame2
sptdef4_40:						;160
	db	001h,003h,003h,007h,007h,00Fh,00Fh,00Fh    ; enemy4color1frame3
	db	00Fh,00Fh,00Dh,004h,004h,002h,003h,001h    ; enemy4color1frame3
	db	080h,0C0h,080h,080h,080h,080h,080h,0D0h    ; enemy4color1frame3
	db	0F0h,0F0h,0B0h,020h,020h,040h,0C0h,080h    ; enemy4color1frame3
sptdef4_41:						;164
	db	004h,00Ch,00Ch,008h,008h,000h,000h,000h    ; enemy4color2frame3
	db	000h,000h,002h,003h,003h,001h,000h,000h    ; enemy4color2frame3
	db	020h,070h,070h,070h,070h,070h,070h,020h    ; enemy4color2frame3
	db	000h,000h,040h,0C0h,0C0h,080h,000h,000h    ; enemy4color2frame3
sptdef4_42:						;168
	db	001h,002h,004h,004h,002h,031h,048h,084h    ; enemy5color1frame1
	db	084h,048h,031h,002h,004h,004h,002h,001h    ; enemy5color1frame1
	db	080h,040h,020h,020h,040h,08Ch,012h,021h    ; enemy5color1frame1
	db	021h,012h,08Ch,040h,020h,020h,040h,080h    ; enemy5color1frame1
sptdef4_43:						;172
	db	000h,001h,003h,003h,001h,000h,030h,078h    ; enemy5color2frame1
	db	078h,030h,000h,001h,003h,003h,001h,000h    ; enemy5color2frame1
	db	000h,080h,0C0h,0C0h,080h,000h,00Ch,01Eh    ; enemy5color2frame1
	db	01Eh,00Ch,000h,080h,0C0h,0C0h,080h,000h    ; enemy5color2frame1
sptdef4_44:						;176
	db	000h,001h,002h,004h,004h,01Ah,025h,042h    ; enemy5color1frame2
	db	042h,025h,01Ah,004h,004h,002h,001h,000h    ; enemy5color1frame2
	db	000h,080h,040h,020h,020h,058h,0A4h,042h    ; enemy5color1frame2
	db	042h,0A4h,058h,020h,020h,040h,080h,000h    ; enemy5color1frame2
sptdef4_45:						;180
	db	000h,000h,001h,003h,003h,001h,018h,03Ch    ; enemy5color2frame2
	db	03Ch,018h,001h,003h,003h,001h,000h,000h    ; enemy5color2frame2
	db	000h,000h,080h,0C0h,0C0h,080h,018h,03Ch    ; enemy5color2frame2
	db	03Ch,018h,080h,0C0h,0C0h,080h,000h,000h    ; enemy5color2frame2
sptdef4_46:						;184
	db	000h,000h,001h,002h,004h,00Ch,012h,021h    ; enemy5color1frame3
	db	021h,012h,00Ch,004h,002h,001h,000h,000h    ; enemy5color1frame3
	db	000h,000h,080h,040h,020h,030h,048h,084h    ; enemy5color1frame3
	db	084h,048h,030h,020h,040h,080h,000h,000h    ; enemy5color1frame3
sptdef4_47:						;188
	db	000h,000h,000h,001h,003h,003h,00Dh,01Eh    ; enemy5color2frame3
	db	01Eh,00Dh,003h,003h,001h,000h,000h,000h    ; enemy5color2frame3
	db	000h,000h,000h,080h,0C0h,0C0h,0B0h,078h    ; enemy5color2frame3
	db	078h,0B0h,0C0h,0C0h,080h,000h,000h,000h    ; enemy5color2frame3
sptdef4_48:						;192
	db	000h,001h,002h,004h,004h,01Ah,025h,042h    ; enemy5color1frame4
	db	042h,025h,01Ah,004h,004h,002h,001h,000h    ; enemy5color1frame4
	db	000h,080h,040h,020h,020h,058h,0A4h,042h    ; enemy5color1frame4
	db	042h,0A4h,058h,020h,020h,040h,080h,000h    ; enemy5color1frame4
sptdef4_49:						;196
	db	000h,000h,001h,003h,003h,001h,018h,03Ch    ; enemy5color2frame4
	db	03Ch,018h,001h,003h,003h,001h,000h,000h    ; enemy5color2frame4
	db	000h,000h,080h,0C0h,0C0h,080h,018h,03Ch    ; enemy5color2frame4
	db	03Ch,018h,080h,0C0h,0C0h,080h,000h,000h    ; enemy5color2frame4
sptdef4_50:						;200
	db	000h,000h,040h,080h,0CEh,0FFh,07Fh,07Fh    ; enemy6color1frame1
	db	0FFh,0BFh,0B5h,0E4h,0C2h,083h,081h,040h    ; enemy6color1frame1
	db	000h,000h,002h,001h,073h,0FFh,0FEh,0FEh    ; enemy6color1frame1
	db	0FFh,0FDh,0ADh,027h,043h,0C1h,081h,002h    ; enemy6color1frame1
sptdef4_51:						;204
	db	004h,010h,00Ch,00Ch,000h,000h,000h,000h    ; enemy6color2frame1
	db	000h,040h,042h,003h,001h,000h,000h,000h    ; enemy6color2frame1
	db	010h,008h,030h,030h,000h,000h,000h,000h    ; enemy6color2frame1
	db	000h,002h,042h,0C0h,080h,000h,000h,000h    ; enemy6color2frame1
sptdef4_52:						;208
	db	000h,000h,040h,080h,0CEh,0FFh,07Fh,07Fh    ; enemy6color1frame2
	db	0FFh,0BFh,0B5h,0E4h,0C2h,083h,081h,040h    ; enemy6color1frame2
	db	000h,000h,002h,001h,073h,0FFh,0FEh,0FEh    ; enemy6color1frame2
	db	0FFh,0FDh,0ADh,027h,043h,0C1h,081h,002h    ; enemy6color1frame2
sptdef4_53:						;212
	db	004h,002h,00Ch,00Ch,000h,000h,000h,000h    ; enemy6color2frame2
	db	000h,040h,042h,003h,001h,000h,000h,000h    ; enemy6color2frame2
	db	010h,020h,030h,030h,000h,000h,000h,000h    ; enemy6color2frame2
	db	000h,002h,042h,0C0h,080h,000h,000h,000h    ; enemy6color2frame2
sptdef4_54:						;216
	db	000h,000h,040h,080h,0CEh,0FFh,07Fh,07Fh    ; enemy6color1frame3
	db	0FFh,0BFh,0B5h,0E4h,0C2h,083h,081h,040h    ; enemy6color1frame3
	db	000h,000h,002h,001h,073h,0FFh,0FEh,0FEh    ; enemy6color1frame3
	db	0FFh,0FDh,0ADh,027h,043h,0C1h,081h,002h    ; enemy6color1frame3
sptdef4_55:						;220
	db	004h,008h,00Ch,00Ch,000h,000h,000h,000h    ; enemy6color2frame3
	db	000h,040h,042h,003h,001h,000h,000h,000h    ; enemy6color2frame3
	db	048h,020h,030h,030h,000h,000h,000h,000h    ; enemy6color2frame3
	db	000h,002h,042h,0C0h,080h,000h,000h,000h    ; enemy6color2frame3
sptdef4_56:						;224
	db	000h,000h,00Dh,00Dh,02Dh,06Dh,06Dh,06Dh    ; enemy7color1
	db	04Eh,01Fh,01Bh,019h,00Ch,006h,003h,001h    ; enemy7color1
	db	000h,000h,0B0h,0B0h,0B4h,0B6h,0B6h,0B6h    ; enemy7color1
	db	072h,0F8h,0D8h,098h,030h,060h,0C0h,080h    ; enemy7color1
sptdef4_57:						;228
	db	000h,002h,002h,012h,012h,012h,012h,012h    ; enemy7color2
	db	001h,000h,004h,006h,003h,001h,000h,000h    ; enemy7color2
	db	000h,040h,040h,048h,048h,048h,048h,048h    ; enemy7color2
	db	080h,000h,020h,060h,0C0h,080h,000h,000h    ; enemy7color2
;sptdef1_58:						;232
	db	003h,00fh,01fh,003h,07bh,048h,04fh,074h		;power inc yl
	db	044h,057h,050h,01fh,03fh,01fh,00fh,003h		;power inc yl
	db	0c0h,0f0h,0f8h,0fch,0feh,008h,0aah,0a2h		;power inc yl
	db	0aah,094h,000h,0feh,0fch,0f8h,0f0h,0c0h		;power inc yl
	;030F1F037B484F744457501F3F1F0F03C0F0F8FCFE08AAA2AA9400FEFCF8F0C0
;sptdef1_59:						;236
	db	000h,000h,000h,0fch,084h,0b7h,0b0h,08bh		;power inc blk
	db	0bbh,0a8h,0afh,0e0h,000h,000h,000h,000h		;power inc blk
	db	000h,000h,000h,000h,000h,0f7h,055h,05dh		;power inc blk
	db	055h,06bh,0feh,000h,000h,000h,000h,000h		;power inc blk
	;000000FC84B7B08BBBA8AFE0000000000000000000F7555D556BFE0000000000
;sptdef1_60						;240
	db	000h,003h,00fh,01fh,03fh,03fh,07fh,07fh		;explosion frame1
	db	07fh,07fh,03fh,03fh,01fh,00fh,003h,000h		;explosion frame1
	db	000h,0c0h,0f0h,0f8h,0fch,0fch,0feh,0feh		;explosion frame1
	db	0feh,0feh,0fch,0fch,0f8h,0f0h,0c0h,000h		;explosion frame1
	;00030F1F3F3F7F7F7F7F3F3F1F0F030000C0F0F8FCFCFEFEFEFEFCFCF8F0C000
;sptdef1_61:						;244
	db	000h,003h,00fh,01fh,03fh,03fh,07fh,07fh		;explosion frame2
	db	07fh,07fh,03fh,03fh,01fh,00fh,003h,000h		;explosion frame2
	db	000h,0c0h,0f0h,0d8h,08ch,004h,08eh,0deh		;explosion frame2
	db	0feh,0feh,0fch,0fch,0f8h,0f0h,0c0h,000h		;explosion frame2
	;00030F1F3F3F7F7F7F7F3F3F1F0F030000C0F0D88C048EDEFEFEFCFCF8F0C000
;sptdef1_62:						;248
	db	000h,003h,00ch,018h,030h,030h,070h,070h		;explosion frame3
	db	070h,070h,038h,03ch,01eh,00fh,003h,000h		;explosion frame3
	db	000h,0c0h,030h,008h,000h,000h,002h,002h		;explosion frame3
	db	002h,002h,004h,004h,018h,0f0h,0c0h,000h		;explosion frame3
	;00030C18303070707070383C1E0F030000C03008000002020202040418F0C000
;sptdef1_63:						;252
	db	000h,000h,00ch,018h,030h,030h,070h,070h		;explosion frame4
	db	070h,070h,038h,03ch,01eh,00fh,003h,000h		;explosion frame4
	db	000h,000h,000h,000h,000h,000h,000h,000h		;explosion frame4
	db	000h,000h,000h,000h,018h,0f0h,0c0h,000h		;explosion frame4
	;00000C18303070707070383C1E0F030000000000000000000000000018F0C000
sprtend4:

mid_boss_sprites4:
midspt41:
	db	000h,000h,001h,001h,003h,03Fh,07Fh,0F7h    ; Color 7
	db	0F7h,0FBh,0FBh,0FFh,0FFh,0C7h,081h,000h    ; 
	db	003h,087h,0CFh,0DFh,0FFh,0FFh,0FFh,0F7h    ; 
	db	0FFh,0FFh,0F7h,0FFh,0FFh,0F7h,0FFh,03Fh    ; 
midspt42:
	db	041h,066h,06Fh,06Fh,06Dh,078h,070h,070h    ; Color 11
	db	070h,070h,070h,070h,030h,038h,05Ch,08Eh    ; 
	db	082h,066h,0F6h,0F6h,0B6h,01Eh,00Eh,00Eh    ; 
	db	00Eh,00Eh,00Eh,04Eh,04Ch,09Ch,03Ah,071h    ; 
midspt43:
	db	0C0h,0E1h,0F3h,0FBh,0FFh,0FFh,0FFh,0EFh    ; Color 7
	db	0FFh,0FFh,0EFh,0FFh,0FFh,0EFh,0FFh,0FCh    ; 
	db	000h,000h,080h,080h,0C0h,0FCh,0FEh,0EFh    ; 
	db	0EFh,0DFh,0DFh,0FFh,0FFh,0E3h,081h,000h    ; 
midspt44:
	db	082h,091h,090h,090h,092h,087h,08Fh,08Fh    ; Color 4
	db	08Fh,08Fh,08Fh,08Fh,0CFh,0C7h,0A3h,071h    ; 
	db	041h,089h,009h,009h,049h,0E1h,0F1h,0F1h    ; 
	db	0F1h,0F1h,0F1h,0B1h,0B3h,063h,0C5h,08Eh    ; 
midspt45:
	db	01Fh,01Fh,018h,01Fh,00Eh,007h,001h,000h    ; Color 7
	db	00Eh,01Bh,011h,01Bh,00Eh,000h,000h,000h    ; 
	db	0FFh,0F7h,017h,0F7h,01bh,0Fbh,09bh,0Fdh    ; 
	db	01dh,00dh,00Fh,007h,007h,003h,003h,001h    ; 
midspt46:
	db	000h,000h,000h,000h,000h,004h,011h,04Eh    ; Color 15  
	db	011h,0A4h,02Eh,0A4h,011h,04Eh,011h,004h    ;
	db	000h,008h,008h,008h,004h,004h,004h,042h    ;
	db	002h,0A2h,080h,0A0h,000h,040h,000h,000h    ;
midspt47:
	db	0FFh,0eFh,0e8h,0eFh,0d8h,0dFh,0d9h,0bFh    ; Color 7
	db	0b8h,0b0h,0F0h,0E0h,0E0h,0C0h,0C0h,080h    ;
	db	0F8h,0F8h,018h,0F8h,070h,0E0h,080h,000h    ;
	db	070h,0D8h,088h,0D8h,070h,000h,000h,000h    ;
midspt48:
	db	000h,010h,010h,010h,020h,020h,020h,042h    ; Color 15
	db	040h,045h,001h,005h,000h,002h,000h,000h    ; 
	db	000h,000h,000h,000h,000h,020h,088h,072h    ; 
	db	088h,025h,074h,025h,088h,072h,088h,020h    ; 


mboss_spt_end4:

eventlist_40:
	;row,ystart,xstart,shape,color,pattern
	db	12,1,200,232,10,5
	db	1,200,236,4,5
	db	16,1,30,112,12,13
	db	1,30,116,15,13
	db	20,1,130,64,10,13
	db	1,130,68,6,13
	db	24,1,180,200,4,13
	db	1,180,204,9,13
	db	28,1,80,224,14,13
	db	1,80,228,4,13
	db	32,1,160,112,12,13
	db	1,160,116,15,13
	db	36,1,220,224,14,13
	db	1,220,228,4,13

	db	90,1,100,232,10,5
	db	1,100,236,4,5
	db	94,1,120,224,14,13
	db	1,120,228,6,13
	db	98,1,80,224,14,13
	db	1,80,228,12,13
	db	102,1,180,224,14,13
	db	1,180,228,13,13
	db	106,1,40,64,15,13
	db	1,40,68,5,13
	db	110,1,100,64,15,13
	db	1,100,68,2,13
	db	114,1,160,64,15,13
	db	1,160,68,14,13

	db	168,1,50,232,10,5	
	db	1,50,236,4,5
	db	172,1,80,200,4,8
	db	1,80,204,9,8
	db	176,1,40,200,4,8
	db	1,40,204,9,8
	db	180,1,80,200,4,8
	db	1,80,204,9,8
	db	184,1,40,200,4,8
	db	1,40,204,9,8
	db	188,1,100,200,4,8
	db	1,100,204,9,8
	db	192,1,20,200,4,8
	db	1,20,204,9,8

	db	246,1,20,232,10,5
	db	1,20,236,4,5
	db	250,1,200,168,4,1
	db	1,200,172,9,1
	db	254,1,216,168,4,1
	db	1,216,172,11,1
	db	12,1,223,168,4,1
	db	1,223,172,9,1
	db	16,1,200,168,4,1
	db	1,200,172,11,1
	db	30,1,180,168,4,1
	db	1,180,172,9,1
	db	34,1,200,168,4,1
	db	1,200,172,11,1

	db	70,1,150,232,10,5	
	db	1,150,236,4,5
	db	74,1,16,64,6,18
	db	1,16,68,10,18
	db	78,1,16,64,6,18
	db	1,16,68,4,18
	db	82,1,16,64,6,18
	db	1,16,68,12,18
	db	86,1,92,64,6,18
	db	1,92,68,13,18
	db	90,1,92,64,2,18
	db	1,92,68,15,18
	db	94,1,92,64,2,18
	db	1,92,68,4,18

	db	148,1,40,232,10,5	
	db	1,40,236,4,5
	db	152,191,18,120,4,14
	db	191,18,124,7,14
	db	156,191,200,120,4,14
	db	191,200,124,7,14
	db	160,191,18,120,14,14
	db	191,18,124,13,14
	db	164,191,200,120,14,14
	db	191,200,124,13,14
	db	168,191,18,120,14,14
	db	191,18,124,8,14
	db	172,191,200,120,14,14
	db	191,200,124,2,14

	db	226,1,200,232,10,5
	db	1,200,236,4,5
	db	230,1,100,144,13,2
	db	1,100,148,4,2
	db	234,1,216,168,4,4
	db	1,216,172,9,4
	db	238,1,100,144,13,2
	db	1,100,148,4,2
	db	242,1,216,168,4,4
	db	1,216,172,9,4
	db	246,1,100,144,13,2
	db	1,100,148,4,2
	db	250,1,216,168,4,4
	db	1,216,172,9,4

	db	48,1,80,232,10,5
	db	1,80,236,4,5
	db	52,1,80,144,15,2
	db	1,80,148,6,2
	db	56,1,80,144,9,2
	db	1,80,148,5,2
	db	60,1,100,144,15,2
	db	1,100,148,6,2
	db	64,191,200,120,15,3
	db	191,200,124,2,3
	db	68,191,200,120,15,3
	db	191,200,124,4,3
	db	72,191,200,120,15,3
	db	191,200,124,6,3

	db	126,1,160,232,10,5
	db	1,160,236,4,5
	db	130,1,40,144,9,2
	db	1,40,148,11,2
	db	134,191,18,120,15,3
	db	191,18,124,7,3
	db	138,1,40,144,9,2
	db	1,40,148,13,2
	db	142,191,18,120,15,3
	db	191,18,124,13,3
	db	146,1,40,144,2,2
	db	1,40,148,15,2
	db	150,191,18,120,2,3
	db	191,18,124,9,3

	db	204,1,30,232,10,5
	db	1,30,236,4,5
	db	208,1,100,168,4,1
	db	1,100,172,14,1
	db	212,1,100,144,7,2
	db	1,100,148,4,2
	db	216,1,100,168,4,1
	db	1,100,172,7,1
	db	220,1,100,168,4,1
	db	1,100,172,15,1
	db	224,1,100,144,7,2
	db	1,100,148,8,2
	db	228,1,100,144,9,2
	db	1,100,148,6,2

	db	26,1,100,232,10,5
	db	1,100,236,4,5
	db	30,1,100,64,4,18
	db	1,100,68,15,18
	db	34,1,100,64,6,18
	db	1,100,68,15,18
	db	38,1,100,64,7,18	
	db	1,100,68,15,18
	db	42,191,18,120,2,3
	db	191,18,124,15,3
	db	46,191,18,120,13,3
	db	191,18,124,15,3
	db	50,191,18,120,2,3
	db	191,18,124,15,3

	db	104,1,180,232,10,5
	db	1,180,236,4,5
	db	112,1,100,224,15,13
	db	1,100,228,2,13
	db	120,1,200,224,15,13
	db	1,200,228,10,13
	db	128,1,150,224,15,13
	db	1,150,228,6,13

	db	182,24,1,144,11,17
	db	24,1,148,4,17
	db	186,40,223,112,15,16
	db	40,223,116,14,16
	db	190,56,1,152,11,17
	db	56,1,156,13,17
	db	194,72,223,112,11,16
	db	72,223,116,6,16	
	db	198,24,1,160,13,17
	db	24,1,164,4,17
	db	202,40,223,112,8,16
	db	40,223,116,11,16
	db	206,56,1,144,13,17
	db	56,1,148,14,17

	db	4,1,100,232,10,5
	db	1,100,236,4,5
	db	8,1,180,168,6,1
	db	1,180,172,9,1
	db	12,1,60,200,4,2
	db	1,60,204,7,2
	db	16,1,180,168,6,1
	db	1,180,172,9,1
	db	20,1,60,200,4,2
	db	1,60,204,9,2
	db	24,1,200,168,6,1
	db	1,200,172,9,1
	db	28,1,100,200,4,2
	db	1,100,204,9,2

	db	82,1,80,200,4,6
	db	1,80,204,9,6
	db	86,1,175,200,4,6
	db	1,175,204,10,6
	db	90,1,112,200,4,6
	db	1,112,204,9,6
	db	94,1,80,200,4,6
	db	1,80,204,10,6
	db	112,1,175,200,4,6
	db	1,175,204,9,6
	db	116,1,112,200,4,6
	db	1,112,204,10,6
	db	120,1,80,200,4,6
	db	1,80,204,9,6

	db	200,1,72,224,6,13
	db	1,72,228,2,13
	db	204,1,112,224,6,13
	db	1,112,228,10,13
	db	208,1,200,224,7,13
	db	1,200,228,2,13
	db	212,1,80,224,7,13
	db	1,80,228,4,13
	db	216,1,120,232,10,5
	db	1,120,236,4,5
	db	220,1,175,224,7,13
	db	1,175,228,15,13
	db	224,1,60,224,7,13
	db	1,60,228,13,13

	db	10,1,40,64,8,13
	db	1,40,68,15,13
	db	14,1,175,64,10,13
	db	1,175,68,15,13
	db	18,1,112,64,12,13
	db	1,112,68,15,13
	db	22,1,72,64,15,13
	db	1,72,68,4,13
	db	24,1,112,64,15,13
	db	1,112,68,7,13

	db	62,1,100,232,10,5
	db	1,100,236,4,5
	db	66,1,195,168,8,1
	db	1,195,172,9,1
	db	70,1,60,144,13,8
	db	1,60,148,15,8
	db	74,1,195,168,12,1
	db	1,195,172,9,1
	db	78,1,60,144,13,8
	db	1,60,148,11,8
	db	82,1,195,168,13,1
	db	1,195,172,9,1

	db	136,1,200,232,10,5
	db	1,200,236,4,5
	db	140,1,72,64,15,13
	db	1,72,68,6,13
	db	144,1,112,64,15,13
	db	1,112,68,13,13
	db	148,1,200,64,15,13
	db	1,200,68,14,13
	db	152,1,80,64,15,13
	db	1,80,68,10,13
	db	156,1,190,64,15,13
	db	1,190,68,8,13
	db	160,1,130,64,15,13
	db	1,130,68,4,13

	db	200,1,80,232,10,5
	db	1,80,236,4,5
	db	204,1,100,200,4,2
	db	1,100,204,9,2
	db	208,1,40,200,4,2
	db	1,40,204,9,2
	db	212,1,100,168,15,1
	db	1,100,172,9,1
	db	216,191,18,120,6,3
	db	191,18,124,7,3
	db	220,191,18,120,6,3
	db	191,18,124,7,3
	db	224,191,18,120,6,3
	db	191,18,124,7,3

	db	22,1,100,232,10,5
	db	1,100,236,4,5
	db	26,1,60,200,4,8
	db	1,60,204,9,8
	db	30,1,60,200,13,2
	db	1,60,204,10,2
	db	34,1,60,200,4,8
	db	1,60,204,9,8
	db	38,1,60,200,13,2
	db	1,60,204,10,2
	db	42,1,60,200,4,8
	db	1,60,204,9,8
	db	46,1,60,200,13,2
	db	1,60,204,10,2

	db	100,1,40,200,4,6
	db	1,40,204,6,6
	db	104,1,175,64,3,13
	db	1,175,68,4,13
	db	108,1,92,200,13,6
	db	1,92,204,10,6
	db	112,1,80,64,3,13
	db	1,80,68,9,13
	db	116,1,235,200,4,6
	db	1,235,204,9,6
	db	120,1,112,64,6,13
	db	1,112,68,11,13
	db	124,1,80,200,13,6
	db	1,80,204,7,6

	db	182,1,180,168,4,4
	db	1,180,172,2,4
	db	186,1,180,168,4,4
	db	1,180,172,6,4
	db	190,1,180,168,4,4
	db	1,180,172,3,4
	db	194,191,18,120,12,3
	db	191,18,124,14,3
	db	198,191,18,120,4,3
	db	191,18,124,9,3
	db	202,191,18,120,4,3
	db	191,18,124,9,3
	db	206,191,18,120,12,3
	db	191,18,124,14,3

	db	6,1,160,232,10,5
	db	1,160,236,4,5
	db	10,1,175,168,4,1
	db	1,175,172,7,1
	db	14,1,80,144,4,8
	db	1,80,148,11,8
	db	18,1,175,168,4,1
	db	1,175,172,15,1
	db	22,1,80,144,4,8
	db	1,80,148,15,8
	db	26,1,175,168,6,1
	db	1,175,172,3,1
	db	30,1,80,144,4,8
	db	1,80,148,3,8

	db	120,1,70,64,6,13
	db	1,70,68,14,13
	db	124,1,160,64,7,13
	db	1,160,68,4,13
	db	128,1,50,64,7,13
	db	1,50,68,9,13
	db	132,1,180,64,7,13
	db	1,180,68,12,13
	db	136,1,30,64,7,13
	db	1,30,68,13,13
	db	140,1,200,64,7,13
	db	1,200,68,15,13

	db	255
eventlist_45:
	;row,ystart,xstart,shape,color,pattern
	db	16,1,175,64,6,13
	db	1,175,68,10,13
	db	20,1,92,200,4,6
	db	1,92,204,8,6
	db	24,1,80,64,6,13
	db	1,80,68,10,13
	db	28,1,235,200,4,6
	db	1,235,204,8,6
	db	32,1,112,64,6,13
	db	1,112,68,10,13
	db	36,1,80,200,4,6
	db	1,80,204,8,6

	db	90,1,180,168,6,4
	db	1,180,172,7,4
	db	94,1,180,168,6,4
	db	1,180,172,10,4
	db	98,1,180,168,6,4
	db	1,180,172,15,4
	db	102,191,200,120,15,3
	db	191,200,124,13,3
	db	106,191,200,120,15,3
	db	191,200,124,13,3
	db	110,191,200,120,15,3
	db	191,200,124,13,3
	db	114,191,200,120,15,3
	db	191,200,124,13,3


	db	168,1,160,232,10,5
	db	1,160,236,4,5
	db	172,1,175,168,7,1
	db	1,175,172,13,1
	db	176,1,80,144,4,8
	db	1,80,148,9,8
	db	180,1,175,168,7,1
	db	1,175,172,4,1
	db	184,1,80,144,4,8
	db	1,80,148,10,8
	db	188,1,175,168,7,1
	db	1,175,172,12,1
	db	192,1,80,144,4,8
	db	1,80,148,14,8

	db	246,1,40,232,10,5
	db	1,40,236,4,5
	db	250,1,70,224,9,13
	db	1,70,228,4,13
	db	254,1,160,224,9,13
	db	1,160,228,13,13
	db	12,1,50,224,9,13
	db	1,50,228,4,13
	db	16,1,180,224,9,13
	db	1,180,228,13,13
	db	20,1,30,224,9,13
	db	1,30,228,4,13
	db	24,1,200,224,9,13
	db	1,200,228,13,13

	db	70,1,150,232,10,5	
	db	1,150,236,4,5
	db	74,1,16,64,4,18
	db	1,16,68,10,18
	db	78,1,16,64,6,18
	db	1,16,68,10,18
	db	82,1,16,64,6,18
	db	1,16,68,10,18
	db	86,1,92,64,6,18
	db	1,92,68,10,18
	db	90,1,92,64,6,18
	db	1,92,68,10,18
	db	94,1,92,64,6,18
	db	1,92,68,10,18

	db	148,1,40,232,10,5	
	db	1,40,236,4,5
	db	152,191,18,120,14,14
	db	191,18,124,4,14
	db	156,191,200,120,14,14
	db	191,200,124,4,14
	db	160,191,18,136,14,14
	db	191,18,140,13,14
	db	164,191,200,136,14,14
	db	191,200,140,13,14
	db	168,191,18,128,14,14
	db	191,18,132,8,14
	db	172,191,200,128,14,14
	db	191,200,132,8,14

	db	226,1,200,232,10,5
	db	1,200,236,4,5
	db	230,191,200,168,7,3
	db	191,200,172,13,3
	db	234,191,18,168,7,3
	db	191,18,172,14,3
	db	238,191,200,168,8,3
	db	191,200,172,13,3
	db	242,191,18,168,9,3
	db	191,18,172,3,3
	db	246,191,200,168,8,3
	db	191,200,172,6,3
	db	250,191,18,168,9,3
	db	191,18,172,7,3

	db	48,1,80,232,10,5
	db	1,80,236,4,5
	db	52,1,80,144,9,2
	db	1,80,148,11,2
	db	56,1,80,144,9,2
	db	1,80,148,11,2
	db	60,1,100,144,9,2
	db	1,100,148,11,2
	db	64,191,200,120,4,3
	db	191,200,124,7,3
	db	68,191,200,120,4,3
	db	191,200,124,7,3
	db	72,191,200,120,4,3
	db	191,200,124,7,3

	db	126,1,160,232,10,5
	db	1,160,236,4,5
	db	130,1,40,144,9,2
	db	1,40,148,4,2
	db	134,1,40,144,9,2
	db	1,40,148,4,2
	db	138,1,40,144,9,2
	db	1,40,148,4,2
	db	142,1,40,144,9,2
	db	1,40,148,4,2
	db	146,1,40,144,9,2
	db	1,40,148,4,2
	db	150,1,40,144,9,2
	db	1,40,148,4,2

	db	204,1,30,232,10,5
	db	1,30,236,4,5
	db	208,1,100,168,6,1
	db	1,100,172,11,1
	db	212,1,100,144,5,2
	db	1,100,148,14,2
	db	216,1,100,168,6,1
	db	1,100,172,11,1
	db	220,1,100,168,6,1
	db	1,100,172,11,1
	db	224,1,100,144,5,2
	db	1,100,148,14,2
	db	228,1,100,144,5,2
	db	1,100,148,14,2

	db	26,1,100,232,10,5
	db	1,100,236,4,5
	db	30,1,100,64,7,18
	db	1,100,68,5,18
	db	34,1,100,64,7,18
	db	1,100,68,5,18
	db	38,1,100,64,7,18	
	db	1,100,68,5,18
	db	42,191,200,120,13,3
	db	191,200,124,3,3
	db	46,191,200,120,13,3
	db	191,200,124,3,3
	db	50,191,200,120,13,3
	db	191,200,124,3,3

	db	104,1,180,232,10,5
	db	1,180,236,4,5
	db	108,1,60,64,6,18
	db	1,60,68,10,18
	db	112,1,60,64,6,18
	db	1,60,68,10,18
	db	116,1,60,64,6,18
	db	1,60,68,10,18
	db	120,1,60,64,6,18
	db	1,60,68,10,18
	db	124,1,60,64,6,18
	db	1,60,68,10,18
	db	128,1,60,64,6,18
	db	1,60,68,10,18

	db	186,32,223,112,10,16
	db	32,223,116,12,16
	db	194,48,223,112,10,16
	db	48,223,116,12,16
	db	202,64,223,112,10,16
	db	64,223,116,12,16

	db	4,1,100,232,10,5
	db	1,100,236,4,5
	db	8,1,180,168,6,1
	db	1,180,172,9,1
	db	12,1,60,200,4,2
	db	1,60,204,7,2
	db	16,1,180,168,6,1
	db	1,180,172,9,1
	db	20,1,60,200,4,2
	db	1,60,204,7,2
	db	24,1,200,168,6,1
	db	1,200,172,9,1
	db	28,1,100,200,4,2
	db	1,100,204,7,2

	db	82,32,1,112,14,17
	db	32,1,116,6,17
	db	86,1,175,200,2,6
	db	1,175,204,6,6
	db	90,52,1,112,14,17
	db	52,1,116,6,17
	db	94,1,80,200,2,6
	db	1,80,204,6,6
	db	112,32,1,112,14,17
	db	32,1,116,6,17
	db	116,1,112,200,2,6
	db	1,112,204,6,6
	db	120,52,1,112,14,17
	db	52,1,116,6,17

	db	200,1,72,224,6,13
	db	1,72,228,10,13
	db	204,1,112,224,6,13
	db	1,112,228,10,13
	db	208,1,200,224,5,13
	db	1,200,228,14,13
	db	212,1,80,224,5,13
	db	1,80,228,14,13
	db	216,1,120,232,10,5
	db	1,120,236,4,5
	db	220,1,175,224,6,13
	db	1,175,228,10,13
	db	224,1,60,224,6,13
	db	1,60,228,10,13

	db	10,1,40,64,7,13
	db	1,40,68,4,13
	db	14,1,175,64,11,13
	db	1,175,68,8,13
	db	18,1,112,64,7,13
	db	1,112,68,4,13
	db	22,1,72,64,11,13
	db	1,72,68,8,13
	db	24,1,112,64,7,13
	db	1,112,68,4,13

	db	62,1,200,232,10,5
	db	1,200,236,4,5
	db	66,1,72,224,13,13
	db	1,72,228,14,13
	db	70,1,112,224,13,13
	db	1,112,228,10,13
	db	74,1,200,224,13,13
	db	1,200,228,14,13
	db	78,1,80,224,13,13
	db	1,80,228,10,13
	db	82,1,190,224,13,13
	db	1,190,228,14,13
	db	86,1,130,224,13,13
	db	1,130,228,10,13


	db	140,1,100,232,10,5
	db	1,100,236,4,5
	db	144,1,195,168,4,1
	db	1,195,172,7,1
	db	148,1,60,144,4,8
	db	1,60,148,3,8
	db	152,1,195,168,4,1
	db	1,195,172,7,1
	db	156,1,60,144,4,8
	db	1,60,148,3,8
	db	160,1,195,168,4,1
	db	1,195,172,7,1

	db	200,1,80,232,10,5
	db	1,80,236,4,5
	db	204,1,100,144,13,2	
	db	1,100,148,3,2
	db	208,1,40,200,2,2
	db	1,40,204,6,2
	db	212,1,100,168,4,1
	db	1,100,172,10,1
	db	216,191,18,120,10,3
	db	191,18,124,13,3
	db	220,191,18,120,14,3
	db	191,18,124,13,3
	db	224,191,18,120,10,3
	db	191,18,124,13,3

	db	22,1,100,232,10,5
	db	1,100,236,4,5
	db	26,1,60,144,4,2
	db	1,60,148,7,2
	db	30,1,60,144,9,2
	db	1,60,148,7,2
	db	34,1,60,144,4,2
	db	1,60,148,7,2
	db	38,1,60,144,9,8
	db	1,60,148,7,8
	db	42,1,60,144,15,8
	db	1,60,148,8,8
	db	46,1,60,144,9,8
	db	1,60,148,7,8

	db	100,1,180,168,4,4
	db	1,180,172,7,4
	db	104,1,180,168,4,4
	db	1,180,172,7,4
	db	108,1,180,168,4,4
	db	1,180,172,7,4
	db	112,191,18,120,10,3
	db	191,18,124,9,3
	db	116,191,18,120,10,3
	db	191,18,124,9,3
	db	120,191,18,120,10,3
	db	191,18,124,9,3
	db	124,191,18,120,10,3
	db	191,18,124,9,3

	db	182,1,40,200,7,6
	db	1,40,204,6,6
	db	186,1,175,64,11,13
	db	1,175,68,4,13
	db	190,1,92,200,4,6
	db	1,92,204,7,6
	db	194,1,80,64,10,13
	db	1,80,68,9,13
	db	198,1,235,200,4,6
	db	1,235,204,7,6
	db	202,1,112,64,11,13
	db	1,112,68,4,13
	db	206,1,80,200,7,6
	db	1,80,204,6,6

	db	6,1,160,232,10,5
	db	1,160,236,4,5
	db	10,1,175,168,4,1
	db	1,175,172,7,1
	db	14,1,80,144,4,8
	db	1,80,148,10,8
	db	18,1,175,168,4,1
	db	1,175,172,7,1
	db	22,1,80,144,4,8
	db	1,80,148,10,8
	db	26,1,175,168,4,1
	db	1,175,172,7,1
	db	30,1,80,144,4,8
	db	1,80,148,10,8

	db	120,1,70,64,11,13
	db	1,70,68,4,13
	db	124,1,160,64,11,13
	db	1,160,68,4,13
	db	128,1,50,64,10,13
	db	1,50,68,9,13
	db	132,1,180,64,10,13
	db	1,180,68,9,13
	db	136,1,30,64,6,13
	db	1,30,68,11,13
	db	140,1,200,64,6,13
	db	1,200,68,11,13

	db	255
mid4_eventlist:
	db	8,15					;N
	db	16,104,64,7,16,120,68,11
	db	16,136,72,7,16,120,76,4
	db	32,112,80,7,32,112,84,15
	db	32,128,88,7,32,128,92,15

	db	20,13					;N
	db	16,104,64,7,16,120,68,11
	db	16,136,72,7,16,120,76,4
	db	32,112,80,7,32,112,84,15
	db	32,128,88,7,32,128,92,15

	db	29,11					;C
	db	88,104,64,7,88,120,68,11
	db	88,136,72,7,88,120,76,4
	db	104,112,80,7,104,112,84,15
	db	104,128,88,7,104,128,92,15

	db	38,17					;NW
	db	16,0,64,7,16,16,68,11
	db	16,32,72,7,16,16,76,4
	db	32,8,80,7,32,8,84,15
	db	32,24,88,7,32,24,92,15

	db	63,10					;NE
	db	16,208,64,7,16,224,68,11
	db	16,240,72,7,16,224,76,4
	db	32,216,80,7,32,216,84,15
	db	32,232,88,7,32,232,92,15

	db	74,16					;C
	db	88,112,64,7,88,128,68,11
	db	88,144,72,7,88,128,76,4
	db	104,120,80,7,104,120,84,15
	db	104,136,88,7,104,136,92,15

	db	87,17					;W
	db	88,0,64,7,88,16,68,11
	db	88,32,72,7,88,16,76,4
	db	104,8,80,7,104,8,84,15
	db	104,24,88,7,104,24,92,15

	db	112,16					;E
	db	88,208,64,7,88,224,68,11
	db	88,240,72,7,88,224,76,4
	db	104,216,80,7,104,216,84,15
	db	104,232,88,7,104,232,92,15

	db	125,13					;C
	db	88,104,64,7,88,120,68,11
	db	88,136,72,7,88,120,76,4
	db	104,112,80,7,104,112,84,15
	db	104,128,88,7,104,128,92,15

	db	134,11					;S
	db	159,104,64,7,159,120,68,11
	db	159,136,72,7,159,120,76,4
	db	175,112,80,7,175,112,84,15
	db	175,128,88,7,175,128,92,15

	db	143,17					;W
	db	88,0,64,7,88,16,68,11
	db	88,32,72,7,88,16,76,4
	db	104,8,80,7,104,8,84,15
	db	104,24,88,7,104,24,92,15

	db	168,10					;E
	db	88,208,64,7,88,224,68,11
	db	88,240,72,7,88,224,76,4
	db	104,216,80,7,104,216,84,15
	db	104,232,88,7,104,232,92,15

	db	179,14					;S
	db	159,104,64,7,159,120,68,11
	db	159,136,72,7,159,120,76,4
	db	175,112,80,7,175,112,84,15
	db	175,128,88,7,175,128,92,15

	db	197,16					;N
	db	16,104,64,7,16,120,68,11
	db	16,136,72,7,16,120,76,4
	db	32,112,80,7,32,112,84,15
	db	32,128,88,7,32,128,92,15

	db	209,17					;NW
	db	16,0,64,7,16,16,68,11
	db	16,32,72,7,16,16,76,4
	db	32,8,80,7,32,8,84,15
	db	32,24,88,7,32,24,92,15

	db	234,16					;NE
	db	16,208,64,7,16,224,68,11
	db	16,240,72,7,16,224,76,4
	db	32,216,80,7,32,216,84,15
	db	32,232,88,7,32,232,92,15

	db	246,15					;N
	db	16,104,64,7,16,120,68,11
	db	16,136,72,7,16,120,76,4
	db	32,112,80,7,32,112,84,15
	db	32,128,88,7,32,128,92,15

	db	255

elb4_entering:
	db	1,55
	
elb4_eventlist:
	db	11,15
	db	28,100,64,0,28,100,68,0
	db	28,140,64,0,28,140,68,0
	db	68,100,64,0,68,100,68,0
	db	68,140,64,0,68,140,68,0
	db	209,0,64,0,209,0,68,0
	db	209,0,64,0,209,0,68,0

	db	21,41
	db	28,100,64,0,28,100,68,0
	db	28,140,64,0,28,140,68,0
	db	68,100,64,0,68,100,68,0
	db	68,140,64,0,68,140,68,0
	db	209,0,64,0,209,0,68,0
	db	209,0,64,0,209,0,68,0

	db	33,15
	db	124,100,64,0,124,100,68,0
	db	124,140,64,0,124,140,68,0
	db	164,100,64,0,164,100,68,0
	db	164,140,64,0,164,140,68,0
	db	209,0,64,0,209,0,68,0
	db	209,0,64,0,209,0,68,0

	db	43,42
	db	124,100,64,0,124,100,68,0
	db	124,140,64,0,124,140,68,0
	db	164,100,64,0,164,100,68,0
	db	164,140,64,0,164,140,68,0
	db	209,0,64,0,209,0,68,0
	db	209,0,64,0,209,0,68,0

	db	55,15
	db	28,100,64,0,28,100,68,0
	db	28,140,64,0,28,140,68,0
	db	68,100,64,0,68,100,68,0
	db	68,140,64,0,68,140,68,0
	db	209,0,64,0,209,0,68,0
	db	209,0,64,0,209,0,68,0

	db	65,41
	db	28,100,64,0,28,100,68,0
	db	28,140,64,0,28,140,68,0
	db	68,100,64,0,68,100,68,0
	db	68,140,64,0,68,140,68,0
	db	209,0,64,0,209,0,68,0
	db	209,0,64,0,209,0,68,0

	db	71,50
	db	76,100,64,0,76,100,68,0
	db	76,140,64,0,76,140,68,0
	db	116,100,64,0,116,100,68,0
	db	116,140,64,0,116,140,68,0
	db	209,0,64,0,209,0,68,0
	db	209,0,64,0,209,0,68,0

	db	101,45
	db	209,100,64,0,209,100,68,0
	db	209,140,64,0,209,140,68,0
	db	209,100,64,0,209,100,68,0
	db	209,140,64,0,209,140,68,0
	db	209,0,64,0,209,0,68,0
	db	209,0,64,0,209,0,68,0

	db	107,50
	db	28,52,64,0,28,52,68,0
	db	28,188,64,0,28,188,68,0
	db	164,52,64,0,164,52,68,0
	db	164,188,64,0,164,188,68,0
	db	209,0,64,0,209,0,68,0
	db	209,0,64,0,209,0,68,0

	db	137,46
	db	28,56,64,0,28,56,68,0
	db	28,188,64,0,28,188,68,0
	db	164,56,64,0,164,56,68,0
	db	164,188,64,0,164,188,68,0
	db	209,0,64,0,209,0,68,0
	db	209,0,64,0,209,0,68,0

	db	143,47
	db	28,100,64,0,28,100,68,0
	db	76,188,64,0,76,188,68,0
	db	116,56,64,0,116,56,68,0
	db	164,140,64,0,164,140,68,0
	db	209,0,64,0,209,0,68,0
	db	209,0,64,0,209,0,68,0

	db	149,15
	db	76,100,64,0,76,100,68,0
	db	76,140,64,0,76,140,68,0
	db	116,100,64,0,116,100,68,0
	db	116,140,64,0,116,140,68,0
	db	209,0,64,0,209,0,68,0
	db	209,0,64,0,209,0,68,0

	db	159,42
	db	76,100,64,0,76,100,68,0
	db	76,140,64,0,76,140,68,0
	db	116,100,64,0,116,100,68,0
	db	116,140,64,0,116,140,68,0
	db	209,0,64,0,209,0,68,0
	db	209,0,64,0,209,0,68,0

	db	165,15
	db	28,100,64,0,28,100,68,0
	db	28,140,64,0,28,140,68,0
	db	68,100,64,0,68,100,68,0
	db	68,140,64,0,68,140,68,0
	db	209,0,64,0,209,0,68,0
	db	209,0,64,0,209,0,68,0

	db	195,15
	db	28,100,64,0,28,100,68,0
	db	28,140,64,0,28,140,68,0
	db	68,100,64,0,68,100,68,0
	db	68,140,64,0,68,140,68,0
	db	209,0,64,0,209,0,68,0
	db	209,0,64,0,209,0,68,0

	db	255
level4_music:
	include "Wormhole.asm"

fourth_spmove:					;fourth boss sprite settting routine
	ld	hl,actpat+36
	sub	41				;cp 41
	jp	z,down4
	dec	a				;cp 42
	jp	z,up4
	dec	a				;cp 43
	jp	z,left4
	dec	a				;cp 44
	jp	z,right4
	dec	a				;cp 45
	jp	z,inactive_diag
	dec	a				;cp 46
	jp	z,merging1
	dec	a				;cp 47
	jp	z,merging2
	ld	a,15
	jp	pattern_set
down4:						;as you can see, when the boss acts like
	ld	d,0				;a single entity we set the same pattern
;	ld	b,8				;to all the 8 hitpoints sprites
;	ld	c,1
	ld	bc,8*256 + 1			;MDL
	ld	a,13
	call	loop_sp
	jp	actpat_set
up4:
;	ld	b,8
;	ld	c,1
	ld	bc,8*256 + 1			;MDL
	ld	d,0
	ld	a,14
	call	loop_sp
	jp	actpat_set
left4:
;	ld	b,8
;	ld	c,1
	ld	bc,8*256 + 1			;MDL
	ld	d,0
	ld	a,16
	call	loop_sp
	jp	actpat_set
right4:
;	ld	b,8
;	ld	c,1
	ld	bc,8*256 + 1			;MDL
	ld	d,0
	ld	a,17
	call	loop_sp
	jp	actpat_set
inactive_diag:
;	ld	b,8
;	ld	c,0
	ld	bc,8*256			;MDL
;	ld	d,0
	ld	d,c
	ld	a,12
	call	loop_sp
	jp	actpat_set
merging1:					;when they move as they are 4 objects
;	ld	b,2				;we use 2 sprites for each mini boss
;	ld	c,1				;so the parts can move separately
	ld	bc,2*256 + 1			;MDL
	ld	d,0				;moement patterns are always the same though
	ld	a,17				;so you won't have problem to identify them
	call	loop_sp
;	ld	b,2
;	ld	c,1
	ld	bc,2*256 + 1			;MDL
	ld	d,0
	ld	a,13
	call	loop_sp
;	ld	b,2
;	ld	c,1
	ld	bc,2*256 + 1			;MDL
	ld	d,0
	ld	a,14
	call	loop_sp
;	ld	b,2
;	ld	c,1
	ld	bc,2*256 + 1			;MDL
	ld	d,0
	ld	a,16
	call	loop_sp
	jp	actpat_set
merging2:
;	ld	b,2
;	ld	c,1
	ld	bc,2*256 + 1			;MDL
	ld	d,0
	ld	a,13
	call	loop_sp
;	ld	b,2
;	ld	c,1
	ld	bc,2*256 + 1			;MDL
	ld	d,0
	ld	a,16
	call	loop_sp
;	ld	b,2
;	ld	c,1
	ld	bc,2*256 + 1			;MDL
	ld	d,0
	ld	a,17
	call	loop_sp
;	ld	b,2
;	ld	c,1
	ld	bc,2*256 + 1			;MDL
	ld	d,0
	ld	a,14
	call	loop_sp
	jp	actpat_set
fourth_boss:					;here too, things are always the same. simply
	ld	a,(bossframe)			;the four parts of the boss are always plotted
	inc	a				;individually, even when forming one entity
						;frames animation technique is the same used for
						;3rd boss
	cp	22
	call	z,frm_rst4
	ld	(bossframe),a
	ld	hl,actpat+37
	ld	a,(hl)
	sub	12				;cp 12
	jr	z,diag4
	dec	a				;cp 13
	jr	z,down_fourth_boss
	dec	a				;cp 14
	jr	z,up_fourth_boss
	dec	a				;cp 15
	jp	z,check_fire4
	dec	a				;cp 16
	jr	z,fourth_left
	dec	a				;cp 17
	jr	z,fourth_right
	ret
diag4:
	ld	bc,-33
	ld	hl,(boss_pos)
	add	hl,bc
	ld	(boss_pos),hl
;	ld	bc,-31
	ld	c,-31				;MDL
	ld	hl,(boss_pos2)
	add	hl,bc
	ld	(boss_pos2),hl
	ld	bc,31
	ld	hl,(boss_pos3)
	add	hl,bc
	ld	(boss_pos3),hl
	ld	hl,(boss_pos4)
	ld	c,33
	add	hl,bc
	ld	(boss_pos4),hl
	jp	separate
fourth_right:
	ld	hl,actpat+43
	ld	a,(hl)
	cp	13
	jp	z,merg1
	ld	hl,(boss_pos)
	inc	hl
	ld	(boss_pos),hl
	jp	fourth_nametable
fourth_left:
	ld	hl,(boss_pos)
	dec	hl
	ld	(boss_pos),hl
	jp	fourth_nametable
down_fourth_boss:
	ld	hl,actpat+43
	ld	a,(hl)
	cp	16
	jp	z,merg2
	ld	bc,32	
	ld	hl,(boss_pos)
	add	hl,bc
	ld	(boss_pos),hl
	jp	fourth_nametable
up_fourth_boss:
	ld	bc,-32	
	ld	hl,(boss_pos)
	add	hl,bc
	ld	(boss_pos),hl
fourth_nametable:
	ld	de,5
	ld	bc,155
	ld	hl,(boss_pos)
	add	hl,de
	ld	(boss_pos2),hl
	add	hl,bc
	ld	(boss_pos3),hl
	add	hl,de
	ld	(boss_pos4),hl
separate:
	ld	hl,chstart-699
	ld	(hl),0
	ld	de,chstart-698
	ld	bc,688	
	call	unroll
	ld	c,5				;when unroll ends b=0 so  ld c,5  is the same that ld bc,5 
						;(but shorter and faster)
	ldir
check_fire4:
	ld	a,(boss_fire)
	or	a
	call	nz,bossfire_level4
draw_boss4:
	ld	a,1				;boss part to draw
part_loop:
	cp	1
	jp	z,boss41
	cp	2
	jp	z,boss42
	cp	3
	jp	z,boss43
	ld	hl,(boss_pos4)
	jp	start_draw4
boss41:
	ld	hl,(boss_pos)
	jp	start_draw4
boss42:
	ld	hl,(boss_pos2)
	jp	start_draw4
boss43:
	ld	hl,(boss_pos3)
	jp	start_draw4
start_draw4:
	ld	de,chstart-704
	add	hl,de
	ex	de,hl
	ld	hl,boss4_row1
	ld	bc,5
	ldir
	ld	b,27
to_row2:
	inc	de
	djnz	to_row2
	call	set_frame4
	ld	bc,5
	ldir
	ld	b,27
to_row3:
	inc	de
	djnz	to_row3
	ld	hl,boss4_row3
	ld	bc,5
	ldir
	ld	b,27
to_row4:
	inc	de
	djnz	to_row4
	call	set_frame4
	ld	bc,5
	ldir
	ld	b,27
to_row5:
	inc	de
	djnz	to_row5
	ld	hl,boss4_row5
	ld	bc,5
	ldir
	inc	a
	cp	5
	jp	nz,part_loop
	ret

merg1:
	ld	hl,(boss_pos)
	inc	hl
	ld	(boss_pos),hl
	ld	hl,(boss_pos2)
	ld	bc,32
	add	hl,bc
	ld	(boss_pos2),hl
	ld	hl,(boss_pos3)
	ld	bc,-32
	add	hl,bc
	ld	(boss_pos3),hl
	ld	hl,(boss_pos4)
	dec	hl
	ld	(boss_pos4),hl
	jp	separate
merg2:
	ld	hl,(boss_pos)
	ld	bc,32
	add	hl,bc
	ld	(boss_pos),hl
	ld	hl,(boss_pos2)
	dec	hl
	ld	(boss_pos2),hl
	ld	hl,(boss_pos3)
	inc	hl
	ld	(boss_pos3),hl
	ld	hl,(boss_pos4)
	ld	bc,-32
	add	hl,bc
	ld	(boss_pos4),hl
	jp	separate

set_frame4:
	push	af
	ld	a,(bossframe)
	ld	b,a
	ld	a,-5
sel_frm4:
	add	a,5
	djnz	sel_frm4
boss4_frm1:
	ld	hl,boss4_frames
	add	a,l
	ld	l,a
	adc	a,h
	sub	l
	ld	h,a
	pop	af
	ret	

frm_rst4:
	ld	a,1
	ret



bossfire_level4:
	ld	hl,(boss_pos)
	ld	a,l
	cp	203
	jr	z,fire41
fire42:
	ld	de,chstart-568
	ld	b,14
draw_flare42_diag1:
	push	bc
	ld	hl,diag_fire_leftup_rightdown
	ldi
	ldi
	ldi
	ld	a,30
	add	a,e
	ld	e,a
	adc	a,d
	sub	e
	ld	d,a
	pop	bc
	djnz	draw_flare42_diag1	
	ld	de,chstart-555
	ld	b,14
draw_flare42_diag2:
	push	bc
	ld	hl,diag_fire_rightup_leftdown
	ldi
	ldi
	ldi
	ld	a,28
	add	a,e
	ld	e,a
	adc	a,d
	sub	e
	ld	d,a
	pop	bc
	djnz	draw_flare42_diag2
	ld	hl,chstart-369
	ld	(hl),35
;	ld	hl,chstart-336
	ld	l,(chstart - 336) & 0ffh	;MDL

	ld	(hl),35
;	ld	b,12
;	ld	c,30
	ld	bc,3102				;12*256+30
	ld	hl,chstart-537
draw_flare42_vert:
	ld	(hl),c
	ld	a,17
	add	a,l
	ld	l,a
	adc	a,h
	sub	l
	ld	h,a
	ld	(hl),c
	ld	a,15
	add	a,l
	ld	l,a
	adc	a,h
	sub	l
	ld	h,a
	djnz	draw_flare42_vert
	ld	hl,chstart-640
;	ld	c,33
;	ld	b,32
	ld	bc,8225				;32*256+33
draw_flare42_h1:
	ld	(hl),c
	inc	l
	djnz	draw_flare42_h1
	ld	hl,chstart-96
	ld	b,32
draw_flare42_h2:
	ld	(hl),c
	inc	l
	djnz	draw_flare42_h2
	jp	firesound4
fire41:
	ld	de,chstart-700
	ld	b,22
draw_flare41_diag1:
	push	bc
	ld	hl,diag_fire_leftup_rightdown
	ldi
	ldi
	ldi
	ld	a,30
	add	a,e
	ld	e,a
	adc	a,d
	sub	e
	ld	d,a
	pop	bc
	djnz	draw_flare41_diag1	
	ld	de,chstart-679
	ld	b,22
draw_flare41_diag2:
	push	bc
	ld	hl,diag_fire_rightup_leftdown
	ldi
	ldi
	ldi
	ld	a,28
	add	a,e
	ld	e,a
	adc	a,d
	sub	e
	ld	d,a
	pop	bc
	djnz	draw_flare41_diag2
;	ld	b,22
;	ld	c,30
	ld	bc,5662				;22*256+30
	ld	hl,chstart-691
draw_flare4_vert:
	ld	(hl),c
	ld	a,5
	add	a,l
	ld	l,a
	adc	a,h
	sub	l
	ld	h,a
	ld	(hl),c
	ld	a,27
	add	a,l
	ld	l,a
	adc	a,h
	sub	l
	ld	h,a
	djnz	draw_flare4_vert
	ld	hl,chstart-448
;	ld	c,33
;	ld	b,32
	ld	bc,8225				;32*256+33
draw_flare4_h1:
	ld	(hl),c
	inc	l
	djnz	draw_flare4_h1
	ld	hl,chstart-288
	ld	b,32
draw_flare4_h2:
	ld	(hl),c
	inc	l
	djnz	draw_flare4_h2
firesound4:
	ld	a,6
	ld	(sfx_nr),a
	ld	a,(boss_fire)
	dec	a
	ld	(boss_fire),a
	ret	nz
nofire_level4:
	xor	a
	ld	(boss_fire),a
	ld	hl,(boss_pos)
	ld	a,l
	cp	203
	jp	z,no_fire41
no_fire42:
	ld	hl,chstart-535
;	ld	b,12
;	ld	c,0
	ld	bc,3072				;12x256+0
canc_flare42_diag1:
	ld	(hl),c
	inc	l
	ld	(hl),c
	inc	l
	ld	(hl),c
	ld	a,31
	add	a,l
	ld	l,a
	adc	a,h
	sub	l
	ld	h,a
	djnz	canc_flare42_diag1
	ld	hl,chstart-524
	ld	b,12
canc_flare42_diag2:
	ld	(hl),c
	inc	l
	ld	(hl),c
	inc	l
	ld	(hl),c
	ld	a,29
	add	a,l
	ld	l,a
	adc	a,h
	sub	l
	ld	h,a
	djnz	canc_flare42_diag2
	ld	hl,chstart-566
	ld	(hl),c
;	ld	hl,chstart-555
	ld	l,(chstart - 555) & 0ffh	;MDL
	ld	(hl),c
	ld	hl,chstart-150
	ld	(hl),c
;	ld	hl,chstart-139
	ld	l,(chstart - 139) & 0ffh	;MDL
	ld	(hl),c
	ld	b,12
	ld	hl,chstart-537
canc_flare42_vert:
	ld	(hl),c
	ld	a,17
	add	a,l
	ld	l,a
	adc	a,h
	sub	l
	ld	h,a
	ld	(hl),c
	ld	a,15
	add	a,l
	ld	l,a
	adc	a,h
	sub	l
	ld	h,a
	djnz	canc_flare42_vert
	ld	hl,chstart-640
	ld	b,5
	call	canc_flare42
	ld	hl,chstart-630
	ld	b,12
	call	canc_flare42
	ld	hl,chstart-613
	ld	b,5
	call	canc_flare42
	ld	hl,chstart-96
	ld	b,5
	call	canc_flare42
	ld	hl,chstart-86
	ld	b,12
	call	canc_flare42
	ld	hl,chstart-69
	ld	b,5
canc_flare42:
	ld	(hl),c
	inc	l
	djnz	canc_flare42
	ret
no_fire41
	ld	hl,chstart-700
;	ld	b,22
;	ld	c,0	
	ld	bc,5632				;22*256+0
canc_flare41_diag1:
	ld	(hl),c
	inc	l
	ld	(hl),c
	inc	l
	ld	(hl),c
	ld	a,31
	add	a,l
	ld	l,a
	adc	a,h
	sub	l
	ld	h,a
	djnz	canc_flare41_diag1	
	ld	hl,chstart-679
	ld	b,22
canc_flare41_diag2:
	ld	(hl),c
	inc	l
	ld	(hl),c
	inc	l
	ld	(hl),c
	ld	a,29
	add	a,l
	ld	l,a
	adc	a,h
	sub	l
	ld	h,a
	djnz	canc_flare41_diag2
	ld	b,6
	ld	hl,chstart-691
	call	canc_flare4_vert
	ld	b,6
	ld	hl,chstart-179
	call	canc_flare4_vert

	ld	hl,chstart-448
	ld	b,32
canc_flare4_h1:
	ld	(hl),c
	inc	l
	djnz	canc_flare4_h1
	ld	hl,chstart-288
	ld	b,32
canc_flare4_h2:
	ld	(hl),c
	inc	l
	djnz	canc_flare4_h2
	ret
canc_flare4_vert:
	ld	(hl),c
	ld	a,5
	add	a,l
	ld	l,a
	adc	a,h
	sub	l
	ld	h,a
	ld	(hl),c
	ld	a,27
	add	a,l
	ld	l,a
	adc	a,h
	sub	l
	ld	h,a
	djnz	canc_flare4_vert
	ret

endboss_firecollision4:
	ld	hl,(boss_pos)
	ld	a,l
	cp	203
	jr	z,check_fire41
check_fire42:
	ld	hl,ramspttbl+1
	ld	a,(hl)
	cp	40
	jr	c,check_horiz42
	cp	64
	jp	c,i_am_dead
	cp	176
	jr	c,check_horiz42
	cp	200
	jp	c,i_am_dead

check_horiz42:
	ld	l,0
	ld	a,(hl)
	cp	40
	jp	c,i_am_dead
	cp	152
	jp	nc,i_am_dead
	ret
check_fire41:
	ld	hl,ramspttbl+1
	ld	a,(hl)
	cp	90
	jr	c,check_horiz41
	cp	112
	jp	c,i_am_dead
	cp	129
	jr	c,check_horiz41
	cp	152
	jp	c,i_am_dead
check_horiz41:
	ld	l,0
	ld	a,(hl)
	cp	65
	ret	c
	cp	88
	jp	c,i_am_dead
	cp	104
	ret	c
	cp	128
	jp	c,i_am_dead
	ret

ELB_data4:
boss4_row1:
	db	042,044,045,046,043
boss4_row3:
	db	058,099,100,101,059
boss4_row5:
	db	041,102,047,103,040
boss4_frames:
boss4_row2_1:
	db	062,064,091,091,060
boss4_row2_2:
	db	062,098,091,091,060
boss4_row2_3:
	db	062,104,091,091,060
boss4_row2_4:
	db	062,105,091,091,060
boss4_row2_5:
	db	062,091,064,091,060
boss4_row2_6:
	db	062,091,098,091,060
boss4_row2_7:
	db	062,091,104,091,060
boss4_row2_8:
	db	062,091,105,091,060
boss4_row2_9:
	db	062,091,091,064,060
boss4_row2_10:
	db	062,091,091,098,060
boss4_row2_11:
	db	062,091,091,104,060
boss4_row2_12:
	db	062,091,091,105,060
boss4_row2_13:
	db	062,091,091,104,060
boss4_row2_14:
	db	062,091,091,098,060
boss4_row2_15:
	db	062,091,091,064,060
boss4_row2_16:
	db	062,091,105,091,060
boss4_row2_17:
	db	062,091,104,091,060
boss4_row2_18:
	db	062,091,098,091,060
boss4_row2_19:
	db	062,091,064,091,060
boss4_row2_20:
	db	062,105,091,091,060
boss4_row2_21:
	db	062,104,091,091,060
boss4_row2_22:
	db	062,098,091,091,060

diag_fire_leftup_rightdown:
	db	34,35,36
diag_fire_rightup_leftdown:
	db	37,38,39

LEVEL4MAP:
	db	0
	db	255,0									;000
	db	255,0									;001
	db	255,0									;002
	db	255,0									;003
	db	255,0									;004
	db	255,0									;005
	db	252,0,0,0,29,254,0,252,0,23,252,0					;006
	db	255,0									;007
	db	253,0,252,0,0,0,0,2,254,0						;008
	db	254,0,0,0,1,253,0,252,0,0						;009
	db	255,0									;010
	db	253,0,0,0,23,254,0,2,252,0						;011
	db	255,0									;012
	db	255,0									;013
	db	255,0									;014
	db	255,0									;015
	db	253,0,1,253,0,252,0,0,1,253,0,0						;016
	db	255,0									;017
	db	253,0,0,6,11,16,21,254,0,0,0,0						;018
	db	253,0,0,5,10,15,20,0,0,0,29,253,0,252,0,0,0,0				;019
	db	253,0,0,4,9,14,19,0,25,254,0,0						;020
	db	0,0,2,252,0,0,0,3,8,13,18,0,24,253,0,252,0,0,23,0,0,0			;021
	db	255,0									;022
	db	255,0									;023
	db	254,0,0,0,1,253,0,0,27,0,0,0						;024
	db	252,0,0,0,0,26,254,0,253,0						;025
	db	255,0									;026
	db	255,0									;027
	db	255,0									;028
	db	253,0,252,0,0,0,23,252,0,0,0,28,253,0,0,0				;029
	db	0,0,23,254,0,253,0,252,0,0						;030
	db	255,0									;031
	db	253,0,1,0,0,0,29,254,0,0,0,0						;032
	db	0,28,254,0,252,0,0,1,252,0,0,26,0,0					;033
	db	255,0									;034
	db	255,0									;035
	db	254,0,252,0,0,0,23,253,0,0						;036
	db	255,0									;037
	db	252,0,0,0,2,254,0,253,0,0						;038
	db	0,0,253,0,26,254,0,28,252,0						;039
	db	252,0,23,254,0,253,0,0,0,0						;040
	db	254,0,0,1,253,0,252,0,0,0						;041
	db	255,0									;042
	db	254,0,253,0,0,0,23,252,0,0						;043
	db	0,0,0,29,254,0,253,0,252,0						;044
	db	254,0,253,0,252,0,0,2,0,0						;045
	db	254,0,252,0,0,28,253,0,0,0						;046
	db	253,0,1,252,0,0,0,23,254,0						;047
	db	0,0,0,23,254,0,252,0,1,252,0,0,0,0					;048
	db	255,0									;049
	db	252,0,2,254,0,253,0,0,0,0						;050
	db	255,0									;051
	db	253,0,252,0,0,0,1,254,0,0						;052
	db	254,0,253,0,0,0,23,252,0,0						;053
	db	253,0,0,23,254,0,252,0,0,0						;054
	db	255,0									;055
	db	254,0,252,0,0,0,0,23,253,0						;056
	db	255,0									;057
	db	252,0,0,0,0,27,254,0,253,0						;058
	db	255,0									;059
	db	255,0									;060
	db	252,0,0,1,253,0,252,0,0,0,28,253,0,0,0,0				;061
	db	253,0,252,0,0,0,0,2,253,0,1,0,0,0,29,0,0,0				;062
	db	252,0,0,23,254,0,253,0,0,0						;063
	db	255,0									;064
	db	0,23,254,0,252,0,0,0,23,252,0,0,0,0					;065
	db	252,0,0,0,29,254,0,253,0,0						;066
	db	255,0									;067
	db	254,0,26,253,0,0,0,0,2,0,0,0						;068
	db	253,0,252,0,0,0,0,1,254,0						;069
	db	255,0									;070
	db	253,0,2,254,0,252,0,0,0,0						;071
	db	254,0,253,0,252,0,23,0,0,0						;072
	db	255,0									;073
	db	255,0									;074
	db	253,0,0,0,0,23,253,0,0,28,253,0,0,0					;075
	db	255,0									;076
	db	255,0									;077
	db	252,0,0,27,254,0,252,0,0,1,252,0					;078
	db	253,0,0,1,253,0,0,0,0,2,253,0,0,0					;079
	db	255,0									;080
	db	255,0									;081
	db	254,0,28,253,0,252,0,0,0,0						;082
	db	255,0									;083
	db	254,0,253,0,0,0,0,29,252,0						;084
	db	0,0,26,253,0,0,23,254,0,0,0,0						;085
	db	254,0,0,1,253,0,252,0,0,0						;086
	db	255,0									;087
	db	255,0									;088
	db	252,0,0,0,26,254,0,253,0,0						;089
	db	254,0,2,253,0,27,252,0,0,0						;090
	db	254,0,253,0,252,0,0,23,0,0						;091
	db	0,0,23,254,0,253,0,252,0,0						;092
	db	254,0,23,253,0,252,0,0,0,0						;093
	db	252,0,0,0,0,1,254,0,0,0,0,1,252,0					;094
	db	255,0									;095
	db	254,0,253,0,252,0,28,0,0,0						;096
	db	254,0,253,0,23,252,0,0,0,0						;097
	db	0,0,27,253,0,252,0,0,0,29,253,0,252,0,0,0				;098
	db	254,0,253,0,252,0,0,2,0,0						;099
	db	0,0,0,2,253,0,23,254,0,0,0,0						;100
	db	253,0,252,0,0,0,1,254,0,0						;101
	db	255,0									;102
	db	255,0									;103
	db	254,0,253,0,252,0,0,0,29,0						;104
	db	255,0									;105
	db	255,0									;106
	db	252,0,0,29,254,0,253,0,0,0						;107
	db	254,0,2,253,0,23,252,0,0,0						;108
	db	254,0,253,0,1,252,0,0,0,0						;109
	db	255,0									;110
	db	255,0									;111
	db	255,0									;112
	db	252,0,0,0,0,1,254,0,253,0						;113
	db	254,0,0,1,23,253,0,252,0,0						;114
	db	255,0									;115
	db	252,0,0,26,23,254,0,253,0,0						;116
	db	255,0									;117
	db	254,0,253,0,252,0,26,0,0,0						;118
	db	255,0									;119
	db	255,0									;120
	db	255,0									;121
	db	252,0,0,0,0,1,252,0,0,0,26,23,254,0					;122
	db	254,0,253,0,0,1,252,0,0,0						;123
	db	255,0									;124
	db	255,0									;125
	db	0,0,0,2,23,254,0,253,0,0,0,0						;126
	db	255,0									;127
	db	253,0,252,0,0,0,0,1,253,0,0,0,0,2,252,0					;128
	db	255,0									;129
	db	255,0									;130
	db	255,0									;131
	db	255,0									;132
	db	253,0,0,1,253,0,0,0,1,253,0,0,0,0					;133
	db	255,0									;134
	db	0,0,0,2,254,0,253,0,252,0						;135
	db	254,0,253,0,0,0,0,2,252,0						;136
	db	255,0									;137
	db	253,0,252,0,0,2,254,0,0,0						;138
	db	255,0									;139
	db	255,0									;140
	db	254,0,252,0,0,0,1,253,0,0						;141
	db	253,0,0,0,1,254,0,252,0,0						;142
	db	255,0									;143
	db	255,0									;144
	db	252,0,0,29,254,0,253,0,0,0						;145
	db	254,0,253,0,0,0,0,29,252,0						;146
	db	254,0,0,0,2,253,0,252,0,0						;147
	db	255,0									;148
	db	254,0,252,0,0,0,0,1,253,0						;149
	db	253,0,0,0,1,254,0,252,0,0						;150
	db	255,0									;151
	db	255,0									;152
	db	255,0									;153
	db	252,0,29,254,0,252,0,0,0,29,252,0					;154
	db	255,0									;155
	db	255,0									;156
	db	255,0									;157
	db	252,0,0,0,2,253,0,0,1,252,0,0,1,253,0,0					;158
	db	255,0									;159
	db	254,0,0,0,29,253,0,252,0,0						;160
	db	254,0,253,0,252,0,2,0,0,0						;161
	db	255,0									;162
	db	255,0									;163
	db	255,0									;164
	db	253,0,0,0,1,254,0,252,0,0						;165
	db	254,0,0,0,0,1,253,0,252,0						;166
	db	255,0									;167
	db	255,0									;168
	db	253,0,252,0,29,2,254,0,0,0						;169
	db	255,0									;170
	db	255,0									;171
	db	255,0									;172
	db	254,0,253,0,0,0,0,29,252,0						;173
	db	252,0,0,0,0,1,254,0,0,0,0,1,252,0					;174
	db	254,0,0,1,29,253,0,252,0,0						;175
	db	255,0									;176
	db	255,0									;177
	db	255,0									;178
	db	255,0									;179
	db	255,0									;180
	db	253,0,0,0,2,254,0,252,0,0						;181
	db	253,0,0,0,29,254,0,252,0,0						;182
	db	252,0,0,0,1,254,0,0,0,1,252,0,0,0					;183
	db	254,0,0,0,1,253,0,252,0,0						;184
	db	255,0									;185
	db	254,0,252,0,0,0,29,2,253,0						;186
	db	255,0									;187
	db	255,0									;188
	db	255,0									;189
	db	255,0									;190
	db	252,0,1,254,0,252,0,0,0,1,252,0						;191
	db	255,0									;192
	db	253,0,252,0,0,0,0,1,29,253,0,252,0,0,0,0				;193
	db	255,0									;194
	db	255,0									;195
	db	253,0,252,0,0,0,0,2,29,253,0,252,0,0,0,0				;196
	db	255,0									;197
	db	255,0									;198
	db	255,0									;199
	db	252,0,0,0,0,1,253,0,252,0,0,0,0,1,253,0					;200
	db	254,0,253,0,29,252,0,0,0,0						;201
	db	255,0									;202
	db	255,0									;203
	db	255,0									;204
	db	253,0,252,0,0,1,254,0,0,0						;205
	db	255,0									;206
	db	254,0,253,0,0,0,0,1,252,0						;207
	db	253,0,252,0,0,0,2,254,0,0						;208
	db	253,0,252,0,0,0,0,29,254,0						;209
	db	253,0,1,254,0,252,0,0,0,0						;210
	db	254,0,0,0,1,253,0,252,0,0						;211
	db	255,0									;212
	db	255,0									;213
	db	255,0									;214
	db	252,0,0,0,1,254,0,0,0,0,1,252,0,0					;215
	db	254,0,253,0,2,29,252,0,0,0						;216
	db	255,0									;217
	db	254,0,0,0,1,253,0,252,0,0						;218
	db	255,0									;219
	db	255,0									;220
	db	253,0,1,254,0,252,0,0,0,0						;221
	db	255,0									;222
	db	254,0,253,0,0,0,1,252,0,0						;223
	db	255,0									;224
	db	253,0,0,0,2,254,0,252,0,0						;225
	db	255,0									;226
	db	254,0,0,0,1,252,0,0,0,29,2,252,0,0					;227
	db	255,0									;228
	db	0,0,0,1,254,0,253,0,252,0						;229
	db	253,0,0,0,0,9,14,19,24,0,254,0						;230
	db	253,0,0,0,9,23,22,17,18,24,254,0					;231
	db	253,0,0,3,8,22,20,22,25,23,26,253,0,252,0,0,0,0				;232
	db	253,0,0,4,7,8,13,18,23,15,27,253,0,252,0,0,0,0				;233
	db	253,0,0,3,7,7,12,17,23,7,26,253,0,252,0,0,0,0				;234
	db	253,0,0,4,15,15,5,10,20,20,27,253,0,252,0,0,0,0				;235
	db	253,0,0,0,6,25,28,10,22,21,254,0					;236
	db	253,0,0,0,0,6,11,16,21,0,254,0						;237
	db	253,0,0,0,29,254,0,252,0,0						;238
	db	254,0,253,0,0,29,252,0,0,0						;239
	db	255,0									;240
	db	255,0									;241
	db	255,0									;242
	db	255,0									;243
	db	255,0									;244
	db	255,0									;245
	db	255,0									;246
	db	255,0									;247
	db	255,0									;248
	db	255,0									;249
	db	255,0									;250
	db	255,0									;251
	db	255,0									;252
	db	255,0									;253
	db	255,0									;254
	db	255,0									;255
	db	255,0									;256
	db	255,0									;257
	db	255,0									;258
	db	255,0									;259
	db	255,0									;260
	db	255,0									;261
	db	255,0									;262
	db	255,0									;263
	db	255,0									;264
	db	255,0									;265
	db	255,0									;266
	db	255,0									;267
	db	255,0									;268
	db	255,0									;269
	db	255,0									;270
	db	255,0									;271
	db	255,0									;272
	db	255,0									;273
	db	251
boss4_t1:
	db	07Ch,03Eh,07Ch,03Eh,07Ch,03Eh,07Ch,03Eh	;030
	db	081h,000h,000h,000h,000h,000h,000h,081h	;031
	db	000h,000h,000h,000h,000h,000h,000h,000h	;032
	db	0FFh,055h,000h,000h,000h,000h,0AAh,0FFh	;033
	db	02Bh,005h,012h,001h,008h,002h,000h,001h	;034
	db	0E8h,0F4h,0FAh,07Dh,0BEh,05Fh,02Fh,017h	;035
	db	080h,000h,040h,010h,080h,048h,0A0h,0D4h	;036
	db	001h,000h,002h,008h,001h,012h,005h,02Bh	;037
	db	017h,02Fh,05Fh,0BEh,07Dh,0FAh,0F4h,0E8h	;038
	db	0D4h,0A0h,048h,080h,010h,040h,000h,080h	;039
	db	001h,001h,001h,003h,006h,00Fh,03Dh,0F6h	;040
	db	080h,080h,080h,0C0h,060h,0F0h,0BCh,06Fh	;041
	db	06Fh,0BCh,0F0h,060h,0C0h,080h,080h,080h	;042
	db	0F6h,03Dh,00Fh,006h,003h,001h,001h,001h	;043
	db	0FFh,010h,000h,010h,000h,010h,000h,010h	;044
	db	081h,07Eh,000h,000h,000h,000h,000h,000h	;045
	db	0FFh,008h,000h,008h,000h,008h,000h,008h	;046
	db	000h,000h,000h,000h,000h,000h,07Eh,081h	;047
boss4_t1_end:
boss4_t2:
	db	080h,040h,040h,040h,040h,040h,040h,080h	;058
	db	001h,002h,002h,002h,002h,002h,002h,001h	;059
	db	001h,001h,001h,081h,081h,001h,001h,001h	;060
	db	001h,001h,001h,081h,081h,001h,001h,001h	;061
	db	080h,080h,080h,081h,081h,080h,080h,080h	;062
	db	080h,080h,080h,081h,081h,080h,080h,080h	;063
	db	000h,000h,0FFh,03Fh,03Fh,0FFh,000h,000h	;064
boss4_t2_end:
boss4_t3:
	db	000h,000h,0FFh,0CFh,0CFh,0FFh,000h,000h	;098
	db	0C0h,00Ch,001h,001h,001h,001h,00Ch,0C0h	;099
	db	07Eh,07Eh,0FBh,0FDh,0FDh,0FBh,07Eh,07Eh	;100
	db	003h,030h,080h,080h,080h,080h,030h,003h	;101
	db	010h,000h,010h,000h,010h,000h,010h,000h	;102
	db	008h,000h,008h,000h,008h,000h,008h,000h	;103
	db	000h,000h,0FFh,0F3h,0F3h,0FFh,000h,000h	;104
	db	000h,000h,0FFh,0FCh,0FCh,0FFh,000h,000h	;105
	db	000h,000h,000h,000h,000h,000h,000h,000h	;106
	db	000h,000h,000h,000h,000h,000h,000h,000h	;107
	db	000h,000h,000h,000h,000h,000h,000h,000h	;108
	db	000h,000h,000h,000h,000h,000h,000h,000h	;109
	db	000h,000h,000h,000h,000h,000h,000h,000h	;110
	db	000h,000h,000h,000h,000h,000h,000h,000h	;111
	db	000h,000h,000h,000h,000h,000h,000h,000h	;112
	db	000h,000h,000h,000h,000h,000h,000h,000h	;113
	db	000h,000h,000h,000h,000h,000h,000h,000h	;114
	db	000h,000h,000h,000h,000h,000h,000h,000h	;115
	db	000h,000h,000h,000h,000h,000h,000h,000h	;116
	db	000h,000h,000h,000h,000h,000h,000h,000h	;117
	db	000h,000h,000h,000h,000h,000h,000h,000h	;118
	db	000h,000h,000h,000h,000h,000h,000h,000h	;119
	db	000h,000h,000h,000h,000h,000h,000h,000h	;120
	db	000h,000h,000h,000h,000h,000h,000h,000h	;121
	db	000h,000h,000h,000h,000h,000h,000h,000h	;122
	db	000h,000h,000h,000h,000h,000h,000h,000h	;123
	db	000h,000h,000h,000h,000h,000h,000h,000h	;124
	db	000h,000h,000h,000h,000h,000h,000h,000h	;125
	db	000h,000h,000h,000h,000h,000h,000h,000h	;126
	db	000h,000h,000h,000h,000h,000h,000h,000h	;127
boss4_t3_end:
	db	000h,000h,0FFh,0FFh,0FFh,0FFh,000h,000h	;091

boss4_c1:
	db	0F7h,0F7h,0F7h,0F7h,0F7h,0F7h,0F7h,0F7h	;030
	db	07Fh,07Fh,07Fh,07Fh,07Fh,07Fh,0DFh,07Fh	;031
	db	011h,011h,011h,011h,011h,011h,011h,011h	;032
	db	07Fh,07Fh,07Fh,07Fh,07Fh,07Fh,07Fh,07Fh	;033
	db	0F1h,0F1h,071h,071h,071h,071h,071h,071h	;034
	db	0F1h,0F1h,0F1h,0F1h,0F1h,0F1h,0F1h,0F1h	;035
	db	071h,071h,071h,071h,071h,071h,0F1h,0F1h	;036
	db	071h,071h,071h,071h,071h,071h,0F1h,0F1h	;037
	db	0F1h,0F1h,0F1h,0F1h,0F1h,0F1h,0F1h,0F1h	;038
	db	0F1h,0F1h,071h,071h,071h,071h,071h,071h	;039
	db	01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh	;040
	db	01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh	;041
	db	01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh	;042
	db	01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh	;043
	db	01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh	;044
	db	06Fh,06Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh	;045
	db	01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh	;046
	db	01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,06Eh,06Fh	;047
boss4_c1_end:
boss4_c2:		
	db	06Eh,06Eh,06Eh,06Eh,06Eh,06Eh,06Eh,06Eh	;058
	db	06Eh,06Eh,06Eh,06Eh,06Eh,06Eh,06Eh,06Eh	;059
	db	01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh	;060
	db	01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh	;061
	db	01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh	;062
	db	01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh	;063
	db	01Eh,01Eh,01Eh,048h,048h,01Eh,05Eh,0EEh	;064
boss4_c2_end:
boss4_c3:
	db	01Eh,01Eh,01Eh,048h,048h,01Eh,01Eh,01Eh	;098
	db	0DEh,0DEh,05Eh,05Eh,05Eh,05Eh,0DEh,0DEh	;099
	db	05Eh,0A5h,0ABh,0ABh,0ABh,0ABh,0A5h,05Eh	;100
	db	0DEh,0DEh,05Eh,05Eh,05Eh,05Eh,0DEh,0DEh	;101
	db	01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh	;102
	db	01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh,01Eh	;103
	db	01Eh,01Eh,01Eh,048h,048h,01Eh,01Eh,01Eh	;104
	db	01Eh,01Eh,01Eh,048h,048h,01Eh,01Eh,01Eh	;105
	db	011h,011h,011h,011h,011h,011h,011h,011h	;106
	db	011h,011h,011h,011h,011h,011h,011h,011h	;107
	db	011h,011h,011h,011h,011h,011h,011h,011h	;108
	db	011h,011h,011h,011h,011h,011h,011h,011h	;109
	db	011h,011h,011h,011h,011h,011h,011h,011h	;110
	db	011h,011h,011h,011h,011h,011h,011h,011h	;111
	db	011h,011h,011h,011h,011h,011h,011h,011h	;112
	db	011h,011h,011h,011h,011h,011h,011h,011h	;113
	db	011h,011h,011h,011h,011h,011h,011h,011h	;114
	db	011h,011h,011h,011h,011h,011h,011h,011h	;115
	db	011h,011h,011h,011h,011h,011h,011h,011h	;116
	db	011h,011h,011h,011h,011h,011h,011h,011h	;117
	db	011h,011h,011h,011h,011h,011h,011h,011h	;118
	db	011h,011h,011h,011h,011h,011h,011h,011h	;119
	db	011h,011h,011h,011h,011h,011h,011h,011h	;120
	db	011h,011h,011h,011h,011h,011h,011h,011h	;121
	db	011h,011h,011h,011h,011h,011h,011h,011h	;122
	db	011h,011h,011h,011h,011h,011h,011h,011h	;123
	db	011h,011h,011h,011h,011h,011h,011h,011h	;124
	db	011h,011h,011h,011h,011h,011h,011h,011h	;125
	db	011h,011h,011h,011h,011h,011h,011h,011h	;126
	db	011h,011h,011h,011h,011h,011h,011h,011h	;127
boss4_c3_end:	
	db	01Eh,01Eh,01Eh,048h,048h,01Eh,05Eh,0EEh	;091

lv4_data_end:
	DS	-$ & 3FFFh
	org	8000h
;level5 data
ramchr5_1:
	db	0CEh,096h,0AEh,0AEh,03Ch,0BCh,099h,0C1h    ;000
	db	0CEh,096h,0AEh,0AEh,03Ch,0BCh,099h,0C1h    ;001
	db	0CEh,096h,0AEh,0AEh,03Ch,0BCh,099h,0C1h    ;002
	db	0ECh,069h,0EAh,0EAh,0C3h,0CBh,099h,01Ch    ;003
	db	0ECh,069h,0EAh,0EAh,0C3h,0CBh,099h,01Ch    ;004
	db	0ECh,069h,0EAh,0EAh,0C3h,0CBh,099h,01Ch    ;005
	db	0ECh,069h,0EAh,0EAh,0C3h,0CBh,099h,01Ch    ;006
	db	0CEh,096h,0AEh,0AEh,03Ch,0BCh,099h,0C1h    ;007
	db	0CEh,096h,0AEh,0AEh,03Ch,0BCh,099h,0C1h    ;008
	db	0F8h,0F0h,0E8h,0E4h,0D0h,0F0h,0F8h,0FAh    ;009
	db	0F8h,0F0h,0E8h,0E4h,0D0h,0F0h,0F8h,0FAh    ;010
	db	0F8h,0F0h,0E8h,0E4h,0D0h,0F0h,0F8h,0FAh    ;011
	db	0F8h,0F0h,0E8h,0E4h,0D0h,0F0h,0F8h,0FAh    ;012
	db	0CEh,096h,0AEh,0AEh,03Ch,0BCh,099h,0C1h    ;013
	db	0F8h,0F0h,0E8h,0E4h,0D0h,0F0h,0F8h,0FAh    ;014
	db	0FEh,0F8h,0F2h,0E0h,0C0h,0E0h,0C0h,080h    ;015
	db	0CEh,096h,0AEh,0AEh,03Ch,0BCh,099h,0C1h    ;016
	db	05Fh,01Fh,00Fh,00Bh,027h,017h,00Fh,01Fh    ;017
	db	05Fh,01Fh,00Fh,00Bh,027h,017h,00Fh,01Fh    ;018
	db	05Fh,01Fh,00Fh,00Bh,027h,017h,00Fh,01Fh    ;019
	db	05Fh,01Fh,00Fh,00Bh,027h,017h,00Fh,01Fh    ;020
	db	0CEh,096h,0AEh,0AEh,03Ch,0BCh,099h,0C1h    ;021
	db	05Fh,01Fh,00Fh,00Bh,027h,017h,00Fh,01Fh    ;022
	db	05Fh,027h,00Fh,00Fh,027h,007h,00Bh,001h    ;023
	db	0CEh,096h,0AEh,0AEh,03Ch,0BCh,099h,0C1h    ;024
	db	0FEh,0F8h,0F2h,0E0h,0C0h,0E0h,0C0h,080h    ;025
	db	0FEh,0F8h,0F2h,0E0h,0C0h,0E0h,0C0h,080h    ;026
	db	000h,000h,000h,000h,000h,000h,000h,000h    ;027
	db	0CEh,096h,0AEh,0AEh,03Ch,0BCh,099h,0C1h    ;028
	db	05Fh,027h,00Fh,00Fh,027h,007h,00Bh,001h    ;029
	db	05Fh,027h,00Fh,00Fh,027h,007h,00Bh,001h    ;030
	db	000h,000h,000h,000h,000h,000h,000h,000h    ;031
	db	000h,000h,000h,000h,000h,000h,000h,000h    ;032
	db	0E0h,0F0h,0ECh,0E2h,0F0h,0F8h,0FAh,0FCh    ;033
	db	0E0h,0F0h,0ECh,0E2h,0F0h,0F8h,0FAh,0FCh    ;034
	db	0FEh,0F8h,0F2h,0E0h,0C0h,0E0h,0C0h,080h    ;035
	db	0E0h,0F0h,0ECh,0E2h,0F0h,0F8h,0FAh,0FCh    ;036
	db	0F8h,0F0h,0E8h,0E4h,0D0h,0F0h,0F8h,0FAh    ;037
	db	0E0h,0F0h,0ECh,0E2h,0F0h,0F8h,0FAh,0FCh    ;038
	db	0CEh,096h,0AEh,0AEh,03Ch,0BCh,099h,0C1h    ;039
	db	0F8h,0F0h,0E8h,0E4h,0D0h,0F0h,0F8h,0FAh    ;040
	db	0E0h,0F0h,0ECh,0E2h,0F0h,0F8h,0FAh,0FCh    ;041
	db	000h,000h,000h,000h,000h,000h,000h,000h    ;042
	db	000h,028h,044h,010h,044h,028h,000h,000h    ;043
	db	000h,028h,044h,010h,044h,028h,000h,000h    ;044
	db	000h,000h,000h,000h,000h,000h,000h,000h    ;045
	db	000h,000h,000h,000h,000h,008h,000h,000h    ;046
	db	000h,000h,000h,000h,000h,000h,000h,000h    ;047
	db	000h,000h,000h,000h,000h,000h,000h,000h    ;048
	db	001h,00Bh,007h,027h,00Fh,00Fh,027h,05Fh    ;049
	db	001h,00Bh,007h,027h,00Fh,00Fh,027h,05Fh    ;050
	db	05Fh,027h,00Fh,00Fh,027h,007h,00Bh,001h    ;051
	db	001h,00Bh,007h,027h,00Fh,00Fh,027h,05Fh    ;052
	db	05Fh,01Fh,00Fh,00Bh,027h,017h,00Fh,01Fh    ;053
	db	001h,00Bh,007h,027h,00Fh,00Fh,027h,05Fh    ;054
	db	0CEh,096h,0AEh,0AEh,03Ch,0BCh,099h,0C1h    ;055
	db	05Fh,01Fh,00Fh,00Bh,027h,017h,00Fh,01Fh    ;056
	db	001h,00Bh,007h,027h,00Fh,00Fh,027h,05Fh    ;057
	db	000h,000h,000h,000h,000h,000h,000h,000h    ;058
	db	000h,000h,000h,000h,000h,000h,000h,000h    ;059
ramclr5_1:
	db	086h,096h,096h,096h,096h,086h,086h,086h    ;000
	db	086h,096h,096h,096h,096h,086h,086h,086h    ;001
	db	086h,096h,096h,096h,096h,086h,086h,086h    ;002
	db	086h,096h,096h,096h,096h,086h,086h,086h    ;003
	db	086h,096h,096h,096h,096h,086h,086h,086h    ;004
	db	086h,096h,096h,096h,096h,086h,086h,086h    ;005
	db	086h,096h,096h,096h,096h,086h,086h,086h    ;006
	db	086h,096h,096h,096h,096h,086h,086h,086h    ;007
	db	086h,096h,096h,096h,096h,086h,086h,086h    ;008
	db	061h,081h,081h,091h,091h,081h,081h,061h    ;009
	db	061h,081h,081h,091h,091h,081h,081h,061h    ;010
	db	061h,081h,081h,091h,091h,081h,081h,061h    ;011
	db	061h,081h,081h,091h,091h,081h,081h,061h    ;012
	db	086h,096h,096h,096h,096h,086h,086h,086h    ;013
	db	061h,081h,081h,091h,091h,081h,081h,061h    ;014
	db	061h,081h,061h,081h,091h,081h,091h,061h    ;015
	db	086h,096h,096h,096h,096h,086h,086h,086h    ;016
	db	061h,081h,081h,091h,091h,081h,081h,061h    ;017
	db	061h,081h,081h,091h,091h,081h,081h,061h    ;018
	db	061h,081h,081h,091h,091h,081h,081h,061h    ;019
	db	061h,081h,081h,091h,091h,081h,081h,061h    ;020
	db	086h,096h,096h,096h,096h,086h,086h,086h    ;021
	db	061h,081h,081h,091h,091h,081h,081h,061h    ;022
	db	061h,081h,061h,081h,091h,081h,091h,061h    ;023
	db	086h,096h,096h,096h,096h,086h,086h,086h    ;024
	db	061h,081h,061h,081h,091h,081h,091h,061h    ;025
	db	061h,081h,061h,081h,091h,081h,091h,061h    ;026
	db	081h,081h,081h,081h,081h,081h,081h,081h    ;027
	db	086h,096h,096h,096h,096h,086h,086h,086h    ;028
	db	061h,081h,061h,081h,091h,081h,091h,061h    ;029
	db	061h,081h,061h,081h,091h,081h,091h,061h    ;030
	db	081h,081h,081h,081h,081h,081h,081h,081h    ;031
	db	081h,081h,081h,081h,081h,081h,081h,081h    ;032
	db	061h,091h,081h,091h,081h,061h,081h,061h    ;033
	db	061h,091h,081h,091h,081h,061h,081h,061h    ;034
	db	061h,081h,061h,081h,091h,081h,091h,061h    ;035
	db	061h,091h,081h,091h,081h,061h,081h,061h    ;036
	db	061h,081h,081h,091h,091h,081h,081h,061h    ;037
	db	061h,091h,081h,091h,081h,061h,081h,061h    ;038
	db	086h,096h,096h,096h,096h,086h,086h,086h    ;039
	db	061h,081h,081h,091h,091h,081h,081h,061h    ;040
	db	061h,091h,081h,091h,081h,061h,081h,061h    ;041
	db	081h,081h,081h,081h,081h,081h,081h,081h    ;042
	db	041h,0A1h,0B1h,0F1h,0B1h,0A1h,041h,041h    ;043
	db	041h,0B1h,0F1h,0A1h,0F1h,0B1h,041h,041h    ;044
	db	081h,081h,081h,081h,081h,081h,081h,081h    ;045
	db	011h,011h,011h,011h,011h,0e1h,011h,011h    ;046
	db	081h,081h,081h,081h,081h,081h,081h,081h    ;047
	db	081h,081h,081h,081h,081h,081h,081h,081h    ;048
	db	061h,091h,081h,091h,081h,061h,081h,061h    ;049
	db	061h,091h,081h,091h,081h,061h,081h,061h    ;050
	db	061h,081h,061h,081h,091h,081h,091h,061h    ;051
	db	061h,091h,081h,091h,081h,061h,081h,061h    ;052
	db	061h,081h,081h,091h,091h,081h,081h,061h    ;053
	db	061h,091h,081h,091h,081h,061h,081h,061h    ;054
	db	086h,096h,096h,096h,096h,086h,086h,086h    ;055
	db	061h,081h,081h,091h,091h,081h,081h,061h    ;056
	db	061h,091h,081h,091h,081h,061h,081h,061h    ;057
	db	081h,081h,081h,081h,081h,081h,081h,081h    ;058
	db	081h,081h,081h,081h,081h,081h,081h,081h    ;059
ramchr5_2:
	db	0CEh,096h,0AEh,0AEh,03Ch,0BCh,099h,0C1h    ;064
	db	0CEh,096h,0AEh,0AEh,03Ch,0BCh,099h,0C1h    ;065
	db	0CEh,096h,0AEh,0AEh,03Ch,0BCh,099h,0C1h    ;066
	db	0ECh,069h,0EAh,0EAh,0C3h,0CBh,099h,01Ch    ;067
	db	0ECh,069h,0EAh,0EAh,0C3h,0CBh,099h,01Ch    ;068
	db	0ECh,069h,0EAh,0EAh,0C3h,0CBh,099h,01Ch    ;069
	db	0ECh,069h,0EAh,0EAh,0C3h,0CBh,099h,01Ch    ;070
	db	0CEh,096h,0AEh,0AEh,03Ch,0BCh,099h,0C1h    ;071
	db	0CEh,096h,0AEh,0AEh,03Ch,0BCh,099h,0C1h    ;072
	db	0F8h,0F0h,0E8h,0E4h,0D0h,0F0h,0F8h,0FAh    ;073
	db	0F8h,0F0h,0E8h,0E4h,0D0h,0F0h,0F8h,0FAh    ;074
	db	0F8h,0F0h,0E8h,0E4h,0D0h,0F0h,0F8h,0FAh    ;075
	db	0F8h,0F0h,0E8h,0E4h,0D0h,0F0h,0F8h,0FAh    ;076
	db	0CEh,096h,0AEh,0AEh,03Ch,0BCh,099h,0C1h    ;077
	db	0F8h,0F0h,0E8h,0E4h,0D0h,0F0h,0F8h,0FAh    ;078
	db	0FEh,0F8h,0F2h,0E0h,0C0h,0E0h,0C0h,080h    ;079
	db	0CEh,096h,0AEh,0AEh,03Ch,0BCh,099h,0C1h    ;080
	db	05Fh,01Fh,00Fh,00Bh,027h,017h,00Fh,01Fh    ;081
	db	05Fh,01Fh,00Fh,00Bh,027h,017h,00Fh,01Fh    ;082
	db	05Fh,01Fh,00Fh,00Bh,027h,017h,00Fh,01Fh    ;083
	db	05Fh,01Fh,00Fh,00Bh,027h,017h,00Fh,01Fh    ;084
	db	0CEh,096h,0AEh,0AEh,03Ch,0BCh,099h,0C1h    ;085
	db	05Fh,01Fh,00Fh,00Bh,027h,017h,00Fh,01Fh    ;086
	db	05Fh,027h,00Fh,00Fh,027h,007h,00Bh,001h    ;087
	db	0CEh,096h,0AEh,0AEh,03Ch,0BCh,099h,0C1h    ;088
	db	0FEh,0F8h,0F2h,0E0h,0C0h,0E0h,0C0h,080h    ;089
	db	0FEh,0F8h,0F2h,0E0h,0C0h,0E0h,0C0h,080h    ;090
	db	000h,000h,000h,000h,000h,000h,000h,000h    ;091
	db	0CEh,096h,0AEh,0AEh,03Ch,0BCh,099h,0C1h    ;092
	db	05Fh,027h,00Fh,00Fh,027h,007h,00Bh,001h    ;093
	db	05Fh,027h,00Fh,00Fh,027h,007h,00Bh,001h    ;094
	db	000h,000h,000h,000h,000h,000h,000h,000h    ;095
	db	000h,000h,000h,000h,000h,000h,000h,000h    ;096
	db	0E0h,0F0h,0ECh,0E2h,0F0h,0F8h,0FAh,0FCh    ;097
	db	0E0h,0F0h,0ECh,0E2h,0F0h,0F8h,0FAh,0FCh    ;098
	db	0FEh,0F8h,0F2h,0E0h,0C0h,0E0h,0C0h,080h    ;099
	db	0E0h,0F0h,0ECh,0E2h,0F0h,0F8h,0FAh,0FCh    ;100
	db	0F8h,0F0h,0E8h,0E4h,0D0h,0F0h,0F8h,0FAh    ;101
	db	0E0h,0F0h,0ECh,0E2h,0F0h,0F8h,0FAh,0FCh    ;102
	db	0CEh,096h,0AEh,0AEh,03Ch,0BCh,099h,0C1h    ;103
	db	0F8h,0F0h,0E8h,0E4h,0D0h,0F0h,0F8h,0FAh    ;104
	db	0E0h,0F0h,0ECh,0E2h,0F0h,0F8h,0FAh,0FCh    ;105
	db	000h,000h,000h,000h,000h,000h,000h,000h    ;106
	db	000h,028h,044h,010h,044h,028h,000h,000h    ;107
	db	000h,028h,044h,010h,044h,028h,000h,000h    ;108
	db	000h,000h,000h,000h,000h,000h,000h,000h    ;109
	db	000h,000h,000h,000h,000h,008h,000h,000h    ;110
	db	000h,000h,000h,000h,000h,000h,000h,000h    ;111
	db	000h,000h,000h,000h,000h,000h,000h,000h    ;112
	db	001h,00Bh,007h,027h,00Fh,00Fh,027h,05Fh    ;113
	db	001h,00Bh,007h,027h,00Fh,00Fh,027h,05Fh    ;114
	db	05Fh,027h,00Fh,00Fh,027h,007h,00Bh,001h    ;115
	db	001h,00Bh,007h,027h,00Fh,00Fh,027h,05Fh    ;116
	db	05Fh,01Fh,00Fh,00Bh,027h,017h,00Fh,01Fh    ;117
	db	001h,00Bh,007h,027h,00Fh,00Fh,027h,05Fh    ;118
	db	0CEh,096h,0AEh,0AEh,03Ch,0BCh,099h,0C1h    ;119
	db	05Fh,01Fh,00Fh,00Bh,027h,017h,00Fh,01Fh    ;120
	db	001h,00Bh,007h,027h,00Fh,00Fh,027h,05Fh    ;121
	db	000h,000h,000h,000h,000h,000h,000h,000h    ;122
	db	000h,000h,000h,000h,000h,000h,000h,000h    ;123
ramclr5_2:
	db	02Ch,03Ch,03Ch,03Ch,03Ch,02Ch,02Ch,02Ch    ;064
	db	02Ch,03Ch,03Ch,03Ch,03Ch,02Ch,02Ch,02Ch    ;065
	db	02Ch,03Ch,03Ch,03Ch,03Ch,02Ch,02Ch,02Ch    ;066
	db	02Ch,03Ch,03Ch,03Ch,03Ch,02Ch,02Ch,02Ch    ;067
	db	02Ch,03Ch,03Ch,03Ch,03Ch,02Ch,02Ch,02Ch    ;068
	db	02Ch,03Ch,03Ch,03Ch,03Ch,02Ch,02Ch,02Ch    ;069
	db	02Ch,03Ch,03Ch,03Ch,03Ch,02Ch,02Ch,02Ch    ;070
	db	02Ch,03Ch,03Ch,03Ch,03Ch,02Ch,02Ch,02Ch    ;071
	db	02Ch,03Ch,03Ch,03Ch,03Ch,02Ch,02Ch,02Ch    ;072
	db	0C1h,021h,021h,031h,031h,021h,021h,0C1h    ;073
	db	0C1h,021h,021h,031h,031h,021h,021h,0C1h    ;074
	db	0C1h,021h,021h,031h,031h,021h,021h,0C1h    ;075
	db	0C1h,021h,021h,031h,031h,021h,021h,0C1h    ;076
	db	02Ch,03Ch,03Ch,03Ch,03Ch,02Ch,02Ch,02Ch    ;077
	db	0C1h,021h,021h,031h,031h,021h,021h,0C1h    ;078
	db	0C1h,021h,0C1h,021h,031h,021h,031h,0C1h    ;079
	db	02Ch,03Ch,03Ch,03Ch,03Ch,02Ch,02Ch,02Ch    ;080
	db	0C1h,021h,021h,031h,031h,021h,021h,0C1h    ;081
	db	0C1h,021h,021h,031h,031h,021h,021h,0C1h    ;082
	db	0C1h,021h,021h,031h,031h,021h,021h,0C1h    ;083
	db	0C1h,021h,021h,031h,031h,021h,021h,0C1h    ;084
	db	02Ch,03Ch,03Ch,03Ch,03Ch,02Ch,02Ch,02Ch    ;085
	db	0C1h,021h,021h,031h,031h,021h,021h,0C1h    ;086
	db	0C1h,021h,0C1h,021h,031h,021h,031h,0C1h    ;087
	db	02Ch,03Ch,03Ch,03Ch,03Ch,02Ch,02Ch,02Ch    ;088
	db	0C1h,021h,0C1h,021h,031h,021h,031h,0C1h    ;089
	db	0C1h,021h,0C1h,021h,031h,021h,031h,0C1h    ;090
	db	081h,081h,081h,081h,081h,081h,081h,081h    ;091
	db	02Ch,03Ch,03Ch,03Ch,03Ch,02Ch,02Ch,02Ch    ;092
	db	0C1h,021h,0C1h,021h,031h,021h,031h,0C1h    ;093
	db	0C1h,021h,0C1h,021h,031h,021h,031h,0C1h    ;094
	db	081h,081h,081h,081h,081h,081h,081h,081h    ;095
	db	081h,081h,081h,081h,081h,081h,081h,081h    ;096
	db	0C1h,031h,021h,031h,021h,0C1h,021h,0C1h    ;097
	db	0C1h,031h,021h,031h,021h,0C1h,021h,0C1h    ;098
	db	0C1h,021h,0C1h,021h,031h,021h,031h,0C1h    ;099
	db	0C1h,031h,021h,031h,021h,0C1h,021h,0C1h    ;100
	db	0C1h,021h,021h,031h,031h,021h,021h,0C1h    ;101
	db	0C1h,031h,021h,031h,021h,0C1h,021h,0C1h    ;102
	db	02Ch,03Ch,03Ch,03Ch,03Ch,02Ch,02Ch,02Ch    ;103
	db	0C1h,021h,021h,031h,031h,021h,021h,0C1h    ;104
	db	0C1h,031h,021h,031h,021h,0C1h,021h,0C1h    ;105
	db	081h,081h,081h,081h,081h,081h,081h,081h    ;106
	db	041h,0A1h,0B1h,0F1h,0B1h,0A1h,041h,041h    ;107
	db	041h,0B1h,0F1h,0A1h,0F1h,0B1h,041h,041h    ;108
	db	081h,081h,081h,081h,081h,081h,081h,081h    ;109
	db	0F1h,0F1h,0F1h,0F1h,0F1h,0E1h,0F1h,0F1h    ;110
	db	081h,081h,081h,081h,081h,081h,081h,081h    ;111
	db	081h,081h,081h,081h,081h,081h,081h,081h    ;112
	db	0C1h,031h,021h,031h,021h,0C1h,021h,0C1h    ;113
	db	0C1h,031h,021h,031h,021h,0C1h,021h,0C1h    ;114
	db	0C1h,021h,0C1h,021h,031h,021h,031h,0C1h    ;115
	db	0C1h,031h,021h,031h,021h,0C1h,021h,0C1h    ;116
	db	0C1h,021h,021h,031h,031h,021h,021h,0C1h    ;117
	db	0C1h,031h,021h,031h,021h,0C1h,021h,0C1h    ;118
	db	02Ch,03Ch,03Ch,03Ch,03Ch,02Ch,02Ch,02Ch    ;119
	db	0C1h,021h,021h,031h,031h,021h,021h,0C1h    ;120
	db	0C1h,031h,021h,031h,021h,0C1h,021h,0C1h    ;121
	db	081h,081h,081h,081h,081h,081h,081h,081h    ;122
	db	081h,081h,081h,081h,081h,081h,081h,081h    ;123
spritedata5:
sptdef5_16:
	db	005h,04Dh,06Dh,06Dh,06Dh,06Dh,02Eh,013h    ; enemy1color1frame1
	db	000h,004h,027h,027h,003h,001h,000h,000h    ; enemy1color1frame1
	db	0A0h,0B2h,0B6h,0B6h,0B6h,0B6h,074h,0C8h    ; enemy1color1frame1
	db	000h,020h,0E4h,0E4h,0C0h,080h,000h,000h    ; enemy1color1frame1
sptdef5_17:
	db	082h,082h,092h,092h,092h,092h,0D1h,0ECh    ; enemy1color2frame1
	db	0FFh,07Bh,058h,058h,03Ch,01Eh,00Fh,003h    ; enemy1color2frame1
	db	041h,041h,049h,049h,049h,049h,08Bh,037h    ; enemy1color2frame1
	db	0FFh,0DEh,01Ah,01Ah,03Ch,078h,0F0h,0C0h    ; enemy1color2frame1
sptdef5_18:
	db	001h,005h,005h,005h,005h,007h,003h,000h    ; enemy1color1frame2
	db	010h,010h,012h,012h,008h,004h,002h,001h    ; enemy1color1frame2
	db	0A0h,0A0h,0B0h,0B0h,0B0h,0B0h,0E0h,0C0h    ; enemy1color1frame2
	db	000h,0C0h,0C0h,0C0h,0C0h,0C0h,000h,000h    ; enemy1color1frame2
sptdef5_19:
	db	010h,010h,01Ah,01Ah,01Ah,018h,01Fh,01Fh    ; enemy1color2frame2
	db	00Fh,00Fh,00Dh,00Dh,00Fh,007h,003h,001h    ; enemy1color2frame2
	db	048h,048h,048h,048h,048h,048h,018h,038h    ; enemy1color2frame2
	db	0F8h,038h,038h,038h,030h,0F0h,0E0h,0C0h    ; enemy1color2frame2
sptdef5_20:
	db	000h,000h,000h,01Eh,01Eh,01Eh,00Eh,00Eh    ; enemy1color1frame3
	db	00Eh,006h,006h,006h,006h,006h,002h,000h    ; enemy1color1frame3
	db	000h,000h,000h,0F0h,0F0h,0F0h,0E0h,0E0h    ; enemy1color1frame3
	db	0E0h,0C0h,0C0h,0C0h,0C0h,0C0h,080h,000h    ; enemy1color1frame3
sptdef5_21:
	db	010h,011h,01Bh,001h,001h,001h,011h,011h    ; enemy1color2frame3
	db	011h,019h,019h,019h,009h,009h,001h,003h    ; enemy1color2frame3
	db	088h,088h,0D8h,008h,008h,008h,018h,018h    ; enemy1color2frame3
	db	010h,030h,030h,030h,030h,020h,040h,080h    ; enemy1color2frame3
sptdef5_22:
	db	003h,003h,001h,07Ch,07Eh,07Eh,03Eh,03Eh    ; enemy1color1frame4
	db	01Eh,00Eh,00Eh,00Eh,00Eh,006h,002h,000h    ; enemy1color1frame4
	db	0C0h,0C0h,080h,03Eh,07Eh,07Eh,07Ch,07Ch    ; enemy1color1frame4
	db	078h,070h,070h,070h,070h,060h,040h,000h    ; enemy1color1frame4
sptdef5_23:
	db	084h,0CCh,0FEh,083h,081h,081h,0C1h,0C1h    ; enemy1color2frame4
	db	0E1h,071h,071h,071h,031h,019h,00Dh,003h    ; enemy1color2frame4
	db	021h,033h,07Fh,0C1h,081h,081h,083h,083h    ; enemy1color2frame4
	db	087h,08Eh,08Eh,08Eh,08Ch,098h,0B0h,0C0h    ; enemy1color2frame4
sptdef5_24:
	db	000h,000h,000h,00Fh,00Fh,00Fh,007h,007h    ; enemy1color1frame5
	db	007h,003h,003h,003h,003h,003h,001h,000h    ; enemy1color1frame5
	db	000h,000h,000h,078h,078h,078h,070h,070h    ; enemy1color1frame5
	db	070h,060h,060h,060h,060h,060h,040h,000h    ; enemy1color1frame5
sptdef5_25:
	db	011h,011h,01Bh,010h,010h,010h,018h,018h    ; enemy1color2frame5
	db	008h,00Ch,00Ch,00Ch,00Ch,004h,002h,001h    ; enemy1color2frame5
	db	008h,088h,0D8h,080h,080h,080h,088h,088h    ; enemy1color2frame5
	db	088h,098h,098h,098h,090h,090h,080h,0C0h    ; enemy1color2frame5
sptdef5_26:
	db	005h,005h,00Dh,00Dh,00Dh,00Dh,007h,003h    ; enemy1color1frame6
	db	000h,003h,003h,003h,003h,003h,000h,000h    ; enemy1color1frame6
	db	080h,0A0h,0A0h,0A0h,0A0h,0E0h,0C0h,000h    ; enemy1color1frame6
	db	008h,008h,048h,048h,010h,020h,040h,080h    ; enemy1color1frame6
sptdef5_27:
	db	012h,012h,012h,012h,012h,012h,018h,01Ch    ; enemy1color2frame6
	db	01Fh,01Ch,01Ch,01Ch,00Ch,00Fh,007h,003h    ; enemy1color2frame6
	db	008h,008h,058h,058h,058h,018h,0F8h,0F8h    ; enemy1color2frame6
	db	0F0h,0F0h,0B0h,0B0h,0F0h,0E0h,0C0h,080h    ; enemy1color2frame6
sptdef5_28:
	db	062h,077h,07Bh,07Bh,07Bh,03Bh,03Dh,01Dh    ; enemy2color1frame1
	db	007h,007h,007h,006h,004h,006h,003h,001h    ; enemy2color1frame1
	db	046h,0EEh,0DEh,0DEh,0DEh,0DCh,0BCh,0B8h    ; enemy2color1frame1
	db	0E0h,0E0h,0E0h,060h,020h,060h,0C0h,080h    ; enemy2color1frame1
sptdef5_29:
	db	001h,088h,084h,084h,084h,084h,082h,082h    ; enemy2color2frame1
	db	08Ah,048h,000h,001h,003h,001h,000h,000h    ; enemy2color2frame1
	db	080h,011h,021h,021h,021h,021h,041h,041h    ; enemy2color2frame1
	db	051h,012h,000h,080h,0C0h,080h,000h,000h    ; enemy2color2frame1
sptdef5_30:
	db	001h,003h,002h,004h,004h,00Dh,00Fh,00Fh    ; enemy3color1frame1
	db	00Fh,00Fh,00Fh,007h,007h,003h,003h,001h    ; enemy3color1frame1
	db	080h,0C0h,040h,020h,020h,0B0h,0F0h,0F0h    ; enemy3color1frame1
	db	0F0h,0F0h,0F0h,0E0h,0E0h,0C0h,0C0h,080h    ; enemy3color1frame1
sptdef5_31:
	db	000h,000h,001h,003h,003h,002h,000h,000h    ; enemy3color2frame1
	db	020h,070h,070h,070h,070h,070h,070h,020h    ; enemy3color2frame1
	db	000h,000h,080h,0C0h,0C0h,040h,000h,000h    ; enemy3color2frame1
	db	004h,00Eh,00Eh,00Eh,00Eh,00Eh,00Eh,004h    ; enemy3color2frame1
sptdef5_32:
	db	001h,003h,002h,004h,004h,00Dh,00Fh,00Fh    ; enemy3color1frame2
	db	00Bh,001h,001h,001h,001h,001h,003h,001h    ; enemy3color1frame2
	db	080h,0C0h,040h,020h,020h,0B0h,0F0h,0F0h    ; enemy3color1frame2
	db	0F0h,0F0h,0F0h,0E0h,0E0h,0C0h,0C0h,080h    ; enemy3color1frame2
sptdef5_33:
	db	000h,000h,001h,003h,003h,002h,000h,000h    ; enemy3color2frame2
	db	004h,00Eh,00Eh,00Eh,00Eh,00Eh,00Eh,004h    ; enemy3color2frame2
	db	000h,000h,080h,0C0h,0C0h,040h,000h,000h    ; enemy3color2frame2
	db	000h,000h,000h,010h,010h,030h,030h,020h    ; enemy3color2frame2
sptdef5_34:
	db	001h,003h,002h,004h,004h,00Dh,00Fh,00Fh    ; enemy3color1frame3
	db	00Fh,00Fh,00Fh,007h,007h,003h,003h,001h    ; enemy3color1frame3
	db	080h,0C0h,040h,020h,020h,0B0h,0F0h,0F0h    ; enemy3color1frame3
	db	0D0h,080h,080h,080h,080h,080h,0C0h,080h    ; enemy3color1frame3
sptdef5_35:
	db	000h,000h,001h,003h,003h,002h,000h,000h    ; enemy3color2frame3
	db	000h,000h,000h,008h,008h,00Ch,00Ch,004h    ; enemy3color2frame3
	db	000h,000h,080h,0C0h,0C0h,040h,000h,000h    ; enemy3color2frame3
	db	020h,070h,070h,070h,070h,070h,070h,020h    ; enemy3color2frame3
sptdef5_36:
	db	009h,04Bh,0FFh,0E7h,0E7h,067h,037h,01Fh    ; enemy4color1frame1
	db	00Fh,00Fh,00Eh,004h,004h,002h,003h,001h    ; enemy4color1frame1
	db	090h,0D2h,0FFh,0FFh,0FFh,0FEh,0FCh,0F8h    ; enemy4color1frame1
	db	0F0h,0F0h,070h,020h,020h,040h,0C0h,080h    ; enemy4color1frame1
sptdef5_37:
	db	000h,000h,000h,018h,018h,018h,008h,000h    ; enemy4color2frame1
	db	000h,000h,001h,003h,003h,001h,000h,000h    ; enemy4color2frame1
	db	000h,000h,000h,000h,000h,000h,000h,000h    ; enemy4color2frame1
	db	000h,000h,080h,0C0h,0C0h,080h,000h,000h    ; enemy4color2frame1
sptdef5_38:
	db	009h,04Bh,0FFh,0FEh,0FEh,07Eh,03Eh,01Fh    ; enemy4color1frame2
	db	00Fh,00Fh,00Eh,004h,004h,002h,003h,001h    ; enemy4color1frame2
	db	090h,0D2h,0FFh,07Fh,07Fh,07Eh,07Ch,0F8h    ; enemy4color1frame2
	db	0F0h,0F0h,070h,020h,020h,040h,0C0h,080h    ; enemy4color1frame2
sptdef5_39:
	db	000h,000h,000h,001h,001h,001h,001h,000h    ; enemy4color2frame2
	db	000h,000h,001h,003h,003h,001h,000h,000h    ; enemy4color2frame2
	db	000h,000h,000h,080h,080h,080h,080h,000h    ; enemy4color2frame2
	db	000h,000h,080h,0C0h,0C0h,080h,000h,000h    ; enemy4color2frame2
sptdef5_40:
	db	009h,04Bh,0FFh,0FFh,0FFh,07Fh,03Fh,01Fh    ; enemy4color1frame3
	db	00Fh,00Fh,00Eh,004h,004h,002h,003h,001h    ; enemy4color1frame3
	db	090h,0D2h,0FFh,0E7h,0E7h,0E6h,0ECh,0F8h    ; enemy4color1frame3
	db	0F0h,0F0h,070h,020h,020h,040h,0C0h,080h    ; enemy4color1frame3
sptdef5_41:
	db	000h,000h,000h,000h,000h,000h,000h,000h    ; enemy4color2frame3
	db	000h,000h,001h,003h,003h,001h,000h,000h    ; enemy4color2frame3
	db	000h,000h,000h,018h,018h,018h,010h,000h    ; enemy4color2frame3
	db	000h,000h,080h,0C0h,0C0h,080h,000h,000h    ; enemy4color2frame3
sptdef5_42:
	db	001h,002h,00Ch,01Ch,03Eh,03Fh,04Fh,087h    ; enemy5color1frame1
	db	087h,04Fh,03Fh,03Eh,01Ch,00Ch,002h,001h    ; enemy5color1frame1
	db	080h,040h,030h,038h,07Ch,0FCh,0F2h,0E1h    ; enemy5color1frame1
	db	0E1h,0F2h,0FCh,07Ch,038h,030h,040h,080h    ; enemy5color1frame1
sptdef5_43:
	db	000h,001h,003h,003h,001h,000h,030h,078h    ; enemy5color2frame1
	db	078h,030h,000h,001h,003h,003h,001h,000h    ; enemy5color2frame1
	db	000h,080h,0C0h,0C0h,080h,000h,00Ch,01Eh    ; enemy5color2frame1
	db	01Eh,00Ch,000h,080h,0C0h,0C0h,080h,000h    ; enemy5color2frame1
sptdef5_44:
	db	001h,002h,00Ch,018h,038h,024h,043h,083h    ; enemy5color1frame2
	db	083h,043h,024h,038h,018h,00Ch,002h,001h    ; enemy5color1frame2
	db	080h,040h,030h,018h,01Ch,024h,0C2h,0C1h    ; enemy5color1frame2
	db	0C1h,0C2h,024h,01Ch,018h,030h,040h,080h    ; enemy5color1frame2
sptdef5_45:
	db	000h,001h,003h,007h,007h,01Bh,03Ch,07Ch    ; enemy5color2frame2
	db	07Ch,03Ch,01Bh,007h,007h,003h,001h,000h    ; enemy5color2frame2
	db	000h,080h,0C0h,0E0h,0E0h,0D8h,03Ch,03Eh    ; enemy5color2frame2
	db	03Eh,03Ch,0D8h,0E0h,0E0h,0C0h,080h,000h    ; enemy5color2frame2
sptdef5_46:
	db	001h,002h,00Ch,018h,038h,024h,042h,080h    ; enemy5color1frame3
	db	080h,042h,024h,038h,018h,00Ch,002h,001h    ; enemy5color1frame3
	db	080h,040h,030h,018h,01Ch,024h,042h,001h    ; enemy5color1frame3
	db	001h,042h,024h,01Ch,018h,030h,040h,080h    ; enemy5color1frame3
sptdef5_47:
	db	000h,001h,003h,007h,007h,01Bh,03Dh,07Fh    ; enemy5color2frame3
	db	07Fh,03Dh,01Bh,007h,007h,003h,001h,000h    ; enemy5color2frame3
	db	000h,080h,0C0h,0E0h,0E0h,0D8h,0BCh,0FEh    ; enemy5color2frame3
	db	0FEh,0BCh,0D8h,0E0h,0E0h,0C0h,080h,000h    ; enemy5color2frame3
sptdef5_48:
	db	001h,002h,00Ch,018h,038h,024h,043h,083h    ; enemy5color1frame4
	db	083h,043h,024h,038h,018h,00Ch,002h,001h    ; enemy5color1frame4
	db	080h,040h,030h,018h,01Ch,024h,0C2h,0C1h    ; enemy5color1frame4
	db	0C1h,0C2h,024h,01Ch,018h,030h,040h,080h    ; enemy5color1frame4
sptdef5_49:
	db	000h,001h,003h,007h,007h,01Bh,03Ch,07Ch    ; enemy5color2frame4
	db	07Ch,03Ch,01Bh,007h,007h,003h,001h,000h    ; enemy5color2frame4
	db	000h,080h,0C0h,0E0h,0E0h,0D8h,03Ch,03Eh    ; enemy5color2frame4
	db	03Eh,03Ch,0D8h,0E0h,0E0h,0C0h,080h,000h    ; enemy5color2frame4
sptdef5_50:
	db	003h,01Eh,03Ch,078h,078h,0FBh,0FCh,0F8h    ; enemy6color1frame1
	db	0F8h,0FDh,0F6h,0E4h,0C2h,043h,041h,020h    ; enemy6color1frame1
	db	0C0h,078h,03Ch,01Ch,01Eh,0DFh,03Fh,01Fh    ; enemy6color1frame1
	db	01Fh,0BFh,06Fh,027h,043h,0C2h,082h,004h    ; enemy6color1frame1
sptdef5_51:
	db	000h,001h,003h,007h,007h,004h,003h,007h    ; enemy6color2frame1
	db	007h,002h,001h,003h,001h,000h,000h,000h    ; enemy6color2frame1
	db	000h,080h,0C0h,0E0h,0E0h,020h,0C0h,0E0h    ; enemy6color2frame1
	db	0E0h,040h,080h,0C0h,080h,000h,000h,000h    ; enemy6color2frame1
sptdef5_52:
	db	003h,01Eh,03Ch,07Bh,07Ch,0F8h,0F8h,0FBh    ; enemy6color1frame2
	db	0FCh,0FCh,0F4h,0E4h,0C3h,043h,041h,020h    ; enemy6color1frame2
	db	0C0h,078h,03Ch,0DCh,03Eh,01Fh,01Fh,0DFh    ; enemy6color1frame2
	db	03Fh,03Fh,02Fh,027h,0C3h,0C2h,082h,004h    ; enemy6color1frame2
sptdef5_53:
	db	000h,001h,003h,004h,003h,007h,007h,004h    ; enemy6color2frame2
	db	003h,003h,003h,003h,000h,000h,000h,000h    ; enemy6color2frame2
	db	000h,080h,0C0h,020h,0C0h,0E0h,0E0h,020h    ; enemy6color2frame2
	db	0C0h,0C0h,0C0h,0C0h,000h,000h,000h,000h    ; enemy6color2frame2
sptdef5_54:
	db	003h,01Fh,03Eh,07Ch,078h,0F8h,0FBh,0FCh    ; enemy6color1frame3
	db	0F8h,0FCh,0F4h,0E5h,0C2h,043h,041h,020h    ; enemy6color1frame3
	db	0C0h,0F8h,07Ch,03Ch,01Eh,01Fh,0DFh,03Fh    ; enemy6color1frame3
	db	01Fh,03Fh,02Fh,0A7h,043h,0C2h,082h,004h    ; enemy6color1frame3
sptdef5_55:
	db	000h,000h,001h,003h,007h,007h,004h,003h    ; enemy6color2frame3
	db	007h,003h,003h,002h,001h,000h,000h,000h    ; enemy6color2frame3
	db	000h,000h,080h,0C0h,0E0h,0E0h,020h,0C0h    ; enemy6color2frame3
	db	0E0h,0C0h,0C0h,040h,080h,000h,000h,000h    ; enemy6color2frame3
sptdef5_56:
	db	003h,00Fh,01Dh,03Bh,07Fh,07Fh,0F7h,0FCh    ; enemy7color1frame1
	db	0B8h,0D0h,070h,070h,038h,01Ch,00Fh,003h    ; enemy7color1frame1
	db	0C0h,070h,058h,0ECh,0FEh,0FEh,0DFh,07Bh    ; enemy7color1frame1
	db	037h,01Fh,096h,01Eh,03Ch,078h,0F0h,0C0h    ; enemy7color1frame1
sptdef5_57:
	db	000h,000h,000h,000h,000h,000h,000h,003h    ; enemy7color2frame1
	db	007h,00Fh,00Fh,00Fh,007h,003h,000h,000h    ; enemy7color2frame1
	db	000h,000h,000h,000h,000h,000h,000h,080h    ; enemy7color2frame1
	db	0C0h,0E0h,060h,0E0h,0C0h,080h,000h,000h    ; enemy7color2frame1
;sptdef1_58:						;232
	db	003h,00fh,01fh,003h,07bh,048h,04fh,074h		;power inc yl
	db	044h,057h,050h,01fh,03fh,01fh,00fh,003h		;power inc yl
	db	0c0h,0f0h,0f8h,0fch,0feh,008h,0aah,0a2h		;power inc yl
	db	0aah,094h,000h,0feh,0fch,0f8h,0f0h,0c0h		;power inc yl
	;030F1F037B484F744457501F3F1F0F03C0F0F8FCFE08AAA2AA9400FEFCF8F0C0
;sptdef1_59:						;236
	db	000h,000h,000h,0fch,084h,0b7h,0b0h,08bh		;power inc blk
	db	0bbh,0a8h,0afh,0e0h,000h,000h,000h,000h		;power inc blk
	db	000h,000h,000h,000h,000h,0f7h,055h,05dh		;power inc blk
	db	055h,06bh,0feh,000h,000h,000h,000h,000h		;power inc blk
	;000000FC84B7B08BBBA8AFE0000000000000000000F7555D556BFE0000000000
;sptdef1_60						;240
	db	000h,003h,00fh,01fh,03fh,03fh,07fh,07fh		;explosion frame1
	db	07fh,07fh,03fh,03fh,01fh,00fh,003h,000h		;explosion frame1
	db	000h,0c0h,0f0h,0f8h,0fch,0fch,0feh,0feh		;explosion frame1
	db	0feh,0feh,0fch,0fch,0f8h,0f0h,0c0h,000h		;explosion frame1
	;00030F1F3F3F7F7F7F7F3F3F1F0F030000C0F0F8FCFCFEFEFEFEFCFCF8F0C000
;sptdef1_61:						;244
	db	000h,003h,00fh,01fh,03fh,03fh,07fh,07fh		;explosion frame2
	db	07fh,07fh,03fh,03fh,01fh,00fh,003h,000h		;explosion frame2
	db	000h,0c0h,0f0h,0d8h,08ch,004h,08eh,0deh		;explosion frame2
	db	0feh,0feh,0fch,0fch,0f8h,0f0h,0c0h,000h		;explosion frame2
	;00030F1F3F3F7F7F7F7F3F3F1F0F030000C0F0D88C048EDEFEFEFCFCF8F0C000
;sptdef1_62:						;248
	db	000h,003h,00ch,018h,030h,030h,070h,070h		;explosion frame3
	db	070h,070h,038h,03ch,01eh,00fh,003h,000h		;explosion frame3
	db	000h,0c0h,030h,008h,000h,000h,002h,002h		;explosion frame3
	db	002h,002h,004h,004h,018h,0f0h,0c0h,000h		;explosion frame3
	;00030C18303070707070383C1E0F030000C03008000002020202040418F0C000
;sptdef1_63:						;252
	db	000h,000h,00ch,018h,030h,030h,070h,070h		;explosion frame4
	db	070h,070h,038h,03ch,01eh,00fh,003h,000h		;explosion frame4
	db	000h,000h,000h,000h,000h,000h,000h,000h		;explosion frame4
	db	000h,000h,000h,000h,018h,0f0h,0c0h,000h		;explosion frame4
	;00000C18303070707070383C1E0F030000000000000000000000000018F0C000
sprtend5:

mid_boss_sprites5:
midspt51:
	db	000h,000h,001h,002h,004h,004h,008h,008h    ; Color 1
	db	008h,010h,010h,010h,028h,044h,082h,09Dh    ; 
	db	00Fh,070h,080h,000h,070h,08Ch,002h,002h    ; 
	db	081h,0E1h,0FCh,0FEh,06Eh,07Eh,03Ch,010h    ; 
midspt52:
	db	000h,000h,000h,001h,003h,003h,007h,007h    ; Color 10
	db	007h,00Fh,00Fh,00Fh,017h,03Bh,07Dh,062h    ; 
	db	000h,00Fh,07Fh,0FFh,08Fh,073h,0FDh,0FDh    ; 
	db	07Eh,01Eh,003h,001h,091h,081h,0C3h,0EFh    ; 
midspt53:
	db	0F8h,007h,000h,000h,007h,018h,020h,020h    ; Color 1
	db	040h,043h,01Fh,03Fh,03Bh,03Fh,09Eh,084h    ; 
	db	000h,000h,0C0h,020h,010h,090h,008h,008h    ; 
	db	088h,084h,084h,084h,00Ch,012h,021h,059h    ; 
midspt54:
	db	000h,0F8h,0FFh,0FFh,0F8h,0E7h,0DFh,0DFh    ; Color 10
	db	0BFh,0BCh,0E0h,0C0h,0C4h,0C0h,061h,07Bh    ; 
	db	000h,000h,000h,0C0h,0E0h,060h,0F0h,0F0h    ; 
	db	070h,078h,078h,078h,0F0h,0ECh,0DEh,0A6h    ; 
midspt55:
	db	0A4h,049h,04Ah,014h,01Ah,016h,00Ah,011h    ; Color 1
	db	021h,020h,043h,04Ch,050h,020h,010h,000h    ; 
	db	081h,081h,083h,043h,045h,029h,038h,010h    ; 
	db	044h,0A4h,053h,024h,010h,009h,006h,000h    ; 
midspt56:
	db	043h,006h,005h,00Bh,001h,001h,005h,00Eh    ; Color 10
	db	01Eh,01Fh,03Ch,030h,020h,000h,000h,000h    ; 
	db	07Fh,07Eh,07Ch,0BCh,0BAh,0D6h,0C7h,0EFh    ; 
	db	0BBh,05Bh,02Ch,01Bh,00Fh,006h,000h,000h    ; 
midspt57:
	db	0C0h,0C0h,0E0h,0E1h,0D1h,0CAh,08Eh,084h    ; Color 1
	db	091h,092h,065h,012h,084h,048h,030h,000h    ; 
	db	095h,0CBh,0A9h,014h,02Ch,034h,028h,044h    ; 
	db	042h,082h,061h,019h,005h,002h,004h,000h    ; 
midspt58:
	db	03Fh,03Fh,01Fh,01Eh,02Eh,035h,071h,07Bh    ; Color 10
	db	06Eh,06Dh,09Ah,0ECh,078h,030h,000h,000h    ; 
	db	062h,030h,050h,0E8h,0C0h,0C0h,0D0h,0B8h    ; 
	db	0BCh,07Ch,01Eh,006h,002h,000h,000h,000h    ; 


mboss_spt_end5:

eventlist_50:
	;row,ystart,xstart,shape,color,pattern
	db	12,1,200,232,10,5
	db	1,200,236,4,5
	db	16,1,30,112,14,13
	db	1,30,116,13,13
	db	20,1,130,64,4,13
	db	1,130,68,10,13
	db	24,1,180,200,4,13
	db	1,180,204,7,13
	db	28,1,80,224,15,13
	db	1,80,228,1,13
	db	32,1,160,112,14,13
	db	1,160,116,13,13
	db	36,1,220,224,15,13
	db	1,220,228,1,13

	db	90,1,100,232,10,5
	db	1,100,236,4,5
	db	94,1,120,224,15,13
	db	1,120,228,1,13
	db	98,1,80,224,15,13
	db	1,80,228,1,13
	db	102,1,180,224,15,13
	db	1,180,228,1,13
	db	106,1,40,64,4,13
	db	1,40,68,10,13
	db	110,1,100,64,12,13
	db	1,100,68,11,13
	db	114,1,160,64,14,13
	db	1,160,68,2,13

	db	168,1,50,232,10,5	
	db	1,50,236,4,5
	db	172,1,80,200,4,8
	db	1,80,204,7,8
	db	176,1,40,200,13,8
	db	1,40,204,7,8
	db	180,1,80,200,4,8
	db	1,80,204,7,8
	db	184,1,40,200,13,8
	db	1,40,204,7,8
	db	188,1,100,200,4,8
	db	1,100,204,7,8
	db	192,1,20,200,13,8
	db	1,20,204,7,8

	db	246,1,20,232,10,5
	db	1,20,236,4,5
	db	250,1,180,168,10,1
	db	1,180,172,13,1
	db	254,1,200,168,4,1
	db	1,200,172,14,1
	db	12,1,160,168,10,1
	db	1,160,172,12,1
	db	16,1,200,168,4,1
	db	1,200,172,10,1
	db	30,1,180,168,10,1
	db	1,180,172,4,1
	db	34,1,160,168,4,1
	db	1,160,172,15,1

	db	70,1,150,232,10,5	
	db	1,150,236,4,5
	db	74,1,8,64,4,18
	db	1,8,68,10,18
	db	78,1,8,64,4,18
	db	1,8,68,10,18
	db	82,1,8,64,4,18
	db	1,8,68,10,18
	db	86,1,8,64,4,18
	db	1,8,68,10,18
	db	90,1,8,64,4,18
	db	1,8,68,10,18
	db	94,1,8,64,4,18
	db	1,8,68,10,18

	db	148,1,40,232,10,5	
	db	1,40,236,4,5
	db	152,191,18,120,4,14
	db	191,18,124,7,14
	db	156,191,200,120,4,14
	db	191,200,124,7,14
	db	160,191,18,120,4,14
	db	191,18,124,14,14
	db	164,191,200,120,4,14
	db	191,200,124,14,14
	db	168,191,18,120,4,14
	db	191,18,124,10,14
	db	172,191,200,120,4,14
	db	191,200,124,10,14

	db	226,1,200,232,10,5
	db	1,200,236,4,5
	db	230,1,100,144,4,2
	db	1,100,148,3,2
	db	234,1,216,168,10,4
	db	1,216,172,13,4
	db	238,1,100,144,4,2
	db	1,100,148,3,2
	db	242,1,216,168,10,4
	db	1,216,172,13,4
	db	246,1,100,144,4,2
	db	1,100,148,3,2
	db	250,1,216,168,10,4
	db	1,216,172,13,4

	db	48,1,80,232,10,5
	db	1,80,236,4,5
	db	52,1,40,144,14,2
	db	1,40,148,4,2
	db	56,1,40,144,14,2
	db	1,40,148,4,2
	db	60,1,60,144,14,2
	db	1,60,148,4,2
	db	64,191,200,120,15,3
	db	191,200,124,2,3
	db	68,191,200,120,13,3
	db	191,200,124,10,3
	db	72,191,200,120,15,3
	db	191,200,124,4,3

	db	126,1,160,232,10,5
	db	1,160,236,4,5
	db	130,1,40,144,14,8
	db	1,40,148,12,8
	db	134,191,18,120,4,3
	db	191,18,124,7,3
	db	138,1,40,144,13,8
	db	1,40,148,7,8
	db	142,191,18,120,15,3
	db	191,18,124,13,3
	db	146,1,40,144,4,8
	db	1,40,148,15,8
	db	150,191,18,120,12,3
	db	191,18,124,10,3

	db	204,1,30,232,10,5
	db	1,30,236,4,5
	db	208,1,200,168,15,1
	db	1,200,172,13,1
	db	212,1,40,144,12,2
	db	1,40,148,14,2
	db	216,1,200,168,15,1
	db	1,200,172,12,1
	db	220,1,200,168,15,1
	db	1,200,172,4,1
	db	224,1,40,144,12,2
	db	1,40,148,7,2
	db	228,1,40,144,12,2
	db	1,40,148,15,2

	db	26,1,100,232,10,5
	db	1,100,236,4,5
	db	30,1,10,64,1,18
	db	1,10,68,15,18
	db	34,1,10,64,1,18
	db	1,10,68,15,18
	db	38,1,10,64,1,18	
	db	1,10,68,15,18
	db	42,191,200,120,10,3
	db	191,200,124,4,3
	db	46,191,200,120,10,3
	db	191,200,124,12,3
	db	50,191,200,120,10,3
	db	191,200,124,13,3

	db	104,1,160,232,10,5
	db	1,160,236,4,5
	db	112,1,100,224,15,13
	db	1,100,228,1,13
	db	120,1,200,224,15,13
	db	1,200,228,1,13
	db	128,1,150,224,15,13
	db	1,150,228,1,13

	db	182,1,40,232,10,5
	db	1,40,236,4,5
	db	186,40,223,112,14,16
	db	40,223,116,4,16
	db	190,56,1,152,4,17
	db	56,1,156,3,17
	db	194,72,223,112,15,16
	db	72,223,116,13,16
	db	198,88,1,160,12,17
	db	88,1,164,15,17
	db	202,104,223,112,12,16
	db	104,223,116,7,16
	db	206,120,1,144,15,17
	db	120,1,148,10,17

	db	4,1,100,232,10,5
	db	1,100,236,4,5
	db	8,1,220,168,14,1
	db	1,220,172,5,1
	db	12,1,60,200,15,2
	db	1,60,204,5,2
	db	16,1,220,168,14,1
	db	1,220,172,7,1
	db	20,1,60,200,4,2
	db	1,60,204,7,2
	db	24,1,220,168,14,1
	db	1,220,172,15,1
	db	28,1,60,200,15,2
	db	1,60,204,13,2

	db	82,1,80,200,14,6
	db	1,80,204,5,6
	db	86,1,175,200,15,6
	db	1,175,204,10,6
	db	90,1,96,200,4,6
	db	1,96,204,7,6
	db	94,1,120,200,4,6
	db	1,120,204,10,6
	db	112,1,140,200,12,6
	db	1,140,204,10,6
	db	116,1,200,200,13,6
	db	1,200,204,15,6
	db	120,1,128,200,4,6
	db	1,180,204,9,6

	db	200,1,42,224,15,13
	db	1,42,228,1,13
	db	204,1,82,224,15,13
	db	1,82,228,1,13
	db	208,1,170,224,15,13
	db	1,170,228,1,13
	db	212,1,50,224,15,13
	db	1,50,228,1,13
	db	216,1,145,224,15,13
	db	1,145,228,1,13
	db	220,1,90,224,15,13
	db	1,90,228,1,13

	db	10,1,150,232,10,5
	db	1,150,236,4,5
	db	14,1,70,64,8,13
	db	1,70,68,15,13
	db	18,1,155,64,10,13
	db	1,155,68,15,13
	db	22,1,102,64,4,13
	db	1,102,68,15,13
	db	26,1,32,64,15,13
	db	1,32,68,4,13
	db	30,1,172,64,15,13
	db	1,172,68,13,13

	db	62,1,100,232,10,5
	db	1,100,236,4,5
	db	66,1,175,168,10,1
	db	1,175,172,8,1
	db	70,1,80,144,15,8
	db	1,80,148,14,8
	db	74,1,175,168,11,1
	db	1,175,172,9,1
	db	78,1,80,144,13,8
	db	1,80,148,11,8
	db	82,1,175,168,10,1
	db	1,175,172,8,1

	db	136,1,200,232,10,5
	db	1,200,236,4,5
	db	140,1,72,64,15,13
	db	1,72,68,6,13
	db	144,1,112,64,15,13
	db	1,112,68,13,13
	db	148,1,200,64,15,13
	db	1,200,68,14,13
	db	152,1,80,64,15,13
	db	1,80,68,10,13
	db	156,1,190,64,15,13
	db	1,190,68,8,13
	db	160,1,130,64,15,13
	db	1,130,68,4,13

	db	200,1,80,232,10,5
	db	1,80,236,4,5
	db	204,1,100,200,15,2
	db	1,100,204,7,2
	db	208,1,40,200,9,2
	db	1,40,204,11,2
	db	212,1,100,168,15,1
	db	1,100,172,8,1
	db	216,191,18,120,15,3
	db	191,18,124,13,3
	db	220,191,18,120,15,3
	db	191,18,124,13,3
	db	224,191,18,120,15,3
	db	191,18,124,13,3

	db	22,1,100,232,10,5
	db	1,100,236,4,5
	db	26,1,20,200,4,8
	db	1,20,204,9,8
	db	30,1,40,200,13,2
	db	1,40,204,10,2
	db	34,1,40,200,4,8
	db	1,40,204,15,8
	db	38,1,60,200,13,2
	db	1,60,204,7,2
	db	42,1,60,200,4,8
	db	1,60,204,11,8
	db	46,1,80,200,13,2
	db	1,80,204,15,2

	db	100,1,80,200,4,6
	db	1,80,204,15,6
	db	104,1,175,64,3,13
	db	1,175,68,4,13
	db	108,1,12,200,13,6
	db	1,12,204,10,6
	db	116,1,205,200,4,6
	db	1,205,204,7,6
	db	120,1,40,64,6,13
	db	1,40,68,11,13
	db	124,1,100,200,15,6
	db	1,100,204,5,6

	db	182,1,40,232,10,5
	db	1,40,236,4,5
	db	186,1,180,168,11,4
	db	1,180,172,15,4
	db	190,1,180,168,4,4
	db	1,180,172,15,4
	db	194,1,180,168,13,4
	db	1,180,172,15,4
	db	198,191,18,120,15,3
	db	191,18,124,14,3
	db	202,191,18,120,9,3
	db	191,18,124,15,3
	db	206,191,18,120,4,3
	db	191,18,124,11,3

	db	6,1,160,232,10,5
	db	1,160,236,4,5
	db	10,1,215,168,15,1
	db	1,215,172,13,1
	db	14,1,30,144,14,8
	db	1,30,148,5,8
	db	18,1,215,168,15,1
	db	1,215,172,4,1
	db	22,1,30,144,14,8
	db	1,30,148,7,8
	db	26,1,215,168,15,1
	db	1,215,172,9,1
	db	30,1,30,144,14,8
	db	1,30,148,8,8

	db	120,1,70,64,4,13
	db	1,70,68,15,13
	db	124,1,160,64,13,13
	db	1,160,68,15,13
	db	128,1,50,64,8,13
	db	1,50,68,15,13
	db	132,1,180,64,10,13
	db	1,180,68,15,13
	db	136,1,30,64,4,13
	db	1,30,68,14,13
	db	140,1,200,64,13,13
	db	1,200,68,14,13

	db	255
eventlist_55:
	;row,ystart,xstart,shape,color,pattern
	db	16,1,175,224,15,13
	db	1,175,228,1,13
	db	20,1,92,200,1,6
	db	1,92,204,7,6
	db	24,1,80,224,15,13
	db	1,80,228,1,13
	db	28,1,235,200,1,6
	db	1,235,204,11,6
	db	32,1,112,224,15,13
	db	1,112,228,1,13
	db	36,1,80,200,1,6
	db	1,80,204,14,6

	db	90,1,220,168,15,4
	db	1,220,172,13,4
	db	94,1,220,168,10,4
	db	1,220,172,13,4
	db	98,1,220,168,15,4
	db	1,220,172,13,4
	db	102,191,200,224,15,14
	db	191,200,228,1,14
	db	106,191,18,120,4,3
	db	191,18,124,7,3
	db	110,191,200,224,15,14
	db	191,200,228,2,14
	db	114,191,18,120,4,3
	db	191,18,124,7,3


	db	168,1,160,232,10,5
	db	1,160,236,4,5
	db	172,1,125,168,7,1
	db	1,125,172,13,1
	db	176,1,30,144,4,8
	db	1,30,148,9,8
	db	180,1,125,168,7,1
	db	1,125,172,4,1
	db	184,1,30,144,4,8
	db	1,30,148,10,8
	db	188,1,125,168,7,1
	db	1,125,172,12,1
	db	192,1,30,144,4,8
	db	1,30,148,14,8

	db	246,1,20,232,10,5
	db	1,20,236,4,5
	db	250,1,70,224,15,13
	db	1,70,228,2,13
	db	254,1,160,224,15,13
	db	1,160,228,4,13
	db	12,1,50,224,15,13
	db	1,50,228,13,13
	db	16,1,180,224,15,13
	db	1,180,228,1,13
	db	20,1,30,224,15,13
	db	1,30,228,2,13
	db	24,1,200,224,15,13
	db	1,200,228,1,13

	db	70,1,150,232,10,5	
	db	1,150,236,4,5
	db	74,1,16,64,13,18
	db	1,16,68,15,18
	db	78,1,16,64,13,18
	db	1,16,68,14,18
	db	82,1,16,64,13,18
	db	1,16,68,14,18
	db	86,1,16,64,13,18
	db	1,16,68,14,18
	db	90,1,16,64,13,18
	db	1,16,68,14,18
	db	94,1,16,64,13,18
	db	1,16,68,14,18

	db	148,1,40,232,10,5	
	db	1,40,236,4,5
	db	152,191,18,120,14,14
	db	191,18,124,5,14
	db	156,191,200,120,14,14
	db	191,200,124,13,14
	db	160,191,18,120,14,14
	db	191,18,124,5,14
	db	164,191,200,120,14,14
	db	191,200,124,13,14
	db	168,191,18,120,14,14
	db	191,18,124,5,14
	db	172,191,200,120,14,14
	db	191,200,124,13,14

	db	226,1,200,232,10,5
	db	1,200,236,4,5
	db	230,191,200,200,15,3
	db	191,200,204,12,3
	db	234,191,200,200,12,3
	db	191,200,204,14,3
	db	238,191,200,200,1,3
	db	191,200,204,12,3
	db	242,191,18,200,13,3
	db	191,18,204,14,3
	db	246,191,18,200,1,3
	db	191,18,204,5,3
	db	250,191,18,200,10,3
	db	191,18,204,12,3

	db	48,1,80,232,10,5
	db	1,80,236,4,5
	db	52,1,80,144,4,2
	db	1,80,148,3,2
	db	56,1,80,144,4,2
	db	1,80,148,7,2
	db	60,1,100,144,4,2
	db	1,100,148,11,2
	db	64,191,200,120,14,3
	db	191,200,124,3,3
	db	68,191,200,120,14,3
	db	191,200,124,12,3
	db	72,191,200,120,10,3
	db	191,200,124,5,3

	db	126,1,160,232,10,5
	db	1,160,236,4,5
	db	130,1,20,144,1,2
	db	1,20,148,11,2
	db	134,1,20,144,1,2
	db	1,20,148,7,2
	db	138,1,20,144,1,2
	db	1,20,148,14,2
	db	142,1,20,144,1,2
	db	1,20,148,3,2
	db	146,1,20,144,1,2
	db	1,20,148,5,2
	db	150,1,20,144,1,2
	db	1,20,148,15,2

	db	204,1,30,232,10,5
	db	1,30,236,4,5
	db	208,1,20,144,13,6
	db	1,20,148,15,6
	db	212,1,100,144,14,6
	db	1,100,148,5,6
	db	216,1,180,200,1,6
	db	1,180,204,12,6
	db	220,1,100,200,4,6
	db	1,100,204,14,6
	db	224,1,60,144,15,6
	db	1,60,148,7,6
	db	228,1,130,200,12,6
	db	1,130,204,11,6

	db	26,1,100,232,10,5
	db	1,100,236,4,5
	db	30,1,140,64,7,18
	db	1,140,68,5,18
	db	34,1,120,64,7,18
	db	1,120,68,5,18
	db	38,1,100,64,7,18	
	db	1,100,68,5,18
	db	42,191,200,120,13,3
	db	191,200,124,3,3
	db	46,191,200,120,13,3
	db	191,200,124,3,3
	db	50,191,200,120,13,3
	db	191,200,124,3,3

	db	104,1,180,232,10,5
	db	1,180,236,4,5
	db	108,1,60,64,6,18
	db	1,60,68,10,18
	db	112,1,20,64,4,18
	db	1,20,68,10,18
	db	116,1,60,64,6,18
	db	1,60,68,10,18
	db	120,1,20,64,4,18
	db	1,20,68,10,18
	db	124,1,60,64,6,18
	db	1,60,68,10,18
	db	128,1,20,64,4,18
	db	1,20,68,10,18

	db	186,60,223,112,10,16
	db	60,223,116,12,16
	db	194,80,223,112,10,16
	db	80,223,116,12,16
	db	202,100,223,112,10,16
	db	100,223,116,12,16

	db	4,1,100,232,10,5
	db	1,100,236,4,5
	db	8,1,120,168,15,1
	db	1,120,172,9,1
	db	12,1,20,200,4,2
	db	1,20,204,7,2
	db	16,1,120,168,15,1
	db	1,120,172,9,1
	db	20,1,20,200,4,2
	db	1,20,204,7,2
	db	24,1,120,168,15,1
	db	1,120,172,9,1
	db	28,1,20,200,4,2
	db	1,20,204,7,2

	db	82,32,1,112,14,17
	db	32,1,116,6,17
	db	86,1,175,200,2,6
	db	1,175,204,6,6
	db	90,52,1,112,14,17
	db	52,1,116,6,17
	db	94,1,80,200,2,6
	db	1,80,204,6,6
	db	112,32,1,112,14,17
	db	32,1,116,6,17
	db	116,1,112,200,2,6
	db	1,112,204,6,6
	db	120,52,1,112,14,17
	db	52,1,116,6,17

	db	200,1,72,224,15,13
	db	1,72,228,10,13
	db	204,1,112,224,15,13
	db	1,112,228,13,13
	db	208,1,200,224,15,13
	db	1,200,228,1,13
	db	212,1,80,224,15,13
	db	1,80,228,4,13
	db	216,1,120,232,10,5
	db	1,120,236,4,5
	db	220,1,175,224,15,13
	db	1,175,228,2,13
	db	224,1,60,224,15,13
	db	1,60,228,1,13

	db	10,1,20,64,7,13
	db	1,20,68,4,13
	db	14,1,195,64,11,13
	db	1,195,68,8,13
	db	18,1,112,64,7,13
	db	1,112,68,4,13
	db	22,1,52,64,11,13
	db	1,52,68,8,13
	db	24,1,132,64,7,13
	db	1,132,68,4,13

	db	62,1,200,232,10,5
	db	1,200,236,4,5
	db	66,1,72,224,15,13
	db	1,72,228,1,13
	db	70,1,112,224,15,13
	db	1,112,228,13,13
	db	74,1,200,224,15,13
	db	1,200,228,4,13
	db	78,1,80,224,15,13
	db	1,80,228,2,13
	db	82,1,190,224,15,13
	db	1,190,228,1,13
	db	86,1,130,224,15,13
	db	1,130,228,4,13


	db	140,1,100,232,10,5
	db	1,100,236,4,5
	db	144,1,175,168,13,1
	db	1,175,172,7,1
	db	148,1,90,144,4,8
	db	1,90,148,3,8
	db	152,1,175,168,13,1
	db	1,175,172,7,1
	db	156,1,90,144,4,8
	db	1,90,148,3,8
	db	160,1,195,168,13,1
	db	1,195,172,7,1

	db	200,1,80,232,10,5
	db	1,80,236,4,5
	db	204,1,100,144,13,2	
	db	1,100,148,3,2
	db	208,1,40,200,2,2
	db	1,40,204,11,2
	db	212,1,100,168,4,1
	db	1,100,172,10,1
	db	216,191,18,120,10,3
	db	191,18,124,13,3
	db	220,191,18,120,10,3
	db	191,18,124,13,3
	db	224,191,18,120,10,3
	db	191,18,124,13,3

	db	22,1,100,232,10,5
	db	1,100,236,4,5
	db	26,1,60,144,4,2
	db	1,60,148,7,2
	db	30,1,60,144,8,2
	db	1,60,148,7,2
	db	34,1,60,144,4,2
	db	1,60,148,7,2
	db	38,1,60,144,15,8
	db	1,60,148,8,8
	db	42,1,60,144,15,8
	db	1,60,148,7,8
	db	46,1,60,144,15,8
	db	1,60,148,8,8

	db	100,1,180,168,4,4
	db	1,180,172,7,4
	db	104,1,180,168,4,4
	db	1,180,172,7,4
	db	108,1,180,168,4,4
	db	1,180,172,7,4
	db	112,191,200,120,10,3
	db	191,200,124,6,3
	db	116,191,200,120,14,3
	db	191,200,124,6,3
	db	120,191,200,120,10,3
	db	191,200,124,6,3
	db	124,191,200,120,14,3
	db	191,200,124,6,3

	db	182,1,40,200,7,6
	db	1,40,204,15,6
	db	186,0,175,112,15,13
	db	1,175,116,4,13
	db	190,1,92,200,4,6
	db	1,92,204,7,6
	db	194,1,80,112,10,13
	db	1,80,116,6,13
	db	198,1,235,200,4,6
	db	1,235,204,7,6
	db	202,1,112,112,11,13
	db	1,112,116,4,13
	db	206,1,80,200,7,6
	db	1,80,204,15,6

	db	6,1,160,232,10,5
	db	1,160,236,4,5
	db	10,1,175,168,4,1
	db	1,175,172,9,1
	db	14,1,80,144,4,8
	db	1,80,148,10,8
	db	18,1,205,168,4,1
	db	1,205,172,9,1
	db	22,1,20,144,4,8
	db	1,20,148,10,8
	db	26,1,105,168,4,1
	db	1,105,172,9,1
	db	30,1,100,144,4,8
	db	1,100,148,10,8

	db	120,1,70,224,15,13
	db	1,70,228,1,13
	db	124,1,160,64,4,13
	db	1,160,68,15,13
	db	128,1,50,224,15,13
	db	1,50,228,1,13
	db	132,1,180,64,9,13
	db	1,180,68,15,13
	db	136,1,30,224,15,13
	db	1,30,228,1,13
	db	140,1,200,64,12,13
	db	1,200,68,15,13

	db	255
mid5_eventlist:
	db	8,15
	db	16,112,64,1,16,112,68,10		;N
	db	16,128,72,1,16,128,76,10
	db	32,112,80,1,32,112,84,10
	db	32,128,88,1,32,128,92,10

	db	20,17
	db	16,112,64,1,16,112,68,10		;N
	db	16,128,72,1,16,128,76,10
	db	32,112,80,1,32,112,84,10
	db	32,128,88,1,32,128,92,10

	db	34,10
	db	16,224,64,1,16,224,68,10		;NE
	db	16,240,72,1,16,240,76,10
	db	32,224,80,1,32,224,84,10
	db	32,240,88,1,32,240,92,10

	db	58,12					;SW
	db	160,0,64,1,160,0,68,10
	db	160,16,72,1,160,16,76,10
	db	176,0,80,1,176,0,84,10
	db	176,16,88,1,176,16,92,10

	db	82,16
	db	16,224,64,1,16,224,68,10		;NE
	db	16,240,72,1,16,240,76,10
	db	32,224,80,1,32,224,84,10
	db	32,240,88,1,32,240,92,10

	db	110,9
	db	16,0,64,1,16,0,68,10			;NW
	db	16,16,72,1,16,16,76,10
	db	32,0,80,1,32,0,84,10
	db	32,16,88,1,32,16,92,10

	db	134,11
	db	160,224,64,1,160,224,68,10		;SE
	db	160,240,72,1,160,240,76,10
	db	176,224,80,1,176,224,84,10
	db	176,240,88,1,176,240,92,10

	db	158,17
	db	16,0,64,1,16,0,68,10			;NW
	db	16,16,72,1,16,16,76,10
	db	32,0,80,1,32,0,84,10
	db	32,16,88,1,32,16,92,10

	db	172,13
	db	16,112,64,1,16,112,68,10
	db	16,128,72,1,16,128,76,10
	db	32,112,80,1,32,112,84,10
	db	32,128,88,1,32,128,92,10

	db	186,14
	db	112,112,64,1,112,112,68,10
	db	112,128,72,1,112,128,76,10
	db	128,112,80,1,128,112,84,10
	db	128,128,88,1,128,128,92,10

	db	200,9
	db	16,112,64,1,16,112,68,10
	db	16,128,72,1,16,128,76,10
	db	32,112,80,1,32,112,84,10
	db	32,128,88,1,32,128,92,10

	db	212,10
	db	80,222,64,1,80,222,68,10
	db	80,238,72,1,80,238,76,10
	db	96,222,80,1,96,222,84,10
	db	96,238,88,1,96,238,92,10

	db	224,11
	db	159,112,64,1,159,112,68,10
	db	159,128,72,1,159,128,76,10
	db	175,112,80,1,175,112,84,10
	db	175,128,88,1,175,128,92,10

	db	236,12
	db	80,0,64,1,80,0,68,10
	db	80,16,72,1,80,16,76,10
	db	96,0,80,1,96,0,84,10
	db	96,16,88,1,96,16,92,10

	db	248,15
	db	16,112,64,1,16,112,68,10
	db	16,128,72,1,16,128,76,10
	db	32,112,80,1,32,112,84,10
	db	32,128,88,1,32,128,92,10

	db	255

elb5_entering:
	db	0,55
	
elb5_eventlist:
	db	13,15
	db	88,120,64,0,88,120,68,0			;N
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0

	db	19,61
	db	88,120,64,0,88,120,68,0			;N
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0

	db	27,62
	db	152,120,64,0,152,120,68,0		;S
	db	152,120,64,0,152,120,68,0
	db	152,120,64,0,152,120,68,0
	db	152,120,64,0,152,120,68,0
	db	152,120,64,0,152,120,68,0
	db	152,120,64,0,152,120,68,0

	db	35,15
	db	88,120,64,0,88,120,68,0			;N
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0

	db	61,63
	db	88,120,64,0,88,120,68,0			;N
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0

	db	69,64
	db	88,56,64,0,88,56,68,0			;W
	db	88,56,64,0,88,56,68,0
	db	88,56,64,0,88,56,68,0
	db	88,56,64,0,88,56,68,0
	db	88,56,64,0,88,56,68,0
	db	88,56,64,0,88,56,68,0

	db	85,63
	db	88,184,64,0,88,184,68,0			;W
	db	88,184,64,0,88,184,68,0
	db	88,184,64,0,88,184,68,0
	db	88,184,64,0,88,184,68,0
	db	88,184,64,0,88,184,68,0
	db	88,184,64,0,88,184,68,0

	db	93,65
	db	88,120,64,0,88,120,68,0			;N
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0

	db	101,66
	db	88,120,64,0,88,120,68,0			;N
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0

	db	109,50
	db	88,120,64,0,88,120,68,0			;N
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0

	db	117,15
	db	88,120,64,0,88,120,68,0			;N
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0

	db	145,65
	db	88,120,64,0,88,120,68,0			;N
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0

	db	153,66
	db	88,120,64,0,88,120,68,0			;N
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0

	db	161,50
	db	88,120,64,0,88,120,68,0			;N
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0

	db	169,15
	db	88,120,64,0,88,120,68,0			;N
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0
	db	88,120,64,0,88,120,68,0

	db	255
level5_music:
	include "Bezqarrak.asm"

last_spmove:					;last boss sprite management routine
	ld	hl,actpat+36			;same as always, only difference the arms management
	sub	61				;cp 61
	jr	z,down5
	dec	a				;cp 62
	jr	z,up5
	dec	a				;cp 63
	jr	z,left5
	dec	a				;cp 64
	jr	z,right5
	dec	a				;cp 65
	jr	z,left_diag_arm
	dec	a				;cp 66
	jr	z,right_diag_arm
	ld	a,15
	jp	pattern_set
down5:
;	ld	b,12
;	ld	c,1
	ld	bc,12*256 + 1			;MDL
	ld	d,0
	ld	a,13
	call	loop_sp
	jp	actpat_set
up5:
;	ld	b,12
;	ld	c,1
	ld	bc,12*256 + 1			;MDL
	ld	d,0
	ld	a,14
	call	loop_sp
	jp	actpat_set
left5:
;	ld	b,12
;	ld	c,1
	ld	bc,12*256 + 1			;MDL
	ld	d,0
	ld	a,16
	call	loop_sp
	jp	actpat_set
right5:
;	ld	b,12
;	ld	c,1
	ld	bc,12*256 + 1			;MDL
	ld	d,0
	ld	a,17
	call	loop_sp
	jp	actpat_set
left_diag_arm:
	xor	a
	ld	(right_arm),a			;reset right arm flag
	inc	a
	ld	(left_arm),a			;and set left arm flag
	jp	arm_set				;MDL
right_diag_arm:
	xor	a
	ld	(left_arm),a			;reset left arm flag
	inc	a
	ld	(right_arm),a			;and set right arm flag
arm_set:
	ld	a,4				;closed eye (when arms move the eye is closed
	ld	(eye),a				;and the boss can't be hit)
;	ld	b,12
;	ld	c,0
	ld	bc,12*256
	ld	d,c				;c=0 infact set all the 12 sprites (see b value)
	ld	a,15				;as inactive so they will be automatically skipped
	call	loop_sp				;when checking for collision
	jp	actpat_set			;pattern is set as "stopped"




last_boss:					;here starts Bezqarrat (last boss) plotting routine
	ld	a,(frame_delay)			;animation counter. animations are updated every 4 vblanks
	inc	a
	ld	(frame_delay),a
	sub	4
	jp	nz,skip_paw_frame
	ld	(frame_delay),a
	ld	a,(lclaw)			;claws has two frames each, 7 bytes long and are
	xor	7				;displayed reversed. when left is open, right i closed
	ld	(lclaw),a			;and vice versa. 
	xor	7				;XORing lclaw with 7 will set it as 0 if it was 7 and vice
	ld	(rclaw),a			;versa. after the xor lclaw will have rclaw same value
	ld	a,(bossframe)			;so doing another xor we change rclaw
	inc	a				;now we can increase the frame value for Boss paws
	cp	4				
	call	z,frm_rst5
	ld	(bossframe),a
skip_paw_frame:					;this works as usual, except the value 15
	ld	hl,actpat+37			;this time it act differently
	ld	a,(hl)
	sub	13				;cp 13
	jr	z,last_down
	dec	a				;cp 14
	jr	z,last_up
	dec	a				;cp 15
	jp	z,check_action
	dec	a				;cp 16
	jr	z,last_left
	dec	a				;cp 17
	jr	z,last_right
	ret

last_right:
	call	clear_up
	ld	hl,(boss_pos)
	inc	hl
	ld	(boss_pos),hl
	jp	last_nametable
last_left:
	call	clear_up
	ld	hl,(boss_pos)
	dec	hl
	ld	(boss_pos),hl
	jp	last_nametable
last_down:
	call	clear_up
	ld	bc,32
	ld	hl,(boss_pos)
	add	hl,bc
	ld	(boss_pos),hl
	jp	last_nametable
last_up:
	call	clear_up
	ld	bc,-32
	ld	hl,(boss_pos)
	add	hl,bc
	ld	(boss_pos),hl
last_nametable:					;nothing different here from other bosses
	ld	hl,(boss_pos)
	ld	de,chstart-704
	add	hl,de
	ex	de,hl
	ld	hl,ELB_data5
	ld	a,12
last_draw_body:
	ld	bc,13
	ldir
	push	hl
	ld	hl,19
	add	hl,de
	ex	de,hl
	pop	hl
	dec	a
	jp	nz,last_draw_body
last_draw_paws:					;paws animation
	ld	de,chstart-704			;nametable origin
	ld	hl,(boss_pos)			;boss offset
	ld	bc,62				;further offset needed to draw first char of
	add	hl,bc				;left paws gfx
	add	hl,de
	ex	de,hl				;when all offsets are added put result on de (as destination) 
	call	set_frame5			;ang go to set frame gfx source (as usual)
	ld	b,6				;paws gfx is 6 rows tall
draw_paws:
	ldi					;copy from hl to de
	ldi					;copy from hl to de
	ld	a,12				;byte offset to add for right paws
	add	a,e				;add offset using 8bit addictions
	ld	e,a				;faster than 16bit addiction, we won't waste
	adc	a,d				;hl (source), bc (row counter) wich are in use 
	sub	e				;and will update correctly de (destination)
	ld	d,a
	ldi					;copy from hl to de
	ldi					;again
	ld	a,16				;add offset to reach next row of left paw gfx
	add	a,e
	ld	e,a
	adc	a,d
	sub	e
	ld	d,a
	djnz	draw_paws			;do the loop
draw_eye:					;ok ,we have plotted body and paws. now is eye's turn
	ld	a,(eye)				;load eye frame offset (0=frame1/open, 4=frame2/closed
	ld	hl,(boss_pos)			;8= frame3/full open). Load boss position offset
	ld	de,chstart-411			;and eye offset ready to be added to boss offset
	add	hl,de
	ex	de,hl				;now we have destination in d
	ld	hl,eyeframe			;set temp origin
	add	a,l				;and add frame offset
	ld	l,a
	adc	a,h
	sub	l
	ld	h,a
	ldi					;copy 2 bytes
	ldi
	push	hl				;save source position
	ld	hl,30				;set hl as offset for next destination location
	add	hl,de				;add to de
	ex	de,hl				;and set it to de
	pop	hl				;restore source position
	ldi					;and copy again 2 bytes from source to destination
	ldi
draw_left_claw:					;time to draw claws
	ld	hl,(boss_pos)			;determine the drawing position through our offsets
	ld	bc,(boss_pos2)	
	add	hl,bc
	ld	de,chstart-352			;and our accordingly set namatable origin
	add	hl,de
	ex	de,hl
	ld	hl,left_clawframe		;as always we determine wich frame has to be displayed
	ld	a,(lclaw)			;so, as you can see, nothing new here
	add	a,l
	ld	l,a
	adc	a,h
	sub	l
	ld	h,a
	ldi
	ldi
	push	hl
	ld	hl,29
	add	hl,de
	ex	de,hl
	pop	hl
	ldi
	ldi
	ldi
	push	hl
	ld	hl,29
	add	hl,de
	ex	de,hl
	pop	hl
	ldi
	ldi
draw_right_claw:				;same , but for right claw
	ld	hl,(boss_pos)
	ld	bc,(boss_pos3)
	add	hl,bc
	ld	de,chstart-342
	add	hl,de
	ex	de,hl
	ld	hl,right_clawframe
	ld	a,(rclaw)
	add	a,l
	ld	l,a
	adc	a,h
	sub	l
	ld	h,a
	ldi
	ldi
	push	hl
	ld	hl,30
	add	hl,de
	ex	de,hl
	pop	hl
	ldi
	ldi
	ldi
	push	hl
	ld	hl,30
	add	hl,de
	ex	de,hl
	pop	hl
	ldi
	ldi
	ret

clear_up:					;this one to erase the whole boss
	ld	hl,(boss_pos)			;we could have used unrolled ldir as we did somwhere
	ld	de,chstart-704			;else but there wasn't need to do it
	add	hl,de
;	ld	(hl),0
	ld	(hl),e				;MDL  e=0 here infact chstart-704= 0e5c0h-704=0e300h   
						;1byte, 3 t-states
	ex	de,hl
	ld	h,d
	ld	l,e
	inc	e
	ld	bc,428
	ldir
	ret

check_action:					;this one updates mobile objects positions and frames
	ld	a,(boss_fire)
	or	a
	jr	nz,last_fire
	ld	a,(right_arm)
	dec	a
	jr	z,right_diag
	ld	a,(left_arm)
	dec	a
	jr	z,left_diag
	jp	last_nametable
right_diag:
	ld	hl,(boss_pos3)
	ld	bc,33
	add	hl,bc
	ld	(boss_pos3),hl
	ld	hl,(boss_pos2)
	ld	de,chstart-311
	add	hl,de
	ld	(hl),a
	ld	de,32
	add	hl,de
	ld	(hl),a
	inc	l
	ld	(hl),a
	ld	hl,(boss_pos2)
	ld	bc,-31
	add	hl,bc
	ld	(boss_pos2),hl
	jp	last_nametable
left_diag:
	ld	hl,(boss_pos2)
	ld	bc,31
	add	hl,bc
	ld	(boss_pos2),hl
	jp	last_nametable
last_fire:
	xor	a
	ld	(right_arm),a
	ld	a,8
	ld	(eye),a
	ld	a,(boss_fire)
	or	a
	call	nz,last_bossfire
	ld	hl,(boss_pos3)
	ld	a,h
	or	l
	jp	z,last_nametable
	xor	a
	ld	de,chstart-298
	add	hl,de
	ld	(hl),a
	ld	de,31
	add	hl,de
	ld	(hl),a
	inc	l
	ld	(hl),a
	ld	hl,(boss_pos3)
	ld	bc,-33
	add	hl,bc
	ld	(boss_pos3),hl
	jp	last_nametable

set_frame5:
	ld	a,(bossframe)
	ld	b,a
	ld	a,-24
sel_frm5:
	add	a,24
	djnz	sel_frm5
boss5_frm1:
	ld	hl,last_frames
	add	a,l
	ld	l,a
	adc	a,h
	sub	l
	ld	h,a
	ret	

last_bossfire:
	ld	hl,chstart-305
	ld	de,31
	ld	a,30
;	ld	b,10
;	ld	c,31
	ld	bc,10*256 + 31
giga5_loop:
	ld	(hl),a
	inc	l
	ld	(hl),c
	add	hl,de
	djnz	giga5_loop
	ld	a,6
	ld	(sfx_nr),a
	ld	a,(boss_fire)
	dec	a
	ld	(boss_fire),a
	ret	nz
nofire_level5:
	xor	a
	ld	(boss_fire),a
	ld	hl,chstart-305
	ld	de,31
	ld	b,10
;	xor	a				;a is already 0 here
erase_last_fire:
	ld	(hl),a
	inc	l
	ld	(hl),a
	add	hl,de
	djnz	erase_last_fire
	ld	(eye),a
	ret	

endboss_firecollision5:
	ld	hl,ramspttbl+1			;point to player xpos
;	ld	b,105		
;	ld	c,135	
	ld	bc,105*256 + 135	
	ld	a,(hl)				;player xpos in a
	cp	b
	ret	c
	cp	c
	ret	nc
	jp	i_am_dead

frm_rst5:
	ld	a,1
	ret

last_frames:
paws1:
		;left	right			;bosspos +62
	db	045,041,044,059			;+13 +17
	db	000,125,123,060			;+13 +17
	db	047,043,042,046			;+13 +17
	db	058,125,123,125			;+13 +17
	db	045,041,044,059			;+13 +17
	db	000,125,123,060			;+13
paws2:
		;left	right
	db	118,116,117,119
	db	120,125,123,121
	db	118,116,117,119
	db	120,125,123,121
	db	118,116,117,119
	db	120,125,123,121
paws3:
		;left	right
	db	047,043,042,046
	db	058,125,123,125
	db	045,041,044,059
	db	000,125,123,060
	db	047,043,042,046
	db	058,125,123,125

eyeframe:
open:
	db	103,104				;+31
	db	099,100
closed:
	db	110,105
	db	101,102
full_open:
	db	091,098
	db	099,100
left_clawframe:
left_open_claw:
	db	033,105
	db	106,107,036
	db	108,109
left_closed_claw:
	db	033,105
	db	106,107,036
	db	112,113
right_clawframe:
right_open_claw:
	db	110,034
	db	035,106,107
	db	108,109
right_closed_claw:
	db	110,034
	db	035,106,107
	db	112,113

ELB_data5:
	db	000,033,062,062,062,062,062,062,062,062,034,000,000			;+20
	db	033,062,062,062,061,062,062,063,062,062,037,034,000			;+20
	db	039,062,062,062,062,062,062,062,062,062,062,111,123			;+20
	db	038,062,062,110,062,062,062,062,063,062,062,063,123			;+20
	db	039,062,062,062,062,062,062,062,062,062,062,111,123			;+20
	db	038,062,062,062,110,062,062,063,062,062,062,063,123			;+20
	db	039,062,062,061,062,062,062,062,062,062,062,111,123			;+20
	db	038,062,062,062,062,062,062,062,063,062,062,063,123			;+20
	db	039,062,062,110,062,062,062,062,062,062,062,111,123			;+20
	db	035,061,062,062,062,062,062,062,062,062,062,122,124			;+20
	db	000,035,061,062,062,062,062,062,062,062,122,124,000			;+20
	db	033,105,035,064,064,114,115,064,064,122,110,034,000			;+20

LEVEL5MAP:
	db	0
	db	255,0												;000
	db	255,0												;001
	db	255,0												;002
	db	255,0												;003
	db	255,0												;004
	db	255,0												;005
	db	255,0												;006
	db	255,0												;007
	db	255,0												;008
	db	255,0												;009
	db	255,0												;010
	db	255,0												;011
	db	255,0												;012
	db	253,0,19,27,254,0,19,27,252,0									;021
	db	27,252,0,0,0,6,16,24,27,252,3,253,0,19,27,19,16,24,27,0,0,0					;022
	db	24,27,252,0,0,5,29,29,28,252,2,253,0,16,24,16,29,29,24,27,0,0					;023
	db	29,24,10,252,0,5,29,29,9,252,2,253,0,13,29,15,13,29,29,24,27,0					;024
	db	29,29,9,252,0,4,13,29,9,2,1,2,2,252,0,19,27,0,0,7,29,11,12,13,29,29,24,27			;025
	db	29,29,9,252,0,0,17,29,9,2,0,2,2,0,0,0,6,16,24,27,0,5,15,8,0,7,29,29,29,24			;026
	db	29,29,26,252,0,19,16,29,9,1,0,1,2,0,0,0,5,29,29,28,0,4,14,0,0,5,252,29				;027
	db	29,29,28,0,0,0,19,16,29,15,8,0,0,0,2,0,0,0,5,29,29,9,0,19,27,19,0,4,13,29,29,29			;028
	db	29,29,26,0,0,19,16,29,15,14,252,0,2,0,0,0,18,29,29,26,19,16,24,16,27,0,12,13,29,29		;029
	db	29,29,24,27,19,16,29,29,25,252,0,0,2,0,0,19,16,29,29,24,16,29,29,29,24,27,0,12,13,29		;030
	db	29,29,29,24,16,29,29,29,24,27,252,0,1,0,19,16,252,29,29,29,23,29,29,24,27,0,12,13		;031
	db	13,252,29,29,23,29,29,24,27,252,0,19,16,253,29,29,29,29,24,27,0,12				;032
	db	12,13,253,29,24,27,0,0,19,16,253,29,252,29,29,24,27,0						;033
	db	0,12,13,253,29,24,27,19,16,253,29,252,29,29,29,29,24,27						;034
	db	0,0,12,13,253,29,24,16,254,29,29,24								;035
	db	0,0,0,12,13,254,29,29,22,253,29,29								;036
	db	252,0,12,13,254,29,21,253,29,15									;037
	db	252,0,0,12,13,254,29,252,29,29,29,29,15,14							;038
	db	252,0,0,0,12,13,254,29,252,29,29,15,14,0							;039
	db	252,0,0,0,0,7,254,29,252,29,15,14,0,0								;040
	db	252,0,0,0,0,5,252,29,22,253,29,252,29,29,29,29,11,0,0,0						;041
	db	252,0,0,0,0,5,252,29,21,253,29,252,29,29,29,29,9,0,0,0						;042
	db	252,0,0,0,0,5,254,29,252,29,9,0,0,3								;043
	db	252,0,0,0,0,4,13,254,29,29,29,15,8,0,0,2							;044
	db	253,0,12,13,254,29,15,14,0,0,0,2								;045
	db	253,0,0,12,13,253,29,252,29,29,29,29,11,252,0,2							;046
	db	253,0,0,0,12,13,29,29,15,13,252,29,29,23,252,29,9,252,0,2					;047
	db	253,0,0,0,0,12,13,15,14,12,13,253,29,15,8,252,0,2						;048
	db	253,0,252,0,12,14,0,0,12,13,252,29,29,29,15,14,252,0,0,2					;049
	db	254,0,0,12,13,252,29,15,14,252,0,0,0,1								;050
	db	254,0,0,0,12,13,29,29,15,14,253,0								;051
	db	254,0,0,0,0,12,13,15,14,253,0,0									;052
	db	254,0,252,0,12,14,253,0,0,0									;053
	db	255,0												;054
	db	255,0												;055
	db	255,0												;056
	db	255,0												;057
	db	255,0												;058
	db	255,0												;059
	db	255,0												;060
	db	252,0,19,27,254,0,253,0,0,0									;061
	db	0,0,0,19,16,28,254,0,253,0,0,0									;062
	db	0,0,19,16,29,9,254,0,253,0,0,0									;063
	db	0,0,20,29,15,8,254,0,253,0,0,0									;064
	db	0,0,5,15,14,254,0,253,0,0,0,0									;065
	db	0,0,4,14,254,0,253,0,252,0									;066
	db	255,0												;067
	db	254,0,253,0,0,0,19,10,252,0									;068
	db	254,0,253,0,0,19,16,9,252,0									;069
	db	254,0,253,0,0,16,29,9,252,0									;070
	db	254,0,253,0,0,13,29,9,252,0									;071
	db	254,0,253,0,0,7,13,9,252,0									;072
	db	254,0,253,0,0,4,7,9,252,0									;073
	db	254,0,253,0,0,0,5,26,252,0									;074
	db	254,0,253,0,0,0,5,24,27,0,0,0									;075
	db	254,0,253,0,0,0,4,13,24,27,0,0									;076
	db	254,0,253,0,0,0,0,12,13,24,27,0									;077
	db	254,0,253,0,252,0,12,13,24,27									;078
	db	253,0,252,0,19,27,253,0,252,0,0,0,0,12,13,24							;079
	db	0,253,0,0,0,19,16,24,27,253,0,252,0,0,0,0,12,13							;080
	db	0,253,0,0,19,16,15,13,24,27,253,0,252,0,0,0,0,12						;081
	db	0,253,0,19,16,15,14,12,13,24,27,253,0,252,0,0,0,0						;082
	db	253,0,19,16,15,14,0,0,17,29,24,27,253,0,252,0,0,0						;083
	db	252,0,0,0,0,19,16,15,14,0,0,0,20,15,13,24,27,253,0,252,0,0					;084
	db	252,0,0,0,19,16,15,14,252,0,18,11,17,29,28,253,0,252,0,0					;085
	db	252,0,0,0,20,15,14,252,0,6,16,9,20,29,9,253,0,252,0,0						;086
	db	252,0,0,0,4,14,252,0,0,5,29,26,18,29,9,253,0,252,0,0						;087
	db	0,253,0,252,0,5,29,24,16,15,8,253,0,252,0,0							;088
	db	0,253,0,252,0,4,13,29,15,14,253,0,252,0,0,0							;089
	db	0,253,0,252,0,0,12,13,11,253,0,252,0,0,0,0							;090
	db	0,253,0,252,0,0,0,7,9,253,0,252,0,0,0,0								;091
	db	0,253,0,252,0,0,0,4,8,253,0,252,0,0,0,0								;092
	db	255,0												;093
	db	252,0,0,3,254,0,253,0,0,0									;094
	db	252,0,0,2,254,0,253,0,0,0									;095
	db	252,0,0,2,254,0,253,0,0,0									;096
	db	0,0,3,0,0,2,254,0,253,0,0,0									;097
	db	0,0,2,0,0,2,254,0,0,0,3,252,0,0,0,0								;098
	db	0,0,2,0,0,2,254,0,0,3,2,252,0,0,0,0								;099
	db	0,0,2,0,0,2,254,0,3,2,2,252,0,0,0,0								;100
	db	0,0,2,0,0,2,253,0,252,0,0,0,0,3,2,2,2,252,0,0,0,0						;101
	db	0,0,2,0,0,2,253,0,252,0,0,0,0,252,2,252,0,0,0,0							;102
	db	0,0,2,0,0,1,253,0,252,0,0,0,0,1,2,2,2,252,0,0,0,0						;103
	db	0,0,2,254,0,19,27,0,1,2,2,252,0,19,27,0								;104
	db	0,0,1,253,0,252,0,0,0,0,19,16,24,27,0,1,1,0,0,0,19,16,24,27					;105
	db	252,0,0,19,27,253,0,19,27,19,16,29,29,24,27,19,27,0,0,19,16,29,29,24				;106
	db	252,0,19,16,24,27,252,0,0,0,19,16,24,16,252,29,24,16,24,27,19,16,252,29				;107
	db	0,0,0,19,16,29,29,24,27,0,0,19,27,19,16,253,29,15,13,24,16,252,29,29				;108
	db	0,0,19,16,252,29,24,27,19,16,24,16,253,29,15,14,12,13,252,29,23,29				;109
	db	0,19,16,252,29,29,29,24,16,253,29,29,29,15,14,0,0,12,13,15,13,29,29,29				;110
	db	19,16,254,29,29,29,15,14,252,0,12,14,12,13,15,13						;111
	db	16,254,29,29,29,15,14,253,0,12,14,12								;112
	db	252,29,29,29,22,253,29,29,29,29,15,14,253,0,252,0						;113
	db	252,29,29,29,21,253,29,29,29,15,14,253,0,252,0,0						;114
	db	254,29,29,25,253,0,252,0,0,0									;115
	db	254,29,29,24,27,253,0,252,0,0									;116
	db	254,29,29,29,24,27,253,0,252,0									;117
	db	254,29,29,29,29,24,27,253,0,0,0,0								;118
	db	254,29,252,29,24,27,253,0,0,0									;119
	db	254,29,29,29,23,29,29,24,253,0,0,0								;120
	db	254,29,252,29,29,15,253,0,0,0									;121
	db	254,29,252,29,15,14,253,0,0,0									;122
	db	254,29,29,29,29,15,14,253,0,0,0,0								;123
	db	254,29,29,29,29,25,253,0,252,0									;124
	db	254,29,29,29,29,24,27,253,0,0,0,0								;125
	db	254,29,252,29,24,27,253,0,0,0									;126
	db	29,22,254,29,29,29,29,24,27,253,0,0								;127
	db	29,21,254,29,252,29,24,27,253,0									;128
	db	254,29,252,29,29,23,29,24,27,252,0,0,0,0							;129
	db	254,29,253,29,24,10,252,0,0,0									;130
	db	254,29,253,29,29,26,252,0,0,0									;131
	db	254,29,253,29,29,24,252,0,0,0									;132
	db	254,29,253,29,29,15,252,0,0,0									;133
	db	254,29,253,29,29,25,252,0,0,0									;134
	db	254,29,253,29,29,24,27,252,0,19									;135
	db	254,29,253,29,29,29,24,27,0,0,19,16								;136
	db	254,29,253,29,29,29,29,24,27,19,16,29								;137
	db	254,29,29,22,253,29,29,29,24,16,29,29								;138
	db	254,29,29,21,253,29,252,29,29,29								;139
	db	255,29												;140
	db	255,29												;141
	db	255,29												;142
	db	255,29												;143
	db	252,29,29,22,254,29,253,29,29,29								;144
	db	252,29,29,21,254,29,253,29,29,29								;145
	db	255,29												;146
	db	254,29,253,29,29,23,252,29,29,29								;147
	db	255,29												;148
	db	255,29												;149
	db	255,29												;150
	db	255,29												;151
	db	255,29												;152
	db	253,29,23,254,29,252,29,29,29,29								;153
	db	255,29												;154
	db	255,29												;155
	db	255,29												;156
	db	254,29,253,29,29,29,22,252,29,29								;157
	db	254,29,253,29,29,29,21,252,29,29								;158
	db	255,29												;159
	db	255,29												;160
	db	254,29,15,13,253,29,252,29,29,29								;161
	db	253,29,252,29,29,29,29,15,14,12,13,253,29,252,29,29						;162
	db	253,29,252,29,29,29,15,14,0,0,12,13,252,29,29,29,23,252,29,29					;163
	db	253,29,252,29,29,15,14,252,3,12,13,253,29,29,29,29						;164
	db	253,29,252,29,15,14,0,252,1,0,12,13,253,29,29,29						;165
	db	253,29,252,29,25,253,0,7,253,29,29,29								;166
	db	253,29,252,29,24,27,252,0,0,0,0,5,253,29,29,29							;167
	db	253,29,252,29,29,24,27,252,0,0,0,5,29,22,253,29							;168
	db	253,29,252,29,29,29,24,27,10,252,0,5,29,21,253,29						;169
	db	253,29,252,29,29,29,29,24,9,252,0,18,253,29,29,29						;170
	db	254,29,9,0,0,0,19,16,253,29,29,29								;171
	db	252,29,22,253,29,29,29,15,8,0,0,6,16,253,29,29,29,29						;172
	db	252,29,21,253,29,29,15,14,0,0,0,5,253,29,252,29							;173
	db	253,29,252,29,29,15,14,252,0,5,253,29,252,29							;174
	db	253,29,252,29,15,14,252,0,0,5,253,29,252,29							;175
	db	253,29,252,29,25,252,0,0,0,5,253,29,252,29							;176
	db	253,29,252,29,24,10,252,0,0,5,253,29,252,29							;177
	db	253,29,252,29,29,9,252,0,0,5,253,29,252,29							;178
	db	253,29,252,29,29,9,252,0,0,4,13,253,29,29,29,29							;179
	db	253,29,252,29,29,9,252,0,0,0,12,13,253,29,29,29							;180
	db	253,29,252,29,29,26,252,0,0,0,0,12,13,29,29,15,13,29,29,23,29,29				;181
	db	253,29,252,29,29,24,10,252,0,0,0,0,12,13,15,14,12,13,252,29					;182
	db	253,29,252,29,29,29,26,253,0,12,14,0,0,12,13,15,13,29						;183
	db	253,29,252,29,29,29,24,10,253,0,252,0,12,14,12,13						;184
	db	23,253,29,252,29,29,29,26,253,0,252,3,0,0,0,12							;185
	db	253,29,252,29,29,29,29,24,27,252,0,0,0,0,252,2,252,3						;186
	db	13,253,29,252,29,29,29,29,24,10,252,0,0,0,253,2							;187
	db	7,254,29,9,252,0,0,0,253,2									;188
	db	5,254,29,9,252,0,0,0,253,2									;189
	db	5,254,29,9,252,0,0,0,253,1									;190
	db	4,13,253,29,252,29,29,29,29,9,253,0,252,0,0,0							;191
	db	0,12,13,29,29,29,22,253,29,29,15,8,253,0,252,0,0,0						;192
	db	0,0,12,13,29,29,21,253,29,15,14,253,0,252,0,0,0,0						;193
	db	0,0,0,12,13,253,29,29,15,14,254,0								;194
	db	252,3,7,252,29,29,29,15,13,15,14,254,0,0							;195
	db	252,1,5,252,29,29,15,14,12,14,254,0,0,0								;196
	db	252,0,5,15,13,15,13,15,14,254,0,252,0,0								;197
	db	252,0,4,14,12,14,12,14,254,0,252,0,0,0								;198
	db	255,0												;199
	db	255,0												;207
	db	254,0,253,0,252,0,0,0,0,3									;208
	db	254,0,253,0,252,0,0,0,0,2									;209
	db	254,0,253,0,252,0,0,0,0,2									;210
	db	254,0,253,0,252,0,0,0,0,2									;211
	db	254,0,253,0,252,0,0,0,0,2									;212
	db	254,0,253,0,252,0,0,0,0,2									;213
	db	253,0,252,0,0,0,3,254,0,2									;214
	db	253,0,252,0,0,0,2,254,0,1									;215
	db	253,0,252,0,0,0,2,254,0,0									;216
	db	253,0,252,0,0,0,2,254,0,0									;217
	db	253,0,252,0,0,0,2,3,254,0									;218
	db	253,0,252,0,0,0,2,2,254,0									;219
	db	253,0,252,0,0,0,2,2,254,0									;220
	db	253,0,252,0,0,0,1,2,254,0									;221
	db	253,0,252,0,0,0,0,1,254,0									;222
	db	255,0												;223
	db	255,0												;227
	db	254,0,253,0,19,10,252,0,0,0									;228
	db	254,0,252,0,0,0,0,6,16,26,252,0,0,0								;229
	db	254,0,252,0,0,0,0,5,29,24,27,252,0,0								;230
	db	254,0,252,0,0,0,0,5,29,29,24,27,252,0								;231
	db	254,0,252,0,0,0,0,5,29,29,29,24,27,0,0,0							;232
	db	252,0,19,27,254,0,0,4,13,29,29,29,24,10,0,0							;233
	db	27,0,0,19,16,24,27,254,0,0,12,13,29,29,29,9,0,0							;234
	db	24,27,19,16,29,23,24,27,254,0,0,12,13,29,29,9,0,0						;235
	db	29,24,16,252,29,24,10,254,0,0,7,29,23,26,0,0							;236
	db	253,29,9,254,0,0,4,13,29,24,27,0								;237
	db	252,29,29,29,29,15,8,253,0,252,0,0,0,0,3,3,3,12,13,29,24,10					;238
	db	252,29,29,29,15,14,254,0,2,2,2,0,7,29,29,9							;239
	db	252,29,29,29,25,254,0,0,2,2,2,0,18,29,29,9							;240
	db	252,29,29,29,24,27,254,0,1,1,1,19,16,29,29,9							;241
	db	252,29,29,29,29,24,27,253,0,0,19,27,252,0,0,0,19,16,29,23,29,9					;242
	db	253,29,24,27,0,0,0,6,27,0,0,19,16,24,27,252,0,19,16,252,29,26					;243
	db	253,29,29,24,27,0,0,5,24,27,19,16,29,29,24,27,0,0,19,16,22,252,29,24				;244
	db	253,29,29,29,24,27,0,5,29,24,16,252,29,24,27,19,16,29,21,252,29,29				;245
	db	253,29,29,29,29,24,27,18,253,29,24,16,253,29							;246
	db	253,29,252,29,24,16,254,29,29,29								;247
	db	255,29												;248
	db	255,29												;249
	db	255,29												;250
	db	255,29												;251
	db	255,29												;252
	db	255,29												;253
	db	255,29												;254
	db	253,29,252,29,22,253,29,252,29,29,29,23,252,29							;255
	db	253,29,252,29,21,254,29,29,29,29								;256
	db	255,29												;257
	db	255,29												;258
	db	255,29												;259
	db	253,29,252,29,29,29,29,15,13,253,29,252,29,29,29,29						;260
	db	29,29,22,252,29,29,29,29,15,13,29,29,15,14,12,13,253,29,252,29,29,29				;261
	db	29,29,21,252,29,29,29,15,14,12,13,15,14,0,0,12,13,252,29,29,29,29,15,13,252,29			;262
	db	252,29,29,29,15,13,15,14,0,0,12,14,252,0,12,13,252,29,29,29,11,12,13,29,29,15			;263
	db	252,29,29,15,14,12,14,253,0,0,0,12,13,252,29,29,9,0,12,13,15,14					;264
	db	15,13,29,29,15,14,253,0,252,0,0,0,12,13,252,29,9,0,0,12,14,0					;265
	db	14,12,13,15,14,254,0,12,13,29,29,15,8,252,0,0							;266
	db	0,0,12,14,254,0,0,0,12,13,15,14,252,0,0,0							;267
	db	254,0,252,0,0,0,0,12,14,252,0,0,0,0								;268
	db	255,0												;269
	db	255,0												;270
	db	255,0												;271
	db	255,0												;272
	db	255,0												;273
	db	255,0												;271
	db	255,0												;272
	db	255,0												;273
	db	255,0												;272
	db	255,0												;273
	db	251

boss5_t1:
	db	05Fh,03Fh,05Fh,03Fh,05Fh,03Fh,05Fh,03Fh    ;030
	db	0FCh,0FAh,0FCh,0FAh,0FCh,0FAh,0FCh,0FAh    ;031
	db	000h,000h,000h,000h,000h,000h,000h,000h    ;032
	db	003h,00Fh,01Fh,03Fh,07Fh,07Fh,03Fh,01Fh    ;033
	db	0C0h,0F0h,0F8h,0FCh,0FEh,0FEh,0F9h,0FEh    ;034
	db	07Fh,01Fh,07Fh,07Fh,03Fh,01Fh,00Fh,003h    ;035
	db	0FEh,0F9h,0FEh,0FEh,0FCh,0F8h,0F0h,0C0h    ;036
	db	000h,020h,040h,000h,080h,000h,080h,000h    ;037
	db	080h,008h,024h,002h,002h,084h,040h,060h    ;038
	db	080h,040h,080h,090h,060h,080h,0E0h,080h    ;039
	db	000h,000h,000h,080h,080h,000h,000h,000h    ;040
	db	0C0h,0F3h,0EFh,0DFh,0DFh,03Fh,00Fh,007h    ;041
	db	003h,0CFh,0F7h,0FBh,0FBh,0FCh,0F0h,0E0h    ;042
	db	007h,00Fh,03Fh,0DFh,0DFh,0EFh,0F3h,0C0h    ;043
	db	0E0h,0F0h,0FCh,0FBh,0FBh,0F7h,0CFh,003h    ;044
	db	007h,00Fh,01Fh,03Fh,07Ch,0F8h,0F0h,0E0h    ;045
	db	0E0h,0F0h,0F8h,0FCh,03Eh,01Fh,00Fh,007h    ;046
	db	0CCh,000h,046h,000h,001h,003h,007h,00Fh    ;047
boss5_t1_end:
boss5_t2:
	db	00Fh,00Eh,00Eh,00Eh,00Fh,007h,01Fh,00Eh    ;058
	db	033h,000h,05Ah,000h,080h,0C0h,0E0h,0F0h    ;059
	db	0F0h,070h,070h,070h,0F0h,0E0h,0F8h,070h    ;060
	db	000h,020h,040h,040h,048h,020h,022h,010h    ;061
	db	000h,000h,000h,000h,000h,000h,000h,000h    ;062
	db	079h,006h,001h,006h,009h,001h,002h,000h    ;063
	db	000h,000h,000h,000h,000h,000h,001h,0FEh    ;064
boss5_t2_end:
boss5_t3:
	db	0E0h,0F8h,0FCh,0FAh,03Eh,01Fh,00Fh,00Fh    ;098
	db	0F2h,0F0h,0F8h,07Ch,07Fh,03Fh,01Dh,007h    ;099
	db	00Fh,00Fh,01Fh,03Eh,0FEh,0FCh,0F8h,0E0h    ;100
	db	003h,07Ch,07Fh,0B7h,0B8h,05Fh,0A7h,0C8h    ;101
	db	0C0h,03Eh,0FEh,0EDh,09Dh,0FAh,0E5h,013h    ;102
	db	000h,00Eh,010h,007h,03Ch,038h,0F0h,0F0h    ;103
	db	000h,070h,008h,0E0h,03Ch,01Ch,00Fh,00Fh    ;104
	db	099h,0E6h,0FAh,0FDh,0FDh,0FEh,0FEh,0FFh    ;105
	db	098h,066h,05Eh,0BEh,0BEh,07Eh,0FEh,0FCh    ;106
	db	019h,0E6h,0FAh,0FDh,0FDh,0FEh,07Eh,03Eh    ;107
	db	0FCh,0FEh,0FCh,07Ch,07Ch,03Ch,01Ch,00Ch    ;108
	db	0FFh,07Fh,03Fh,03Eh,03Eh,03Ch,038h,030h    ;109
	db	099h,067h,05Fh,0BFh,0BFh,07Fh,07Fh,0FFh    ;110
	db	001h,040h,080h,090h,060h,088h,011h,001h    ;111
	db	07Ch,07Ch,03Eh,01Fh,01Eh,00Fh,006h,003h    ;112
	db	07Eh,07Eh,0FCh,0F8h,0F8h,0F0h,0E0h,0C0h    ;113
	db	0FFh,0FFh,0FFh,0FFh,0FFh,0F8h,007h,07Fh    ;114
	db	0FFh,0FFh,0FFh,0FFh,0FFh,01Fh,0E0h,0FEh    ;115
	db	001h,007h,0EFh,0DFh,0DFh,0FFh,00Fh,007h    ;116
	db	0E0h,0E0h,0F7h,0FBh,0FBh,0FFh,0F0h,0E0h    ;117
	db	056h,000h,003h,007h,00Fh,01Fh,03Ch,078h    ;118
	db	06Ah,000h,0C0h,0E0h,0F0h,0F8h,03Ch,01Eh    ;119
	db	0F0h,0E0h,0E0h,0E0h,0F0h,0F0h,060h,010h    ;120
	db	00Fh,007h,007h,007h,00Fh,007h,006h,00Ch    ;121
	db	0FEh,0F9h,0FEh,0FEh,0FCh,0F8h,0E1h,083h    ;122
	db	007h,00Bh,007h,00Bh,007h,00Bh,007h,00Bh    ;123
	db	007h,00Fh,01Fh,03Fh,03Ch,0BCh,099h,0C1h    ;124
	db	0F0h,0F8h,0FEh,0AEh,03Ch,0BCh,099h,0C1h    ;125
	db	000h,000h,000h,000h,000h,000h,000h,000h    ;126
	db	000h,000h,000h,000h,000h,000h,000h,000h    ;127
boss5_t3_end:
	db	007h,01Dh,03Fh,077h,07Ch,0F8h,0F0h,0F0h    ;091

boss5_c1:
	db	0F7h,0F7h,0F7h,0F7h,0F7h,0F7h,0F7h,0F7h    ;030
	db	0F7h,0F7h,0F7h,0F7h,0F7h,0F7h,0F7h,0F7h    ;031
	db	011h,011h,011h,011h,011h,011h,011h,011h    ;032
	db	048h,049h,048h,049h,046h,048h,045h,045h    ;033
	db	018h,049h,048h,049h,048h,046h,041h,041h    ;034
	db	045h,045h,046h,048h,049h,048h,059h,058h    ;035
	db	041h,041h,046h,048h,049h,048h,049h,018h    ;036
	db	054h,054h,054h,054h,054h,054h,054h,044h    ;037
	db	054h,054h,014h,054h,014h,054h,054h,014h    ;038
	db	054h,054h,054h,054h,054h,054h,054h,064h    ;039
	db	064h,044h,044h,064h,064h,044h,044h,044h    ;040
	db	048h,049h,045h,045h,045h,041h,041h,046h    ;041
	db	041h,041h,045h,045h,045h,041h,041h,046h    ;042
	db	046h,048h,049h,045h,045h,045h,041h,041h    ;043
	db	046h,048h,049h,045h,045h,045h,041h,041h    ;044
	db	048h,049h,048h,049h,041h,041h,049h,018h    ;045
	db	048h,049h,048h,049h,041h,041h,049h,018h    ;046
	db	069h,048h,069h,088h,059h,058h,048h,046h    ;047
boss5_c1_end:
boss5_c2:		
	db	058h,049h,048h,049h,046h,048h,019h,018h    ;058
	db	069h,048h,069h,088h,059h,058h,048h,046h    ;059
	db	058h,049h,048h,049h,046h,048h,019h,018h    ;060
	db	054h,054h,054h,054h,054h,054h,054h,054h    ;061
	db	064h,064h,064h,064h,064h,064h,064h,064h    ;062
	db	014h,014h,014h,014h,014h,014h,014h,014h    ;063
	db	014h,014h,014h,014h,014h,014h,014h,014h    ;064
boss5_c2_end:
boss5_c3:
	db	0F4h,0F4h,0F4h,0F6h,0F1h,0F1h,0F1h,0F1h    ;098
	db	0F1h,0F1h,0F1h,0F1h,0F4h,0F4h,0F4h,0F4h    ;099
	db	0F1h,0F1h,0F1h,0F1h,0F4h,0F4h,0F4h,0F4h    ;100
	db	041h,041h,041h,041h,041h,041h,041h,041h    ;101
	db	041h,041h,041h,041h,041h,041h,041h,041h    ;102
	db	0F4h,014h,014h,014h,014h,0F1h,0F1h,0F1h    ;103
	db	0F4h,014h,014h,014h,014h,0F1h,0F1h,0F1h    ;104
	db	041h,041h,041h,041h,041h,041h,041h,041h    ;105
	db	041h,041h,041h,041h,041h,041h,047h,047h    ;106
	db	041h,041h,041h,041h,041h,041h,041h,041h    ;107
	db	0F7h,0F6h,0F6h,0F6h,0F6h,0F6h,0F6h,0F6h    ;108
	db	0F6h,0F6h,0F6h,0F6h,0F6h,0F6h,0F6h,0F6h    ;109
	db	041h,041h,041h,041h,041h,041h,041h,041h    ;110
	db	014h,054h,054h,054h,054h,054h,054h,014h    ;111
	db	0F6h,0F6h,0F6h,0F6h,0F6h,0F6h,0F6h,0F6h    ;112
	db	0F6h,0F6h,0F6h,0F6h,0F6h,0F6h,0F6h,0F6h    ;113
	db	041h,041h,041h,041h,041h,041h,091h,081h    ;114
	db	041h,041h,041h,041h,041h,041h,091h,081h    ;115
	db	048h,049h,045h,045h,045h,049h,041h,046h    ;116
	db	018h,049h,045h,045h,045h,049h,041h,041h    ;117
	db	069h,088h,059h,048h,048h,046h,041h,041h    ;118
	db	069h,088h,059h,048h,048h,046h,041h,041h    ;119
	db	048h,049h,048h,049h,016h,018h,019h,068h    ;120
	db	051h,049h,048h,049h,016h,018h,019h,068h    ;121
	db	041h,041h,046h,041h,041h,041h,041h,061h    ;122
	db	081h,091h,091h,091h,091h,081h,081h,081h    ;123
	db	081h,091h,091h,091h,096h,086h,086h,086h    ;124
	db	081h,091h,091h,096h,096h,086h,086h,086h    ;125
	db	011h,011h,011h,011h,011h,011h,011h,011h    ;126
	db	011h,011h,011h,011h,011h,011h,011h,011h    ;127
boss5_c3_end:	
	db	0F4h,0F4h,0F4h,0F8h,0F1h,0F1h,0F1h,0F1h    ;091
lv5_data_end:
	DS	-$ & 3FFFh

	org	8000h

intro:
	ld	a,1
	ld	(intro_frame),a			;setting variables for animation delay (in VDP interrupts)
	ld	(sequence_end),a		;when reset to zero animated sequence will end

	call	intro_font			;redefine chars for intro sequence

	call	cls				;clear screen
	call	enascr				;enable screen
	ld	b,50				;delay value in VDP interrupts
	call	wait				;wait selected time

	ld	hl,Empty
	xor	a
	call	PLY_AKG_INIT
	ld	hl,SoundFX
	call	PLY_AKG_INITSOUNDEFFECTS

	ld	hl,mtest_play			;but we want that music continue to play so hook 
	call	hook_routine			;the player routine

show_logo:
	ld	a,(skip_tmp)
	or	a
	jp	z,skip_intro
	ld	hl,medal_frame1			;start address of medal's frames tiles
	ld	e,10				;number of frames of the animation
start_restart:
	ld	c,98h				;VDP VRAM write port in C (needed by OUTI and OTIR instructions)
	ld	a,64				;low byte of VRAM name table address (4th row)
	di
	out	(99h),a
	ld	a,24+64				;Hi byte of VRAM name table address (+64 means bit6 set)
	ei
	out	(99h),a
	ld	d,5				;rows to be printed (counter)
	ld	a,32				;space ascii value in A
start_draw_frame:
	ld	b,11				;spaces counter
fill_spc1:
	out	(98h),a				;print space char on VRAM address
	djnz	fill_spc1			;11 times
	ld	b,10				;bytes counter of the frame row
print_frame_line:	
	outi					;output a byte of the frame row to VRAM
	jp	nz,print_frame_line		;10 times
	ld	b,11				;spaces counter
fill_spc2:
	out	(98h),a				;output a space char
	djnz	fill_spc2			;11 times
	dec	d				;decrease row counter
	jp	nz,start_draw_frame		;repeat 5 times so all the frame will be outputted

	push	bc
	push	de
	push	hl
	ld	a,7
	ld	(sfx_nr),a
	call	play_sfx
	pop	hl
	pop	de
	pop	bc


	ld	a,(intro_frame)			;load interrupt delay in A
	ld	b,a				;and put it in B (needed by wait routine)
	call	wait				;wait B interrupts
	ld	a,(sequence_end)		;check if end sequence flag
	or	a				;is resetted
	jp	z,medal_exit			;if so jump to exit sequence
	dec	e				;decrease frame counter
	jp	nz,start_restart		;if it isn't the last frame restart output

	ld	a,(intro_frame)			;load delay value
	inc	a				;increase it
	cp	11				;check if max delay reached (11)
	call	z,medal_ending			;if so go reset end sequence flag
	ld	(intro_frame),a			;else set new delay value
	jp	show_logo			;and repeat frames outputting with new delay value
medal_exit:
	ld	b,10
	call	wait

	ld	b,50
	call	wait
	ld	a,40
	ld	(sequence_end),a		;when reset to zero animated sequence will end
	ld	a,50
	ld	(intro_frame),a			;setting variables for animation delay (in VDP interrupts)
show_writes:

	ld	a,(skip_tmp)
	or	a
	jp	z,skip_intro

	ld	hl,geppos			;start address of writings
	ld	e,5				;number of frames of the animation
	ld	c,98h				;VDP VRAM write port in C (needed by OUTI and OTIR instructions)
write_restart:
	ld	a,11				;low byte of VRAM name table address (4th row)
	di
	out	(99h),a
	ld	a,25+64				;Hi byte of VRAM name table address (+64 means bit6 set)
	ei
	out	(99h),a
	ld	b,9
write_line:
	outi
	jp	nz,write_line
	push	bc
	push	de
	push	hl
	ld	a,8
	ld	(sfx_nr),a
	call	play_sfx
	pop	hl
	pop	de
	pop	bc
	ld	a,(intro_frame)
	ld	b,a
	call	wait
	cp	5
	jp	z,write_framecheck
	add	a,-5
	call	z,mindelay
	ld	(intro_frame),a
write_framecheck:
	dec	e
	jp	nz,write_restart
	ld	a,(intro_frame)
	cp	5
	call	z,mindelay
	ld	a,(sequence_end)
	or	a
	jp	nz,show_writes
adventure:

	ld	a,(skip_tmp)
	or	a
	jp	z,skip_intro

	ld	a,11				;low byte of VRAM name table address (4th row)
	di
	out	(99h),a
	ld	a,25+64				;Hi byte of VRAM name table address (+64 means bit6 set)
	ei
	out	(99h),a
	ld	b,10
write_adv:
	outi
	jp	nz,write_adv
	ld	b,100
	call	wait
presents:
	ld	a,(skip_tmp)
	or	a
	jp	z,skip_intro

	ld	a,76				;low byte of VRAM name table address
	di
	out	(99h),a
	ld	a,25+64				;Hi byte of VRAM name table address (+64 means bit6 set)
	ei
	out	(99h),a
	ld	b,8
write_pres:
	outi
	jp	nz,write_pres
	ld	b,50
	call	wait

start_of_music:
	ld	a,(skip_tmp)
	or	a
	jp	z,skip_intro
	push	hl
	call	PLY_AKG_STOP
	ld	hl,Fight_for
	xor	a
	call	PLY_AKG_INIT
	pop	hl
	ld	c,98h
a_game_by:
	ld	a,139				;low byte of VRAM name table address
	di
	out	(99h),a
	ld	a,25+64				;Hi byte of VRAM name table address (+64 means bit6 set)
	ei
	out	(99h),a
	ld	b,10
write_gameby:
	outi
	jp	nz,write_gameby
	ld	b,150
	call	wait

	ld	a,(skip_tmp)
	or	a
	jp	z,end_intro
geppo_aka_thegeps:
	ld	a,199				;low byte of VRAM name table address
	di
	out	(99h),a
	ld	a,25+64				;Hi byte of VRAM name table address (+64 means bit6 set)
	ei
	out	(99h),a
	ld	b,18
write_gatg:
	outi
	jp	nz,write_gatg
aka:
	ld	a,14				;low byte of VRAM name table address
	di
	out	(99h),a
	ld	a,26+64				;Hi byte of VRAM name table address (+64 means bit6 set)
	ei
	out	(99h),a
	ld	b,3
write_aka:
	outi
	jp	nz,write_aka
pintus:
	ld	a,69				;low byte of VRAM name table address
	di
	out	(99h),a
	ld	a,26+64				;Hi byte of VRAM name table address (+64 means bit6 set)
	ei
	out	(99h),a
	ld	b,22
write_pintus:
	outi
	jp	nz,write_pintus
	ld	b,250
	call	wait
	call	cls

	ld	a,(skip_tmp)
	or	a
	jp	z,end_intro

	ld	hl,coding
	ld	c,98h
coding_by:
	ld	a,141				;low byte of VRAM name table address
	di
	out	(99h),a
	ld	a,24+64				;Hi byte of VRAM name table address (+64 means bit6 set)
	ei
	out	(99h),a
	ld	b,7
write_cod:
	outi
	jp	nz,write_cod
thegeps:
	ld	a,205				;low byte of VRAM name table address
	di
	out	(99h),a
	ld	a,24+64				;Hi byte of VRAM name table address (+64 means bit6 set)
	ei
	out	(99h),a
	ld	b,7
write_tg:
	outi
	jp	nz,write_tg
graphics:
	ld	a,140				;low byte of VRAM name table address
	di
	out	(99h),a
	ld	a,25+64				;Hi byte of VRAM name table address (+64 means bit6 set)
	ei
	out	(99h),a
	ld	b,9
write_grp:
	outi
	jp	nz,write_grp
geppo:
	ld	a,206				;low byte of VRAM name table address
	di
	out	(99h),a
	ld	a,25+64				;Hi byte of VRAM name table address (+64 means bit6 set)
	ei
	out	(99h),a
	ld	b,5
write_geppo:
	outi
	jp	nz,write_geppo
	ld	b,150
	call	wait
	call	cls

	ld	a,(skip_tmp)
	or	a
	jp	z,end_intro

	ld	hl,music_sfx
	ld	c,98h
sfx_music:
	ld	a,105				;low byte of VRAM name table address
	di
	out	(99h),a
	ld	a,25+64				;Hi byte of VRAM name table address (+64 means bit6 set)
	ei
	out	(99h),a
	ld	b,13
write_msfx:
	outi
	jp	nz,write_msfx
pow:
	ld	a,131
	di
	out	(99h),a
	ld	a,25+64
	ei
	out	(99h),a
	ld	b,26
write_pow:
	outi
	jp	nz,write_pow
composed:
	ld	a,170
	di
	out	(99h),a
	ld	a,25+64
	ei
	out	(99h),a
	ld	b,11
write_composed:
	outi
	jp	nz,write_composed
	ld	b,150
	call	wait

	ld	a,(skip_tmp)
	or	a
	jp	z,end_intro

	ld	a,58
	ld	hl,6144				;name table start
	ld	bc,256				;name table lenght
	call	filvrm				;fill name table with blu phaze
	ld	a,59
	ld	hl,6144+256
	ld	bc,768-256
	call	filvrm
	ld	b,25
	call	wait
	ld	a,1
	ld	(sequence_end),a
	ld	(intro_frame),a
	ld	c,98h
	ld	hl,equal1
equalizer:

	ld	a,(skip_tmp)
	or	a
	jp	z,end_intro

	xor	a				;low byte of VRAM name table address
	di
	out	(99h),a
	ld	a,24+64				;Hi byte of VRAM name table address (+64 means bit6 set)
	ei
	out	(99h),a	
	ld	b,0
write_eq_frm:
	outi
	jp	nz,write_eq_frm
;	ld	a,(intro_frame)
;	inc	a
;	ld	(intro_frame),a
	ld	hl,intro_frame
	inc	(hl)
	call	change_frame
	ld	a,(sequence_end)
	or	a
	jp	z,equaliz_end
	ld	b,7
	call	wait
	jp	equalizer
equaliz_end:
	ld	a,59
	ld	hl,6144				;name table start
	ld	bc,768				;name table lenght
	call	filvrm				;fill name table with yellow phaze
	ld	b,25
	call	wait

	ld	a,(skip_tmp)
	or	a
	jp	z,end_intro

logo_p101:
	ld	hl,phaze101_logo
	ld	c,98h
	xor	a				;low byte of VRAM name table address
	di
	out	(99h),a
	ld	a,24+64				;Hi byte of VRAM name table address (+64 means bit6 set)
	ei
	out	(99h),a
	ld	d,24
	ld	b,32
write_p101:
	outi
	jp	nz,write_p101
	ld	b,3
	call	wait
	ld	b,32
	dec	d
	jp	nz,write_p101
	ld	b,150
	call	wait
	call	cls
	jr	end_intro
skip_intro:
	call	PLY_AKG_STOP
	ld	hl,Fight_for
	xor	a
	call	PLY_AKG_INIT
end_intro:
	xor	a
	ld	(intro_is_active),a
	inc	a
	ld	(skip_tmp),a
	ret



Freedom_img:
	call	disscr
	ld	hl,logo_ct1
	ld	de,8192
	ld	bc,48*8
	call	ldirvm
	ld	hl,logo_ct2
	ld	de,8192+98*8
	ld	bc,17*8
	call	ldirvm
	ld	hl,logo_pt1
	ld	de,0
	ld	bc,48*8
	call	ldirvm
	ld	hl,logo_pt2
	ld	de,98*8
	ld	bc,17*8
	call	ldirvm

	ld	hl,ship1_ct1
	ld	de,8192+2048
	ld	bc,48*8
	call	ldirvm
	ld	hl,ship1_ct2
	ld	de,8192+2048+98*8
	ld	bc,69*8
	call	ldirvm
	ld	hl,ship1_pt1
	ld	de,2048
	ld	bc,48*8
	call	ldirvm
	ld	hl,ship1_pt2
	ld	de,2048+98*8
	ld	bc,69*8
	call	ldirvm

	ld	hl,ship2_ct
	ld	de,8192+4096
	ld	bc,40*8
	call	ldirvm
	ld	hl,ship2_pt
	ld	de,4096
	ld	bc,40*8
	call	ldirvm

	call	cls

	ld	hl,logo_nt
	ld	de,6144
	ld	bc,256
	call	ldirvm

	ld	hl,rise_of_the_humans
	ld	de,6310+32
	ld	bc,19
	call	ldirvm

	ld	hl,ship1_nt
	ld	de,6144+256
	ld	bc,256
	call	ldirvm

	ld	hl,ship2_nt
	ld	de,6144+512
	ld	bc,256
	jp	ldirvm				;end of this routine. will ret to main when ldirvm ret 
						;is reached

rise_of_the_humans:
	db	"RISE OF THE HUMANS",93
logo_ct1:
	incbin "FFLogoCT1.bin"
logo_ct1_end:
logo_ct2:
	incbin "FFLogoCT2.bin"
logo_ct2_end:
logo_pt1:
	incbin "FFLogoPT1.bin"
logo_pt1_end:
logo_pt2:
	incbin "FFLogoPT2.bin"
logo_pt2_end:
logo_nt:
	incbin "FFLogoNT.bin"
logo_nt_end:

ship1_ct1:
	incbin "FFShip1_CT1.bin"
ship1_ct1_end:
ship1_ct2:
	incbin "FFShip1_CT2.bin"
ship1_ct2_end:
ship1_pt1:
	incbin "FFShip1_PT1.bin"
ship1_pt1_end:
ship1_pt2:
	incbin "FFShip1_PT2.bin"
ship1_pt2_end:
ship1_nt:
	incbin "FFShip1_NT.bin"
ship1_nt_end:

ship2_ct:
	incbin "FFShip2_CT.bin"
ship2_ct_end:
ship2_pt:
	incbin "FFShip2_PT.bin"
ship2_pt_end:
ship2_nt:
	incbin "FFShip2_NT.bin"
ship2_nt_end:




scroller:
	db	"                                "
	db	"CODE AND GRAPHICS",92," THEGEPS      "
	db	"MUSIC AND SFX",92," PHAZE101         "
	db	"                                "

medal_ending:
	xor	a				;reset a=0
	ld	(sequence_end),a		;and write it to our var
	ld	a,10				;setting a=10 (so we are sure to write right
	ret					;value on delay variable)

mindelay:
	ld	a,(sequence_end)
	add	a,-10
	ld	(sequence_end),a	
	ld	a,5
	ld	(intro_frame),a
	ret

change_frame:
	ld	hl,equaliz_sequence
	ld	a,(intro_frame)
point_to_frame:
	inc	hl
	dec	a
	jp	nz,point_to_frame	
	ld	a,(hl)
	dec	a
	jp	z,eqfr1
	dec	a
	jp	z,eqfr2
	dec	a
	jp	z,eqfr3
	dec	a
	jp	z,eqfr4
	xor	a
	ld	(sequence_end),a
	ret	
eqfr1:
	ld	hl,equal1
	ret
eqfr2:
	ld	hl,equal2
	ret
eqfr3:
	ld	hl,equal3
	ret
eqfr4:
	ld	hl,equal4	
	ret
medal_frame1:
	db	000,001,002,003,004,000,001,002,003,004
	db	005,006,006,006,007,005,006,006,006,007
	db	008,009,010,011,012,112,113,114,115,116
	db	013,014,015,016,017,117,118,118,118,119
	db	018,019,020,021,022,018,019,020,021,022
medal_frame2:
	db	032,023,024,025,032,032,023,024,025,032
	db	032,026,006,027,032,032,026,006,027,032
	db	032,028,029,030,032,032,120,121,122,032
	db	032,031,033,034,032,032,031,107,034,032
	db	032,035,036,037,032,032,035,036,037,032
medal_frame3:
	db	032,032,038,032,032,032,032,038,032,032
	db	032,032,039,032,032,032,032,039,032,032
	db	032,032,040,032,032,032,032,123,032,032
	db	032,032,041,032,032,032,032,041,032,032
	db	032,032,042,032,032,032,032,042,032,032
medal_frame4:
	db	032,032,043,032,032,032,032,043,032,032
	db	032,032,044,032,032,032,032,044,032,032
	db	032,032,045,032,032,032,032,124,032,032
	db	032,032,046,032,032,032,032,046,032,032
	db	032,032,047,032,032,032,032,047,032,032
medal_frame5:
	db	032,098,099,100,032,032,098,099,100,032
	db	032,101,006,102,032,032,101,006,102,032
	db	032,103,104,105,032,032,125,126,127,032
	db	032,106,107,108,032,032,128,129,130,032
	db	032,109,110,111,032,032,109,110,111,032
medal_frame6:
	db	000,001,002,003,004,000,001,002,003,004
	db	005,006,006,006,007,005,006,006,006,007
	db	112,113,114,115,116,008,009,010,011,012
	db	117,118,118,118,119,013,014,015,016,017
	db	018,019,020,021,022,018,019,020,021,022
medal_frame7:
	db	032,023,024,025,032,032,023,024,025,032
	db	032,026,006,027,032,032,026,006,027,032
	db	032,120,121,122,032,032,028,029,030,032
	db	032,031,107,034,032,032,031,033,034,032
	db	032,035,036,037,032,032,035,036,037,032
medal_frame8:
	db	032,032,038,032,032,032,032,038,032,032
	db	032,032,039,032,032,032,032,039,032,032
	db	032,032,123,032,032,032,032,040,032,032
	db	032,032,041,032,032,032,032,041,032,032
	db	032,032,042,032,032,032,032,042,032,032
medal_frame9:
	db	032,032,043,032,032,032,032,043,032,032
	db	032,032,044,032,032,032,032,044,032,032
	db	032,032,124,032,032,032,032,045,032,032
	db	032,032,046,032,032,032,032,046,032,032
	db	032,032,047,032,032,032,032,047,032,032
medal_frame10:
	db	032,098,099,100,032,032,098,099,100,032
	db	032,101,006,102,032,032,101,006,102,032
	db	032,125,126,127,032,032,103,104,105,032
	db	032,128,129,130,032,032,106,107,108,032
	db	032,109,110,111,032,032,109,110,111,032

geppos:
	db	" SOFTWARE"
	db	"  CODING "
	db	"  DREAM",93," "
	db	"  LEGEND "
	db	"  GAMES",93," "
	db	"ADVENTURE",93
	db	"PRESENTS"
	db	"A GAME BY",92
	db	"GEPPO AKA  THEGEPS"
	db	"AKA"
	db	"PINTUS GIUSEPPE ETTORE"
coding:
	db	"CODING",92
	db	"THEGEPS"
	db	"GRAPHICS",92	
	db	"GEPPO"
music_sfx:
	db	"MUSIC AND SFX"
powered:
	db	"POWERED BY ARKOS TRACKER 2"
composedby:
	db	"COMPOSED BY"

defintro:
	incbin "intro_def.plt"
colintro:
	incbin "intro_colors.plt"

secret_sprites:
hype: 
	db	001h,001h,011h,017h,037h,077h,076h,0E7h	; Color 14 hype
	db	0FFh,0F8h,0FBh,07Bh,07Fh,030h,01Fh,007h	; 
	db	000h,000h,010h,050h,070h,074h,074h,0E6h	; 
	db	0DEh,05Eh,0DEh,0DCh,0DCh,018h,0F0h,0C0h	; 
	db	000h,000h,008h,008h,008h,008h,009h,018h	; Color 6
	db	000h,007h,004h,004h,000h,00Fh,000h,000h	; 
	db	080h,080h,088h,0A8h,088h,08Ah,08Ah,019h	; 
	db	021h,0A1h,021h,022h,022h,0E4h,008h,030h	;
star_force: 
	db	001h,003h,003h,003h,003h,046h,044h,045h	; Color 14 star force
	db	044h,056h,05Bh,07Dh,076h,077h,03Eh,00Ch	; 
	db	080h,0C0h,0C0h,0C0h,0C0h,062h,022h,0A2h	; 
	db	022h,06Ah,0DAh,0BEh,06Eh,0EEh,07Ch,030h	; 
	db	000h,000h,000h,000h,040h,001h,00Bh,00Ah	; Color 6
	db	00Bh,009h,004h,002h,009h,008h,041h,003h	; 
	db	000h,000h,000h,000h,002h,080h,0D0h,050h	; 
	db	0D0h,090h,020h,040h,090h,010h,082h,0C0h	;
star_soldier: 
	db	001h,003h,043h,047h,0C6h,0C4h,0CDh,0CCh	; Color 14 star soldier
	db	0CCh,0CEh,0CFh,0CDh,0C3h,0C1h,060h,000h	; 
	db	000h,080h,088h,0C8h,0D8h,058h,058h,058h	; 
	db	058h,098h,018h,018h,0B8h,038h,018h,000h	; 
	db	000h,000h,020h,020h,031h,033h,032h,033h	; Color 6
	db	033h,031h,030h,030h,038h,03Ah,013h,001h	; 
	db	000h,000h,004h,004h,006h,086h,0A6h,0A6h	; 
	db	0A6h,066h,0E6h,066h,006h,086h,084h,000h	; 
twinbee:
	db	000h,000h,001h,003h,003h,001h,0C0h,0E0h	; Color 14 twinbee
	db	000h,001h,001h,019h,01Dh,03Dh,03Dh,001h	; 
	db	000h,000h,080h,0C0h,0C0h,080h,003h,007h	; 
	db	000h,080h,080h,098h,0B8h,0BCh,0BCh,080h	; 
	db	003h,00Ch,008h,018h,018h,018h,01Ch,01Fh	; Color 6
	db	01Fh,01Eh,00Eh,006h,002h,002h,000h,03Ch	; 
	db	0C0h,030h,010h,018h,018h,018h,038h,0F8h	; 
	db	0F8h,078h,070h,060h,040h,040h,000h,03Ch	;
zanac: 
	db	001h,001h,001h,001h,001h,003h,043h,043h	; Color 14 zanac
	db	047h,04Eh,05Eh,07Ch,07Ch,046h,05Ch,00Dh	; 
	db	040h,040h,040h,040h,040h,060h,061h,061h	; 
	db	071h,039h,0BDh,09Fh,09Fh,031h,09Dh,0D8h	; 
	db	000h,000h,000h,000h,000h,000h,000h,080h	; Color 6
	db	080h,081h,081h,083h,083h,0B9h,0A3h,052h	; 
	db	000h,080h,080h,080h,080h,080h,080h,082h	; 
	db	082h,0C2h,042h,060h,060h,0CEh,062h,024h	;
common_sprites:
sptdef1_00:						;0
	db	001h,001h,001h,001h,001h,003h,002h,006h		;ff1 grey
	db	006h,00ch,00dh,01fh,07fh,07fh,07eh,014h		;ff2 grey
	db	080h,080h,080h,080h,080h,0c0h,040h,060h		;ff3 grey
	db	060h,030h,0b0h,0f8h,0feh,0feh,07eh,028h		;ff4 grey
sptdef1_01:						;4
	db	000h,000h,000h,000h,000h,000h,001h,001h		;ff1 red
	db	001h,003h,082h,080h,080h,080h,081h,02ah		;ff2 red
	db	000h,000h,000h,000h,000h,000h,080h,080h		;ff3 red
	db	080h,0c0h,041h,001h,001h,001h,081h,054h		;ff4 red
sptdef1_02:						;8
	db	000h,000h,000h,000h,000h,000h,000h,001h		;shot1 1 
	db	001h,001h,001h,001h,001h,001h,001h,000h		;shot1 2 
	db	000h,000h,000h,000h,000h,000h,000h,080h		;shot1 3 
	db	080h,080h,080h,080h,080h,080h,080h,000h		;shot1 4 
sptdef1_03:						;12
	db	000h,000h,000h,000h,000h,000h,000h,000h		;shot1 1 diagsx
	db	000h,060h,070h,038h,01ch,00eh,006h,000h		;shot1 2 diagsx
	db	000h,000h,000h,000h,000h,000h,000h,000h		;shot1 3 diagsx
	db	000h,000h,000h,000h,000h,000h,000h,000h		;shot1 4 diagsx
sptdef1_04:						;16
	db	000h,000h,000h,000h,000h,000h,000h,000h		;shot1 1 diagdx
	db	000h,000h,000h,000h,000h,000h,000h,000h		;shot1 2 diagdx
	db	000h,000h,000h,000h,000h,000h,000h,000h		;shot1 3 diagdx
	db	000h,006h,00eh,01ch,038h,070h,060h,000h		;shot1 4 diagdx
sptdef1_05:						;20
	db	000h,000h,000h,000h,000h,000h,000h,006h		;shot2 1
	db	006h,006h,006h,006h,006h,006h,006h,000h		;shot2 2
	db	000h,000h,000h,000h,000h,000h,000h,060h		;shot2 3
	db	060h,060h,060h,060h,060h,060h,060h,000h		;shot2 4
sptdef1_06:						;24
	db	000h,000h,000h,000h,000h,000h,000h,000h		;shot2 1 diagsx
	db	030h,038h,0dch,0eeh,077h,03bh,01ch,00ch		;shot2 2 diagsx
	db	000h,000h,000h,000h,000h,000h,000h,000h		;shot2 3 diagsx
	db	000h,000h,000h,000h,000h,000h,000h,000h		;shot2 4 diagsx
sptdef1_07:						;28
	db	000h,000h,000h,000h,000h,000h,000h,000h		;shot2 1 diagdx
	db	000h,000h,000h,000h,000h,000h,000h,000h		;shot2 2 diagdx
	db	000h,000h,000h,000h,000h,000h,000h,000h		;shot2 3 diagdx
	db	00ch,01ch,03bh,077h,0eeh,0dch,038h,030h		;shot2 4 diagdx
sptdef1_08:						;32
	db	000h,000h,000h,000h,000h,000h,000h,019h		;shot3 1
	db	019h,019h,019h,019h,019h,019h,019h,000h		;shot3 2
	db	000h,000h,000h,000h,000h,000h,000h,098h		;shot3 3
	db	098h,098h,098h,098h,098h,098h,098h,000h		;shot3 4
sptdef1_09:						;36
	db	000h,000h,000h,000h,000h,000h,000h,000h		;shot3 1 diagsx
	db	0fch,080h,0bfh,0a3h,0a1h,0a0h,030h,038h		;shot3 2 diagsx
	db	000h,000h,000h,000h,000h,000h,000h,000h		;shot3 3 diagsx
	db	000h,000h,000h,000h,000h,000h,000h,000h		;shot3 4 diagsx
sptdef1_10:						;40
	db	000h,000h,000h,000h,000h,000h,000h,000h		;shot3 1 diagdx
	db	000h,000h,000h,000h,000h,000h,000h,000h		;shot3 2 diagdx
	db	000h,000h,000h,000h,000h,000h,000h,000h		;shot3 3 diagdx
	db	03fh,001h,0fdh,0c5h,085h,005h,00ch,01ch		;shot3 4 diagdx
sptdef1_11:						;44
	db	030h,078h,0fch,0fch,078h,030h,000h,000h		;pod
	db	000h,000h,000h,000h,000h,000h,000h,000h		;pod
	db	000h,000h,000h,000h,000h,000h,000h,000h		;pod
	db	000h,000h,000h,000h,000h,000h,000h,000h		;pod
sptdef1_12:						;48
	db	000,000,000,000,000,000,000,000		;
	db	000,000,000,000,000,000,000,000		;
	db	000,000,000,000,000,000,000,000		;
	db	000,000,000,000,000,000,000,000		;
sptdef1_13:						;52
	db	000,000,000,000,000,000,000,000		;
	db	000,000,000,000,000,000,000,000		;
	db	000,000,000,000,000,000,000,000		;
	db	000,000,000,000,000,000,000,000		;
sptdef1_14:						;56
	db	000,000,000,000,000,000,000,000		;
	db	000,000,000,000,000,000,000,000		;
	db	000,000,000,000,000,000,000,000		;
	db	000,000,000,000,000,000,000,000		;
sptdef1_15:						;60
	db	000h,000h,000h,000h,000h,000h,001h,003h		;enemy bullet 1
	db	003h,001h,000h,000h,000h,000h,000h,000h		;enemu bullet 2
	db	000h,000h,000h,000h,000h,000h,080h,0c0h		;enemy bullet 3
	db	0c0h,080h,000h,000h,000h,000h,000h,000h		;enemy bullet 4
common_sprites_end:

reset_sprites:
	ld	hl,strtspttbl
	ld	de,ramspttbl
	ld	bc,128
	call	unroll
remove_sprites:
	ld	hl,ramspttbl
	ld	(hl),209
	ld	l,4
	ld	(hl),209
	ld	l,7
	ld	(hl),6
	ld	l,0
	ld	de,1b00h
	ld	bc,128
	jp	ldirvm

ship_select:
	ld	hl,mtest_play
	call	hook_routine
	ld	hl,6144
	ld	bc,32
	ld	a,c				;c=32 so ld a,32 (MDL optimization: not needed
	call	filvrm				;but good to know)
	ld	hl,ship_menu
	ld	de,6656
	ld	bc,128
	call	ldirvm
	ld	hl,6784
	ld	bc,96
	ld	a,32
	call	filvrm
	ld	hl,ff
	call	ship_game
	ld	hl,common_sprites
	ld	a,6
	jp	view_airship
ship_curs:
	xor	a
	call	gtstck
	cp	7
	jr	z,ship_prec
	cp	3
	jr	z,ship_next
ship_control:
	xor	a
	call	gttrig
	jp	nz,ship_selected
	jr	ship_curs
ship_prec:
	ld	a,(ship)
	dec	a
	jr	z,ship_control
	jr	check_and_show	
ship_next:
	ld	a,(ship)
	cp	6
	jr	z,ship_control
	inc	a
check_and_show:
	ld	(ship),a
	dec	a
	jr	z,ff_ship
	dec	a
	jr	z,zanac_ship
	dec	a
	jr	z,twinbee_ship
	dec	a
	jr	z,starsoldier_ship
	dec	a
	jr	z,starforce_ship
hype_ship:
	ld	hl,hy
	call	ship_game
	ld	hl,hype
	ld	a,1
	jr	view_airship
ff_ship:
	ld	hl,ff
	call	ship_game
	ld	hl,common_sprites
	ld	a,6
	jr	view_airship
zanac_ship:
	ld	hl,zan
	call	ship_game
	ld	hl,zanac
	ld	a,1
	jr	view_airship
twinbee_ship:
	ld	hl,twin
	call	ship_game
	ld	hl,twinbee
	ld	a,7
	jr	view_airship
starsoldier_ship:
	ld	hl,starsol
	call	ship_game
	ld	hl,star_soldier
	ld	a,7
	jr	view_airship
starforce_ship:
	ld	hl,starfor
	call	ship_game
	ld	hl,star_force
	ld	a,6
view_airship:
	ld	(pl_col2),a
	ld	de,3800h
	ld	bc,64
	call	ldirvm
show_airship:
	ld	hl,ramspttbl
	ld	(hl),160
	inc	l
	ld	(hl),48
	ld	l,4
	ld	(hl),160
	inc	l
	ld	(hl),48
	ld	l,7
	ld	a,(pl_col2)
	ld	(hl),a
	ld	l,0
	ld	de,1b00h
	ld	bc,8
	call	ldirvm
	ld	b,15
	call	wait
	jp	ship_curs
ship_selected:
	call	remove_sprites
	ld	b,25
	call	wait
	jp	main_screen	
ship_game:
	ld	de,6827
	ld	bc,15
	jp	ldirvm
;	ret

intro_font:
	ld	hl,defintro
	ld	de,0c000h
	call	unpack
	ld	hl,0c000h
	ld	de,0
	ld	bc,1048
	call	ldirvm
	ld	hl,0c000h
	ld	de,2048
	ld	bc,1048
	call	ldirvm
	ld	hl,0c000h
	ld	de,4096
	ld	bc,1048
	call	ldirvm
	ld	hl,colintro
	ld	de,0c000h
	call	unpack
	ld	hl,0c000h
	ld	de,8192
	ld	bc,1048
	call	ldirvm
	ld	hl,0c000h
	ld	de,8192+2048
	ld	bc,1048
	call	ldirvm
	ld	hl,0c000h
	ld	de,8192+4096
	ld	bc,1048
	call	ldirvm
	ld	hl,0c000h
	ld	(hl),0
	ld	d,h
	ld	e,l
	inc	de
	ld	bc,1048
	ldir
	ret

hy:
	db	"HYPE           "
ff:
	db	"FREEDOM FIGHTER"
zan:
	db	"ZANAC          "
twin:
	db	"TWINBEE        "
starsol:
	db	"STAR SOLDIER   "
starfor:
	db	"STAR FORCE     "

phaze101_logo:
	db	58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58
	db	58,59,59,59,59,58,58,59,59,58,58,59,59,58,58,59,59,59,58,58,59,59,59,59,59,58,59,59,59,59,59,58
	db	58,59,59,58,59,59,58,59,59,58,58,59,59,58,59,59,58,59,59,58,58,58,58,59,59,58,59,59,58,58,58,58
	db	58,59,59,58,59,59,58,59,59,59,59,59,59,58,59,59,58,59,59,58,58,58,59,59,59,58,59,59,58,58,58,58
	db	58,59,59,59,59,58,58,59,59,59,59,59,59,58,59,59,59,59,59,58,58,59,59,59,58,58,59,59,59,59,58,58
	db	58,59,59,58,58,58,58,59,59,58,58,59,59,58,59,59,58,59,59,58,59,59,59,58,58,58,59,59,58,58,58,58
	db	58,59,59,58,58,58,58,59,59,58,58,59,59,58,59,59,58,59,59,58,59,59,58,58,58,58,59,59,58,58,58,58
	db	58,59,59,58,58,58,58,59,59,58,58,59,59,58,59,59,58,59,59,58,59,59,59,59,59,58,59,59,59,59,59,58
	db	58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58
	db	58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58
	db	58,58,58,58,58,58,58,59,58,58,58,58,58,58,59,59,59,59,59,58,58,59,58,58,58,59,58,58,58,58,58,58
	db	58,58,58,58,58,58,59,59,59,58,58,58,59,59,59,59,59,59,59,59,59,58,59,58,59,59,59,58,58,58,58,58
	db	58,58,58,58,58,59,59,59,59,58,58,59,59,59,59,59,59,59,59,59,58,59,58,58,59,59,59,59,58,58,58,58
	db	58,58,58,58,59,59,59,59,59,58,58,59,59,59,58,58,58,58,59,58,59,59,58,58,59,59,59,59,59,58,58,58
	db	58,58,58,58,58,59,59,59,59,58,59,59,59,58,58,58,58,59,58,59,59,59,59,58,59,59,59,59,58,58,58,58
	db	58,58,58,58,58,59,59,59,59,58,59,59,59,58,58,58,59,58,59,58,59,59,59,58,59,59,59,59,58,58,58,58
	db	58,58,58,58,58,59,59,59,59,58,59,59,59,58,58,59,58,59,58,58,59,59,59,58,59,59,59,59,58,58,58,58
	db	58,58,58,58,58,59,59,59,59,58,59,59,59,58,59,58,59,58,58,58,59,59,59,58,59,59,59,59,58,58,58,58
	db	58,58,58,58,58,59,59,59,59,58,59,59,59,59,58,59,58,58,58,58,59,59,59,58,59,59,59,59,58,58,58,58
	db	58,58,58,58,58,59,59,59,59,58,58,59,59,58,59,58,58,58,58,59,59,59,58,58,59,59,59,59,58,58,58,58
	db	58,58,58,58,58,59,59,59,59,58,58,59,58,59,59,59,59,59,59,59,59,59,58,58,59,59,59,59,58,58,58,58
	db	58,58,58,58,58,59,59,59,59,58,59,58,59,59,59,59,59,59,59,59,59,58,58,58,59,59,59,59,58,58,58,58
	db	58,58,58,58,58,58,59,59,58,58,58,59,58,58,59,59,59,59,59,58,58,58,58,58,58,59,59,58,58,58,58,58
	db	58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58
equal1:
	db	58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58
	db	58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58
	db	58,58,58,59,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,59,58,58,58,58,58,58
	db	58,58,58,59,58,58,58,58,59,58,58,58,58,59,58,58,58,58,58,58,58,58,58,58,58,59,58,58,58,58,58,58
	db	58,58,58,59,58,58,58,58,59,58,58,58,58,59,58,58,58,58,58,58,58,58,58,58,58,59,58,58,58,58,58,58
	db	58,59,58,59,58,58,58,59,59,58,58,58,58,59,58,58,58,58,59,58,58,58,58,59,58,59,59,58,58,58,58,58
	db	58,59,59,59,58,58,58,59,59,59,58,58,58,59,58,59,58,58,59,58,58,58,58,59,58,59,59,58,58,59,58,58
	db	59,59,59,59,58,59,58,59,59,59,58,59,58,59,59,59,58,58,59,58,58,58,59,59,59,59,59,58,58,59,58,58
equal2:
	db	58,58,58,59,58,58,58,58,58,58,58,58,58,59,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58
	db	58,58,58,59,58,58,58,58,59,58,58,58,58,59,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58
	db	58,58,58,59,58,58,58,58,59,58,58,58,58,59,58,58,58,58,58,58,58,58,58,58,58,59,58,58,58,58,58,58
	db	58,59,58,59,58,58,58,58,59,58,58,58,58,59,58,58,58,58,58,58,58,58,58,58,58,59,58,58,58,58,58,58
	db	58,59,58,59,58,58,58,59,59,58,58,58,58,59,58,58,58,58,59,58,58,58,58,59,58,59,59,58,58,58,58,58
	db	58,59,59,59,58,58,58,59,59,59,58,58,58,59,59,58,58,58,59,58,58,58,58,59,58,59,59,58,58,58,58,58
	db	59,59,59,59,58,59,58,59,59,59,58,58,58,59,59,59,58,58,59,58,58,58,59,59,59,59,59,58,58,59,58,59
	db	59,59,59,59,59,59,59,59,59,59,59,58,58,59,59,59,59,58,59,59,58,59,59,59,59,59,59,59,58,59,59,59
equal3:
	db	58,58,58,59,58,58,58,58,59,58,58,58,58,59,58,58,58,58,58,58,58,58,58,58,58,59,58,58,58,58,58,58
	db	58,59,58,59,58,58,58,58,59,58,58,58,58,59,58,58,58,58,58,58,58,58,58,58,58,59,58,58,58,58,58,58
	db	58,59,58,59,58,58,58,59,59,58,58,58,58,59,58,58,58,58,58,58,58,58,58,58,58,59,58,58,58,58,58,58
	db	58,59,58,59,58,58,58,59,59,58,58,58,58,59,58,58,58,58,58,58,58,58,58,59,58,59,58,58,58,58,58,59
	db	58,59,59,59,58,58,58,59,59,59,58,58,58,59,58,59,58,58,59,58,58,58,58,59,58,59,59,58,58,59,58,59
	db	59,59,59,59,58,59,58,59,59,59,58,58,58,59,59,59,58,58,59,58,58,59,58,59,59,59,59,58,58,59,58,59
	db	59,59,59,59,59,59,59,59,59,59,58,59,58,59,59,59,59,58,59,59,58,59,59,59,59,59,59,59,58,59,59,59
	db	59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59
equal4:
	db	58,59,58,58,58,58,58,59,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58
	db	58,59,58,59,58,58,58,59,59,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,59,58,58,58,58,58,58
	db	58,59,58,59,58,58,58,59,59,58,58,58,58,59,58,59,58,58,58,58,58,58,58,59,58,59,58,58,58,59,58,59
	db	59,59,59,59,58,59,58,59,59,59,58,58,58,59,58,59,58,58,58,58,58,58,58,59,58,59,59,58,58,59,58,59
	db	59,59,59,59,58,59,58,59,59,59,58,58,58,59,59,59,58,58,58,59,58,59,59,59,59,59,59,58,59,59,58,59
	db	59,59,59,59,59,59,58,59,59,59,59,58,59,59,59,59,59,58,59,59,58,59,59,59,59,59,59,59,59,59,58,59
	db	59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59
	db	59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59,59
equaliz_sequence:
	db	1,2,1,2,3,4,3,4,3,2,1,2,3,4,3,2,1,2,1,2,3,4,3,4,3,2,1,2,3,4,5

Empty:
	include "Empty.asm"

Fight_for:
	include "FightForFreedom.asm"

game_over_music:
	include "Nomore.asm"

prologue_music:
	include "Prologue.asm"
prolmus_end:

skippable_play:
;	push	af
	ld	a,(player_input)
	call	gttrig
	jr	nz,fire_pressed
	ld	a,1
	ld	(release),a
fire_pressed:
	ld	a,(freq)
	or	a
	jp	nz,skip_not_ntsc
	ld	a,(frame_count)
	inc	a
	cp	6
	jp	z,do_not_skipplay
	ld	(frame_count),a
skip_not_ntsc:
	call	PLY_AKG_PLAY		;call music player
	ld	a,(release)
	or	a
	jr	z,do_not_skip
	ld	a,(player_input)
	call	gttrig
	jp	nz,exit
do_not_skip:
;	pop	af
	ret
exit:
	xor	a
	ld	(skip_tmp),a
	ret
do_not_skipplay:
	xor	a
	ld	(frame_count),a
	ret

epilogue_music:
	include	"Epilogue.asm"

seg6_end:
	DS	-$ & 3FFFh

	org	8000h
segment7:

prologue_definitions:
img1_ct1:
	incbin "FFintro1_ct1.plt"
img1_pt1:
	incbin "FFintro1_pt1.plt"
img1_nt:
	incbin "FFintro1_nt.plt"	
img1_ct2:
	incbin "FFintro1_ct2.plt"
img1_pt2:
	incbin "FFintro1_pt2.plt"
img2_ct1:
	incbin "FFintro2_ct1.plt"
img2_pt1:
	incbin "FFintro2_pt1.plt"
img2_nt:
	incbin "FFintro2_nt.plt"	
img2_ct2:
	incbin "FFintro2_ct2.plt"
img2_pt2:
	incbin "FFintro2_pt2.plt"
img3_ct1:
	incbin "FFintro3_ct1.plt"
img3_pt1:
	incbin "FFintro3_pt1.plt"
img3_nt:
	incbin "FFintro3_nt.plt"	
img3_ct2:
	incbin "FFintro3_ct2.plt"
img3_pt2:
	incbin "FFintro3_pt2.plt"
img4_ct1:
	incbin "FFintro4_ct1.plt"
img4_pt1:
	incbin "FFintro4_pt1.plt"
img4_nt:
	incbin "FFintro4_nt.plt"	
img4_ct2:
	incbin "FFintro4_ct2.plt"
img4_pt2:
	incbin "FFintro4_pt2.plt"
img5_ct1:
	incbin "FFintro5_ct1.plt"
img5_pt1:
	incbin "FFintro5_pt1.plt"
img5_nt:
	incbin "FFintro5_nt.plt"	
img5_ct2:
	incbin "FFintro5_ct2.plt"
img5_pt2:
	incbin "FFintro5_pt2.plt"
img6_ct1:
	incbin "FFintro6_ct1.plt"
img6_pt1:
	incbin "FFintro6_pt1.plt"
img6_nt:
	incbin "FFintro6_nt.plt"	
img6_ct2:
	incbin "FFintro6_ct2.plt"
img6_pt2:
	incbin "FFintro6_pt2.plt"
img7_ct1:
	incbin "FFintro7_ct1.plt"
img7_pt1:
	incbin "FFintro7_pt1.plt"
img7_nt:
	incbin "FFintro7_nt.plt"	
img7_ct2:
	incbin "FFintro7_ct2.plt"
img7_pt2:
	incbin "FFintro7_pt2.plt"



seg7_end:     ;0bd0bh

	ds	-$ & 3fffh

	org	8000h

segment8:
img8_ct1:
	incbin "FFintro8_ct1.plt"
img8_pt1:
	incbin "FFintro8_pt1.plt"
img8_nt:
	incbin "FFintro8_nt.plt"	
img8_ct2:
	incbin "FFintro8_ct2.plt"
img8_pt2:
	incbin "FFintro8_pt2.plt"

fade_to_light:
	ld	hl,8192
	ld	de,0c000h
	ld	bc,4096
	call	ldirmv
start_fading:
	ld	hl,0c000h
	ld	bc,4096
fade:
	ld	a,(hl)
	and	00001111b
;	cp	00000001b
	dec	a			;MDL 1byte, 3 t-states
	jp	z,black_fg
	ld	a,(hl)
	and	11110000b
	add	a,0eh
	ld	(hl),a
black_fg:
	ld	a,(hl)
	and	11110000b
	cp	00010000b
	jp	z,black_bg
	ld	a,(hl)
	and	00001111b
	add	a,0e0h
	ld	(hl),a
black_bg:
	inc	hl
	dec	bc
	ld	a,b
	or	c
	jp	nz,fade
	ld	hl,0c000h
	ld	c,98h
	xor	a
	ld	d,16
	ld	b,a
	di
	out	(99h),a
	ld	a,96
	ei
	out	(99h),a
to_grey:
	outi
	jp	nz,to_grey
	dec	d
	jp	nz,to_grey

	ld	hl,0c000h
	ld	bc,4096
white_and_grey:
	ld	a,(hl)
	cp	11h
	jp	z,full_grey
	cp	1eh
	jp	z,grey_fg
	cp	0e1h
	jp	z,grey_bg
	cp	0eeh
	jp	z,full_white
grey_fg:
	ld	(hl),0efh
	jp	fade_continue
grey_bg:
	ld	(hl),0feh
	jp	fade_continue
full_white:
	ld	(hl),0ffh
	jp	fade_continue
full_grey:
	ld	(hl),0eeh
fade_continue:
	inc	hl
	dec	bc
	ld	a,b
	or	c
	jp	nz,white_and_grey

	ld	hl,0c000h
	ld	c,98h
	xor	a
	ld	d,16
	ld	b,a
	di
	out	(99h),a
	ld	a,96
	ei
	out	(99h),a
to_white:
	outi
	jp	nz,to_white
	dec	d
	jp	nz,to_white

	ld	hl,6144
	ld	bc,512
	ld	a,49
	call	filvrm

	ld	b,40
strobo:
	push	bc
	ld	b,1
	call	wait
	ld	a,11h
	ld	hl,8192+49*8
	ld	bc,8
	call	filvrm
	ld	hl,8192+49*8+2048
	ld	bc,8
	call	filvrm
	ld	b,1
	call	wait
	ld	a,0ffh
	ld	hl,8192+49*8
	ld	bc,8
	call	filvrm
	ld	hl,8192+49*8+2048
	ld	bc,8
	call	filvrm
	pop	bc
	djnz	strobo


	ld	b,50
	call	wait
	ld	a,0eeh
	ld	hl,8192+49*8
	ld	bc,8
	call	filvrm
	ld	hl,8192+49*8+2048
	ld	bc,8
	call	filvrm
	ld	b,5
	call	wait
	ld	a,11h
	ld	hl,8192+49*8
	ld	bc,8
	call	filvrm
	ld	hl,8192+49*8+2048
	ld	bc,8
	call	filvrm
	ld	b,100
	jp	wait
;	ret

post_credits_scene:
	call	disscr
	call	draw_cockpit
	ld	a,9
	ld	c,0
	ld	b,10
	call	PLY_AKG_PLAYSOUNDEFFECT 
	ld	b,50
	call	wait
	xor	a
	call PLY_AKG_STOPSOUNDEFFECTFROMCHANNEL
	ld	b,50
	call	wait
	ld	a,9
	ld	c,0
	ld	b,5
	call	PLY_AKG_PLAYSOUNDEFFECT 
	ld	b,50
	call	wait
	xor	a
	call PLY_AKG_STOPSOUNDEFFECTFROMCHANNEL
	ld	b,50
	call	wait
	ld	a,9
	ld	c,0
	ld	b,0
	call	PLY_AKG_PLAYSOUNDEFFECT 
	ld	b,50
	call	wait
	xor	a
	call PLY_AKG_STOPSOUNDEFFECTFROMCHANNEL
	call	enascr
	ld	b,10
	call	wait
	call	disscr
	ld	b,40
	call	wait
	ld	a,9
	ld	c,0
	ld	b,0
	call	PLY_AKG_PLAYSOUNDEFFECT 
	ld	b,50
	call	wait
	xor	a
	call PLY_AKG_STOPSOUNDEFFECTFROMCHANNEL
	ld	b,50
	call	wait
	ld	a,9
	ld	c,0
	ld	b,0
	call	PLY_AKG_PLAYSOUNDEFFECT 
	ld	b,50
	call	wait
	xor	a
	call PLY_AKG_STOPSOUNDEFFECTFROMCHANNEL
	ld	b,20
	call	wait
	call	enascr
	ld	b,20
	call	wait
	call	disscr
	ld	b,10
	call	wait
	ld	a,9
	ld	c,0
	ld	b,0
	call	PLY_AKG_PLAYSOUNDEFFECT 
	ld	b,50
	call	wait
	xor	a
	call PLY_AKG_STOPSOUNDEFFECTFROMCHANNEL
	ld	b,20
	call	wait
	call	enascr
	ld	b,30
	call	wait
	ld	b,3
alert_loop:
	push	bc
	ld	hl,alert
	ld	de,6144+462
	ld	bc,5
	call	ldirvm
	ld	hl,alert2
	ld	de,6144+462+96
	ld	bc,5
	call	ldirvm
	ld	hl,alert2
	ld	de,6144+462+96+96
	ld	bc,5
	call	ldirvm
	ld	a,9
	ld	c,0
	ld	b,0
	call	PLY_AKG_PLAYSOUNDEFFECT 
	ld	b,50
	call	wait
	xor	a
	call PLY_AKG_STOPSOUNDEFFECTFROMCHANNEL
	ld	hl,6144+462
	ld	bc,5
	ld	a,23
	call	filvrm
	ld	hl,6144+462+96
	ld	bc,5
	ld	a,9
	call	filvrm
	ld	hl,6144+462+96+96
	ld	bc,5
	ld	a,9
	call	filvrm
	ld	b,50
	call	wait
	pop	bc
	djnz	alert_loop
	ld	hl,forclr
	ld	(hl),15				;chr color
	inc	hl
	ld	(hl),4				;background color
	inc	hl
	ld	(hl),4				;border color
	ld	a,1				;choose screen mode
	ld	(scrmod),a			;set it in proper system variable
	call	chgmod				;set screen


	ld	hl,default_chars
	ld	de,0
	ld	bc,2048
	call	ldirvm

	ld	b,50
	call	wait
	ld	b,5
corrupted_splash_loop:
	push	bc
	call	beep
	ld	hl,splash
	ld	de,6144+331
	ld	bc,11
	call	ldirvm
	ld	hl,splash+11
	ld	de,6144+363
	ld	bc,11
	call	ldirvm
	ld	hl,splash+22
	ld	de,6144+419
	ld	bc,9
	call	ldirvm
	ld	b,25
	call	wait
	ld	hl,6144
	ld	bc,429
	ld	a,32
	call	filvrm
	ld	b,5
	call	wait
	pop	bc
	djnz	corrupted_splash_loop
	ld	b,5
blink_override:
	push	bc
	ld	hl,override
	ld	bc,16
	ld	de,6144+64+8
	call	ldirvm
	ld	b,25
	call	wait
	ld	hl,6144+64+8
	ld	bc,16
	ld	a,32
	call	filvrm
	ld	b,25
	call	wait
	pop	bc
	djnz	blink_override
	ld	hl,override
	ld	bc,16
	ld	de,6144+64+8
	call	ldirvm
	ld	de,protocol
	ld	hl,6144+160
	ld	b,24
protocol_loop:
	push	bc
	ld	a,(de)
	call	wrtvrm
	inc	de
	inc	hl
	ld	b,10
	call	wait
	pop	bc
	djnz	protocol_loop	
	ld	hl,6144+224
	ld	b,28
loading_loop:
	push	bc
	ld	a,(de)
	call	wrtvrm
	inc	de
	inc	hl
	ld	b,5
	call	wait
	pop	bc
	djnz	loading_loop
	ld	b,3
blink_reboot:
	push	bc
	ld	hl,reboot
	ld	bc,16
	ld	de,6144+320+8
	call	ldirvm
	ld	b,25
	call	wait
	ld	hl,6144+320+8
	ld	bc,16
	ld	a,32
	call	filvrm
	ld	b,25
	call	wait
	pop	bc
	djnz	blink_reboot

	ld	a,2
	ld	(scrmod),a
	call	chgmod				;set screen2
	ld	b,reg1_val			;16x16 sprite no magnif
	ld	c,1				;reg nr
	call	wrtvdp				;update vdp reg1
	ld	hl,forclr
	ld	a,1
	ld	(hl),a				;chr color
	inc	hl
	inc	hl
	ld	(hl),a				;Background color
	call	chgclr				;set screen colors
	call	disscr
	call	draw_cockpit
	call	enascr
	ld	c,98h
	ld	hl,boot_sequence
	ld	d,16

new_msx2_frm:
	ld	a,203
	di
	out	(99h),a
	ld	a,89
	ei
	out	(99h),a
	ld	b,2
	call	wait
	ld	e,4
msx2_logo_row:
	ld	b,11
	otir
	call	vdp_auto_inc
	dec	e
	jp	nz,msx2_logo_row
	dec	d
	jp	nz,new_msx2_frm
	ld	b,150
	call	wait
	call	disscr
	call	PLY_AKG_STOP
	ld	a,1
	ld	(skip_tmp),a
	jp	unhook
;	ret

to_be_continued:
	call	cls
	ld	hl,tbc
	ld	de,6144+12*32+7
	ld	bc,18
	call	ldirvm
	call	enascr
	ld	b,200
	call	wait
	jp	disscr
;	ret

tbc:
	db	"TO BE CONTINUED",94,94,94

vdp_auto_inc:
	ld	b,21
inc_loop:
	in	a,(c)
	djnz	inc_loop
	ret

draw_cockpit:
	ld	hl,post1_ct1
	ld	de,8192
	ld	bc,post1_ct2-post1_ct1
	call	ldirvm
	ld	hl,post1_ct2
	ld	de,8192+2048
	ld	bc,post1_ct3-post1_ct2
	call	ldirvm
	ld	hl,post1_ct3
	ld	de,8192+4096
	ld	bc,post1_pt1-post1_ct3
	call	ldirvm
	ld	hl,post1_pt1
	ld	de,0
	ld	bc,post1_pt2-post1_pt1
	call	ldirvm
	ld	hl,post1_pt2
	ld	de,2048
	ld	bc,post1_pt3-post1_pt2
	call	ldirvm
	ld	hl,post1_pt3
	ld	de,4096
	ld	bc,post1_nt-post1_pt3
	call	ldirvm
	ld	hl,post1_nt
	ld	de,6144
	ld	bc,768
	jp	ldirvm
;	ret

alert:
	db	64,65,66,67,68
alert2:
	db	89,90,91,92,93
splash:
	db	"MSX  system"
	db	"version 1.0"
	db	"Copyright"
override:
	db	"ENERGY OVERRIDE!"
protocol:
	db	"STARTING PROTOCOL: V9938"
	db	"........................ OK!"
reboot:
	db	"REBOOTING SYSTEM"
post1_ct1:
	incbin "post1_ct1.bin"
post1_ct2:
	incbin "post1_ct2.bin"
post1_ct3:
	incbin "post1_ct3.bin"
post1_pt1:
	incbin "post1_pt1.bin"
post1_pt2:
	incbin "post1_pt2.bin"
post1_pt3:
	incbin "post1_pt3.bin"
post1_nt:
	incbin "post1_nt.bin"
post1_end:

default_chars:
	incbin "default_chars.bin"

boot_sequence:
	include "boot1.txt"
end_boot:

seg8_end:
	ds	-$ & 3fffh


segment9:
	org	8000h

shot_or_not:
	xor	a				;reset bullet flag
	ld	(bullet_flag),a
	ld	a,(fire_ratio)			;load fire ratio value
	ld	b,a				;store it in b (a will be wasted from next call)
	call	rand8				;generate an 8bit random number
	cp	b				;compare it with fire ratio
	ret	nc				;if greater then ret (no shot)
shot_is_true:
	ld	a,1				;else set bullet flag
	ld	(bullet_flag),a
	ret					;and ret


set_bullet:					;comments written when coding this
	ld	de,actpat+26*3			;actpat 1st byte for sprite 26 (first bullet)
	ld	hl,ramspttbl+26*4		;point sprite 26 ypos
	ld	b,6				;max bullet nr
free_bullet_slot:				;here, as we did for other sprites
	ld	a,(de)
	or	a
	jp	z,bullet_shot
	inc	e
	inc	e
	inc	e
	ld	a,4
	add	a,l
	ld	l,a				;add 4 to l, pointing to next bullet ypos in ramspttbl
	djnz	free_bullet_slot
	ret
bullet_shot:
	ld	a,b				;we have bullet number (reversed) in b
	dec	a
	jp	z,bullet6_is_set
	dec	a
	jp	z,bullet5_is_set
	dec	a
	jp	z,bullet4_is_set
	dec	a
	jp	z,bullet3_is_set
	dec	a
	jp	z,bullet2_is_set
bullet1_is_set:					;when determined wich bullet we are activating
	ld	bc,bullet1_dy			;we need to know wich enemy fired it
	jp	who_shot
bullet2_is_set:
	ld	bc,bullet2_dy
	jp	who_shot
bullet3_is_set:
	ld	bc,bullet3_dy
	jp	who_shot
bullet4_is_set:
	ld	bc,bullet4_dy
	jp	who_shot
bullet5_is_set:
	ld	bc,bullet5_dy
	jp	who_shot
bullet6_is_set:
	ld	bc,bullet6_dy
who_shot:					;so, again, generate a random number
	push	bc
	call	rand8
	and	7
	jp	z,coord_from1
	dec	a
	jp	z,coord_from2
	dec	a
	jp	z,coord_from3
	dec	a
	jp	z,coord_from4
	dec	a
	jp	z,coord_from5
	dec	a
	jp	z,coord_from6
coord_from7:
	ld	bc,actpat+24*3			;point to enemy 7 active flag
	ld	a,(bc)
	or	a
	jp	z,not_done
	ld	bc,ramspttbl+98			;point to shape object
	ld	a,(bc)				;load it in A
	cp	231				;is it powerup object or explosion frame? 
	jp	nc,not_done			;if so can't shot so...
	ld	bc,ramspttbl+96
	ld	a,(bc)
	dec	a
	jp	m,not_done
	ld	a,1
	ld	(de),a				;set active bullet sprite
	inc	e				;point to second actpat byte (pattern nr)
	ld	c,l				;pointer of bullet ypos in c
	ld	l,0
	ld	a,(hl)				;player ypos in a
	ld	b,a				;player ypos in b
	ld	l,96				;point to ypos of seventh enemy
	ld	a,(hl)				;enemy1 ypos in a
	ld	l,c				;point to bullet ypos
	ld	ixl,c				;save it also in ixl
	ld	(hl),a				;enemy1 ypos in bullet ypos
	cp	b				;check if bullet ypos>player ypos
	jp	c,e7_ply_greater		;if no go to player_ypos_is_greater
e7_eny_greater:
	sub	b				;if so subtract player ypos to get dy value (in a)
	pop	bc				;recall bullet_dy var address
	ld	(bc),a				;bullet dy saved
	ld	a,1
	ld	(de),a				;1 in bullet1 pattern nr
	jp	e7_dx
e7_ply_greater:
	ld	b,a				;if player ypos>bullet ypos copy bullet ypos in a
	ld	l,0				;point hl to player ypos in SAT
	ld	a,(hl)				;player ypos in a
	sub	b				;subtract bullet ypos to get bullet dy value (in a)
	pop	bc				;bullet dy address restored
	ld	(bc),a
	ld	a,3
	ld	(de),a				;3 in bullet1 pattern nr
e7_dx:
	inc	c				;point to bullet_dx
	push	bc				;save it for later
	ld	l,1				;point to player xpos in SAT
	ld	a,(hl)				;player xpos in a
	ld	b,a				;player xpos in b
	ld	l,97				;point to xpos of first enemy
	ld	a,(hl)				;enemy1 xpos in a
	ld	l,99
	bit	7,(hl)
	jp	z,e7_no_ebc
	sub	32
e7_no_ebc:
	ld	c,ixl				;copy bullet ypos to c
	ld	l,c				;point to bullet ypos
	inc	l				;point to bullet xpos
	ld	(hl),a				;enemy1 xpos in bullet xpos
	cp	b				;check if bullet xpos>player xpos
	jp	c,e7_plx_greater		;if no go to player_xpos_is_greater
e7_enx_greater:
	sub	b				;if so subtract player xpos to get dx value (in a)
	pop	bc				;recall bullet_dx var address
	ld	(bc),a				;bullet dx saved
	ld	a,(de)
	add	a,5
	ld	(de),a				;add 5 to bullet pattern nr
	jp	e7_greater_dx_or_dy
e7_plx_greater:
	ld	b,a				;if player xpos>bullet xpos copy bullet xpos in a
	ld	l,1				;point hl to player xpos in SAT
	ld	a,(hl)				;player xpos in a
	sub	b				;subtract bullet xpos to get bullet dx value (in a)
	pop	bc
	ld	(bc),a				;bullet dx saved
	ld	a,(de)
	add	a,9
	ld	(de),a				;add 9 to bullet pattern nr
e7_greater_dx_or_dy:
	ld	a,(bc)				;bullet dx in a
	ld	ixh,a				;bullet dx in ixh
	dec	c
	ld	a,(bc)				;bullet dy in a
	cp	ixh
	jp	c,e7_dx_greater
e7_dy_greater:
	inc	c
	inc	c
	ld	(bc),a				;copy dy wich is greater to bullet tmp var
	ld	a,(de)	
	inc	a
	ld	(de),a				;if dy>dx add 1 to bullet pattern nr
	ret
e7_dx_greater:
	ld	a,ixh
	inc	c
	inc	c
	ld	(bc),a				;copy dx wich is greater to bullet tmp var	
	ld	a,(de)
	add	a,2
	ld	(de),a				;if dx>dy add 2 to bullet pattern nr
	ret
coord_from1:
	ld	bc,actpat+12*3			;point to enemy 1 active flag
	ld	a,(bc)
	or	a
	jp	z,not_done
	ld	bc,ramspttbl+50			;point to shape object
	ld	a,(bc)				;load it in A
	cp	231				;is it powerup object?
	jp	nc,not_done			;if so can't shot so...
	ld	bc,ramspttbl+48
	ld	a,(bc)
	dec	a
	jp	m,not_done
	ld	a,1
	ld	(de),a				;set active bullet sprite
	inc	e				;point to second actpat byte (pattern nr)
	ld	c,l				;pointer of bullet ypos in c
	ld	l,0
	ld	a,(hl)				;player ypos in a
	ld	b,a				;player ypos in b
	ld	l,48				;point to ypos of first enemy
	ld	a,(hl)				;enemy1 ypos in a
	ld	l,c				;point to bullet ypos
	ld	ixl,c				;save it also in ixl
	ld	(hl),a				;enemy1 ypos in bullet ypos
	cp	b				;check if bullet ypos>player ypos
	jp	c,e1_ply_greater		;if no go to player_ypos_is_greater
e1_eny_greater:
	sub	b				;if so subtract player ypos to get dy value (in a)
	pop	bc				;recall bullet_dy var address
	ld	(bc),a				;bullet dy saved
	ld	a,1
	ld	(de),a				;1 in bullet1 pattern nr
	jp	e1_dx
e1_ply_greater:
	ld	b,a				;if player ypos>bullet ypos copy bullet ypos in b
	ld	l,0				;point hl to player ypos in SAT
	ld	a,(hl)				;player ypos in a
	sub	b				;subtract bullet ypos to get bullet dy value (in a)
	pop	bc				;bullet dy address restored
	ld	(bc),a				;bullet dy saved
	ld	a,3
	ld	(de),a				;3 in bullet1 pattern nr
e1_dx:
	inc	c				;point to bullet_dx
	push	bc				;save it for later
	ld	l,1				;point to player xpos in SAT
	ld	a,(hl)				;player xpos in a
	ld	b,a				;player xpos in b
	ld	l,49				;point to xpos of first enemy
	ld	a,(hl)				;enemy1 xpos in a
	ld	l,51
	bit	7,(hl)
	jp	z,e1_no_ebc
	sub	32
e1_no_ebc:
	ld	c,ixl				;copy bullet ypos pointer to c
	ld	l,c				;point to bullet ypos
	inc	l				;point to bullet xpos
	ld	(hl),a				;enemy1 xpos in bullet xpos
	cp	b				;check if bullet xpos>player xpos
	jp	c,e1_plx_greater		;if no go to player_xpos_is_greater
e1_enx_greater:
	sub	b				;if so subtract player xpos to get dx value (in a)
	pop	bc				;recall bullet_dx var address
	ld	(bc),a				;bullet dx saved
	ld	a,(de)
	add	a,5
	ld	(de),a				;add 5 to bullet pattern nr
	jp	e1_greater_dx_or_dy
e1_plx_greater:
	ld	b,a				;if player xpos>bullet xpos copy bullet xpos in a
	ld	l,1				;point hl to player xpos in SAT
	ld	a,(hl)				;player xpos in a
	sub	b				;subtract bullet xpos to get bullet dx value (in a)
	pop	bc
	ld	(bc),a				;bullet dx saved
	ld	a,(de)
	add	a,9
	ld	(de),a				;add 9 to bullet pattern nr
e1_greater_dx_or_dy:
	ld	a,(bc)				;bullet dx in a
	ld	ixh,a				;bullet dx in ixh
	dec	c
	ld	a,(bc)				;bullet dy in a
	cp	ixh
	jp	c,e1_dx_greater
e1_dy_greater:
	inc	c
	inc	c
	ld	(bc),a				;copy dy wich is greater to bullet tmp var
	ld	a,(de)
	inc	a
	ld	(de),a				;if dy>dx add 1 to bullet pattern nr
	ret
e1_dx_greater:
	ld	a,ixh
	inc	c
	inc	c
	ld	(bc),a				;copy dx wich is greater to bullet tmp var	
	ld	a,(de)
	add	a,2
	ld	(de),a				;if dx>dy add 2 to bullet pattern nr
	ret
coord_from2:
	ld	bc,actpat+14*3			;point to enemy 7 active flag
	ld	a,(bc)
	or	a
	jp	z,not_done
	ld	bc,ramspttbl+58			;point to shape object
	ld	a,(bc)				;load it in A
	cp	231				;is it powerup object?
	jp	nc,not_done			;if so can't shot so...
	ld	bc,ramspttbl+56
	ld	a,(bc)
	dec	a
	jp	m,not_done
	ld	a,1
	ld	(de),a				;set active bullet sprite
	inc	e				;point to second actpat byte (pattern nr)
	ld	c,l				;pointer of bullet ypos in c
	ld	l,0
	ld	a,(hl)				;player ypos in a
	ld	b,a				;player ypos in b
	ld	l,56				;point to ypos of second enemy
	ld	a,(hl)				;enemy1 ypos in a
	ld	l,c				;point to bullet ypos
	ld	ixl,c
	ld	(hl),a				;enemy1 ypos in bullet ypos
	cp	b				;check if bullet ypos>player ypos
	jp	c,e2_ply_greater		;if no go to player_ypos_is_greater
e2_eny_greater:
	sub	b				;if so subtract player ypos to get dy value (in a)
	pop	bc				;recall bullet_dy var address
	ld	(bc),a				;bullet dy saved
	ld	a,1
	ld	(de),a				;1 in bullet1 pattern nr
	jp	e2_dx
e2_ply_greater:
	ld	b,a				;if player ypos>bullet ypos copy bullet ypos in a
	ld	l,0				;point hl to player ypos in SAT
	ld	a,(hl)				;player ypos in a
	sub	b				;subtract bullet ypos to get bullet dy value (in a)
	pop	bc				;bullet dy saved
	ld	(bc),a
	ld	a,3
	ld	(de),a				;3 in bullet1 pattern nr
e2_dx:
	inc	c				;point to bullet_dx
	push	bc				;save it for later
	ld	l,1				;point to player xpos in SAT
	ld	a,(hl)				;player xpos in a
	ld	b,a				;player xpos in b
	ld	l,57				;point to xpos of second enemy
	ld	a,(hl)				;enemy1 xpos in a
	ld	l,59
	bit	7,(hl)
	jp	z,e2_no_ebc
	sub	32
e2_no_ebc:
	ld	c,ixl				;copy bullet ypos to c
	ld	l,c				;point to bullet ypos
	inc	l				;point to bullet xpos
	ld	(hl),a				;enemy1 xpos in bullet xpos
	cp	b				;check if bullet xpos>player xpos
	jp	c,e2_plx_greater		;if no go to player_xpos_is_greater
e2_enx_greater:
	sub	b				;if so subtract player xpos to get dx value (in a)
	pop	bc				;recall bullet_dx var address
	ld	(bc),a				;bullet dx saved
	ld	a,(de)
	add	a,5
	ld	(de),a				;add 5 to bullet pattern nr
	jp	e2_greater_dx_or_dy
e2_plx_greater:
	ld	b,a				;if player xpos>bullet xpos copy bullet xpos in a
	ld	l,1				;point hl to player xpos in SAT
	ld	a,(hl)				;player xpos in a
	sub	b				;subtract bullet xpos to get bullet dx value (in a)
	pop	bc
	ld	(bc),a				;bullet dx saved
	ld	a,(de)
	add	a,9
	ld	(de),a				;add 9 to bullet pattern nr
e2_greater_dx_or_dy:
	ld	a,(bc)				;bullet dx in a
	ld	ixh,a				;bullet dx in ixh
	dec	c
	ld	a,(bc)				;bullet dy in a
	cp	ixh
	jp	c,e2_dx_greater
e2_dy_greater:
	inc	c
	inc	c
	ld	(bc),a				;copy dy wich is greater to bullet tmp var
	ld	a,(de)
	inc	a
	ld	(de),a				;if dy>dx add 1 to bullet pattern nr
	ret
e2_dx_greater:
	ld	a,ixh
	inc	c
	inc	c
	ld	(bc),a				;copy dx wich is greater to bullet tmp var	
	ld	a,(de)
	add	a,2
	ld	(de),a				;if dx>dy add 2 to bullet pattern nr
	ret
coord_from3:
	ld	bc,actpat+16*3			;point to enemy 7 active flag
	ld	a,(bc)
	or	a
	jp	z,not_done
	ld	bc,ramspttbl+66			;point to shape object
	ld	a,(bc)				;load it in A
	cp	231				;is it powerup object?
	jp	nc,not_done			;if so can't shot so...
	ld	bc,ramspttbl+64
	ld	a,(bc)
	dec	a
	jp	m,not_done
	ld	a,1
	ld	(de),a				;set active bullet sprite
	inc	e				;point to second actpat byte (pattern nr)
	ld	c,l				;pointer of bullet ypos in c
	ld	l,0
	ld	a,(hl)				;player ypos in a
	ld	b,a				;player ypos in b
	ld	l,64				;point to ypos of third enemy
	ld	a,(hl)				;enemy1 ypos in a
	ld	l,c				;point to bullet ypos
	ld	ixl,c
	ld	(hl),a				;enemy1 ypos in bullet ypos
	cp	b				;check if bullet ypos>player ypos
	jp	c,e3_ply_greater		;if no go to player_ypos_is_greater
e3_eny_greater:
	sub	b				;if so subtract player ypos to get dy value (in a)
	pop	bc				;recall bullet_dy var address
	ld	(bc),a				;bullet dy saved
	ld	a,1
	ld	(de),a				;1 in bullet1 pattern nr
	jp	e3_dx
e3_ply_greater:
	ld	b,a				;if player ypos>bullet ypos copy bullet ypos in a
	ld	l,0				;point hl to player ypos in SAT
	ld	a,(hl)				;player ypos in a
	sub	b				;subtract bullet ypos to get bullet dy value (in a)
	pop	bc				;bullet dy saved
	ld	(bc),a
	ld	a,3
	ld	(de),a				;3 in bullet1 pattern nr
e3_dx:
	inc	c				;point to bullet_dx
	push	bc				;save it for later
	ld	l,1				;point to player xpos in SAT
	ld	a,(hl)				;player xpos in a
	ld	b,a				;player xpos in b
	ld	l,65				;point to xpos of third enemy
	ld	a,(hl)				;enemy1 xpos in a
	ld	l,67
	bit	7,(hl)
	jp	z,e3_no_ebc
	sub	32
e3_no_ebc:
	ld	c,ixl				;copy bullet ypos to c
	ld	l,c				;point to bullet ypos
	inc	l				;point to bullet xpos
	ld	(hl),a				;enemy1 xpos in bullet xpos
	cp	b				;check if bullet xpos>player xpos
	jp	c,e3_plx_greater		;if no go to player_xpos_is_greater
e3_enx_greater:
	sub	b				;if so subtract player xpos to get dx value (in a)
	pop	bc				;recall bullet_dx var address
	ld	(bc),a				;bullet dx saved
	ld	a,(de)
	add	a,5
	ld	(de),a				;add 5 to bullet pattern nr
	jp	e3_greater_dx_or_dy
e3_plx_greater:
	ld	b,a				;if player xpos>bullet xpos copy bullet xpos in a
	ld	l,1				;point hl to player xpos in SAT
	ld	a,(hl)				;player xpos in a
	sub	b				;subtract bullet xpos to get bullet dx value (in a)
	pop	bc
	ld	(bc),a				;bullet dx saved
	ld	a,(de)
	add	a,9
	ld	(de),a				;add 9 to bullet pattern nr
e3_greater_dx_or_dy:
	ld	a,(bc)				;bullet dx in a
	ld	ixh,a				;bullet dx in ixh
	dec	c
	ld	a,(bc)				;bullet dy in a
	cp	ixh
	jp	c,e3_dx_greater
e3_dy_greater:
	inc	c
	inc	c
	ld	(bc),a				;copy dy wich is greater to bullet tmp var
	ld	a,(de)
	inc	a
	ld	(de),a				;if dy>dx add 1 to bullet pattern nr
	ret
e3_dx_greater:
	ld	a,ixh
	inc	c
	inc	c
	ld	(bc),a				;copy dx wich is greater to bullet tmp var	
	ld	a,(de)
	add	a,2
	ld	(de),a				;if dx>dy add 2 to bullet pattern nr
	ret
coord_from4:
	ld	bc,actpat+18*3			;point to enemy 7 active flag
	ld	a,(bc)
	or	a
	jp	z,not_done
	ld	bc,ramspttbl+74			;point to shape object
	ld	a,(bc)				;load it in A
	cp	231				;is it powerup object?
	jp	nc,not_done			;if so can't shot so...
	ld	bc,ramspttbl+72
	ld	a,(bc)
	dec	a
	jp	m,not_done
	ld	a,1
	ld	(de),a				;set active bullet sprite
	inc	e				;point to second actpat byte (pattern nr)
	ld	c,l				;pointer of bullet ypos in c
	ld	l,0
	ld	a,(hl)				;player ypos in a
	ld	b,a				;player ypos in b
	ld	l,72				;point to ypos of fourth enemy
	ld	a,(hl)				;enemy1 ypos in a
	ld	l,c				;point to bullet ypos
	ld	ixl,c
	ld	(hl),a				;enemy1 ypos in bullet ypos
	cp	b				;check if bullet ypos>player ypos
	jp	c,e4_ply_greater		;if no go to player_ypos_is_greater
e4_eny_greater:
	sub	b				;if so subtract player ypos to get dy value (in a)
	pop	bc				;recall bullet_dy var address
	ld	(bc),a				;bullet dy saved
	ld	a,1
	ld	(de),a				;1 in bullet1 pattern nr
	jp	e4_dx
e4_ply_greater:
	ld	b,a				;if player ypos>bullet ypos copy bullet ypos in a
	ld	l,0				;point hl to player ypos in SAT
	ld	a,(hl)				;player ypos in a
	sub	b				;subtract bullet ypos to get bullet dy value (in a)
	pop	bc				;bullet dy saved
	ld	(bc),a
	ld	a,3
	ld	(de),a				;3 in bullet1 pattern nr
e4_dx:
	inc	c				;point to bullet_dx
	push	bc				;save it for later
	ld	l,1				;point to player xpos in SAT
	ld	a,(hl)				;player xpos in a
	ld	b,a				;player xpos in b
	ld	l,73				;point to xpos of first enemy
	ld	a,(hl)				;enemy1 xpos in a
	ld	l,75
	bit	7,(hl)
	jp	z,e4_no_ebc
	sub	32
e4_no_ebc:
	ld	c,ixl				;copy bullet ypos to c
	ld	l,c				;point to bullet ypos
	inc	l				;point to bullet xpos
	ld	(hl),a				;enemy1 xpos in bullet xpos
	cp	b				;check if bullet xpos>player xpos
	jp	c,e4_plx_greater		;if no go to player_xpos_is_greater
e4_enx_greater:
	sub	b				;if so subtract player xpos to get dx value (in a)
	pop	bc				;recall bullet_dx var address
	ld	(bc),a				;bullet dx saved
	ld	a,(de)
	add	a,5
	ld	(de),a				;add 5 to bullet pattern nr
	jp	e4_greater_dx_or_dy
e4_plx_greater:
	ld	b,a				;if player xpos>bullet xpos copy bullet xpos in a
	ld	l,1				;point hl to player xpos in SAT
	ld	a,(hl)				;player xpos in a
	sub	b				;subtract bullet xpos to get bullet dx value (in a)
	pop	bc
	ld	(bc),a				;bullet dx saved
	ld	a,(de)
	add	a,9
	ld	(de),a				;add 9 to bullet pattern nr
e4_greater_dx_or_dy:
	ld	a,(bc)				;bullet dx in a
	ld	ixh,a				;bullet dx in ixh
	dec	c
	ld	a,(bc)				;bullet dy in a
	cp	ixh
	jp	c,e4_dx_greater
e4_dy_greater:
	inc	c
	inc	c
	ld	(bc),a				;copy dy wich is greater to bullet tmp var
	ld	a,(de)
	inc	a
	ld	(de),a				;if dy>dx add 1 to bullet pattern nr
	ret
e4_dx_greater:
	ld	a,ixh
	inc	c
	inc	c
	ld	(bc),a				;copy dx wich is greater to bullet tmp var	
	ld	a,(de)
	add	a,2
	ld	(de),a				;if dx>dy add 2 to bullet pattern nr
	ret
coord_from5:
	ld	bc,actpat+20*3			;point to enemy 7 active flag
	ld	a,(bc)
	or	a
	jp	z,not_done
	ld	bc,ramspttbl+82			;point to shape object
	ld	a,(bc)				;load it in A
	cp	231				;is it powerup object?
	jp	nc,not_done			;if so can't shot so...
	ld	bc,ramspttbl+80
	ld	a,(bc)
	dec	a
	jp	m,not_done
	ld	a,1
	ld	(de),a				;set active bullet sprite
	inc	e				;point to second actpat byte (pattern nr)
	ld	c,l				;pointer of bullet ypos in c
	ld	l,0
	ld	a,(hl)				;player ypos in a
	ld	b,a				;player ypos in b
	ld	l,80				;point to ypos of first enemy
	ld	a,(hl)				;enemy1 ypos in a
	ld	l,c				;point to bullet ypos
	ld	ixl,c
	ld	(hl),a				;enemy1 ypos in bullet ypos
	cp	b				;check if bullet ypos>player ypos
	jp	c,e5_ply_greater		;if no go to player_ypos_is_greater
e5_eny_greater:
	sub	b				;if so subtract player ypos to get dy value (in a)
	pop	bc				;recall bullet_dy var address
	ld	(bc),a				;bullet dy saved
	ld	a,1
	ld	(de),a				;1 in bullet1 pattern nr
	jp	e5_dx
e5_ply_greater:
	ld	b,a				;if player ypos>bullet ypos copy bullet ypos in a
	ld	l,0				;point hl to player ypos in SAT
	ld	a,(hl)				;player ypos in a
	sub	b				;subtract bullet ypos to get bullet dy value (in a)
	pop	bc				;bullet dy saved
	ld	(bc),a
	ld	a,3
	ld	(de),a				;3 in bullet1 pattern nr
e5_dx:
	inc	c				;point to bullet_dx
	push	bc				;save it for later
	ld	l,1				;point to player xpos in SAT
	ld	a,(hl)				;player xpos in a
	ld	b,a				;player xpos in b
	ld	l,81				;point to xpos of first enemy
	ld	a,(hl)				;enemy1 xpos in a
	ld	l,83
	bit	7,(hl)
	jp	z,e5_no_ebc
	sub	32
e5_no_ebc:
	ld	c,ixl				;copy bullet ypos to c
	ld	l,c				;point to bullet ypos
	inc	l				;point to bullet xpos
	ld	(hl),a				;enemy1 xpos in bullet xpos
	cp	b				;check if bullet xpos>player xpos
	jp	c,e5_plx_greater		;if no go to player_xpos_is_greater
e5_enx_greater:
	sub	b				;if so subtract player xpos to get dx value (in a)
	pop	bc				;recall bullet_dx var address
	ld	(bc),a				;bullet dx saved
	ld	a,(de)
	add	a,5
	ld	(de),a				;add 5 to bullet pattern nr
	jp	e5_greater_dx_or_dy
e5_plx_greater:
	ld	b,a				;if player xpos>bullet xpos copy bullet xpos in a
	ld	l,1				;point hl to player xpos in SAT
	ld	a,(hl)				;player xpos in a
	sub	b				;subtract bullet xpos to get bullet dx value (in a)
	pop	bc
	ld	(bc),a				;bullet dx saved
	ld	a,(de)
	add	a,9
	ld	(de),a				;add 9 to bullet pattern nr
e5_greater_dx_or_dy:
	ld	a,(bc)				;bullet dx in a
	ld	ixh,a				;bullet dx in ixh
	dec	c
	ld	a,(bc)				;bullet dy in a
	cp	ixh
	jp	c,e5_dx_greater
e5_dy_greater:
	inc	c
	inc	c
	ld	(bc),a				;copy dy wich is greater to bullet tmp var
	ld	a,(de)
	inc	a
	ld	(de),a				;if dy>dx add 1 to bullet pattern nr
	ret
e5_dx_greater:
	ld	a,ixh
	inc	c
	inc	c
	ld	(bc),a				;copy dx wich is greater to bullet tmp var	
	ld	a,(de)
	add	a,2
	ld	(de),a				;if dx>dy add 2 to bullet pattern nr
	ret
coord_from6:
	ld	bc,actpat+22*3			;point to enemy 7 active flag
	ld	a,(bc)
	or	a
	jp	z,not_done
	ld	bc,ramspttbl+90			;point to shape object
	ld	a,(bc)				;load it in A
	cp	231				;is it powerup object?
	jp	nc,not_done			;if so can't shot so...
	ld	bc,ramspttbl+88
	ld	a,(bc)
	dec	a
	jp	m,not_done
	ld	a,1
	ld	(de),a				;set active bullet sprite
	inc	e				;point to second actpat byte (pattern nr)
	ld	c,l				;pointer of bullet ypos in c
	ld	l,0
	ld	a,(hl)				;player ypos in a
	ld	b,a				;player ypos in b
	ld	l,88				;point to ypos of first enemy
	ld	a,(hl)				;enemy1 ypos in a
	ld	l,c				;point to bullet ypos
	ld	ixl,c
	ld	(hl),a				;enemy1 ypos in bullet ypos
	cp	b				;check if bullet ypos>player ypos
	jp	c,e6_ply_greater		;if no go to player_ypos_is_greater
e6_eny_greater:
	sub	b				;if so subtract player ypos to get dy value (in a)
	pop	bc				;recall bullet_dy var address
	ld	(bc),a				;bullet dy saved
	ld	a,1
	ld	(de),a				;1 in bullet1 pattern nr
	jp	e6_dx
e6_ply_greater:
	ld	b,a				;if player ypos>bullet ypos copy bullet ypos in a
	ld	l,0				;point hl to player ypos in SAT
	ld	a,(hl)				;player ypos in a
	sub	b				;subtract bullet ypos to get bullet dy value (in a)
	pop	bc				;bullet dy saved
	ld	(bc),a
	ld	a,3
	ld	(de),a				;3 in bullet1 pattern nr
e6_dx:
	inc	c				;point to bullet_dx
	push	bc				;save it for later
	ld	l,1				;point to player xpos in SAT
	ld	a,(hl)				;player xpos in a
	ld	b,a				;player xpos in b
	ld	l,89				;point to xpos of first enemy
	ld	a,(hl)				;enemy1 xpos in a
	ld	l,91
	bit	7,(hl)
	jp	z,e6_no_ebc
	sub	32
e6_no_ebc:
	ld	c,ixl				;copy bullet ypos to c
	ld	l,c				;point to bullet ypos
	inc	l				;point to bullet xpos
	ld	(hl),a				;enemy1 xpos in bullet xpos
	cp	b				;check if bullet xpos>player xpos
	jp	c,e6_plx_greater		;if no go to player_xpos_is_greater
e6_enx_greater:
	sub	b				;if so subtract player xpos to get dx value (in a)
	pop	bc				;recall bullet_dx var address
	ld	(bc),a				;bullet dx saved
	ld	a,(de)
	add	a,5
	ld	(de),a				;add 5 to bullet pattern nr
	jp	e6_greater_dx_or_dy
e6_plx_greater:
	ld	b,a				;if player xpos>bullet xpos copy bullet xpos in a
	ld	l,1				;point hl to player xpos in SAT
	ld	a,(hl)				;player xpos in a
	sub	b				;subtract bullet xpos to get bullet dx value (in a)
	pop	bc
	ld	(bc),a				;bullet dx saved
	ld	a,(de)
	add	a,9
	ld	(de),a				;add 9 to bullet pattern nr
e6_greater_dx_or_dy:
	ld	a,(bc)				;bullet dx in a
	ld	ixh,a				;bullet dx in ixh
	dec	c
	ld	a,(bc)				;bullet dy in a
	cp	ixh
	jp	c,e6_dx_greater
e6_dy_greater:
	inc	c
	inc	c
	ld	(bc),a				;copy dy wich is greater to bullet tmp var
	ld	a,(de)
	inc	a
	ld	(de),a				;if dy>dx add 1 to bullet pattern nr
	ret
e6_dx_greater:
	ld	a,ixh
	inc	c
	inc	c
	ld	(bc),a				;copy dx wich is greater to bullet tmp var	
	ld	a,(de)
	add	a,2
	ld	(de),a				;if dx>dy add 2 to bullet pattern nr
	ret
not_done:
	pop	bc
	ret



weaponlvinc:
	push	hl
	push	de
	push	bc
;	ld	a,(power)
;	inc	a
;	ld	(power),a
	ld	hl,power
	inc	(hl)
	ld	a,(hl)				;MDL 2 bytes, 2 t-states
	dec	a
	jp	z,weap1
	dec	a
	jp	z,weap2
	dec	a
	jp	z,weap3
	dec	a
	jp	z,weap4
	dec	a
	jp	z,weap5
	dec	a
	jp	z,weap6
	dec	a
	jp	z,weap7
	dec	a
	jp	z,weap8
	dec	a
	jp	z,weap9
	dec	a
	jp	z,weap10
	ld	a,10
	ld	(power),a
	pop	bc
	pop	de
	pop	hl
	ret
weap1:
	ld	a,-3
	ld	(coord_dec_speed),a
	ld	a,3
	ld	(coord_inc_speed),a
	ld	hl,ramspttbl+26
	ld	(hl),8
	ld	l,36
	ld	(hl),209
	ld	de,actpat+27
	xor	a
	ld	(de),a
	inc	e
	inc	e
	ld	(de),a
	inc	a
	ld	(damage),a
	ld	hl,w1
	ld	de,weapon_lv
	ldi
	ldi
	ldi
	pop	bc
	pop	de
	pop	hl
	ret
weap2:
	ld	a,-4
	ld	(coord_dec_speed),a
	ld	a,4
	ld	(coord_inc_speed),a
	ld	hl,w2
	ld	de,weapon_lv
	ldi
	ldi
	ldi
	pop	bc
	pop	de
	pop	hl
	ret
weap3:
	ld	hl,ramspttbl+26
	ld	(hl),20
	ld	a,2
	ld	(damage),a
	ld	hl,w3
	ld	de,weapon_lv
	ldi
	ldi
	ldi
	pop	bc
	pop	de
	pop	hl
	ret
weap4:
	ld	hl,ramspttbl+26
	ld	(hl),32
	ld	a,3
	ld	(damage),a
	ld	hl,w4
	ld	de,weapon_lv
	ldi
	ldi
	ldi
	pop	bc
	pop	de
	pop	hl
	ret
weap5:
	ld	hl,ramspttbl+30
	ld	(hl),12
;	ld	hl,ramspttbl+34
	ld	l,34
	ld	(hl),16
	ld	hl,w5
	ld	de,weapon_lv
	ldi
	ldi
	ldi
	pop	bc
	pop	de
	pop	hl
	ret
weap6:
	ld	hl,ramspttbl+30
	ld	(hl),24
;	ld	hl,ramspttbl+34
	ld	l,34
	ld	(hl),28
	ld	hl,w6
	ld	de,weapon_lv
	ldi
	ldi
	ldi
	pop	bc
	pop	de
	pop	hl
	ret
weap7:
	ld	hl,ramspttbl+30
	ld	(hl),36
;	ld	hl,ramspttbl+34
	ld	l,34
	ld	(hl),40
	ld	hl,w7
	ld	de,weapon_lv
	ldi
	ldi
	ldi
	pop	bc
	pop	de
	pop	hl
	ret
weap8:
	ld	de,actpat+27
	ld	a,1
	ld	(de),a
	ld	hl,w8
	ld	de,weapon_lv
	ldi
	ldi
	ldi
	pop	bc
	pop	de
	pop	hl
	ret
weap9:
	ld	hl,w9
	ld	de,weapon_lv
	ldi
	ldi
	ldi
	pop	bc
	pop	de
	pop	hl
	ret
weap10:
	ld	hl,w10
	ld	de,weapon_lv
	ldi
	ldi
	ldi
	pop	bc
	pop	de
	pop	hl
	ret

w1:
	db	" 1 "
w2:
	db	" 2 "	
w3:
	db	" 3 "
w4:
	db	" 4 "
w5:
	db	" 5 "
w6:
	db	" 6 "
w7:
	db	" 7 "
w8:
	db	" 8 "
w9:
	db	" 9 "
w10:
	db	"MAX"

seg9_end:
	ds	-$ & 3fffh

	org	8000h
segment10:

eimg1_ct1:
	incbin "ffending1_ct1.plt"
eimg1_pt1:
	incbin "ffending1_pt1.plt"
eimg1_nt:
	incbin "ffending1_nt.plt"
eimg1_ct2:
	incbin "ffending1_ct2.plt"
eimg1_pt2:
	incbin "ffending1_pt2.plt"
eimg2_ct1:
	incbin "ffending2_ct1.plt"
eimg2_pt1:
	incbin "ffending2_pt1.plt"
eimg2_nt:
	incbin "ffending2_nt.plt"
eimg2_ct2:
	incbin "ffending2_ct2.plt"
eimg2_pt2:
	incbin "ffending2_pt2.plt"
eimg3_ct1:
	incbin "ffending3_ct1.plt"
eimg3_pt1:
	incbin "ffending3_pt1.plt"
eimg3_nt:
	incbin "ffending3_nt.plt"
eimg3_ct2:
	incbin "ffending3_ct2.plt"
eimg3_pt2:
	incbin "ffending3_pt2.plt"
eimg4_ct1:
	incbin "ffending4_ct1.plt"
eimg4_pt1:
	incbin "ffending4_pt1.plt"
eimg4_nt:
	incbin "ffending4_nt.plt"
eimg4_ct2:
	incbin "ffending4_ct2.plt"
eimg4_pt2:
	incbin "ffending4_pt2.plt"
eimg5_ct1:
	incbin "ffending5_ct1.plt"
eimg5_pt1:
	incbin "ffending5_pt1.plt"
eimg5_nt:
	incbin "ffending5_nt.plt"
eimg5_ct2:
	incbin "ffending5_ct2.plt"
eimg5_pt2:
	incbin "ffending5_pt2.plt"

Show_credits:
	xor	a
	ld	(ending),a
	call	enascr
	ld	hl,chstart-769
	ld	(hl),32
	ld	de,chstart-768
	ld	bc,768
	call	unroll
	ld	hl,credits-32
	ld	a,69
	push	hl
do_epilogue_stuff:
	ld	b,70
	call	wait
	ld	hl,chstart-736
	ld	de,chstart-768
	ld	bc,736
	ldir
	ld	bc,32
	pop	hl
	add	hl,bc
	push	hl
	ld	de,chstart-32
	ldir
	push	af
	ld	hl,chstart-768
	ld	de,6144
	ld	bc,768
	call	ldirvm
	pop	af
	dec	a
	jp	nz,do_epilogue_stuff
	pop	hl
	ld	a,24
	ld	(tmp),a
empty_screen_loop:
	ld	b,70
	call	wait
	ld	hl,chstart-736
	ld	de,chstart-768
	ld	bc,736
	ldir
	ld	hl,chstart-32
	ld	de,chstart-31
	ld	bc,31
	ld	(hl),32
	ldir
	push	af
	ld	hl,chstart-768
	ld	de,6144
	ld	bc,768
	call	ldirvm
	pop	af
	dec	a
	jp	nz,empty_screen_loop
	ld	a,(tmp)
	cp	24
	jp	nz,epilogue_end
	ld	a,10
	ld	hl,end_of_scroller
	ld	de,chstart-32
	ld	bc,32
	ldir
	ld	hl,chstart-768
	ld	de,6144
	ld	bc,768
	call	ldirvm
	ld	a,12
	ld	(tmp),a
	jr	empty_screen_loop	

epilogue_end:	
	ld	b,0
	call	wait

	ld	a,11
	ld	(volume),a
	ld	a,1
	ld	(mfade),a
volume_fading:
	ld	b,25
	call	wait
	ld	a,(volume)
	dec	a
	ld	(volume),a
	jp	nz,volume_fading
	ld	b,25
	call	wait
	xor	a
	ld	(mfade),a
	call	PLY_AKG_STOP
	inc	a
	ld	(skip_tmp),a
	ret






credits:
	db	"        FREEDOM FIGHTER         "			;000
	db	"                                "
	db	"                                "
	db	" A GAME BY GEPPOS MSX ADVENTURE "			;001
	db	"     CODE AND GFX BY GEPPO      "			;002
	db	"        AKA THEGEPS AKA         "			;003
	db	"     PINTUS GIUSEPPE ETTORE     "			;004
	db	"   MUSICS AND SFX BY PHAZE101   "			;005
	db	"                                "			;006
	db	" THIS WAS AN AMAZING ADVENTURE  "			;007
	db	"     STARTED IN JUNE 2018 ON    "			;008
	db	"    MSX RESOURCE CENTER FORUM   "			;009
	db	"AN ABSOLUTE BEGINNER ",95,"ME",95," ASKED "		;011
	db	"HELP TO CHOOSE A CROSS ASSEMBLER"			;012
	db	"                                "			;013
	db	"SINCE THEN I MET A LOT OF REALLY"			;014
	db	"SKILLED CODERS READY TO HELP ME "			;015
	db	"GROW",94,94,94," I HAD A LOT OF IDEAS TO "		;016
	db	"MAKE A SMOOTH VERTICAL SCROLLING"			;017
	db	"I ALWAYS KNEW MSX COULD DO THAT",94			;018
	db	"   BUT CODING A GAME",97," NO WAY",93,"   "		;019
	db	"  I DID NOT KNOW HOW TO DO",94,94,94,"   "		;020
	db	"ALL OF THEM PUSHED ME TO DO IT",94," " 		;021
	db	"                                "			;022
	db	"STEP BY STEP I REACHED THE GOAL",92			;023
	db	"MY FIRST GAME ",95,"THE GAME YOU HAVE"			;024
	db	"PLAYED UNTIL THE END",95," IS HERE",93,"  "		;025
	db	"     I HOPE YOU ENJOYED IT      "			;027
	db	"  I HAD A LOT OF FUN CODING IT  "			;028
	db	" I THINK NOW I KNOW MORE MY MSX "			;029
	db	" AND I LOVE IT MORE THAN BEFORE "			;030
	db	"                                "			;031
	db	" I WANT TO THANK ALL THE PEOPLE "			;032
	db	"   INVOLVED IN THIS PROJECT",92,"    "			;033
	db	"                                "			;034
	db	"MY WIFE ",95," WITHOUT HER PATIENCE  "			;035
	db	"YOU WOULD NEVER PLAYED FREEDOM  "			;036
	db	"FIGHTER",94,94,94," I LOVE YOU DARLING",93,"  "	;037
	db	"                                "			;038
	db	"MY BROTHER GABRIELE ",95,"MY 1ST FAN",93		;039
	db	"                                "			;040
	db	"PHAZE101 ",95," GUYS YOU ARE AMAZING",93		;041
	db	"YOUR WORK TALKS ABOUT YOU BETTER"			;042
	db	"THAN I CAN DO",94,94,94," I LOVED EVERY  "		;043
	db	" SINGLE NOTE YOU HAVE MADE THE  "			;044
	db	"PSG PLAY",93," I AM PROUD OF YOU AND "			;045
	db	"YOUR FRIENDSHIP",94,94,94,"              "		;046
	db	"                                "			;047
	db	"THARGAN ",95,"THANK YOU FOR GIVING US"			;048
	db	"ARKOS TRACKER AND FOR YOUR HELP "			;049
	db	"                                "			;050
	db	" GRAUW ",95," SANTIONTANON ",95," ARTRAG  "		;051
	db	"THANK YOU FOR YOUR HINTS AND TO "			;052
	db	" LET ME LOOK INTO YOUR CODE AND "			;053
	db	"    GRAUW ALSO FOR GLASS AND    "			;054
	db	" MSX ASSEMBLY PAGE ",95," REALLY TY",93," "		;055
	db	"  HIT9918 ",95," MANUEL ",95," NYYRIKKI   "		;056
	db	" AND ALL THE CODERS THAT I MET  "			;057
	db	"  ON MRC",93," YOU ARE ALL WORTHY",93,"   "		;058
	db	"                                "			;059
	db	" RETRO PROGRAMMERS INSIDE ",95," RPI "			;060
	db	"A FACEBOOK GROUP WHERE ME AND MY"			;061
	db	"FRIENDS TRY TO PUSH RETROCODING " 			;062
	db	"                                "			;063
	db	"FILE",95,"HUNTER",94,"COM  ",95," A TRUE FRIEND"
	db	"                                "
	db	"     AND ",95," OBVIOUSLY ",95," YOU",93,"     "
	db	"                                "
	db	"       THANKS FOR PLAYING       "


end_of_scroller:
	db	"            THE END",97,"            "



seg10_end:

	ds	-$ & 3fffh

	org	8000h
segment11:
Pic_level1_2:
	call	disscr
	ld	hl,p12_pt1
	ld	de,0
	ld	bc,p12_pt2 - p12_pt1
	call	ldirvm
	ld	hl,p12_pt2
	ld	de,2048
	ld	bc,p12_ct1 - p12_pt2
	call	ldirvm
	ld	hl,p12_ct1
	ld	de,8192
	ld	bc,p12_ct2 - p12_ct1
	call	ldirvm
	ld	hl,p12_ct2
	ld	de,8192+2048
	ld	bc,p12_nt - p12_ct2
	call	ldirvm
	ld	hl,p12_nt
	ld	de,6144
	ld	bc,768
	call	ldirvm
	call	enascr
	call	still_reading
	call	disscr
	jp	panel_restore

Pic_level2_3:
	call	disscr
	ld	hl,p23_pt1
	ld	de,0
	ld	bc,p23_pt2 - p23_pt1
	call	ldirvm
	ld	hl,p23_pt2
	ld	de,2048
	ld	bc,p23_ct1 - p23_pt2
	call	ldirvm
	ld	hl,p23_ct1
	ld	de,8192
	ld	bc,p23_ct2 - p23_ct1
	call	ldirvm
	ld	hl,p23_ct2
	ld	de,8192+2048
	ld	bc,p23_nt - p23_ct2
	call	ldirvm
	ld	hl,p23_nt
	ld	de,6144
	ld	bc,768
	call	ldirvm
	call	enascr
	call	still_reading
	call	disscr
	jp	panel_restore

Pic_level3_4:
	call	disscr
	ld	hl,p34_pt1
	ld	de,0
	ld	bc,p34_pt2 - p34_pt1
	call	ldirvm
	ld	hl,p34_pt2
	ld	de,2048
	ld	bc,p34_ct1 - p34_pt2
	call	ldirvm
	ld	hl,p34_ct1
	ld	de,8192
	ld	bc,p34_ct2 - p34_ct1
	call	ldirvm
	ld	hl,p34_ct2
	ld	de,8192+2048
	ld	bc,p34_nt - p34_ct2
	call	ldirvm
	ld	hl,p34_nt
	ld	de,6144
	ld	bc,768
	call	ldirvm
	call	enascr
	call	still_reading
	call	disscr
	jp	panel_restore

Pic_level4_5:
	call	disscr
	ld	hl,p45_pt1
	ld	de,0
	ld	bc,p45_pt2 - p45_pt1
	call	ldirvm
	ld	hl,p45_pt2
	ld	de,2048
	ld	bc,p45_ct1 - p45_pt2
	call	ldirvm
	ld	hl,p45_ct1
	ld	de,8192
	ld	bc,p45_ct2 - p45_ct1
	call	ldirvm
	ld	hl,p45_ct2
	ld	de,8192+2048
	ld	bc,p45_nt - p45_ct2
	call	ldirvm
	ld	hl,p45_nt
	ld	de,6144
	ld	bc,768
	call	ldirvm
	call	enascr
	call	still_reading
	call	disscr
	jp	panel_restore

p12_pt1:
	incbin "piclv12_pt1.bin"
p12_pt2:
	incbin "piclv12_pt2.bin"
p12_ct1:
	incbin "piclv12_ct1.bin"
p12_ct2:
	incbin "piclv12_ct2.bin"
p12_nt:
	incbin "piclv12_nt.bin"

p23_pt1:
	incbin "piclv23_pt1.bin"
p23_pt2:
	incbin "piclv23_pt2.bin"
p23_ct1:
	incbin "piclv23_ct1.bin"
p23_ct2:
	incbin "piclv23_ct2.bin"
p23_nt:
	incbin "piclv23_nt.bin"

p34_pt1:
	incbin "piclv34_pt1.bin"
p34_pt2:
	incbin "piclv34_pt2.bin"
p34_ct1:
	incbin "piclv34_ct1.bin"
p34_ct2:
	incbin "piclv34_ct2.bin"
p34_nt:
	incbin "piclv34_nt.bin"

p45_pt1:
	incbin "piclv45_pt1.bin"
p45_pt2:
	incbin "piclv45_pt2.bin"
p45_ct1:
	incbin "piclv45_ct1.bin"
p45_ct2:
	incbin "piclv45_ct2.bin"
p45_nt:
	incbin "piclv45_nt.bin"

still_reading:
	ld	a,(player_input)
	call	gttrig
	jr	z,still_reading	
	ret
panel_restore:
;	ld	a,0c9h		;opcode for RET
;	ld	(hook),a
	call	unhook
	call	PLY_AKG_STOP
	ld	hl,pres_data
	ld	de,6144
	ld	bc,32
	jp	ldirvm
pres_data:
	db	"  SCORE   LIVES  POWER  HI",95,"SCORE"


seg11_end:
	ds	-$ & 3fffh

ThEEND:
	

