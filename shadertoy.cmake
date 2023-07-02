set(width  100)
set(height 100)

set(i 0)
set(j 0)
set(r 0)
set(g 0)
set(b 0)

set(type 5)

set(OUT_PUT_STR "P3 ${width} ${height} 255 ")

while(i LESS height)
	while(j LESS width)
		string(APPEND OUT_PUT_STR "${r} ${g} ${b} ")			
		math(EXPR j "${j}+1")	
		math(EXPR r "${type}*${j}%255")	
	endwhile()

	math(EXPR i "${i}+1")
	math(EXPR g "${type}*${i}%255")	
	set(j 0)
endwhile()

file(WRITE out.ppm ${OUT_PUT_STR})













