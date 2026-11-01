package com.bytedance.sdk.openadsdk.core.ir;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.provider.Settings;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class mp {

    /* renamed from: d, reason: collision with root package name */
    private static String f3066d = null;
    private static String dq = null;
    private static int ia = 1;
    private static Boolean iw = null;
    private static int mn = 1;
    private static Boolean ox;
    private static String p;
    private static String s;

    private static int d(Context context) {
        if (context != null) {
            return Settings.Secure.getInt(context.getContentResolver(), "pure_mode_state", 0);
        }
        return 1;
    }

    private static String d(String str, String str2) {
        try {
            Class<?> cls = Class.forName("com.huawei.android.os.SystemPropertiesEx");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, MediationConfigUserInfoForSegment.GENDER_UNKNOWN);
        } catch (Exception e2) {
            e2.printStackTrace();
            return str2;
        } catch (Throwable unused) {
            return str2;
        }
    }

    public static boolean d() {
        Boolean bool = ox;
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    private static String dq(String str) {
        try {
            Class<?> cls = Class.forName("ohos.system.version.SystemVersion");
            return cls.getMethod(str, null).invoke(cls, null).toString();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void dq() {
        if (ox == null) {
            if (!p() && !ox()) {
                ox = Boolean.FALSE;
                return;
            }
            try {
                Class<?> cls = Class.forName("com.huawei.system.BuildEx");
                ox = Boolean.valueOf("harmony".equals(cls.getMethod("getOsBrand", null).invoke(cls, null)));
            } catch (Throwable unused) {
                ox = Boolean.FALSE;
            }
            if (dq == null) {
                dq = dq("getApiVersion");
            }
            if (f3066d == null) {
                f3066d = dq("getVersion");
            }
            if (s == null) {
                s = dq("getReleaseType");
            }
            if (p == null) {
                p = dq("getBuildVersion");
            }
            if (iw == null) {
                iw = Boolean.FALSE;
                try {
                    iw = Boolean.valueOf("156".equals(d("ro.config.hw_optb", "0")) && "true".equals(d("hw_mc.pure_mode.enable", "false")));
                } catch (Exception unused2) {
                }
            }
            try {
                mn = Settings.Secure.getInt(com.bytedance.sdk.openadsdk.core.wp.getContext().getContentResolver(), "pure_enhanced_mode_state", 1);
            } catch (Throwable unused3) {
            }
            try {
                Class<?> cls2 = Class.forName("com.huawei.android.os.UserHandleEx");
                ia = ((Integer) cls2.getMethod("getUserId", Integer.TYPE).invoke(cls2, Integer.valueOf(Process.myUid()))).intValue();
            } catch (Throwable unused4) {
            }
        }
    }

    public static void dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("pure_enhanced_mode", kk() ? 1 : 2);
            jSONObject.put("pure_enhanced_mode_enable", o() ? 1 : 2);
        } catch (Throwable unused) {
        }
    }

    public static boolean dq(Context context) {
        return context != null && d(context) == 0 && ig();
    }

    private static boolean dq(String str, String str2) {
        return (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str) || !str.startsWith("3")) ? false : true;
    }

    public static String ia() {
        return p;
    }

    public static boolean ig() {
        Boolean bool = iw;
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public static String iw() {
        return f3066d;
    }

    public static boolean kk() {
        return no() == 0 && o();
    }

    public static String mn() {
        return s;
    }

    private static int mp() {
        return ia;
    }

    public static int no() {
        return mn;
    }

    public static boolean o() {
        return ig() && dq(iw(), s()) && mp() == 0;
    }

    public static boolean ox() {
        String str = Build.BRAND;
        if (!TextUtils.isEmpty(str) && str.toUpperCase().startsWith("HUAWEI")) {
            return true;
        }
        String str2 = Build.MANUFACTURER;
        return !TextUtils.isEmpty(str2) && str2.toUpperCase().startsWith("HUAWEI");
    }

    public static boolean p() {
        String str = Build.BRAND;
        if (!TextUtils.isEmpty(str) && str.toUpperCase().startsWith("HONOR")) {
            return true;
        }
        String str2 = Build.MANUFACTURER;
        return !TextUtils.isEmpty(str2) && str2.toUpperCase().startsWith("HONOR");
    }

    public static String s() {
        return dq;
    }
}
