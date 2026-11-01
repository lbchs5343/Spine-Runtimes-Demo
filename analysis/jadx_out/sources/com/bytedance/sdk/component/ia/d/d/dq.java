package com.bytedance.sdk.component.ia.d.d;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.ia.dq.iw;
import com.bytedance.sdk.component.ia.dq.s;
import com.ss.android.download.api.constant.BaseConstants;

/* loaded from: classes.dex */
public class dq {
    private static long d(int i, Context context, s sVar) {
        if (context == null) {
            return i;
        }
        Runtime runtime = Runtime.getRuntime();
        long freeMemory = runtime.freeMemory() / BaseConstants.MB_VALUE;
        long maxMemory = (runtime.maxMemory() / BaseConstants.MB_VALUE) - (runtime.totalMemory() / BaseConstants.MB_VALUE);
        if (maxMemory <= 0) {
            if (freeMemory <= 2) {
                return 1L;
            }
            return freeMemory <= 10 ? Math.min(i, 10) : Math.min((freeMemory / 2) * 10, i);
        }
        long j = ((freeMemory + maxMemory) - 10) / 2;
        if (j <= 2) {
            return 1L;
        }
        return j <= 10 ? Math.min(i, 10) : Math.min(j * 10, i);
    }

    public static boolean d(s sVar) {
        iw d2 = sVar.d();
        return (d2 == null || TextUtils.isEmpty(d2.d())) ? false : true;
    }

    public static long dq(int i, Context context, s sVar) {
        return d(i, context, sVar);
    }

    public static boolean dq(s sVar) {
        iw d2 = sVar.d();
        return (d2 == null || TextUtils.isEmpty(d2.dq())) ? false : true;
    }

    public static boolean iw(s sVar) {
        iw d2 = sVar.d();
        return (d2 == null || TextUtils.isEmpty(d2.iw())) ? false : true;
    }

    public static boolean ox(s sVar) {
        iw d2 = sVar.d();
        return (d2 == null || TextUtils.isEmpty(d2.p())) ? false : true;
    }

    public static boolean p(s sVar) {
        iw d2 = sVar.d();
        return (d2 == null || TextUtils.isEmpty(d2.s())) ? false : true;
    }

    public static boolean s(s sVar) {
        iw d2 = sVar.d();
        return (d2 == null || TextUtils.isEmpty(d2.ox())) ? false : true;
    }
}
