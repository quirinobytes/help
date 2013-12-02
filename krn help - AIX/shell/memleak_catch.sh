#!/bin/ksh
#
#
# Correlate ps.before and ps.after data ..
#
# command output from ps vg
#
ONE_FILE=temp_ps_vg
print_help() {
print "Usage: post_vg.sh [single_file|before_ps after_ps]"
print " Post process ps vg output "
print " "
print " where, "
print " single_file contains a before and after snapshot"
print " use ps vg > ps_vg.before             to get this file, before and after. "
print " No files specified - assume"
print " ==> ps_vg.before "
print " ==> ps_vg.after "
exit -1
}
main() {
if [[ $1 == "-h" ]]
then
print_help
exit -1
fi
if [[ $# == 2 ]]
then
cat $1 $2 > $ONE_FILE
elif [[ $# == 1 ]]
then
cat $1 > $ONE_FILE
else
cat ps_vg.before ps_vg.after > $ONE_FILE
fi
post_vg
rm $ONE_FILE
}
post_vg() {
cat $ONE_FILE | awk 'BEGIN {
list_label = "None"
}
/PID/ {
if( list_label == "None" )
list_label = "Before"
else
list_label = "After"
next
}
{
pid_list[$1]
pid_size[$1, list_label ] = $6
}
END {
printf("pid\tBefore Size\tAfter Size\t Delta\n")
printf("-------\t-----------\t----------\t----------\n")
for( pid in pid_list ) {
if( (pid,"Before") in pid_size && (pid,"After") in pid_size ) {
delta = pid_size[pid, "After"] - pid_size[pid, "Before"]
d_total += delta
printf("%s\t%11d\t%10d\t%10d\n", \
pid, \
pid_size[pid, "Before"], \
pid_size[pid, "After"], \
delta )
}
}
printf("*** Total Delta %d\n", d_total)
}'
}
main $@
