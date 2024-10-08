#ifndef _USER_CONFIG_OVERRIDE_H_
#define _USER_CONFIG_OVERRIDE_H_
#warning **** user_config_override.h: Using Settings from this File ****

// -- Enable scripts --
#ifndef USE_SCRIPT
#define USE_SCRIPT
#endif
#ifndef USE_SML_M
#define USE_SML_M
#endif
#ifdef USE_RULES
#undef USE_RULES
#endif

#endif  // _USER_CONFIG_OVERRIDE_H_
