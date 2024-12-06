 /*
 * Change Logs:
 * Date            Author          Notes
 * 2023-08-28      ChuShicheng     first version
 */
#include <rtthread.h>
#include "rm_task.h"

#define DBG_TAG   "robot"
#define DBG_LVL DBG_INFO
#include <rtdbg.h>


#ifdef BSP_USING_INS_TASK
rt_thread_t ins_thread_handle;
#endif /* BSP_USING_INS_TASK */

/**
 * @brief 初始化机器人任务,所有持续运行的任务都在这里初始化
 *
 */
int robot_task_init(void)
{


#ifdef BSP_USING_INS_TASK
    /* 创建线程，名称是 ins ，入口是 ins_thread_entry */
    ins_thread_handle = rt_thread_create("ins",
                                         ins_thread_entry, RT_NULL,
                                         2048,15, 10);
    /* 如果获得线程控制块，启动这个线程 */
    if (ins_thread_handle != RT_NULL)
       rt_thread_startup(ins_thread_handle);
#endif /* BSP_USING_INS_TASK */



     return RT_EOK;
}
INIT_APP_EXPORT(robot_task_init);





