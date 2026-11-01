package com.bytedance.sdk.openadsdk.core.k;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Process;

/* loaded from: classes3.dex */
public class d {
    public static int dq(Context context, String str) {
        if (str == null) {
            throw new IllegalArgumentException("permission is null");
        }
        try {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        } catch (Throwable th) {
            th.printStackTrace();
            return Build.VERSION.SDK_INT >= 23 ? -1 : 0;
        }
    }

    public static void requestPermissions(Activity activity, String[] strArr, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            activity.requestPermissions(strArr, i);
        }
    }
}
