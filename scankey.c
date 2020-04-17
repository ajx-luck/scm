#include "scankey.h"

unsigned char getSimpleKeyInput(unsigned char key_input)
{
    unsigned char result = key_input & 0x04 == 0?0 : 1;
    return result;
}


static unsigned char key_driver(unsigned char key_input)
{
    static unsigned char key_state_buffer1 = key_state_0;
    static unsigned char key_timer_cnt1 = 0;
    unsigned char key_return = key_no;
    unsigned char key;

    key = key_input;  //read the I/O states

    switch(key_state_buffer1)
    {
        case key_state_0:
            if(key == 0)
            {
                key_state_buffer1 = key_state_1;
            }

            //按键被按下，状态转换到按键消抖和确认状态//
            break;

        case key_state_1:
            if(key == 0)
            {
                key_timer_cnt1 = 0;
                key_state_buffer1 = key_state_2;
                //按键仍然处于按下状态
                //消抖完成，key_timer开始准备计时
                //状态切换到按下时间计时状态
            }
            else
            {
                key_state_buffer1 = key_state_0;
            }

            //按键已经抬起，回到按键初始状态
            break;  //完成软件消抖

        case key_state_2:
            if(key == 1)
            {
                key_return = key_click;  //按键抬起，产生一次click操作
                key_state_buffer1 = key_state_0;  //转换到按键初始状态
            }
            else if(++key_timer_cnt1 >= 100)  //按键继续按下，计时超过1000ms
            {
                key_return = key_long;  //送回长按事件
                key_state_buffer1 = key_state_3;  //转换到等待按键释放状态
           
            }
            break;

        case key_state_3:  //等待按键释放
            if(key == 1)  //按键释放
            {
                key_state_buffer1 = key_state_0;  //切回按键初始状态
            }

            break;
    }
    return key_return;
}

/***************************************************************************
函数功能：中层按键处理函数，调用底层函数一次，处理双击事件的判断，
                                        返回上层正确的无键、单击、双击、长按四种状态
本函数由上层循环调用，间隔10ms
***************************************************************************/
unsigned char key_read(unsigned char key_input)
{
    static unsigned char key_state_buffer2 = key_state_0;
    static unsigned char key_timer_cnt2 = 0;
    unsigned char key_return = key_no;
    unsigned char key;

    key = key_driver(key_input);
//    printf("IO:%d  key status: %d\n",getSimpleKeyInput(key_input),key);
    switch(key_state_buffer2)
    {
        case key_state_0:
            if(key == key_click)
            {
                key_timer_cnt2 = 0;  //第一次单击，不返回，到下个状态判断是否会出现双击
                key_state_buffer2 = key_state_1;
            }
            else
                key_return = key;  //对于无键、长按，返回原事件
            break;

        case key_state_1:
            if(key == key_click)  //又一次单击，时间间隔小于500ms
            {
                key_return = key_double;  //返回双击事件，回到初始状态
                key_state_buffer2 = key_state_0;
            }
            else if(++key_timer_cnt2 >= 50)
            {
                //这里500ms内肯定读到的都是无键事件，因为长按大于1000ms
                //在1s前底层返回的都是无键

                key_return = key_click;  //500ms内没有再次出现单击事件，返回单击事件
                key_state_buffer2 = key_state_0;  //返回初始状态

            }
            break;
    }

    return key_return;
}