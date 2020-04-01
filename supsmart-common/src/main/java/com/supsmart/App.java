package com.supsmart;

import java.util.concurrent.TimeUnit;

/**
 * Hello world!
 *
 */
public class App 
{
    private  static  boolean flag;
    public static void main( String[] args )
    {
        new Thread(() ->{
            try {
                TimeUnit.MILLISECONDS.sleep(100);
                flag = true;
                System.out.println("flag 被修改为 true...");
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }).start();
        long i =0;
        while (!flag){
            i++;

            if (i==999999999999L){
                System.out.println("睡眠...");
            }

            //System.out.println("睡眠");

        }
        System.out.println("程序执行结束：i:"+i);
    }
}
