#!/bin/sh
# Remove directories we don't use

for i in llvm/bindings/ llvm/examples/ llvm/projects/ llvm/runtime/\
    llvm/website llvm/win32 llvm/Xcode llvm/lib/Archive\
    llvm/lib/CompilerDriver/ llvm/lib/Debugger/ llvm/lib/Linker/\
    llvm/lib/Target/Alpha/ llvm/lib/Target/Blackfin/ llvm/lib/Target/CBackend/\
    llvm/lib/Target/CellSPU/ llvm/lib/Target/CppBackend/ llvm/lib/Target/Mips\
    llvm/lib/Target/MSIL llvm/lib/Target/MSP430/ llvm/lib/Target/PIC16\
    llvm/lib/Target/Sparc/ llvm/lib/Target/SystemZ llvm/lib/Target/XCore\
    llvm/test/Archive/ llvm/test/Bindings/ llvm/test/Bitcode/ llvm/test/DebugInfo/\
    llvm/test/FrontendAda/ llvm/test/FrontendC llvm/test/FrontendC++/\
    llvm/test/FrontendFortran/ llvm/test/FrontendObjC\
    llvm/test/FrontendObjC++ llvm/test/Linker/ llvm/test/LLVMC\
    llvm/test/MC llvm/test/Transforms\
    llvm/test/BugPoint llvm/test/CodeGen/CPP llvm/test/CodeGen/Mips\
    llvm/test/CodeGen/Alpha llvm/test/CodeGen/PIC16 llvm/test/CodeGen/SPARC\
    llvm/test/CodeGen/XCore llvm/test/CodeGen/MSP430\
    llvm/test/CodeGen/CellSPU llvm/test/CodeGen/CBackend\
    llvm/test/CodeGen/SystemZ llvm/test/CodeGen/Blackfin\
    llvm/tools/bugpoint llvm/tools/gold llvm/tools/llvm-ar\
    llvm/tools/llvm-bcanalyzer llvm/tools/llvm-db\
    llvm/tools/llvm-extract llvm/tools/llvm-ld llvm/tools/llvm-link llvm/tools/llvm-mc\
    llvm/tools/llvm-nm llvm/tools/llvm-prof llvm/tools/llvm-ranlib\
    llvm/tools/llvm-stub llvm/tools/lto llvm/tools/opt
    do
	git rm -rf $i;
done
# LLVM's config.status depends on these files existing
mkdir -p llvm/lib/Target/PIC16/AsmPrinter llvm/lib/Target/MSP430/AsmPrinter
touch llvm/lib/Target/PIC16/AsmPrinter/Makefile llvm/lib/Target/MSP430/AsmPrinter/Makefile
git add -f llvm/lib/Target/PIC16/AsmPrinter/Makefile llvm/lib/Target/MSP430/AsmPrinter/Makefile
mv ../../.git/SQUASH_MSG ../../.git/MERGE_MSG