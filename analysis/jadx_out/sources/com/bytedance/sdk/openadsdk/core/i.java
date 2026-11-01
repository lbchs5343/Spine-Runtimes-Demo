package com.bytedance.sdk.openadsdk.core;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import g.fvp;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class i {
    private static volatile boolean bl = false;

    /* renamed from: c, reason: collision with root package name */
    private static volatile boolean f2913c = false;
    private static volatile String cd = null;
    private static volatile TelephonyManager ce = null;

    /* renamed from: d, reason: collision with root package name */
    private static volatile String f2914d = "";
    private static String dq;

    /* renamed from: e, reason: collision with root package name */
    private static volatile boolean f2915e;
    private static volatile WifiManager er;

    /* renamed from: f, reason: collision with root package name */
    private static volatile String f2916f;
    private static volatile String fw;
    private static volatile String gh;
    private static volatile boolean h;
    private static volatile boolean i;
    private static volatile String ir;
    private static volatile String iw;
    private static volatile boolean ji;
    private static volatile String jy;
    private static volatile boolean k;
    private static volatile String kk;
    private static volatile boolean kx;
    private static volatile boolean le;
    private static volatile String mn;
    private static volatile String mp;
    private static volatile boolean n;
    private static volatile boolean op;
    private static volatile String ox;
    private static volatile String p;
    private static volatile String q;
    private static volatile String s;
    private static volatile long u;
    private static volatile WifiInfo wn;
    private static volatile boolean wp;
    private static AtomicBoolean ia = new AtomicBoolean(false);
    private static volatile String o = "";
    private static volatile String no = "";
    private static volatile boolean ig = true;
    private static volatile String r = null;

    private static synchronized void bl() {
        int activeSubscriptionInfoCount;
        List activeSubscriptionInfoList;
        int mcc;
        String valueOf;
        int mnc;
        String valueOf2;
        synchronized (i.class) {
            if (f2913c) {
                return;
            }
            if (Build.VERSION.SDK_INT < 22) {
                return;
            }
            synchronized (i.class) {
                f2913c = true;
                SubscriptionManager g2 = fvp.g(wp.getContext().getSystemService("telephony_subscription_service"));
                activeSubscriptionInfoCount = g2.getActiveSubscriptionInfoCount();
                if (activeSubscriptionInfoCount < 2) {
                    return;
                }
                activeSubscriptionInfoList = g2.getActiveSubscriptionInfoList();
                if (activeSubscriptionInfoList.size() < 2) {
                    return;
                }
                for (int i2 = 0; i2 < 2; i2++) {
                    SubscriptionInfo e2 = fvp.e(activeSubscriptionInfoList.get(i2));
                    if (Build.VERSION.SDK_INT >= 29) {
                        valueOf = e2.getMccString();
                        valueOf2 = e2.getMncString();
                    } else {
                        mcc = e2.getMcc();
                        valueOf = String.valueOf(mcc);
                        mnc = e2.getMnc();
                        valueOf2 = String.valueOf(mnc);
                    }
                    if (i2 == 0) {
                        if (!TextUtils.isEmpty(valueOf)) {
                            mp = valueOf;
                        }
                        if (!TextUtils.isEmpty(valueOf2)) {
                            jy = valueOf2;
                        }
                    } else {
                        if (!TextUtils.isEmpty(valueOf)) {
                            q = valueOf;
                        }
                        if (!TextUtils.isEmpty(valueOf2)) {
                            f2916f = valueOf2;
                        }
                    }
                }
            }
        }
    }

    public static String cd() {
        ji();
        return jy;
    }

    public static WifiInfo d() {
        com.bytedance.sdk.openadsdk.f.d.ox.p kk2 = no.ia().kk();
        if (kk2 != null && (!kk2.p() || !kk2.dq())) {
            return wn;
        }
        if (wn != null) {
            return wn;
        }
        synchronized (i.class) {
            try {
                if (wn != null) {
                    return wn;
                }
                WifiManager wp2 = wp();
                if (wp2 == null) {
                    return wn;
                }
                wn = wp2.getConnectionInfo();
                return wn;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String d(com.bytedance.sdk.openadsdk.core.k.dq dqVar) {
        if (!TextUtils.isEmpty(kk) || kx || k) {
            return kk;
        }
        if (dqVar.dq()) {
            return e();
        }
        return null;
    }

    @SuppressLint({"NewApi"})
    private static String d(String str) {
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (str == null || networkInterface.getName().equalsIgnoreCase(str)) {
                    byte[] hardwareAddress = networkInterface.getHardwareAddress();
                    if (hardwareAddress == null) {
                        return "";
                    }
                    StringBuilder sb = new StringBuilder();
                    for (byte b2 : hardwareAddress) {
                        sb.append(String.format("%02X:", Byte.valueOf(b2)));
                    }
                    if (sb.length() > 0) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    return sb.toString();
                }
            }
        } catch (Throwable unused) {
        }
        return "";
    }

    public static TelephonyManager dq() {
        if (ce != null) {
            return ce;
        }
        synchronized (i.class) {
            try {
                if (ce != null) {
                    return ce;
                }
                ce = (TelephonyManager) wp.getContext().getSystemService("phone");
                return ce;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String dq(com.bytedance.sdk.openadsdk.core.k.dq dqVar) {
        return (!TextUtils.isEmpty(s) || le) ? s : dq(no.ia().kk(), dqVar.dq());
    }

    private static String dq(com.bytedance.sdk.openadsdk.f.d.ox.p pVar, boolean z) {
        String imei;
        if (pVar != null && !z) {
            String kk2 = pVar.kk();
            s = kk2;
            com.bytedance.sdk.openadsdk.tools.d.d(6, kk2);
            return kk2;
        }
        if (le) {
            return s;
        }
        synchronized (i.class) {
            try {
                if (le) {
                    return s;
                }
                if (k) {
                    return s;
                }
                if (com.bytedance.sdk.openadsdk.core.k.d.dq(wp.getContext(), "android.permission.READ_PHONE_STATE") != 0) {
                    return s;
                }
                k = true;
                TelephonyManager dq2 = dq();
                if (dq2 == null) {
                    return s;
                }
                try {
                    if (Build.VERSION.SDK_INT >= 26) {
                        imei = dq2.getImei();
                        s = imei;
                    } else {
                        s = dq2.getDeviceId();
                    }
                } catch (Throwable unused) {
                }
                le = true;
                com.bytedance.sdk.openadsdk.tools.d.d(6, s);
                return s;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void dq(String str) {
        if (com.bytedance.sdk.openadsdk.dq.dq.dq.dq() != null) {
            com.bytedance.sdk.openadsdk.dq.dq.dq.dq().dq(str);
        }
        if (TextUtils.isEmpty(str) || str.equals(ox)) {
            return;
        }
        ox.dq().dq("did", str);
        ox = str;
    }

    private static boolean dq(long j, long j2) {
        return System.currentTimeMillis() - j > j2;
    }

    private static String e() {
        if (kx) {
            return kk;
        }
        synchronized (i.class) {
            try {
                if (kx) {
                    return kk;
                }
                if (k) {
                    return s;
                }
                TelephonyManager dq2 = dq();
                if (dq2 == null) {
                    return kk;
                }
                try {
                    kk = dq2.getSubscriberId();
                } catch (Throwable unused) {
                }
                kx = true;
                return kk;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String f() {
        try {
            ji();
            if (!TextUtils.isEmpty(mp)) {
                return mp;
            }
            if (!dq(u, 60000L)) {
                return ir;
            }
            if (!jy()) {
                return null;
            }
            int i2 = wp.getContext().getResources().getConfiguration().mcc;
            String valueOf = i2 != 0 ? String.valueOf(i2) : mp;
            ir = valueOf;
            u = System.currentTimeMillis();
            return valueOf;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String fw() {
        ji();
        return q;
    }

    public static String gh() {
        ji();
        return f2916f;
    }

    private static String h() {
        if (f2915e) {
            return mn;
        }
        synchronized (i.class) {
            try {
                if (f2915e) {
                    return mn;
                }
                mn = ig();
                f2915e = true;
                return mn;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String i() {
        if (!TextUtils.isEmpty(r)) {
            return r;
        }
        com.bytedance.sdk.openadsdk.f.d.ox.p kk2 = no.ia().kk();
        return (kk2 == null || kk2.p()) ? ir() : kk2.o();
    }

    public static String ia() {
        if (!TextUtils.isEmpty(iw)) {
            return iw;
        }
        com.bytedance.sdk.openadsdk.f.d.ox.p kk2 = no.ia().kk();
        if (kk2 == null || (kk2.p() && kk2.dq())) {
            return kx();
        }
        return null;
    }

    public static String ig() {
        try {
            WifiInfo d2 = d();
            if (d2 == null) {
                return "02:00:00:00:00:00";
            }
            String bssid = d2.getBSSID();
            return TextUtils.isEmpty(bssid) ? "02:00:00:00:00:00" : bssid;
        } catch (Exception unused) {
            return "02:00:00:00:00:00";
        }
    }

    private static String ir() {
        if (op) {
            return r;
        }
        synchronized (i.class) {
            try {
                if (op) {
                    return r;
                }
                r = op();
                op = true;
                return r;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @SuppressLint({"HardwareIds"})
    public static String iw() {
        if (!TextUtils.isEmpty(s)) {
            return s;
        }
        com.bytedance.sdk.openadsdk.f.d.ox.p kk2 = no.ia().kk();
        return dq(kk2, kk2 != null && kk2.ox());
    }

    private static void ji() {
        String str;
        String str2;
        String str3;
        if (bl) {
            return;
        }
        synchronized (i.class) {
            try {
                if (bl) {
                    return;
                }
                TelephonyManager dq2 = dq();
                String str4 = null;
                try {
                    str = dq2.getNetworkOperator();
                } catch (Throwable unused) {
                    str = null;
                }
                if (TextUtils.isEmpty(str) || str.length() < 5) {
                    str = q();
                }
                try {
                    str2 = dq2.getSimOperatorName();
                } catch (Throwable unused2) {
                    str2 = null;
                }
                if (TextUtils.isEmpty(str) || str.length() <= 4) {
                    str3 = null;
                } else {
                    str4 = str.substring(0, 3);
                    str3 = str.substring(3);
                }
                if (!TextUtils.isEmpty(str4)) {
                    mp = str4;
                }
                if (!TextUtils.isEmpty(str3)) {
                    jy = str3;
                }
                if (!TextUtils.isEmpty(str2)) {
                    fw = str2;
                }
                bl();
                bl = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean jy() {
        if (ji) {
            return ig;
        }
        synchronized (i.class) {
            if (ji) {
                return ig;
            }
            try {
                int simState = dq().getSimState();
                if (1 == simState) {
                    ig = false;
                }
                if (simState == 0) {
                    ig = false;
                }
                ji = true;
            } catch (Throwable unused) {
            }
            return ig;
        }
    }

    public static String kk() {
        if (!TextUtils.isEmpty(mn)) {
            return mn;
        }
        com.bytedance.sdk.openadsdk.f.d.ox.p kk2 = no.ia().kk();
        if (kk2 == null || (kk2.p() && kk2.dq())) {
            return h();
        }
        return null;
    }

    private static String kx() {
        WifiInfo d2;
        if (wp) {
            return iw;
        }
        synchronized (i.class) {
            if (wp) {
                return iw;
            }
            try {
                d2 = d();
            } catch (Throwable unused) {
            }
            if (d2 == null) {
                return iw;
            }
            iw = d2.getSSID();
            wp = true;
            return iw;
        }
    }

    public static String le() {
        if (!TextUtils.isEmpty(f2914d)) {
            return f2914d;
        }
        String dq2 = com.bytedance.sdk.component.utils.le.dq();
        f2914d = dq2;
        return dq2;
    }

    @SuppressLint({"HardwareIds"})
    public static String mn() {
        if (!TextUtils.isEmpty(kk)) {
            return kk;
        }
        com.bytedance.sdk.openadsdk.f.d.ox.p kk2 = no.ia().kk();
        if (kk2 == null || kk2.ox()) {
            return e();
        }
        return null;
    }

    public static void mp() {
        TelephonyManager dq2;
        String imei;
        if (k) {
            return;
        }
        com.bytedance.sdk.openadsdk.f.d.ox.p kk2 = no.ia().kk();
        if ((kk2 == null || kk2.ox()) && com.bytedance.sdk.openadsdk.core.k.d.dq(wp.getContext(), "android.permission.READ_PHONE_STATE") == 0 && (dq2 = dq()) != null) {
            synchronized (i.class) {
                try {
                    k = true;
                    if (TextUtils.isEmpty(s)) {
                        try {
                            if (Build.VERSION.SDK_INT >= 26) {
                                imei = dq2.getImei();
                                s = imei;
                            } else {
                                s = dq2.getDeviceId();
                            }
                        } catch (Throwable unused) {
                        }
                        com.bytedance.sdk.openadsdk.tools.d.d(6, s);
                    }
                    if (TextUtils.isEmpty(kk)) {
                        try {
                            kk = dq2.getSubscriberId();
                        } catch (Throwable unused2) {
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0028, code lost:
    
        if (r2.length() < 13) goto L17;
     */
    @SuppressLint({"TrulyRandom", "HardwareIds"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static synchronized String n() {
        synchronized (i.class) {
            Context context = wp.getContext();
            String str = null;
            if (context == null) {
                return null;
            }
            try {
                str = Settings.Secure.getString(context.getContentResolver(), "android_id");
                i = true;
            } catch (Exception unused) {
            }
            if (!TextUtils.isEmpty(str)) {
            }
            str = "";
            return str;
        }
    }

    public static String no() {
        String serial;
        com.bytedance.sdk.openadsdk.f.d.ox.p kk2 = no.ia().kk();
        if (kk2 != null && !kk2.ox()) {
            return null;
        }
        if (TextUtils.isEmpty(gh) && !n) {
            synchronized (i.class) {
                try {
                    if (n) {
                        return gh;
                    }
                    if (Build.VERSION.SDK_INT >= 28) {
                        try {
                            serial = Build.getSerial();
                            gh = serial;
                        } catch (Throwable unused) {
                        }
                    } else {
                        gh = Build.SERIAL;
                    }
                    n = true;
                    return gh;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return gh;
    }

    public static String o() {
        if (!TextUtils.isEmpty(mn) || f2915e) {
            return mn;
        }
        if (ia.get()) {
            return null;
        }
        ia.set(true);
        com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("") { // from class: com.bytedance.sdk.openadsdk.core.i.1
            @Override // java.lang.Runnable
            public void run() {
                i.kk();
                i.ia.set(false);
            }
        });
        return null;
    }

    private static String op() {
        String ox2 = com.bytedance.sdk.component.utils.dq.ox(com.bytedance.sdk.openadsdk.core.ox.p.dq().p("new_mac_address", 864000000L));
        if (!TextUtils.isEmpty(ox2)) {
            return ox2;
        }
        String d2 = d("wlan0");
        if (TextUtils.isEmpty(d2)) {
            d2 = d("eth0");
        }
        if (TextUtils.isEmpty(d2)) {
            d2 = "DU:MM:YA:DD:RE:SS";
        }
        com.bytedance.sdk.openadsdk.core.ox.p.dq().p("mac_address", d2);
        com.bytedance.sdk.openadsdk.core.ox.p.dq().p("new_mac_address", com.bytedance.sdk.component.utils.dq.d(d2));
        return d2;
    }

    public static String ox() {
        if (!TextUtils.isEmpty(ox)) {
            return ox;
        }
        String d2 = ox.dq().d("did", dq);
        ox = d2;
        return d2;
    }

    public static String ox(com.bytedance.sdk.openadsdk.core.k.dq dqVar) {
        if (!TextUtils.isEmpty(iw) || wp) {
            return iw;
        }
        if (dqVar.d() && dqVar.ox()) {
            return kx();
        }
        return null;
    }

    public static String p() {
        if (!TextUtils.isEmpty(cd)) {
            return cd;
        }
        String valueOf = String.valueOf(Build.TIME);
        cd = valueOf;
        return valueOf;
    }

    public static String p(com.bytedance.sdk.openadsdk.core.k.dq dqVar) {
        if (!TextUtils.isEmpty(mn) || f2915e) {
            return mn;
        }
        if (dqVar.d() && dqVar.ox()) {
            return h();
        }
        return null;
    }

    public static String q() {
        com.bytedance.sdk.openadsdk.f.d.ox.p kk2 = no.ia().kk();
        if (kk2 != null && !kk2.ox()) {
            return "";
        }
        if (TextUtils.isEmpty(o) && !h) {
            synchronized (i.class) {
                try {
                    if (h) {
                        return o;
                    }
                    TelephonyManager dq2 = dq();
                    if (dq2 == null) {
                        return o;
                    }
                    try {
                        o = dq2.getSimOperator();
                    } catch (Throwable unused) {
                    }
                    h = true;
                    return o;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return o;
    }

    public static String r() {
        ji();
        return fw;
    }

    public static String s() {
        if (!TextUtils.isEmpty(p)) {
            return p;
        }
        com.bytedance.sdk.openadsdk.f.d.ox.p kk2 = no.ia().kk();
        if (kk2 != null && op.f3334d >= 4600 && !kk2.iw()) {
            if (op.f3334d >= 4900) {
                return kk2.ig();
            }
            return null;
        }
        if (i) {
            return p;
        }
        synchronized (i.class) {
            try {
                if (i) {
                    return p;
                }
                p = n();
                com.bytedance.sdk.openadsdk.tools.d.d(9, p);
                return p;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String s(com.bytedance.sdk.openadsdk.core.k.dq dqVar) {
        if (!TextUtils.isEmpty(r) || op) {
            return r;
        }
        com.bytedance.sdk.openadsdk.f.d.ox.p kk2 = no.ia().kk();
        return (kk2 == null || dqVar.d()) ? ir() : kk2.o();
    }

    private static WifiManager wp() {
        if (er != null) {
            return er;
        }
        synchronized (i.class) {
            try {
                if (er != null) {
                    return er;
                }
                er = (WifiManager) wp.getContext().getApplicationContext().getSystemService("wifi");
                return er;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
