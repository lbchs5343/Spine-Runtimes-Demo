package com.bytedance.msdk.ia;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.bytedance.sdk.openadsdk.ats.AutoService;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class e {
    private static final AtomicInteger dq = new AtomicInteger(0);

    public static int bl() {
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        if (dqVar != null) {
            return dqVar.h();
        }
        return 1;
    }

    private static boolean c() {
        return com.bytedance.msdk.core.d.no().bl().ox() && p(com.bytedance.msdk.core.dq.getContext());
    }

    public static String cd() {
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        return dqVar != null ? dqVar.ig() : "";
    }

    public static String d() {
        com.bytedance.sdk.component.p.d dVar = (com.bytedance.sdk.component.p.d) AutoService.dq(com.bytedance.sdk.component.p.d.class);
        return dVar != null ? dVar.d() : "";
    }

    private static String d(int i) {
        return i != 0 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? i != 6 ? "mobile" : "5g" : "4g" : "wifi" : "3g" : "2g" : MediationConfigUserInfoForSegment.GENDER_UNKNOWN;
    }

    public static boolean d(Context context) {
        return com.bytedance.sdk.component.utils.q.ox(context) == 3;
    }

    private static int dq(int i) {
        if (i == 0) {
            return 0;
        }
        int i2 = 2;
        if (i != 2) {
            i2 = 3;
            if (i != 3) {
                if (i == 4) {
                    return 1;
                }
                if (i == 5) {
                    return 4;
                }
                if (i != 6) {
                    return i;
                }
                return 5;
            }
        }
        return i2;
    }

    public static String dq() {
        com.bytedance.sdk.component.p.d dVar = (com.bytedance.sdk.component.p.d) AutoService.dq(com.bytedance.sdk.component.p.d.class);
        return dVar != null ? dVar.dq() : "";
    }

    public static boolean dq(Context context) {
        NetworkInfo[] allNetworkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null && (allNetworkInfo = connectivityManager.getAllNetworkInfo()) != null) {
                for (NetworkInfo networkInfo : allNetworkInfo) {
                    if (networkInfo.getState() == NetworkInfo.State.CONNECTED || networkInfo.getState() == NetworkInfo.State.CONNECTING) {
                        return true;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static String e() {
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        return dqVar != null ? dqVar.k() : "";
    }

    public static String f() {
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        return dqVar != null ? dqVar.q() : "";
    }

    public static String fw() {
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        return dqVar != null ? dqVar.jy() : "";
    }

    public static String gh() {
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        return dqVar != null ? dqVar.f() : "";
    }

    public static String h() {
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        return dqVar != null ? dqVar.e() : "";
    }

    public static String i() {
        AtomicInteger atomicInteger = dq;
        if (atomicInteger.intValue() > 5) {
            return null;
        }
        atomicInteger.incrementAndGet();
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        if (dqVar != null) {
            return dqVar.cd();
        }
        return null;
    }

    public static String ia() {
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        return dqVar != null ? dqVar.s() : "";
    }

    public static String ig() {
        com.bytedance.sdk.component.p.dq dqVar;
        return (c() && (dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class)) != null) ? dqVar.kk() : "";
    }

    public static int ir() {
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        if (dqVar != null) {
            return dqVar.n();
        }
        return 0;
    }

    public static String iw() {
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        int i = 0;
        if (com.bytedance.msdk.core.d.no().bl().ox() && dqVar != null) {
            i = dqVar.ox();
        }
        return d(i);
    }

    public static String ji() {
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        return dqVar != null ? dqVar.kx() : "";
    }

    public static String jy() {
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        return dqVar != null ? dqVar.mp() : "";
    }

    public static String k() {
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        return dqVar != null ? dqVar.r() : "";
    }

    public static String kk() {
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        return dqVar != null ? dqVar.iw() : "";
    }

    public static String kx() {
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        return dqVar != null ? dqVar.le() : "";
    }

    public static String le() {
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        return dqVar != null ? dqVar.gh() : "";
    }

    public static String mn() {
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        return dqVar != null ? dqVar.p() : "";
    }

    public static int mp() {
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        if (dqVar != null) {
            return dqVar.o();
        }
        return 0;
    }

    public static String n() {
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        return dqVar != null ? dqVar.ji() : "";
    }

    public static String no() {
        com.bytedance.sdk.component.p.dq dqVar;
        return (c() && (dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class)) != null) ? dqVar.ia() : "";
    }

    public static String o() {
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        return dqVar != null ? dqVar.mn() : "";
    }

    public static String op() {
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        return dqVar != null ? dqVar.bl() : "";
    }

    public static String ox() {
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        return dqVar != null ? dqVar.wp() : "";
    }

    public static boolean ox(Context context) {
        return com.bytedance.sdk.component.utils.q.ox(context) == 2;
    }

    public static String p() {
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        return dqVar != null ? dqVar.dq() : "";
    }

    private static boolean p(Context context) {
        return com.bytedance.msdk.core.q.ox.dq(context, "android.permission.READ_PHONE_STATE") == 0;
    }

    public static String q() {
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        return dqVar != null ? dqVar.no() : "";
    }

    public static String r() {
        com.bytedance.sdk.component.p.dq dqVar;
        return (c() && (dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class)) != null) ? dqVar.fw() : "";
    }

    public static int s() {
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        int i = 0;
        if (com.bytedance.msdk.core.d.no().bl().ox() && dqVar != null) {
            i = dqVar.ox();
        }
        return dq(i);
    }

    public static String u() {
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        return dqVar != null ? dqVar.op() : "";
    }

    public static String wp() {
        com.bytedance.sdk.component.p.dq dqVar = (com.bytedance.sdk.component.p.dq) AutoService.dq(com.bytedance.sdk.component.p.dq.class);
        return dqVar != null ? dqVar.i() : "";
    }
}
