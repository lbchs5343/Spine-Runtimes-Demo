package com.bytedance.embedapplog;

import android.os.SystemProperties;

/* loaded from: classes.dex */
public class cc {
    private static volatile Object dq;

    private Object dq() {
        if (dq == null) {
            synchronized (cc.class) {
                try {
                    if (dq == null) {
                        dq = SystemProperties.class.newInstance();
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                } finally {
                }
            }
        }
        return dq;
    }

    public String dq(String str) {
        try {
            return SystemProperties.get(str);
        } catch (Throwable th) {
            jo.dq(th);
            try {
                Object dq2 = dq();
                return (String) dq2.getClass().getMethod("get", String.class).invoke(dq2, str);
            } catch (Throwable th2) {
                jo.dq(th2);
                return "";
            }
        }
    }
}
