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

            //���������£�״̬ת��������������ȷ��״̬//
            break;

        case key_state_1:
            if(key == 0)
            {
                key_timer_cnt1 = 0;
                key_state_buffer1 = key_state_2;
                //������Ȼ���ڰ���״̬
                //������ɣ�key_timer��ʼ׼����ʱ
                //״̬�л�������ʱ���ʱ״̬
            }
            else
            {
                key_state_buffer1 = key_state_0;
            }

            //�����Ѿ�̧�𣬻ص�������ʼ״̬
            break;  //����������

        case key_state_2:
            if(key == 1)
            {
                key_return = key_click;  //����̧�𣬲���һ��click����
                key_state_buffer1 = key_state_0;  //ת����������ʼ״̬
            }
            else if(++key_timer_cnt1 >= 100)  //�����������£���ʱ����1000ms
            {
                key_return = key_long;  //�ͻس����¼�
                key_state_buffer1 = key_state_3;  //ת�����ȴ������ͷ�״̬
           
            }
            break;

        case key_state_3:  //�ȴ������ͷ�
            if(key == 1)  //�����ͷ�
            {
                key_state_buffer1 = key_state_0;  //�лذ�����ʼ״̬
            }

            break;
    }
    return key_return;
}

/***************************************************************************
�������ܣ��в㰴�������������õײ㺯��һ�Σ�����˫���¼����жϣ�
                                        �����ϲ���ȷ���޼���������˫������������״̬
���������ϲ�ѭ�����ã����10ms
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
                key_timer_cnt2 = 0;  //��һ�ε����������أ����¸�״̬�ж��Ƿ�����˫��
                key_state_buffer2 = key_state_1;
            }
            else
                key_return = key;  //�����޼�������������ԭ�¼�
            break;

        case key_state_1:
            if(key == key_click)  //��һ�ε�����ʱ����С��500ms
            {
                key_return = key_double;  //����˫���¼����ص���ʼ״̬
                key_state_buffer2 = key_state_0;
            }
            else if(++key_timer_cnt2 >= 50)
            {
                //����500ms�ڿ϶������Ķ����޼��¼�����Ϊ��������1000ms
                //��1sǰ�ײ㷵�صĶ����޼�

                key_return = key_click;  //500ms��û���ٴγ��ֵ����¼������ص����¼�
                key_state_buffer2 = key_state_0;  //���س�ʼ״̬

            }
            break;
    }

    return key_return;
}