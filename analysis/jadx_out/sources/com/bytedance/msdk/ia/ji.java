package com.bytedance.msdk.ia;

import android.os.Build;
import android.text.TextUtils;
import g.tn;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class ji {
    private static final CharSequence ox = "sony";
    private static final CharSequence p = "amigo";
    private static final CharSequence s = "funtouch";
    private static final ExecutorService iw = com.bytedance.msdk.dq.s.iw.dq("romutils", 2, new RejectedExecutionHandler() { // from class: com.bytedance.msdk.ia.ji.1
        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        }
    });
    public static boolean dq = false;

    /* renamed from: d, reason: collision with root package name */
    public static boolean f1095d = false;

    public static class dq implements Callable<String> {
        private final String dq;

        public dq(String str) {
            this.dq = str;
        }

        @Override // java.util.concurrent.Callable
        public String call() throws Exception {
            long currentTimeMillis = System.currentTimeMillis();
            String d2 = ji.d(this.dq);
            com.bytedance.msdk.dq.s.ox.dq("RomUtils", "property:" + d2 + ",getSystemProperty use time :" + (System.currentTimeMillis() - currentTimeMillis));
            if (!TextUtils.isEmpty(d2)) {
                try {
                    com.bytedance.msdk.dq.s.ox.ox("RomUtils", "SP-getPropertyFromSP:".concat(String.valueOf(d2)));
                    bl.dq("rom_info", com.bytedance.msdk.core.dq.getContext()).dq("rom_property_info", d2);
                } catch (Throwable unused) {
                }
            }
            return d2;
        }
    }

    public static boolean cd() {
        String str = Build.MANUFACTURER;
        return !TextUtils.isEmpty(str) && str.toLowerCase().contains("oppo");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String d(String str) {
        BufferedReader bufferedReader;
        Throwable th;
        String str2 = "";
        try {
            Process exec = Runtime.getRuntime().exec("getprop ".concat(String.valueOf(str)));
            bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream()), 1024);
            try {
                str2 = bufferedReader.readLine();
                exec.destroy();
                try {
                    bufferedReader.close();
                    return str2;
                } catch (IOException e2) {
                    com.bytedance.msdk.dq.s.ox.d("ToolUtils", "Exception while closing InputStream", e2);
                    return str2;
                }
            } catch (Throwable th2) {
                th = th2;
                try {
                    com.bytedance.msdk.dq.s.ox.d("ToolUtils", "Unable to read sysprop ".concat(String.valueOf(str)), th);
                    return str2;
                } finally {
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e3) {
                            com.bytedance.msdk.dq.s.ox.d("ToolUtils", "Exception while closing InputStream", e3);
                        }
                    }
                }
            }
        } catch (Throwable th3) {
            bufferedReader = null;
            th = th3;
        }
    }

    public static boolean d() {
        return Build.DISPLAY.contains("Flyme") || Build.USER.equals("flyme");
    }

    public static String dq() {
        if (jy()) {
            return f();
        }
        if (s()) {
            return ig();
        }
        if (d()) {
            return fw();
        }
        if (cd()) {
            return gh();
        }
        String mp = mp();
        if (!TextUtils.isEmpty(mp)) {
            return mp;
        }
        if (mn()) {
            return iw();
        }
        if (ia()) {
            return kk();
        }
        if (p()) {
            return ox();
        }
        String o = o();
        return !TextUtils.isEmpty(o) ? o : Build.DISPLAY;
    }

    public static String f() {
        if (jy()) {
            try {
                return "smartisan_".concat(String.valueOf(ox("ro.smartisan.version")));
            } catch (Throwable unused) {
            }
        }
        return Build.DISPLAY;
    }

    public static String fw() {
        String str = Build.DISPLAY;
        return (str == null || !str.toLowerCase().contains("flyme")) ? "" : str;
    }

    public static String gh() {
        if (!cd()) {
            return "";
        }
        return "coloros_" + ox("ro.build.version.opporom") + "_" + Build.DISPLAY;
    }

    public static boolean ia() {
        String str = Build.DISPLAY;
        return !TextUtils.isEmpty(str) && str.toLowerCase().contains(p);
    }

    public static String ig() {
        if (!s()) {
            return "";
        }
        return "miui_" + ox("ro.miui.ui.version.name") + "_" + Build.VERSION.INCREMENTAL;
    }

    public static String iw() {
        return ox("ro.vivo.os.build.display.id") + "_" + ox("ro.vivo.product.version");
    }

    public static boolean jy() {
        return "smartisan".equalsIgnoreCase(Build.MANUFACTURER) || "smartisan".equalsIgnoreCase(Build.BRAND);
    }

    public static String kk() {
        return Build.DISPLAY + "_" + ox("ro.gn.sv.version");
    }

    public static boolean mn() {
        String ox2 = ox("ro.vivo.os.build.display.id");
        return !TextUtils.isEmpty(ox2) && ox2.toLowerCase().contains(s);
    }

    public static String mp() {
        String q = q();
        if (q == null || !q.toLowerCase().contains("emotionui")) {
            return "";
        }
        StringBuilder l = tn.l(q, "_");
        l.append(Build.DISPLAY);
        return l.toString();
    }

    public static boolean no() {
        return !TextUtils.isEmpty(ox("ro.letv.release.version"));
    }

    public static String o() {
        if (!no()) {
            return "";
        }
        return "eui_" + ox("ro.letv.release.version") + "_" + Build.DISPLAY;
    }

    public static String ox() {
        return ox("ro.build.uiversion") + "_" + Build.DISPLAY;
    }

    private static String ox(String str) {
        String str2;
        try {
            str2 = r();
            try {
                if (TextUtils.isEmpty(str2)) {
                    FutureTask futureTask = new FutureTask(new dq(str));
                    iw.execute(futureTask);
                    str2 = (String) futureTask.get(1L, TimeUnit.SECONDS);
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            str2 = "";
        }
        return str2 == null ? "" : str2;
    }

    public static boolean p() {
        String str = Build.MANUFACTURER + Build.BRAND;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.contains("360") || lowerCase.contains("qiku");
    }

    public static String q() {
        return ox("ro.build.version.emui");
    }

    private static String r() {
        try {
            String d2 = bl.dq("rom_info", com.bytedance.msdk.core.dq.getContext()).d("rom_property_info", "");
            com.bytedance.msdk.dq.s.ox.d("RomUtils", "get Property From SP...=".concat(String.valueOf(d2)));
            return d2;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static boolean s() {
        if (!f1095d) {
            try {
                Class.forName("miui.os.Build");
                dq = true;
                f1095d = true;
                return true;
            } catch (Exception unused) {
                f1095d = true;
            }
        }
        return dq;
    }
}
