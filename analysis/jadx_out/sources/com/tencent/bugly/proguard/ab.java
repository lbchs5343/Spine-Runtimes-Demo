package com.tencent.bugly.proguard;

import android.app.ActivityManager;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Debug;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import g.awf;
import g.bfu;
import g.ckx;
import g.dsq;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class ab {

    /* renamed from: a, reason: collision with root package name */
    private static final ArrayList<bfu> f9541a;

    /* renamed from: b, reason: collision with root package name */
    private static final Map<Integer, String> f9542b;

    /* renamed from: c, reason: collision with root package name */
    private static final String[] f9543c;

    static {
        ckx ckxVar = new ckx();
        ckxVar.add(new bfu(10));
        ckxVar.add(new bfu(4));
        ckxVar.add(new bfu(5));
        ckxVar.add(new bfu(11));
        ckxVar.add(new bfu(6));
        ckxVar.add(new bfu(7));
        ckxVar.add(new bfu(9));
        ckxVar.add(new bfu(3));
        ckxVar.add(new bfu(8));
        ckxVar.add(new bfu(0));
        ckxVar.add(new bfu(2));
        ckxVar.add(new bfu(1));
        f9541a = ckxVar;
        dsq dsqVar = new dsq();
        dsqVar.put(1, "GPRS");
        dsqVar.put(2, "EDGE");
        dsqVar.put(3, "UMTS");
        dsqVar.put(8, "HSDPA");
        dsqVar.put(9, "HSUPA");
        dsqVar.put(10, "HSPA");
        dsqVar.put(4, "CDMA");
        dsqVar.put(5, "EVDO_0");
        dsqVar.put(6, "EVDO_A");
        dsqVar.put(7, "1xRTT");
        dsqVar.put(11, "iDen");
        dsqVar.put(12, "EVDO_B");
        dsqVar.put(13, "LTE");
        dsqVar.put(14, "eHRPD");
        dsqVar.put(15, "HSPA+");
        f9542b = dsqVar;
        f9543c = new String[]{"/su", "/su/bin/su", "/sbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/data/local/su", "/system/xbin/su", "/system/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/system/bin/cufsdosck", "/system/xbin/cufsdosck", "/system/bin/cufsmgr", "/system/xbin/cufsmgr", "/system/bin/cufaevdd", "/system/xbin/cufaevdd", "/system/bin/conbb", "/system/xbin/conbb"};
    }

    public static String a() {
        try {
            return Build.MODEL;
        } catch (Throwable th) {
            if (al.a(th)) {
                return "fail";
            }
            th.printStackTrace();
            return "fail";
        }
    }

    public static String a(Context context) {
        if (context == null || context.getApplicationInfo() == null) {
            return "fail";
        }
        String str = context.getApplicationInfo().nativeLibraryDir;
        return TextUtils.isEmpty(str) ? "fail" : str.endsWith("arm") ? "armeabi-v7a" : str.endsWith("arm64") ? "arm64-v8a" : str.endsWith("x86") ? "x86" : str.endsWith("x86_64") ? "x86_64" : "fail";
    }

    public static long b(Context context) {
        long pss;
        ActivityManager activityManager;
        try {
            activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
        } catch (Throwable unused) {
            pss = Debug.getPss();
        }
        if (activityManager == null) {
            return 0L;
        }
        pss = activityManager.getProcessMemoryInfo(new int[]{Process.myPid()})[0].getTotalPss();
        return pss * 1024;
    }

    public static String b() {
        try {
            return Build.VERSION.RELEASE;
        } catch (Throwable th) {
            if (al.a(th)) {
                return "fail";
            }
            th.printStackTrace();
            return "fail";
        }
    }

    public static int c() {
        try {
            return Build.VERSION.SDK_INT;
        } catch (Throwable th) {
            if (al.a(th)) {
                return -1;
            }
            th.printStackTrace();
            return -1;
        }
    }

    public static String c(Context context) {
        TelephonyManager telephonyManager;
        String str = MediationConfigUserInfoForSegment.GENDER_UNKNOWN;
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return null;
            }
            if (activeNetworkInfo.getType() == 1) {
                return "WIFI";
            }
            if (activeNetworkInfo.getType() != 0 || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null) {
                return MediationConfigUserInfoForSegment.GENDER_UNKNOWN;
            }
            int networkType = telephonyManager.getNetworkType();
            String str2 = f9542b.get(Integer.valueOf(networkType));
            if (str2 != null) {
                return str2;
            }
            try {
                return "MOBILE(" + networkType + ")";
            } catch (Exception e2) {
                e = e2;
                str = str2;
                if (!al.a(e)) {
                    e.printStackTrace();
                }
                return str;
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    public static String d() {
        try {
            return String.valueOf(System.getProperty("os.arch"));
        } catch (Throwable th) {
            if (al.a(th)) {
                return "fail";
            }
            th.printStackTrace();
            return "fail";
        }
    }

    public static long e() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return statFs.getBlockCount() * statFs.getBlockSize();
        } catch (Throwable th) {
            if (al.a(th)) {
                return -1L;
            }
            th.printStackTrace();
            return -1L;
        }
    }

    public static long f() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return statFs.getAvailableBlocks() * statFs.getBlockSize();
        } catch (Throwable th) {
            if (al.a(th)) {
                return -1L;
            }
            th.printStackTrace();
            return -1L;
        }
    }

    public static long g() {
        BufferedReader bufferedReader;
        Throwable th;
        long j = 0;
        try {
            bufferedReader = new BufferedReader(new FileReader("/proc/self/status"));
            try {
                for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                    if (readLine.startsWith("VmSize")) {
                        j = Long.parseLong(readLine.replaceAll("[^\\d]", ""));
                        break;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                try {
                    al.a(th);
                } finally {
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th3) {
                            th3.printStackTrace();
                        }
                    }
                }
            }
        } catch (Throwable th4) {
            bufferedReader = null;
            th = th4;
        }
        return j * 1024;
    }

    public static long h() {
        return Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory();
    }

    public static long i() {
        FileReader fileReader;
        Throwable th;
        BufferedReader bufferedReader;
        try {
            fileReader = new FileReader("/proc/meminfo");
            try {
                bufferedReader = new BufferedReader(fileReader, 2048);
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        long parseLong = Long.parseLong(readLine.split(":\\s+", 2)[1].toLowerCase().replace("kb", "").trim()) * 1024;
                        try {
                            bufferedReader.close();
                        } catch (IOException e2) {
                            if (!al.a(e2)) {
                                e2.printStackTrace();
                            }
                        }
                        try {
                            fileReader.close();
                        } catch (IOException e3) {
                            if (!al.a(e3)) {
                                e3.printStackTrace();
                            }
                        }
                        return parseLong;
                    }
                    try {
                        bufferedReader.close();
                    } catch (IOException e4) {
                        if (!al.a(e4)) {
                            e4.printStackTrace();
                        }
                    }
                    try {
                        fileReader.close();
                        return -1L;
                    } catch (IOException e5) {
                        if (al.a(e5)) {
                            return -1L;
                        }
                        e5.printStackTrace();
                        return -1L;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        if (!al.a(th)) {
                            th.printStackTrace();
                        }
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e6) {
                                if (!al.a(e6)) {
                                    e6.printStackTrace();
                                }
                            }
                        }
                        if (fileReader == null) {
                            return -2L;
                        }
                        try {
                            fileReader.close();
                            return -2L;
                        } catch (IOException e7) {
                            if (al.a(e7)) {
                                return -2L;
                            }
                            e7.printStackTrace();
                            return -2L;
                        }
                    } catch (Throwable th3) {
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e8) {
                                if (!al.a(e8)) {
                                    e8.printStackTrace();
                                }
                            }
                        }
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (IOException e9) {
                                if (!al.a(e9)) {
                                    e9.printStackTrace();
                                }
                            }
                        }
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                bufferedReader = null;
            }
        } catch (Throwable th5) {
            fileReader = null;
            th = th5;
            bufferedReader = null;
        }
    }

    public static long j() {
        FileReader fileReader;
        BufferedReader bufferedReader = null;
        try {
            fileReader = new FileReader("/proc/meminfo");
            try {
                BufferedReader bufferedReader2 = new BufferedReader(fileReader, 2048);
                try {
                    bufferedReader2.readLine();
                    String readLine = bufferedReader2.readLine();
                    if (readLine == null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException e2) {
                            if (!al.a(e2)) {
                                e2.printStackTrace();
                            }
                        }
                        try {
                            fileReader.close();
                        } catch (IOException e3) {
                            if (!al.a(e3)) {
                                e3.printStackTrace();
                            }
                        }
                        return -1L;
                    }
                    long parseLong = Long.parseLong(readLine.split(":\\s+", 2)[1].toLowerCase().replace("kb", "").trim()) * 1024;
                    String readLine2 = bufferedReader2.readLine();
                    if (readLine2 == null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException e4) {
                            if (!al.a(e4)) {
                                e4.printStackTrace();
                            }
                        }
                        try {
                            fileReader.close();
                        } catch (IOException e5) {
                            if (!al.a(e5)) {
                                e5.printStackTrace();
                            }
                        }
                        return -1L;
                    }
                    long parseLong2 = Long.parseLong(readLine2.split(":\\s+", 2)[1].toLowerCase().replace("kb", "").trim());
                    Long.signum(parseLong2);
                    long j = (parseLong2 * 1024) + parseLong;
                    String readLine3 = bufferedReader2.readLine();
                    if (readLine3 == null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException e6) {
                            if (!al.a(e6)) {
                                e6.printStackTrace();
                            }
                        }
                        try {
                            fileReader.close();
                        } catch (IOException e7) {
                            if (!al.a(e7)) {
                                e7.printStackTrace();
                            }
                        }
                        return -1L;
                    }
                    long parseLong3 = (Long.parseLong(readLine3.split(":\\s+", 2)[1].toLowerCase().replace("kb", "").trim()) * 1024) + j;
                    try {
                        bufferedReader2.close();
                    } catch (IOException e8) {
                        if (!al.a(e8)) {
                            e8.printStackTrace();
                        }
                    }
                    try {
                        fileReader.close();
                    } catch (IOException e9) {
                        if (!al.a(e9)) {
                            e9.printStackTrace();
                        }
                    }
                    return parseLong3;
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    try {
                        if (!al.a(th)) {
                            th.printStackTrace();
                        }
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e10) {
                                if (!al.a(e10)) {
                                    e10.printStackTrace();
                                }
                            }
                        }
                        if (fileReader == null) {
                            return -2L;
                        }
                        try {
                            fileReader.close();
                            return -2L;
                        } catch (IOException e11) {
                            if (al.a(e11)) {
                                return -2L;
                            }
                            e11.printStackTrace();
                            return -2L;
                        }
                    } catch (Throwable th2) {
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e12) {
                                if (!al.a(e12)) {
                                    e12.printStackTrace();
                                }
                            }
                        }
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (IOException e13) {
                                if (!al.a(e13)) {
                                    e13.printStackTrace();
                                }
                            }
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
            fileReader = null;
        }
    }

    public static long k() {
        if (!s()) {
            return 0L;
        }
        try {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return statFs.getBlockCount() * statFs.getBlockSize();
        } catch (Throwable th) {
            if (al.a(th)) {
                return -2L;
            }
            th.printStackTrace();
            return -2L;
        }
    }

    public static long l() {
        if (!s()) {
            return 0L;
        }
        try {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return statFs.getAvailableBlocks() * statFs.getBlockSize();
        } catch (Throwable th) {
            if (al.a(th)) {
                return -2L;
            }
            th.printStackTrace();
            return -2L;
        }
    }

    public static String m() {
        return "";
    }

    public static String n() {
        String sb;
        Iterator<bfu> it = f9541a.iterator();
        while (it.hasNext()) {
            switch (it.next().f11473a) {
                case 0:
                    String a2 = ap.a("ro.gn.gnromvernumber");
                    if (!ap.b(a2) && !a2.equals("fail")) {
                        StringBuilder p = awf.p("amigo/", a2, "/");
                        p.append(ap.a("ro.build.display.id"));
                        sb = p.toString();
                        break;
                    }
                    sb = null;
                    break;
                case 1:
                    sb = ap.a("ro.build.fingerprint") + "/" + ap.a("ro.build.rom.id");
                    break;
                case 2:
                    String a3 = ap.a("ro.build.tyd.kbstyle_version");
                    if (!ap.b(a3) && !a3.equals("fail")) {
                        sb = "dido/".concat(a3);
                        break;
                    }
                    sb = null;
                    break;
                case 3:
                    String a4 = ap.a("ro.aa.romver");
                    if (!ap.b(a4) && !a4.equals("fail")) {
                        StringBuilder p2 = awf.p("htc/", a4, "/");
                        p2.append(ap.a("ro.build.description"));
                        sb = p2.toString();
                        break;
                    }
                    sb = null;
                    break;
                case 4:
                    String a5 = ap.a("ro.build.version.emui");
                    if (!ap.b(a5) && !a5.equals("fail")) {
                        sb = "HuaWei/EMOTION/".concat(a5);
                        break;
                    }
                    sb = null;
                    break;
                case 5:
                    String a6 = ap.a("ro.lenovo.series");
                    if (!ap.b(a6) && !a6.equals("fail")) {
                        sb = "Lenovo/VIBE/".concat(String.valueOf(ap.a("ro.build.version.incremental")));
                        break;
                    }
                    sb = null;
                    break;
                case 6:
                    String a7 = ap.a("ro.meizu.product.model");
                    if (!ap.b(a7) && !a7.equals("fail")) {
                        sb = "Meizu/FLYME/" + ap.a("ro.build.display.id");
                        break;
                    }
                    sb = null;
                    break;
                case 7:
                    String a8 = ap.a("ro.build.version.opporom");
                    if (!ap.b(a8) && !a8.equals("fail")) {
                        sb = "Oppo/COLOROS/".concat(a8);
                        break;
                    }
                    sb = null;
                    break;
                case 8:
                    String a9 = ap.a("ro.lewa.version");
                    if (!ap.b(a9) && !a9.equals("fail")) {
                        StringBuilder p3 = awf.p("tcl/", a9, "/");
                        p3.append(ap.a("ro.build.display.id"));
                        sb = p3.toString();
                        break;
                    }
                    sb = null;
                    break;
                case 9:
                    String a10 = ap.a("ro.vivo.os.build.display.id");
                    if (!ap.b(a10) && !a10.equals("fail")) {
                        sb = "vivo/FUNTOUCH/".concat(a10);
                        break;
                    }
                    sb = null;
                    break;
                case 10:
                    String a11 = ap.a("ro.miui.ui.version.name");
                    if (!ap.b(a11) && !a11.equals("fail")) {
                        sb = "XiaoMi/MIUI/".concat(a11);
                        break;
                    }
                    sb = null;
                    break;
                default:
                    String a12 = ap.a("ro.build.nubia.rom.name");
                    if (!ap.b(a12) && !a12.equals("fail")) {
                        StringBuilder p4 = awf.p("Zte/NUBIA/", a12, "_");
                        p4.append(ap.a("ro.build.nubia.rom.code"));
                        sb = p4.toString();
                        break;
                    }
                    sb = null;
                    break;
            }
            if (!TextUtils.isEmpty(sb)) {
                return sb;
            }
        }
        return null;
    }

    public static boolean o() {
        String a2 = ap.a("ro.build.version.opporom");
        return !TextUtils.isEmpty((ap.b(a2) || a2.equals("fail")) ? null : "Oppo/COLOROS/".concat(a2));
    }

    public static boolean p() {
        String a2 = ap.a("ro.vivo.os.build.display.id");
        return !TextUtils.isEmpty((ap.b(a2) || a2.equals("fail")) ? null : "vivo/FUNTOUCH/".concat(a2));
    }

    public static boolean q() {
        boolean z;
        String[] strArr = f9543c;
        int length = strArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = false;
                break;
            }
            if (new File(strArr[i]).exists()) {
                z = true;
                break;
            }
            i++;
        }
        String str = Build.TAGS;
        return (str != null && str.contains("test-keys")) || z;
    }

    public static boolean r() {
        float maxMemory = (float) ((Runtime.getRuntime().maxMemory() * 1.0d) / 1048576.0d);
        float f2 = (float) ((Runtime.getRuntime().totalMemory() * 1.0d) / 1048576.0d);
        float f3 = maxMemory - f2;
        al.c("maxMemory : %f", Float.valueOf(maxMemory));
        al.c("totalMemory : %f", Float.valueOf(f2));
        al.c("freeMemory : %f", Float.valueOf(f3));
        return f3 < 10.0f;
    }

    private static boolean s() {
        try {
            return Environment.getExternalStorageState().equals("mounted");
        } catch (Throwable th) {
            if (al.a(th)) {
                return false;
            }
            th.printStackTrace();
            return false;
        }
    }
}
