package com.bytedance.msdk.s.dq;

import android.annotation.SuppressLint;
import android.content.Context;

/* loaded from: classes.dex */
public class iw extends mn {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile iw dq;

    private iw(Context context) {
        super(context);
    }

    public static iw dq(Context context) {
        if (dq == null) {
            synchronized (iw.class) {
                try {
                    if (dq == null) {
                        dq = new iw(context);
                    }
                } finally {
                }
            }
        }
        return dq;
    }
}
