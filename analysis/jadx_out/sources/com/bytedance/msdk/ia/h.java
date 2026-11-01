package com.bytedance.msdk.ia;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.lang.reflect.Method;
import java.util.List;

/* loaded from: classes.dex */
public class h {
    private static String dq;

    private static String d() {
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread", false, Application.class.getClassLoader()).getDeclaredMethod("currentProcessName", new Class[0]);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(null, null);
            if (invoke instanceof String) {
                return (String) invoke;
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static String d(Context context) {
        if (!TextUtils.isEmpty(dq)) {
            return dq;
        }
        String dq2 = dq();
        dq = dq2;
        if (!TextUtils.isEmpty(dq2)) {
            return dq;
        }
        String d2 = d();
        dq = d2;
        if (!TextUtils.isEmpty(d2)) {
            return dq;
        }
        String ox = ox(context);
        dq = ox;
        return ox;
    }

    private static String dq() {
        String processName;
        if (Build.VERSION.SDK_INT < 28) {
            return null;
        }
        try {
            processName = Application.getProcessName();
            return processName;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static boolean dq(Context context) {
        String packageName;
        try {
            packageName = context.getPackageName();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (TextUtils.isEmpty(packageName)) {
            return false;
        }
        return packageName.equalsIgnoreCase(d(context));
    }

    private static String ox(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        if (context == null) {
            return null;
        }
        int myPid = Process.myPid();
        ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
        if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == myPid) {
                    return runningAppProcessInfo.processName;
                }
            }
        }
        return null;
    }
}
