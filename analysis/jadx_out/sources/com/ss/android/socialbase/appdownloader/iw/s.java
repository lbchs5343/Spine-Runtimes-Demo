package com.ss.android.socialbase.appdownloader.iw;

import android.os.Build;
import android.os.SystemProperties;
import android.text.TextUtils;
import com.ss.android.socialbase.appdownloader.mn;
import g.awf;
import java.io.BufferedReader;
import java.io.InputStreamReader;

/* loaded from: classes.dex */
public class s {

    /* renamed from: d, reason: collision with root package name */
    public static String f9288d = "";
    public static String dq = null;
    private static Boolean ia = null;
    private static String iw = null;
    private static String mn = null;
    public static String ox = null;
    private static String p = "";
    private static String s;

    private static void cd() {
        if (TextUtils.isEmpty(dq)) {
            com.ss.android.socialbase.downloader.downloader.ox.u();
            dq = com.ss.android.socialbase.downloader.constants.s.f9317d;
            p = awf.ad(new StringBuilder("ro.build.version."), com.ss.android.socialbase.downloader.constants.s.ox, "rom");
            f9288d = awf.ad(new StringBuilder("com."), com.ss.android.socialbase.downloader.constants.s.ox, ".market");
        }
    }

    public static String d(String str) {
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop ".concat(String.valueOf(str))).getInputStream()), 1024);
        } catch (Throwable unused) {
            bufferedReader = null;
        }
        try {
            String readLine = bufferedReader.readLine();
            bufferedReader.close();
            com.ss.android.socialbase.downloader.kk.iw.dq(bufferedReader);
            return readLine;
        } catch (Throwable unused2) {
            com.ss.android.socialbase.downloader.kk.iw.dq(bufferedReader);
            return null;
        }
    }

    public static boolean d() {
        return dq("MAGICUI");
    }

    public static boolean dq() {
        return dq("EMUI") || dq("MAGICUI");
    }

    public static boolean dq(String str) {
        cd();
        String str2 = s;
        if (str2 != null) {
            return str2.equals(str);
        }
        String p2 = p("ro.miui.ui.version.name");
        iw = p2;
        if (TextUtils.isEmpty(p2)) {
            String p3 = p("ro.build.version.emui");
            iw = p3;
            if (TextUtils.isEmpty(p3)) {
                String p4 = p("ro.build.version.magic");
                iw = p4;
                if (TextUtils.isEmpty(p4)) {
                    String p5 = p(p);
                    iw = p5;
                    if (TextUtils.isEmpty(p5)) {
                        String p6 = p("ro.vivo.os.version");
                        iw = p6;
                        if (TextUtils.isEmpty(p6)) {
                            String p7 = p("ro.smartisan.version");
                            iw = p7;
                            if (TextUtils.isEmpty(p7)) {
                                String p8 = p("ro.gn.sv.version");
                                iw = p8;
                                if (TextUtils.isEmpty(p8)) {
                                    String p9 = p("ro.lenovo.lvp.version");
                                    iw = p9;
                                    if (!TextUtils.isEmpty(p9)) {
                                        s = "LENOVO";
                                        ox = "com.lenovo.leos.appstore";
                                    } else if (no().toUpperCase().contains("SAMSUNG")) {
                                        s = "SAMSUNG";
                                        ox = "com.sec.android.app.samsungapps";
                                    } else if (no().toUpperCase().contains("ZTE")) {
                                        s = "ZTE";
                                        ox = "zte.com.market";
                                    } else if (no().toUpperCase().contains("NUBIA")) {
                                        s = "NUBIA";
                                        ox = "cn.nubia.neostore";
                                    } else if (ig().toUpperCase().contains("FLYME")) {
                                        s = "FLYME";
                                        ox = "com.meizu.mstore";
                                        iw = ig();
                                    } else if (no().toUpperCase().contains("ONEPLUS")) {
                                        s = "ONEPLUS";
                                        iw = p("ro.rom.version");
                                        if (mn.dq(f9288d) >= 0) {
                                            ox = f9288d;
                                        } else {
                                            ox = "com.heytap.market";
                                        }
                                    } else {
                                        s = no().toUpperCase();
                                        ox = "";
                                        iw = "";
                                    }
                                } else {
                                    s = "QIONEE";
                                    ox = "com.gionee.aora.market";
                                }
                            } else {
                                s = "SMARTISAN";
                                ox = "com.smartisanos.appstore";
                            }
                        } else {
                            s = "VIVO";
                            ox = "com.bbk.appstore";
                        }
                    } else {
                        s = dq;
                        if (mn.dq(f9288d) >= 0) {
                            ox = f9288d;
                        } else {
                            ox = "com.heytap.market";
                        }
                    }
                } else {
                    s = "MAGICUI";
                    ox = "com.hihonor.appmarket";
                }
            } else {
                String str3 = fw() ? "MAGICUI" : "EMUI";
                s = str3;
                if (TextUtils.equals(str3, "MAGICUI")) {
                    ox = "com.hihonor.appmarket";
                } else {
                    ox = "com.huawei.appmarket";
                }
            }
        } else {
            s = "MIUI";
            ox = "com.xiaomi.market";
            mn = iw;
        }
        return s.equals(str);
    }

    public static boolean f() {
        if (ia == null) {
            ia = Boolean.valueOf(p.mn().equals("harmony"));
        }
        return ia.booleanValue();
    }

    public static boolean fw() {
        String str = Build.BRAND;
        if (!TextUtils.isEmpty(str) && str.toLowerCase().startsWith("honor")) {
            return true;
        }
        String str2 = Build.MANUFACTURER;
        return !TextUtils.isEmpty(str2) && str2.toLowerCase().startsWith("honor");
    }

    private static void gh() {
        if (mn == null) {
            try {
                mn = p("ro.miui.ui.version.name");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            String str = mn;
            if (str == null) {
                str = "";
            }
            mn = str;
        }
    }

    public static String ia() {
        if (s == null) {
            dq("");
        }
        return s;
    }

    public static String ig() {
        String str = Build.DISPLAY;
        return str == null ? "" : str.trim();
    }

    public static boolean iw() {
        return dq("FLYME");
    }

    public static boolean jy() {
        gh();
        return "V12".equals(mn);
    }

    public static String kk() {
        if (iw == null) {
            dq("");
        }
        return iw;
    }

    public static boolean mn() {
        return dq("SAMSUNG");
    }

    public static boolean mp() {
        gh();
        return "V10".equals(mn);
    }

    public static String no() {
        String str = Build.MANUFACTURER;
        return str == null ? "" : str.trim();
    }

    public static String o() {
        if (ox == null) {
            dq("");
        }
        return ox;
    }

    public static String ox(String str) throws Throwable {
        return (String) SystemProperties.class.getMethod("get", String.class).invoke(null, str);
    }

    public static boolean ox() {
        return dq("MIUI");
    }

    public static String p(String str) {
        if (com.ss.android.socialbase.downloader.mn.dq.d().optBoolean("enable_reflect_system_properties", true)) {
            try {
                return ox(str);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return d(str);
    }

    public static boolean p() {
        return dq("VIVO");
    }

    public static boolean q() {
        gh();
        return "V11".equals(mn);
    }

    public static boolean s() {
        cd();
        return dq(dq);
    }
}
