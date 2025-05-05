li $t1,1 #a
li $t2,1 #b
li $t3,1 #c

xori $t4,$t1,0000000000000001  #!a
xori $t5,$t2,0000000000000001  #!b
xori $t6,$t3,0000000000000001  #!c

and $t7,$t4,$t5 #!a!b
and $t8,$t7,$t6 #!a!b!c
and $t9,$t7,$t3 #!a!bc

or $t7,$t8,$t9 #!a!b!c+!a!bc

and $t8,$t1,$t5 #a!b
and $t9,$t8,$t3 #a!bc

and $t8,$t1,$t2 #ab
and $s0,$t8,$t6#ab!c

or $t8, $s0, $t9#a!bc+ab!c

or $t9, $t7,$t8#!a!b!c+!a!bc+a!bc+ab!c




