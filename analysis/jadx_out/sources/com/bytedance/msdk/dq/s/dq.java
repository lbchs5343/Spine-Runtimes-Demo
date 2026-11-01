package com.bytedance.msdk.dq.s;

import android.content.Context;
import com.bytedance.pangle.wrapper.PluginActivityWrapper;
import com.bytedance.pangle.wrapper.PluginApplicationWrapper;

/* loaded from: classes.dex */
public class dq {
    public static Object dq(Context context) {
        if (context != null) {
            try {
                Object obj = context.getClass() == PluginActivityWrapper.class ? ((PluginActivityWrapper) context).mOriginActivity : context.getClass() == PluginApplicationWrapper.class ? ((PluginApplicationWrapper) context).mOriginApplication : null;
                if (obj != null) {
                    return obj;
                }
            } catch (Throwable unused) {
            }
        }
        return context;
    }
}
