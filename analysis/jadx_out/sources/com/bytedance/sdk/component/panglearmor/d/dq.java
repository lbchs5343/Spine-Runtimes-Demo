package com.bytedance.sdk.component.panglearmor.d;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.bytedance.sdk.component.panglearmor.iw;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.LinkedList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {
    private static volatile dq dq;

    /* renamed from: d, reason: collision with root package name */
    private volatile int f2169d;
    private ConnectivityManager ox;
    private volatile int p = -1;
    private TelephonyManager s;

    public dq() {
        this.ox = null;
        this.s = null;
        Context p = iw.p();
        if (p != null) {
            this.ox = (ConnectivityManager) p.getSystemService("connectivity");
            this.s = (TelephonyManager) p.getSystemService("phone");
        }
        dq((int) (((s.dq().ox() / 1000) / 60) / 60));
    }

    public static dq dq() {
        if (dq == null) {
            synchronized (dq.class) {
                try {
                    if (dq == null) {
                        dq = new dq();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    private static boolean dq(ConnectivityManager connectivityManager) {
        try {
            Method declaredMethod = ConnectivityManager.class.getDeclaredMethod("getMobileDataEnabled", null);
            declaredMethod.setAccessible(true);
            return ((Boolean) declaredMethod.invoke(connectivityManager, null)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    private int iw() {
        Network activeNetwork;
        NetworkCapabilities networkCapabilities;
        try {
            ConnectivityManager connectivityManager = this.ox;
            NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                if (Build.VERSION.SDK_INT < 23) {
                    int type = activeNetworkInfo.getType();
                    if (type == 1) {
                        return dq(this.ox) ? 3 : 1;
                    }
                    if (type != 0) {
                        return 0;
                    }
                }
                activeNetwork = this.ox.getActiveNetwork();
                if (activeNetwork == null || (networkCapabilities = this.ox.getNetworkCapabilities(activeNetwork)) == null) {
                    return 0;
                }
                boolean hasTransport = networkCapabilities.hasTransport(0);
                boolean hasTransport2 = networkCapabilities.hasTransport(1);
                if (dq(this.ox) && hasTransport2) {
                    return 3;
                }
                if (!hasTransport2) {
                    return hasTransport ? 2 : 0;
                }
            }
            return 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    public int[] d() {
        int[] iArr = new int[this.f2169d];
        LinkedList<JSONObject> dq2 = d.dq().dq("sp_net");
        if (dq2 != null && dq2.size() > 0) {
            int optLong = (int) (((dq2.getLast().optLong("t", 0L) / 1000) / 60) / 60);
            Iterator<JSONObject> it = dq2.iterator();
            while (it.hasNext()) {
                JSONObject next = it.next();
                long optLong2 = next.optLong("t", 0L);
                int optInt = next.optInt("val", 0);
                int i = optLong - ((int) (((optLong2 / 1000) / 60) / 60));
                if (i >= 0 && i < this.f2169d) {
                    iArr[i] = optInt;
                }
            }
        }
        return iArr;
    }

    public void dq(int i) {
        if (i <= 0) {
            this.f2169d = 1;
        } else if (i > 168) {
            this.f2169d = 168;
        } else {
            this.f2169d = i;
        }
    }

    public int[] ox() {
        int[] iArr = new int[this.f2169d];
        LinkedList<JSONObject> dq2 = d.dq().dq("sp_screen");
        if (dq2 != null && dq2.size() > 0) {
            int currentTimeMillis = (int) (((System.currentTimeMillis() / 1000) / 60) / 60);
            Iterator<JSONObject> it = dq2.iterator();
            while (it.hasNext()) {
                JSONObject next = it.next();
                long optLong = next.optLong("t", 0L);
                int optInt = next.optInt("val", 0);
                int i = currentTimeMillis - ((int) (((optLong / 1000) / 60) / 60));
                if (i >= 0 && i < this.f2169d) {
                    iArr[i] = optInt;
                }
            }
        }
        return iArr;
    }

    public int p() {
        this.p = iw();
        return this.p;
    }

    public int s() {
        TelephonyManager telephonyManager = this.s;
        if (telephonyManager != null) {
            return telephonyManager.getSimState();
        }
        return -1;
    }
}
