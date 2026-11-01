package com.ss.android.socialbase.appdownloader.iw;

import android.content.Context;
import android.os.Process;
import android.provider.Settings;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;

/* loaded from: classes.dex */
public class p {

    /* renamed from: d, reason: collision with root package name */
    private static String f9287d;
    private static String dq;
    private static String ox;
    private static String p;
    private static Boolean s;

    public static String d() {
        if (f9287d == null) {
            f9287d = dq("getVersion");
        }
        return f9287d;
    }

    public static boolean d(Context context) {
        return context != null && p(context) == 0 && iw();
    }

    private static boolean d(String str, String str2) {
        return !TextUtils.isEmpty(str2) && str.startsWith("3");
    }

    private static int dq(int i) {
        try {
            Class<?> cls = Class.forName("com.huawei.android.os.UserHandleEx");
            return ((Integer) cls.getMethod("getUserId", Integer.TYPE).invoke(cls, Integer.valueOf(i))).intValue();
        } catch (Throwable th) {
            th.printStackTrace();
            return 1;
        }
    }

    public static String dq() {
        if (dq == null) {
            dq = dq("getApiVersion");
        }
        return dq;
    }

    private static String dq(String str) {
        try {
            Class<?> cls = Class.forName("ohos.system.version.SystemVersion");
            return cls.getMethod(str, null).invoke(cls, null).toString();
        } catch (Throwable unused) {
            return null;
        }
    }

    private static String dq(String str, String str2) {
        try {
            Class<?> cls = Class.forName("com.huawei.android.os.SystemPropertiesEx");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, MediationConfigUserInfoForSegment.GENDER_UNKNOWN);
        } catch (Throwable unused) {
            return str2;
        }
    }

    public static boolean dq(Context context) {
        return context != null && ox(context) == 0 && s();
    }

    public static boolean iw() {
        return s() && d(d(), dq()) && dq(Process.myUid()) == 0;
    }

    public static String mn() {
        try {
            Class<?> cls = Class.forName("com.huawei.system.BuildEx");
            return (String) cls.getMethod("getOsBrand", null).invoke(cls, null);
        } catch (Throwable unused) {
            return "";
        }
    }

    public static int ox(Context context) {
        if (context != null) {
            return d(d(), dq()) ? Settings.Secure.getInt(context.getContentResolver(), "pure_mode_state", 1) == 0 ? 0 : 1 : Settings.Secure.getInt(context.getContentResolver(), "pure_mode_state", 0);
        }
        return 1;
    }

    public static String ox() {
        if (ox == null) {
            ox = dq("getReleaseType");
        }
        return ox;
    }

    public static int p(Context context) {
        return (context == null || Settings.Secure.getInt(context.getContentResolver(), "pure_enhanced_mode_state", 1) != 0) ? 1 : 0;
    }

    public static String p() {
        if (p == null) {
            p = dq("getBuildVersion");
        }
        return p;
    }

    public static boolean s() {
        if (s == null) {
            s = Boolean.FALSE;
            try {
                s = Boolean.valueOf("156".equals(dq("ro.config.hw_optb", "0")) && "true".equals(dq("hw_mc.pure_mode.enable", "false")));
            } catch (Exception unused) {
            }
        }
        return s.booleanValue();
    }
}
