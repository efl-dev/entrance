#ifndef ENTRANCE_H_
#define ENTRANCE_H_

#ifdef HAVE_CONFIG_H
#include <config.h>
#endif

#include <stdio.h>

#include <Elementary.h>

#include "../event/entrance_event.h"
#include "entrance_gui.h"
#include "entrance_fill.h"
#include "entrance_conf.h"
#include "entrance_conf_main.h"
#include "entrance_conf_theme.h"
#include "entrance_conf_user.h"
#include "entrance_connect.h"
#include "entrance_client.h"
#include "entrance_gui.h"
#include "entrance_login.h"

#define PT(f, x...)                                                        \
do                                                                         \
{                                                                          \
   printf(__FILE__"%d : "f"", __LINE__, ##x); \
   fflush(stdout);                               \
} while (0)

int entrance_client_main(void);

#endif /* ENTRANCE_H_ */
