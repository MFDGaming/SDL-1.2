cmake_minimum_required (VERSION 3.14)
project (SDL_GenerateConfig VERSION 1.2 LANGUAGES C)

find_package (X11 REQUIRED)
find_package (Threads REQUIRED)

include (CheckIncludeFile)
include (CheckFunctionExists)
include (CheckTypeSize)
include (TestBigEndian)
include (CheckCSourceCompiles)

check_include_file ("alloca.h" HAVE_ALLOCA_H)
check_include_file ("sys/types.h" HAVE_SYS_TYPES_H)
check_include_file ("stdio.h" HAVE_STDIO_H)
check_include_file ("stdlib.h" HAVE_STDLIB_H)
check_include_file ("stdarg.h" HAVE_STDARG_H)
check_include_file ("malloc.h" HAVE_MALLOC_H)
check_include_file ("memory.h" HAVE_MEMORY_H)
check_include_file ("string.h" HAVE_STRING_H)
check_include_file ("strings.h" HAVE_STRINGS_H)
check_include_file ("inttypes.h" HAVE_INTTYPES_H)
check_include_file ("stdint.h" HAVE_STDINT_H)
check_include_file ("stddef.h" HAVE_STDDEF_H)
check_include_file ("ctype.h" HAVE_CTYPE_H)
check_include_file ("math.h" HAVE_MATH_H)
check_include_file ("iconv.h" HAVE_ICONV_H)
check_include_file ("signal.h" HAVE_SIGNAL_H)
check_include_file ("altivec.h" HAVE_ALTIVEC_H)
check_include_file ("sys/io.h" HAVE_SYS_IO_H)
check_include_file ("X11/extensions/Xinerama.h" HAVE_X11_EXTENSIONS_XINERAMA_H)
check_include_file ("X11/extensions/Xext.h" HAVE_X11_EXTENSIONS_XEXT_H)
check_include_file ("X11/extensions/Xrandr.h" HAVE_X11_EXTENSIONS_XRANDR_H)
check_include_file ("X11/extensions/Xv.h" HAVE_X11_EXTENSIONS_XV_H)
check_include_file ("X11/extensions/xf86vmode.h" HAVE_X11_EXTENSIONS_XF96VMODE_H)
check_include_file ("X11/extensions/Xrender.h" HAVE_X11_EXTENSIONS_XRENDER_H)
check_include_file ("X11/Xlib.h" HAVE_X11_XLIB_H)
check_include_file ("pthread.h" HAVE_PTHREAD)

check_function_exists ("malloc" HAVE_MALLOC)
check_function_exists ("calloc" HAVE_CALLOC)
check_function_exists ("realloc" HAVE_REALLOC)
check_function_exists ("free" HAVE_FREE)
check_function_exists ("alloca" HAVE_ALLOCA)
check_function_exists ("getenv" HAVE_GETENV)
check_function_exists ("putenv" HAVE_PUTENV)
check_function_exists ("unsetenv" HAVE_UNSETENV)
check_function_exists ("qsort" HAVE_QSORT)
check_function_exists ("abs" HAVE_ABS)
check_function_exists ("bcopy" HAVE_BCOPY)
check_function_exists ("memset" HAVE_MEMSET)
check_function_exists ("memcpy" HAVE_MEMCPY)
check_function_exists ("memmove" HAVE_MEMMOVE)
check_function_exists ("memcmp" HAVE_MEMCMP)
check_function_exists ("strlen" HAVE_STRLEN)
check_function_exists ("strlcpy" HAVE_STRLCPY)
check_function_exists ("strlcat" HAVE_STRLCAT)
check_function_exists ("strdup" HAVE_STRDUP)
check_function_exists ("_strrev" HAVE__STRREV)
check_function_exists ("_strupr" HAVE__STRUPR)
check_function_exists ("_strlwr" HAVE__STRLWR)
check_function_exists ("index" HAVE_INDEX)
check_function_exists ("rindex" HAVE_RINDEX)
check_function_exists ("strchr" HAVE_STRCHR)
check_function_exists ("strrchr" HAVE_STRRCHR)
check_function_exists ("strstr" HAVE_STRSTR)
check_function_exists ("itoa" HAVE_ITOA)
check_function_exists ("_ltoa" HAVE__LTOA)
check_function_exists ("_uitoa" HAVE__UITOA)
check_function_exists ("_ultoa" HAVE__ULTOA)
check_function_exists ("strtol" HAVE_STRTOL)
check_function_exists ("strtoul" HAVE_STRTOUL)
check_function_exists ("_i64toa" HAVE__I64TOA)
check_function_exists ("_ui64toa" HAVE__UI64TOA)
check_function_exists ("strtoll" HAVE_STRTOLL)
check_function_exists ("strtoull" HAVE_STRTOULL)
check_function_exists ("_strtoi64" HAVE__STRTOI64)
check_function_exists ("_strtoui64" HAVE__STRTOUI64)
check_function_exists ("strtod" HAVE_STRTOD)
check_function_exists ("atoi" HAVE_ATOI)
check_function_exists ("atof" HAVE_ATOF)
check_function_exists ("strcmp" HAVE_STRCMP)
check_function_exists ("strncmp" HAVE_STRNCMP)
check_function_exists ("_stricmp" HAVE__STRICMP)
check_function_exists ("strcasecmp" HAVE_STRCASECMP)
check_function_exists ("_strnicmp" HAVE__STRNICMP)
check_function_exists ("strncasecmp" HAVE_STRNCASECMP)
check_function_exists ("sscanf" HAVE_SSCANF)
check_function_exists ("snprintf" HAVE_SNPRINTF)
check_function_exists ("vsnprintf" HAVE_VSNPRINTF)
check_function_exists ("iconv" HAVE_ICONV)
check_function_exists ("sigaction" HAVE_SIGACTION)
check_function_exists ("sa_sigaction" HAVE_SA_SIGACTION)
check_function_exists ("setjmp" HAVE_SETJMP)
check_function_exists ("nanosleep" HAVE_NANOSLEEP)
check_function_exists ("clock_gettime" HAVE_CLOCK_GETTIME)
check_function_exists ("getpagesize" HAVE_GETPAGESIZE)
check_function_exists ("mprotect" HAVE_MPROTECT)
check_function_exists ("sem_timedwait" HAVE_SEM_TIMEDWAIT)
check_function_exists ("getauxval" HAVE_GETAUXVAL)
check_function_exists ("elf_aux_info" HAVE_ELF_AUX_INFO)

check_type_size ("size_t" size_t)
check_type_size ("int8_t" int8_t)
check_type_size ("uint8_t" uint8_t)
check_type_size ("int16_t" int16_t)
check_type_size ("uint16_t" uint16_t)
check_type_size ("int32_t" int32_t)
check_type_size ("uint32_t" uint32_t)
check_type_size ("int64_t" int64_t)
check_type_size ("uint64_t" uint64_t)
check_type_size ("uintptr_t" uintptr_t)
check_type_size ("uintptr_t" uintptr_t)

test_big_endian (WORDS_BIGENDIAN)
if (WORDS_BIGENDIAN)
    set (SDL_BYTEORDER 4321)
else ()
    set (SDL_BYTEORDER 1234)
endif ()

if (HAVE_STDIO_H AND HAVE_STDLIB_H AND HAVE_STDARG_H AND HAVE_STDINT_H AND HAVE_STDDEF_H)
    set (STDC_HEADERS 1)
else ()
    message (FATAL_ERROR "MISSING ONE OR MORE STDC HEADER")
endif ()

if (NOT HAVE_PTHREAD)
    message (FATAL_ERROR "MISSING PTHREAD HEADER")
endif ()

if (uint64_t)
    set (SDL_HAS_64BIT_TYPE 1)
endif ()

# Check if PTHREAD_MUTEX_RECURSIVE exists
check_c_source_compiles(
    "#include <pthread.h>
    int main() {
        int v = PTHREAD_MUTEX_RECURSIVE;
        return 0;
    }" SDL_THREAD_PTHREAD_RECURSIVE_MUTEX
)

# Check if PTHREAD_MUTEX_RECURSIVE_NP exists
check_c_source_compiles(
    "#include <pthread.h>
    int main() {
        int v = PTHREAD_MUTEX_RECURSIVE_NP;
        return 0;
    }" SDL_THREAD_PTHREAD_RECURSIVE_MUTEX_NP
)

set (SDL_CONFIG
    "/* Automatically generated by CMake - do not edit */\n"
    "\n"
    "#ifndef _SDL_config_h\n"
    "#define _SDL_config_h\n"
    "\n"
    "/* This is a set of defines to configure the SDL features */\n"
    "/* General platform specific identifiers */\n"
    "\n"
    "#include \"SDL_platform.h\"\n"
    "#include \"stdio.h\"\n"
    "#include \"stdlib.h\"\n"
    "#include \"stdarg.h\"\n"
    "#include \"stdint.h\"\n"
    "#include \"stddef.h\"\n"
    "\n"
)

if (SDL_HAS_64BIT_TYPE)
    set (SDL_CONFIG "${SDL_CONFIG}\n/* C datatypes */\n")
    set (SDL_CONFIG "${SDL_CONFIG}\n#define SDL_HAS_64BIT_TYPE 1\n")
endif ()

set (SDL_CONFIG "${SDL_CONFIG}\n/* Endianness */\n")
set (SDL_CONFIG "${SDL_CONFIG}\n#define SDL_BYTEORDER ${SDL_BYTEORDER}\n")

set (SDL_CONFIG "${SDL_CONFIG}\n#define HAVE_LIBC 1\n")

set (SDL_CONFIG "${SDL_CONFIG}\n/* Useful headers */\n")
if (HAVE_ALLOCA_H)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_ALLOCA_H 1\n")
endif ()
if (HAVE_SYS_TYPES_H)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_SYS_TYPES_H 1\n")
endif ()
if (HAVE_STDIO_H)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_STDIO_H 1\n")
endif ()
if (HAVE_STDLIB_H)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_STDLIB_H 1\n")
endif ()
if (HAVE_STDARG_H)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_STDARG_H 1\n")
endif ()
if (HAVE_MALLOC_H)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_MALLOC_H 1\n")
endif ()
if (HAVE_MEMORY_H)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_MEMORY_H 1\n")
endif ()
if (HAVE_STRING_H)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_STRING_H 1\n")
endif ()
if (HAVE_STRINGS_H)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_STRINGS_H 1\n")
endif ()
if (HAVE_INTTYPES_H)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_INTTYPES_H 1\n")
endif ()
if (HAVE_STDDEF_H)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_STDDEF_H 1\n")
endif ()
if (HAVE_STDINT_H)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_STDINT_H 1\n")
endif ()
if (HAVE_CTYPE_H)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_CTYPE_H 1\n")
endif ()
if (HAVE_MATH_H)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_MATH_H 1\n")
endif ()
if (HAVE_ICONV_H)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_ICONV_H 1\n")
endif ()
if (HAVE_SIGNAL_H)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_SIGNAL_H 1\n")
endif ()
if (HAVE_ALTIVEC_H)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_ALTIVEC_H 1\n")
endif ()
if (HAVE_SYS_IO_H)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_SYS_IO_H 1\n")
endif ()

set (SDL_CONFIG "${SDL_CONFIG}\n/* C library functions */\n")
if (HAVE_MALLOC)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_MALLOC 1\n")
endif ()
if (HAVE_CALLOC)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_CALLOC 1\n")
endif ()
if (HAVE_REALLOC)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_REALLOC 1\n")
endif ()
if (HAVE_FREE)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_FREE 1\n")
endif ()
if (HAVE_ALLOCA)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_ALLOCA 1\n")
endif ()
if (HAVE_GETENV)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_GETENV 1\n")
endif ()
if (HAVE_PUTENV)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_PUTENV 1\n")
endif ()
if (HAVE_UNSETENV)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_UNSETENV 1\n")
endif ()
if (HAVE_QSORT)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_QSORT 1\n")
endif ()
if (HAVE_ABS)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_ABS 1\n")
endif ()
if (HAVE_BCOPY)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_BCOPY 1\n")
endif ()
if (HAVE_MEMSET)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_MEMSET 1\n")
endif ()
if (HAVE_MEMCPY)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_MEMCPY 1\n")
endif ()
if (HAVE_MEMMOVE)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_MEMMOVE 1\n")
endif ()
if (HAVE_MEMCMP)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_MEMCMP 1\n")
endif ()
if (HAVE_STRLEN)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_STRLEN 1\n")
endif ()
if (HAVE_STRLCPY)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_STRLCPY 1\n")
endif ()
if (HAVE_STRLCAT)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_STRLCAT 1\n")
endif ()
if (HAVE_STRDUP)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_STRDUP 1\n")
endif ()
if (HAVE__STRREV)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE__STRREV 1\n")
endif ()
if (HAVE__STRUPR)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE__STRUPR 1\n")
endif ()
if (HAVE__STRLWR)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE__STRLWR 1\n")
endif ()
if (HAVE_INDEX)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_INDEX 1\n")
endif ()
if (HAVE_RINDEX)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_RINDEX 1\n")
endif ()
if (HAVE_STRCHR)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_STRCHR 1\n")
endif ()
if (HAVE_STRRCHR)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_STRRCHR 1\n")
endif ()
if (HAVE_STRSTR)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_STRSTR 1\n")
endif ()
if (HAVE_ITOA)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_ITOA 1\n")
endif ()
if (HAVE__LTOA)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE__LTOA 1\n")
endif ()
if (HAVE__UITOA)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE__UITOA 1\n")
endif ()
if (HAVE__ULTOA)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE__ULTOA 1\n")
endif ()
if (HAVE_STRTOL)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_STRTOL 1\n")
endif ()
if (HAVE_STRTOUL)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_STRTOUL 1\n")
endif ()
if (HAVE__I64TOA)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE__I64TOA 1\n")
endif ()
if (HAVE__UI64TOA)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE__UI64TOA 1\n")
endif ()
if (HAVE_STRTOLL)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_STRTOLL 1\n")
endif ()
if (HAVE_STRTOULL)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_STRTOULL 1\n")
endif ()
if (HAVE__STRTOI64)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE__STRTOI64 1\n")
endif ()
if (HAVE__STRTOUI64)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE__STRTOUI64 1\n")
endif ()
if (HAVE_STRTOD)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_STRTOD 1\n")
endif ()
if (HAVE_ATOI)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_ATOI 1\n")
endif ()
if (HAVE_ATOF)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_ATOF 1\n")
endif ()
if (HAVE_STRCMP)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_STRCMP 1\n")
endif ()
if (HAVE_STRNCMP)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_STRNCMP 1\n")
endif ()
if (HAVE__STRICMP)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE__STRICMP 1\n")
endif ()
if (HAVE_STRCASECMP)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_STRCASECMP 1\n")
endif ()
if (HAVE__STRNICMP)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE__STRNICMP 1\n")
endif ()
if (HAVE_STRNCASECMP)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_STRNCASECMP 1\n")
endif ()
if (HAVE_SSCANF)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_SSCANF 1\n")
endif ()
if (HAVE_SNPRINTF)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_SNPRINTF 1\n")
endif ()
if (HAVE_VSNPRINTF)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_VSNPRINTF 1\n")
endif ()
if (HAVE_ICONV)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_ICONV 1\n")
endif ()
if (HAVE_SIGACTION)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_SIGACTION 1\n")
endif ()
if (HAVE_SA_SIGACTION)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_SA_SIGACTION 1\n")
endif ()
if (HAVE_SETJMP)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_SETJMP 1\n")
endif ()
if (HAVE_NANOSLEEP)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_NANOSLEEP 1\n")
endif ()
if (HAVE_CLOCK_GETTIME)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_CLOCK_GETTIME 1\n")
endif ()
if (HAVE_GETPAGESIZE)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_GETPAGESIZE 1\n")
endif ()
if (HAVE_MPROTECT)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_MPROTECT 1\n")
endif ()
if (HAVE_SEM_TIMEDWAIT)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_SEM_TIMEDWAIT 1\n")
endif ()
if (HAVE_GETAUXVAL)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_GETAUXVAL 1\n")
endif ()
if (HAVE_ELF_AUX_INFO)
    set (SDL_CONFIG "${SDL_CONFIG}#define HAVE_ELF_AUX_INFO 1\n")
endif ()

set (SDL_CONFIG "${SDL_CONFIG}\n/* core subsystems */\n")
set (SDL_CONFIG "${SDL_CONFIG}#define SDL_AUDIO_DRIVER_PULSE 1\n")
set (SDL_CONFIG "${SDL_CONFIG}#define SDL_CDROM_LINUX 1\n")
set (SDL_CONFIG "${SDL_CONFIG}#define SDL_JOYSTICK_LINUX 1\n")
set (SDL_CONFIG "${SDL_CONFIG}#define SDL_LOADSO_DLOPEN 1\n")
set (SDL_CONFIG "${SDL_CONFIG}#define SDL_TIMER_UNIX 1\n")
set (SDL_CONFIG "${SDL_CONFIG}#define SDL_VIDEO_OPENGL 1\n")
set (SDL_CONFIG "${SDL_CONFIG}#define SDL_VIDEO_OPENGL_GLX 1\n")

set (SDL_CONFIG "${SDL_CONFIG}#define SDL_THREAD_PTHREAD 1\n")
if (SDL_THREAD_PTHREAD_RECURSIVE_MUTEX)
    set (SDL_CONFIG "${SDL_CONFIG}#define SDL_THREAD_PTHREAD_RECURSIVE_MUTEX 1\n")
endif ()
if (SDL_THREAD_PTHREAD_RECURSIVE_MUTEX_NP)
    set (SDL_CONFIG "${SDL_CONFIG}#define SDL_THREAD_PTHREAD_RECURSIVE_MUTEX_NP 1\n")
endif ()

set (SDL_CONFIG "${SDL_CONFIG}#define SDL_VIDEO_DRIVER_X11 1\n")
#set (SDL_CONFIG "${SDL_CONFIG}#define SDL_VIDEO_DRIVER_X11_DYNAMIC 1\n")
if (HAVE_X11_XLIB_H)
    set (SDL_CONFIG "${SDL_CONFIG}#define SDL_VIDEO_DRIVER_X11_CONST_PARAM_XDATA32 1\n")
endif ()
if (HAVE_X11_EXTENSIONS_XINERAMA_H)
    set (SDL_CONFIG "${SDL_CONFIG}#define SDL_VIDEO_DRIVER_X11_XINERAMA 1\n")
endif ()
if (HAVE_X11_EXTENSIONS_XEXT_H)
    #set (SDL_CONFIG "${SDL_CONFIG}#define SDL_VIDEO_DRIVER_X11_DYNAMIC_XEXT 1\n")
endif ()
if (HAVE_X11_EXTENSIONS_XRANDR_H)
    #set (SDL_CONFIG "${SDL_CONFIG}#define SDL_VIDEO_DRIVER_X11_DYNAMIC_XRANDR 1\n")
    set (SDL_CONFIG "${SDL_CONFIG}#define SDL_VIDEO_DRIVER_X11_XRANDR 1\n")
endif ()
if (HAVE_X11_EXTENSIONS_XF96VMODE_H)
    set (SDL_CONFIG "${SDL_CONFIG}#define SDL_VIDEO_DRIVER_X11_VIDMODE 1\n")
endif ()
if (HAVE_X11_EXTENSIONS_XV_H)
    set (SDL_CONFIG "${SDL_CONFIG}#define SDL_VIDEO_DRIVER_X11_XV 1\n")
endif ()
if (HAVE_X11_EXTENSIONS_XRENDER_H)
    #set (SDL_CONFIG "${SDL_CONFIG}#define SDL_VIDEO_DRIVER_X11_DYNAMIC_XRENDER 1\n")
endif ()


set (SDL_CONFIG "${SDL_CONFIG}\n#endif\n")

file(MAKE_DIRECTORY ${CMAKE_BINARY_DIR}/include)
file(WRITE ${CMAKE_BINARY_DIR}/include/SDL_config.h ${SDL_CONFIG})