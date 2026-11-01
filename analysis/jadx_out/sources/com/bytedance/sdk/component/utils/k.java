package com.bytedance.sdk.component.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class k {
    private static final Object dq = new Object();

    /* renamed from: d, reason: collision with root package name */
    private static final Map<dq, Object> f2192d = new ConcurrentHashMap();
    private static AtomicBoolean ox = new AtomicBoolean(false);
    private static volatile int p = -1;
    private static volatile long s = 0;
    private static volatile int iw = 60000;
    private static jy mn = null;
    private static final AtomicBoolean ia = new AtomicBoolean(false);

    public static class d extends BroadcastReceiver {
        private d() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean z = false;
            boolean booleanExtra = intent.getBooleanExtra("noConnectivity", false);
            if (k.f2192d != null && k.f2192d.size() > 0) {
                z = true;
            }
            k.d(context, intent, z, booleanExtra);
        }
    }

    public interface dq {
        void dq(Context context, Intent intent, boolean z, int i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int d(Context context) {
        p = ox(context);
        s = SystemClock.elapsedRealtime();
        return p;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Context context, Intent intent, int i, boolean z) {
        Map<dq, Object> map = f2192d;
        if (map == null || map.size() <= 0) {
            return;
        }
        for (dq dqVar : map.keySet()) {
            if (dqVar != null) {
                dqVar.dq(context, intent, !z, i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(final Context context, final Intent intent, final boolean z, final boolean z2) {
        if (!z && z2) {
            p = 0;
        } else if (ia.compareAndSet(false, true)) {
            com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("getNetworkType") { // from class: com.bytedance.sdk.component.utils.k.1
                @Override // java.lang.Runnable
                public void run() {
                    int unused = k.p = z2 ? 0 : k.d(context);
                    k.ia.set(false);
                    if (z) {
                        k.d(context, intent, k.p, z2);
                    }
                }
            });
        }
    }

    public static int dq(Context context, long j) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (s + j > elapsedRealtime && p != -1) {
            if (elapsedRealtime - s >= iw) {
                d(context, (Intent) null, false, false);
            }
            return p;
        }
        return d(context);
    }

    public static void dq(jy jyVar) {
        mn = jyVar;
    }

    public static void dq(dq dqVar) {
        if (dqVar == null) {
            return;
        }
        f2192d.remove(dqVar);
    }

    public static void dq(dq dqVar, Context context) {
        if (dqVar == null) {
            return;
        }
        if (!ox.get()) {
            try {
                context.registerReceiver(new d(), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                ox.set(true);
            } catch (Throwable unused) {
            }
        }
        f2192d.put(dqVar, dq);
    }

    private static int ox(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    return type != 1 ? 1 : 4;
                }
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                switch (activeNetworkInfo.getSubtype()) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                    case 16:
                        return 2;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                    case 17:
                        return 3;
                    case 13:
                    case 18:
                    case 19:
                        jy jyVar = mn;
                        return (jyVar == null || !jyVar.dq(context, telephonyManager)) ? 5 : 6;
                    case 20:
                        return 6;
                    default:
                        String subtypeName = activeNetworkInfo.getSubtypeName();
                        return (TextUtils.isEmpty(subtypeName) || !(subtypeName.equalsIgnoreCase("TD-SCDMA") || subtypeName.equalsIgnoreCase("WCDMA") || subtypeName.equalsIgnoreCase("CDMA2000"))) ? 1 : 3;
                }
            }
            return 0;
        } catch (Throwable unused) {
            return 1;
        }
    }
}
