package com.bytedance.embedapplog;

import android.content.Context;
import android.os.Build;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.Log;
import java.util.Locale;

/* loaded from: classes.dex */
public class kk {
    private static final CharSequence dq = "sony";

    /* renamed from: d, reason: collision with root package name */
    private static final CharSequence f733d = "amigo";
    private static final CharSequence ox = "funtouch";
    private static final dq<Boolean> p = new dq<Boolean>() { // from class: com.bytedance.embedapplog.kk.1
    };

    public static abstract class dq<T> {
    }

    private static String d(String str) {
        String dq2 = mc.dq(str);
        return !TextUtils.isEmpty(dq2) ? dq2 : yo.dq(str);
    }

    public static boolean d() {
        String str = Build.BRAND;
        if (!TextUtils.isEmpty(str) && str.toLowerCase().startsWith("huawei")) {
            return true;
        }
        String str2 = Build.MANUFACTURER;
        return !TextUtils.isEmpty(str2) && str2.toLowerCase().startsWith("huawei");
    }

    public static String dq() {
        return d("ro.build.version.emui");
    }

    public static boolean dq(Context context) {
        return q().toUpperCase().contains("HUAWEI");
    }

    public static boolean dq(String str) {
        if (TextUtils.isEmpty(str)) {
            str = dq();
        }
        return (!TextUtils.isEmpty(str) && (str.toLowerCase().contains("emotionui") || str.toLowerCase().contains("magicui"))) || d() || ox();
    }

    public static boolean ia() {
        String str = Build.BRAND;
        if (str == null) {
            return false;
        }
        return str.toLowerCase(Locale.ENGLISH).contains("meizu");
    }

    public static boolean ig() {
        return q().toUpperCase().contains("NUBIA");
    }

    public static boolean iw() {
        String str = Build.MANUFACTURER;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.toLowerCase().contains("oppo") || str.toLowerCase().contains("realme");
    }

    public static boolean kk() {
        return "OnePlus".equalsIgnoreCase(Build.MANUFACTURER);
    }

    public static boolean mn() {
        if (Build.MANUFACTURER.equalsIgnoreCase("XIAOMI")) {
            return true;
        }
        String str = Build.BRAND;
        return str.equalsIgnoreCase("XIAOMI") || str.equalsIgnoreCase("REDMI");
    }

    public static boolean mp() {
        return q().toUpperCase().contains("ASUS");
    }

    public static boolean no() {
        String str = Build.FINGERPRINT;
        if (!TextUtils.isEmpty(str)) {
            return str.contains("VIBEUI_V2");
        }
        String d2 = d("ro.build.version.incremental");
        return !TextUtils.isEmpty(d2) && d2.contains("VIBEUI_V2");
    }

    public static boolean o() {
        return "samsung".equalsIgnoreCase(Build.BRAND) || "samsung".equalsIgnoreCase(Build.MANUFACTURER);
    }

    public static boolean ox() {
        String str = Build.BRAND;
        if (!TextUtils.isEmpty(str) && str.toLowerCase().startsWith("honor")) {
            return true;
        }
        String str2 = Build.MANUFACTURER;
        return (!TextUtils.isEmpty(str2) && str2.toLowerCase().startsWith("honor")) || "HONOR".equalsIgnoreCase(str2);
    }

    public static boolean p() {
        try {
        } catch (Exception e2) {
            Log.e("Honor", e2.getMessage());
        }
        return !TextUtils.isEmpty((String) SystemProperties.class.getDeclaredMethod("get", String.class).invoke(SystemProperties.class, "ro.build.version.emui"));
    }

    private static String q() {
        String str = Build.MANUFACTURER;
        return str == null ? "" : str.trim();
    }

    public static boolean s() {
        try {
            return Class.forName("miui.os.Build").getName().length() > 0;
        } catch (Exception unused) {
            return false;
        }
    }
}
