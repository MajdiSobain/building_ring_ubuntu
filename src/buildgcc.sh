clear
gcc -c -fpic ring_state.c ring_ext.c ring_hashlib.c ring_hashtable.c ring_vmgc.c ring_vmos.c ring_string.c ring_list.c ring_item.c ring_items.c ring_scanner.c ring_parser.c ring_stmt.c ring_expr.c ring_codegen.c ring_vm.c ring_vmexpr.c ring_vmvars.c ring_vmlists.c ring_vmfuncs.c ring_api.c ring_vmoop.c ring_vmcui.c ring_vmtrycatch.c ring_vmstrindex.c ring_vmjump.c ring_vmduprange.c ring_vmlistfuncs.c ring_vmrefmeta.c ring_vmperformance.c ring_vmexit.c ring_vmstackvars.c ring_vmstate.c ring_vmmath.c ring_vmfile.c ring_vmdll.c ring_objfile.c -I $PWD/../include 

gcc -shared -o $PWD/../lib/libring.so ring_state.o ring_ext.o ring_hashlib.o ring_hashtable.o ring_vmgc.o ring_vmos.o ring_string.o ring_list.o ring_item.o ring_items.o ring_scanner.o ring_parser.o ring_stmt.o ring_expr.o ring_codegen.o ring_vm.o ring_vmexpr.o ring_vmvars.o ring_vmlists.o ring_vmfuncs.o ring_api.o ring_vmoop.o ring_vmcui.o ring_vmtrycatch.o ring_vmstrindex.o ring_vmjump.o ring_vmduprange.o ring_vmlistfuncs.o ring_vmrefmeta.o ring_vmperformance.o ring_vmexit.o ring_vmstackvars.o ring_vmstate.o ring_vmmath.o ring_vmfile.o ring_vmdll.o  ring_objfile.o -Wl,-rpath,'$ORIGIN' -lm -ldl  

ar rcs $PWD/../lib/libringstatic.a ring_state.o ring_ext.o ring_hashlib.o ring_hashtable.o ring_vmgc.o ring_vmos.o ring_string.o ring_list.o ring_item.o ring_items.o ring_scanner.o ring_parser.o ring_stmt.o ring_expr.o ring_codegen.o ring_vm.o ring_vmexpr.o ring_vmvars.o ring_vmlists.o ring_vmfuncs.o ring_api.o ring_vmoop.o ring_vmcui.o ring_vmtrycatch.o ring_vmstrindex.o ring_vmjump.o ring_vmduprange.o ring_vmlistfuncs.o ring_vmrefmeta.o ring_vmperformance.o ring_vmexit.o ring_vmstackvars.o ring_vmstate.o ring_vmmath.o ring_vmfile.o ring_vmdll.o  ring_objfile.o

gcc -rdynamic ring.c -o $PWD/../bin/ring -L $PWD/../lib -lring -I $PWD/../include -Wl,-rpath,'$ORIGIN' -no-pie

cp ../lib/libring.so ../bin/libring.so

