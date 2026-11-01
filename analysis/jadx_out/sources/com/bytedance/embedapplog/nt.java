package com.bytedance.embedapplog;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;

/* loaded from: classes.dex */
final class nt {

    public static class dq implements Runnable {

        /* renamed from: d, reason: collision with root package name */
        private final String f737d;
        private final Runnable dq;
        private final String ox = Log.getStackTraceString(new RuntimeException("origin stacktrace"));

        public dq(Runnable runnable, String str) {
            this.dq = runnable;
            this.f737d = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.dq.run();
            } catch (Exception e2) {
                jo.ox("Thread:" + this.f737d + " exception\n" + this.ox, e2);
            }
        }
    }

    public static void dq(String str, Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            str = "TrackerDr";
        }
        new com.bytedance.sdk.component.o.p.ox(new dq(runnable, str), str).start();
    }

    public static boolean dq(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager.getPackageInfo("com.huawei.hwid", 0) == null && packageManager.getPackageInfo("com.huawei.hwid.tv", 0) == null) {
            return packageManager.getPackageInfo("com.huawei.hms", 0) != null;
        }
        return true;
    }

    public static boolean dq(Context context, String str) {
        return context.getPackageManager().getPackageInfo(str, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != null;
    }
}
