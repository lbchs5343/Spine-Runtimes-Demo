package com.bytedance.sdk.openadsdk.core.ir;

import android.app.ActivityManager;
import android.content.Context;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;

/* loaded from: classes3.dex */
public class no {
    public static volatile long dq;

    public static long dq(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            return memoryInfo.availMem;
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static void dq() {
        try {
            dq = com.bytedance.sdk.component.utils.mp.dq(com.bytedance.sdk.openadsdk.core.no.ia().h().values().stringValue(0));
        } catch (Throwable unused) {
        }
    }
}
