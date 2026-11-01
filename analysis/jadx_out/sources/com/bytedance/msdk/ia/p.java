package com.bytedance.msdk.ia;

import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
public class p {

    public interface dq {
    }

    public static void dq(Context context, Intent intent, dq dqVar) {
        if (context == null || intent == null) {
            return;
        }
        try {
            context.startActivity(intent);
        } catch (Throwable unused) {
        }
    }
}
