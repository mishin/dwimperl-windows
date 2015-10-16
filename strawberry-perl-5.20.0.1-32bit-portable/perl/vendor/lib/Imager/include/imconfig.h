/* This file is automatically generated by Makefile.PL.
   Don't edit this file, since any changes will be lost */

#ifndef IMAGER_IMCONFIG_H
#define IMAGER_IMCONFIG_H

/*
  Logging system
*/

#define IMAGER_LOG 1
/*

Compiler supports the GCC __attribute__((format...)) syntax.

*/

#define IMAGER_FORMAT_ATTR 1

/* We can use snprintf() */
#define IMAGER_SNPRINTF 1

/* We can use vsnprintf() */
#define IMAGER_VSNPRINTF 1

/*
 Type and format code for formatted output as with printf.

 This is intended for formatting i_img_dim values.
*/
typedef long long i_dim_format_t;
#define i_DF "lld"

#endif