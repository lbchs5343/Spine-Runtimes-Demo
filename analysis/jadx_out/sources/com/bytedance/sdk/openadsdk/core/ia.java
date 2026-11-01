package com.bytedance.sdk.openadsdk.core;

import android.annotation.SuppressLint;
import android.content.Context;

/* loaded from: classes3.dex */
public class ia extends kk {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile ia dq;

    private ia(Context context) {
        super(context);
    }

    public static ia dq(Context context) {
        if (dq == null) {
            synchronized (ia.class) {
                try {
                    if (dq == null) {
                        dq = new ia(context);
                    }
                } finally {
                }
            }
        }
        return dq;
    }
}
