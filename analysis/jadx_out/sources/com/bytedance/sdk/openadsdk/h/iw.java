package com.bytedance.sdk.openadsdk.h;

import android.content.Context;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.wp;

/* loaded from: classes3.dex */
public class iw {
    private static Boolean dq;

    public static boolean dq() {
        Boolean bool = dq;
        if (bool != null) {
            return bool.booleanValue();
        }
        dq = Boolean.FALSE;
        try {
            Context context = wp.getContext();
            if ((context.getPackageManager().getPackageInfo(context.getPackageName(), 16384).applicationInfo.flags & 1) != 0) {
                dq = Boolean.TRUE;
            }
        } catch (Exception e2) {
            ig.d("SoLoaderUtil", e2);
        }
        return dq.booleanValue();
    }
}
