package com.bytedance.sdk.openadsdk.core.ir;

import android.os.Build;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import g.awf;
import g.tn;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class e {

    /* renamed from: d, reason: collision with root package name */
    public static int f3044d = 0;
    public static int dq = 0;
    private static int ia = Integer.MAX_VALUE;
    private static String kk;
    private static String mn;
    private static final CharSequence ox = "sony";
    private static final CharSequence p = "amigo";
    private static final CharSequence s = "funtouch";
    private static final CharSequence iw = LiveConfigKey.ORIGIN;

    public static class dq implements Callable<String> {
        private String dq;

        public dq(String str) {
            this.dq = str;
        }

        @Override // java.util.concurrent.Callable
        public String call() throws Exception {
            System.currentTimeMillis();
            String ox = e.ox(this.dq);
            System.currentTimeMillis();
            if (!TextUtils.isEmpty(ox)) {
                try {
                    n.dq("rom_info").dq("rom_property_info", ox);
                } catch (Throwable unused) {
                }
            }
            return ox;
        }
    }

    public static boolean cd() {
        try {
            String str = Build.MANUFACTURER;
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            return str.toLowerCase().contains("vivo");
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ig.p("romUtils", e2.getMessage());
            return false;
        }
    }

    public static String d() {
        return ox("ro.build.uiversion") + "_" + Build.DISPLAY;
    }

    public static String dq() {
        if (TextUtils.isEmpty(mn)) {
            mn = e();
        }
        return mn;
    }

    public static boolean dq(String str) {
        if (TextUtils.isEmpty(str)) {
            str = r();
        }
        return (!TextUtils.isEmpty(str) && str.toLowerCase().startsWith("emotionui")) || le();
    }

    private static String e() {
        String i = awf.i(Build.DISPLAY, "_", Build.VERSION.INCREMENTAL);
        String str = Build.MANUFACTURER;
        if (jy()) {
            return "miui_".concat(String.valueOf(i));
        }
        if (f()) {
            return "huawei_".concat(String.valueOf(i));
        }
        Locale locale = Locale.ROOT;
        return str.toLowerCase(locale).contains("oppo") ? "oppo_".concat(String.valueOf(i)) : str.toLowerCase(locale).contains("vivo") ? "vivo_".concat(String.valueOf(i)) : str.toLowerCase(locale).contains("oneplus") ? "oneplus_".concat(String.valueOf(i)) : i;
    }

    public static boolean f() {
        if (f3044d == 0) {
            try {
                Class.forName("com.huawei.system.BuildEx");
                f3044d = 1;
            } catch (Exception unused) {
            }
        }
        return f3044d == 1;
    }

    public static boolean fw() {
        try {
            String str = Build.MANUFACTURER;
            if (!TextUtils.isEmpty(str)) {
                if (str.toLowerCase().contains("oppo")) {
                    return true;
                }
                return str.toLowerCase().contains("realme");
            }
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ig.p("romUtil", e2.getMessage());
        }
        return false;
    }

    public static boolean gh() {
        return Build.DISPLAY.contains("Flyme") || Build.USER.equals("flyme");
    }

    public static boolean i() {
        if (ia == Integer.MAX_VALUE) {
            String str = Build.MANUFACTURER;
            String kk2 = c.kk("kllk");
            if (TextUtils.isEmpty(str) || !str.toLowerCase(Locale.ROOT).contains(kk2)) {
                ia = 0;
            } else {
                ia = 1;
            }
        }
        return ia == 1;
    }

    public static String ia() {
        return "vivo_" + ox("ro.vivo.os.build.display.id") + "_" + ox("ro.vivo.product.version");
    }

    public static String ig() {
        if (!mp()) {
            return "";
        }
        return "eui_" + ox("ro.letv.release.version") + "_" + Build.DISPLAY;
    }

    public static String iw() {
        String r = r();
        if (r == null) {
            return "";
        }
        if (!r.toLowerCase().contains("emotionui") && !r.toLowerCase().contains("magicui")) {
            return "";
        }
        StringBuilder l = tn.l(r, "_");
        l.append(Build.DISPLAY);
        return l.toString();
    }

    public static boolean jy() {
        if (dq == 0) {
            try {
                Class.forName("miui.os.Build");
                dq = 1;
            } catch (Exception unused) {
            }
        }
        return dq == 1;
    }

    public static boolean k() {
        String str = Build.BRAND;
        if (!TextUtils.isEmpty(str) && str.toLowerCase().startsWith("honor")) {
            return true;
        }
        String str2 = Build.MANUFACTURER;
        return (!TextUtils.isEmpty(str2) && str2.toLowerCase().startsWith("honor")) || "HONOR".equalsIgnoreCase(str2);
    }

    public static boolean kk() {
        String str = Build.DISPLAY;
        return !TextUtils.isEmpty(str) && str.toLowerCase().contains(p);
    }

    private static String kx() {
        try {
            return n.dq("rom_info").d("rom_property_info", "");
        } catch (Throwable unused) {
            return "";
        }
    }

    public static boolean le() {
        try {
            String str = Build.BRAND;
            if (TextUtils.isEmpty(str) || !str.toLowerCase().startsWith("huawei")) {
                String str2 = Build.MANUFACTURER;
                if (TextUtils.isEmpty(str2)) {
                    return false;
                }
                if (!str2.toLowerCase().startsWith("huawei")) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean mn() {
        String ox2 = ox("ro.vivo.os.build.display.id");
        if (TextUtils.isEmpty(ox2)) {
            return false;
        }
        return ox2.toLowerCase().contains(s) || ox2.toLowerCase().contains(LiveConfigKey.ORIGIN);
    }

    public static boolean mp() {
        return !TextUtils.isEmpty(ox("ro.letv.release.version"));
    }

    public static boolean no() {
        String str = Build.MANUFACTURER + Build.BRAND;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.contains("360") || lowerCase.contains("qiku");
    }

    public static String o() {
        return Build.DISPLAY + "_" + ox("ro.gn.sv.version");
    }

    public static String ox() {
        if (!jy()) {
            return "";
        }
        return "miui_" + ox("ro.miui.ui.version.name") + "_" + Build.VERSION.INCREMENTAL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006d, code lost:
    
        if (r5 == null) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String ox(String str) {
        BufferedReader bufferedReader;
        Throwable th;
        Process exec;
        String str2 = "";
        Process process = null;
        try {
            try {
                exec = Runtime.getRuntime().exec("getprop ".concat(String.valueOf(str)));
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream()), 1024);
                } catch (IllegalThreadStateException unused) {
                    bufferedReader = null;
                }
            } catch (Throwable th2) {
                bufferedReader = null;
                th = th2;
            }
        } catch (IllegalThreadStateException unused2) {
            bufferedReader = null;
        }
        try {
            str2 = bufferedReader.readLine();
            exec.exitValue();
        } catch (IllegalThreadStateException unused3) {
            process = exec;
            try {
                process.destroy();
            } catch (Throwable unused4) {
            }
        } catch (Throwable th3) {
            th = th3;
            try {
                com.bytedance.sdk.component.utils.ig.d("ToolUtils", "Unable to read sysprop ".concat(String.valueOf(str)), th);
                return str2;
            } finally {
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e2) {
                        com.bytedance.sdk.component.utils.ig.d("ToolUtils", "Exception while closing InputStream", e2);
                    }
                }
            }
        }
        try {
            bufferedReader.close();
        } catch (IOException e3) {
            com.bytedance.sdk.component.utils.ig.d("ToolUtils", "Exception while closing InputStream", e3);
        }
        return str2;
    }

    public static String p() {
        String str = Build.DISPLAY;
        return (str == null || !str.toLowerCase().contains("flyme")) ? "" : str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static String p(String str) {
        String str2;
        try {
            str2 = kx();
            try {
                if (TextUtils.isEmpty(str2)) {
                    final com.bytedance.sdk.component.o.ia iaVar = new com.bytedance.sdk.component.o.ia(new dq(str), 5, 2);
                    com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("getSystemPropertyTask") { // from class: com.bytedance.sdk.openadsdk.core.ir.e.1
                        @Override // java.lang.Runnable
                        public void run() {
                            iaVar.run();
                        }
                    });
                    str2 = (String) iaVar.get(1L, TimeUnit.SECONDS);
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            str2 = "";
        }
        return str2 == null ? "" : str2;
    }

    public static String q() {
        if (TextUtils.isEmpty(kk)) {
            kk = wp();
        }
        return kk;
    }

    public static String r() {
        return p("ro.build.version.emui");
    }

    public static String s() {
        if (!i()) {
            return "";
        }
        return "coloros_" + ox("ro.build.version.kllkrom") + "_" + Build.DISPLAY;
    }

    private static String wp() {
        if (jy()) {
            return ox();
        }
        if (gh()) {
            return p();
        }
        if (i()) {
            return s();
        }
        String iw2 = iw();
        if (!TextUtils.isEmpty(iw2)) {
            return iw2;
        }
        if (mn()) {
            return ia();
        }
        if (kk()) {
            return o();
        }
        if (no()) {
            return d();
        }
        String ig = ig();
        if (!TextUtils.isEmpty(ig)) {
            return ig;
        }
        if (Build.MANUFACTURER.toLowerCase(Locale.ROOT).contains("oneplus")) {
            return "oneplus_" + Build.DISPLAY + "_" + Build.VERSION.INCREMENTAL;
        }
        if (k()) {
            return "honor_" + r();
        }
        return Build.DISPLAY + "_" + Build.VERSION.INCREMENTAL;
    }
}
