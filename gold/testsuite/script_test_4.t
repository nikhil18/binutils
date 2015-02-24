/* script_test_4.t -- linker script test 4 for gold

   Copyright (C) 2008-2015 Free Software Foundation, Inc.
   Written by Ian Lance Taylor <iant@google.com>.

   This file is part of gold.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street - Fifth Floor, Boston,
   MA 02110-1301, USA.  */

/* We won't try to run this program, just ensure that it links
   as expected.  */

SECTIONS
{
  . = 0x10000400;

  /* With luck this will be enough to get the program working.  */
  .interp : { *(.interp) }
  .text : { *(.text) }
  /* Required by the ARM target. */
  .ARM.extab : { *(.ARM.extab*) }
  .ARM.exidx : { *(.ARM.exidx*) }
  . += 0x100000;
  . = ALIGN(0x100);
  .dynamic : { *(.dynamic) }
  .data : { *(.data) }
  .got : { *(.got .toc) }
  .got.plt : { *(.got.plt) } 
  . += 0x100000;
  . = ALIGN(0x100);
  .bss : { *(.bss) }
}
