package com.bytedance.sdk.openadsdk.core.op.dq;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Build;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public class ox {
    private static volatile ox dq;

    /* renamed from: d, reason: collision with root package name */
    private ConnectivityManager f3337d;
    private Network ox;
    private ConnectivityManager.NetworkCallback p;
    private boolean s;

    public interface dq {
        void dq(Network network);
    }

    private ox(Context context) {
        try {
            this.f3337d = (ConnectivityManager) context.getSystemService("connectivity");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static ox dq(Context context) {
        if (dq == null) {
            synchronized (ox.class) {
                try {
                    if (dq == null) {
                        dq = new ox(context);
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

    public synchronized void d() {
        ConnectivityManager connectivityManager = this.f3337d;
        if (connectivityManager == null) {
            return;
        }
        try {
            ConnectivityManager.NetworkCallback networkCallback = this.p;
            if (networkCallback == null) {
                return;
            }
            connectivityManager.unregisterNetworkCallback(networkCallback);
            this.p = null;
            this.ox = null;
        } catch (Exception unused) {
        }
    }

    public int dq() {
        Network activeNetwork;
        NetworkCapabilities networkCapabilities;
        try {
            ConnectivityManager connectivityManager = this.f3337d;
            NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                if (Build.VERSION.SDK_INT < 23) {
                    int type = activeNetworkInfo.getType();
                    return type == 1 ? dq(this.f3337d) ? 3 : 1 : type == 0 ? 2 : 5;
                }
                activeNetwork = this.f3337d.getActiveNetwork();
                if (activeNetwork == null || (networkCapabilities = this.f3337d.getNetworkCapabilities(activeNetwork)) == null) {
                    return 0;
                }
                boolean hasTransport = networkCapabilities.hasTransport(4);
                boolean hasTransport2 = networkCapabilities.hasTransport(0);
                boolean hasTransport3 = networkCapabilities.hasTransport(1);
                if (hasTransport) {
                    return 4;
                }
                if (dq(this.f3337d) && hasTransport3) {
                    return 3;
                }
                if (!hasTransport3) {
                    if (hasTransport2) {
                        return 2;
                    }
                }
            }
            return 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    public void dq(final dq dqVar) {
        NetworkInfo networkInfo;
        ConnectivityManager connectivityManager = this.f3337d;
        if (connectivityManager == null) {
            dqVar.dq(null);
            return;
        }
        Network network = this.ox;
        if (network != null && !this.s && (networkInfo = connectivityManager.getNetworkInfo(network)) != null && networkInfo.isAvailable()) {
            dqVar.dq(this.ox);
            return;
        }
        ConnectivityManager.NetworkCallback networkCallback = this.p;
        if (networkCallback != null) {
            try {
                this.f3337d.unregisterNetworkCallback(networkCallback);
            } catch (Exception unused) {
                this.p = null;
            }
        }
        NetworkRequest build = new NetworkRequest.Builder().addCapability(12).addTransportType(0).build();
        ConnectivityManager.NetworkCallback networkCallback2 = new ConnectivityManager.NetworkCallback() { // from class: com.bytedance.sdk.openadsdk.core.op.dq.ox.1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network2) {
                try {
                    ox.this.ox = network2;
                    dqVar.dq(network2);
                    ox.this.s = false;
                } catch (Exception unused2) {
                    ox.this.ox = null;
                    dqVar.dq(null);
                }
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network2) {
                ox.this.s = true;
            }
        };
        this.p = networkCallback2;
        try {
            this.f3337d.requestNetwork(build, networkCallback2);
        } catch (Exception unused2) {
            dqVar.dq(null);
        }
    }
}
