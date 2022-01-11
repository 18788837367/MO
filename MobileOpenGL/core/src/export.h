#ifndef G_EXPORT_H
#define G_EXPORT_H

#ifdef __GNUC__
    #ifdef ANDROID
        #define API_EXPORT __attribute__((visibility("default")))  //默认，外部可见
        #define API_LOCAL __attribute__((visibility("hidden")))   //隐藏符号，外部不可见
    #else
        #define API_EXPORT
        #define API_LOCAL
    #endif

#else
    #error "##### requires gcc version >= 4.0 #####"
#endif 



#endif