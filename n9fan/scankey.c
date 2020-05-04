#include "scankey.h"

void sacnKeyInput(struct Keys *key) {
    key->key_input = getbit(key->key_addr_result, key->key_index);

}


unsigned char key_driver(struct Keys *key) {


    unsigned char key_return = key_no;
    unsigned char key_read = key->key_input;  //read the I/O states

    switch (key->key_state_buffer1) {
        case key_state_0:
            if (key_read == 0) {
                key->key_state_buffer1 = key_state_1;
            }

            //���������£�״̬ת��������������ȷ��״̬//
            break;

        case key_state_1:
            if (key_read == 0) {
                key->key_timer_cnt1 = 0;
                key->key_state_buffer1 = key_state_2;
                //������Ȼ���ڰ���״̬
                //������ɣ�key_timer��ʼ׼����ʱ
                //״̬�л�������ʱ���ʱ״̬
            } else {
                key->key_state_buffer1 = key_state_0;
            }

            //�����Ѿ�̧�𣬻ص�������ʼ״̬
            break;  //����������

        case key_state_2:
            if (key_read == 1) {
                key_return = key_click;  //����̧�𣬲���һ��click����
                key->key_state_buffer1 = key_state_0;  //ת����������ʼ״̬
            } else if (++(key->key_timer_cnt1) >= 100)  //�����������£���ʱ����1000ms
            {
                key_return = key_long;  //�ͻس����¼�
                key->key_state_buffer1 = key_state_3;  //ת�����ȴ������ͷ�״̬

            }
            break;

        case key_state_3:  //�ȴ������ͷ�
            if (key_read == 1)  //�����ͷ�
            {
                key->key_state_buffer1 = key_state_0;  //�лذ�����ʼ״̬
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
unsigned char key_read(struct Keys *key) {

    unsigned char key_return = key_no;
    unsigned char key_read = key_driver(key);
//    printf("IO:%d  key status: %d\n",getSimpleKeyInput(key_input),key);
    switch (key->key_state_buffer2) {
        case key_state_0:
            if (key_read == key_click) {
                key->key_timer_cnt2 = 0;  //��һ�ε����������أ����¸�״̬�ж��Ƿ�����˫��
                key->key_state_buffer2 = key_state_1;
            } else
                key_return = key_read;  //�����޼�������������ԭ�¼�
            break;

        case key_state_1:
            if (key_read == key_click)  //��һ�ε�����ʱ����С��500ms
            {
                key_return = key_double;  //����˫���¼����ص���ʼ״̬
                key->key_state_buffer2 = key_state_0;
            } else if (++(key->key_timer_cnt2) >= 50) {
                //����500ms�ڿ϶������Ķ����޼��¼�����Ϊ��������1000ms
                //��1sǰ�ײ㷵�صĶ����޼�

                key_return = key_click;  //500ms��û���ٴγ��ֵ����¼������ص����¼�
                key->key_state_buffer2 = key_state_0;  //���س�ʼ״̬

            }
            break;
    }

    return key_return;
}


void resetKey(struct Keys *key) {
    key->key_timer_cnt1 = key->key_timer_cnt2 = key->key_state_buffer1 = key->key_state_buffer2 = 0;
}