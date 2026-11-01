package com.bytedance.sdk.component.mn;

import android.content.Context;

/* loaded from: classes.dex */
public class ox {
    private static volatile Context dq;

    public static void dq(Context context) {
        if (dq == null && context != null) {
            dq = context.getApplicationContext();
        }
    }

    public static Context getContext() {
        return dq;
    }
}
