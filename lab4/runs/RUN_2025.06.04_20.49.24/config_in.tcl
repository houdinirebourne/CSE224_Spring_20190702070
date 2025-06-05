{\rtf1\ansi\ansicpg1254\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 set ::env(DESIGN_NAME) top\
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]\
\
set ::env(CLOCK_PORT) "CLK"\
set ::env(CLOCK_PERIOD) "10"\
\
# Giri\uc0\u351 -\'e7\u305 k\u305 \u351  pinlerinin y\'f6nlendirilmesi (otomatik yerle\u351 im i\'e7in)\
set ::env(FP_IO_HMETAL) 5\
set ::env(FP_IO_VMETAL) 4\
\
set ::env(FP_PDN_VWIDTH) 5\
set ::env(FP_PDN_HWIDTH) 5\
}