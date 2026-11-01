package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.os.Build;
import g.fzu;

/* loaded from: classes3.dex */
public final class zzavi {

    /* renamed from: a, reason: collision with root package name */
    public NetworkCapabilities f4525a;

    public static zzavi zzc(Context context) {
        if (context == null) {
            return null;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        zzavi zzaviVar = new zzavi();
        if (connectivityManager != null && Build.VERSION.SDK_INT >= 24) {
            try {
                connectivityManager.registerDefaultNetworkCallback(new fzu(1, zzaviVar));
                return zzaviVar;
            } catch (RuntimeException unused) {
                synchronized (zzavi.class) {
                    zzaviVar.f4525a = null;
                }
            }
        }
        return zzaviVar;
    }

    public final long zza() {
        synchronized (zzavi.class) {
            try {
                NetworkCapabilities networkCapabilities = this.f4525a;
                if (networkCapabilities != null) {
                    if (networkCapabilities.hasTransport(4)) {
                        return 2L;
                    }
                    if (this.f4525a.hasTransport(1)) {
                        return 1L;
                    }
                    if (this.f4525a.hasTransport(0)) {
                        return 0L;
                    }
                }
                return -1L;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final NetworkCapabilities zzb() {
        return this.f4525a;
    }
}
