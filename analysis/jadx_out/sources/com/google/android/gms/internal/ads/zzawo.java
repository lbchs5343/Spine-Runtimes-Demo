package com.google.android.gms.internal.ads;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Build;
import g.cvq;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzawo {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f4553a = {"android:establish_vpn_service", "android:establish_vpn_manager"};

    /* renamed from: b, reason: collision with root package name */
    public boolean f4554b;

    /* renamed from: c, reason: collision with root package name */
    public long f4555c;

    /* renamed from: d, reason: collision with root package name */
    public long f4556d;

    /* renamed from: e, reason: collision with root package name */
    public long f4557e;

    public static zzawo zzd(Context context, Executor executor) {
        String[] strArr = f4553a;
        zzawo zzawoVar = new zzawo();
        zzawoVar.f4555c = 0L;
        zzawoVar.f4556d = 0L;
        zzawoVar.f4557e = -1L;
        zzawoVar.f4554b = false;
        if (Build.VERSION.SDK_INT >= 30) {
            try {
                ((AppOpsManager) context.getSystemService("appops")).startWatchingActive(strArr, executor, new cvq(zzawoVar));
            } catch (IllegalArgumentException | NoSuchMethodError unused) {
            }
        }
        return zzawoVar;
    }

    public final long zzb() {
        long j = this.f4557e;
        this.f4557e = -1L;
        return j;
    }

    public final long zzc() {
        if (this.f4554b) {
            return this.f4556d - this.f4555c;
        }
        return -1L;
    }

    public final void zzh() {
        if (this.f4554b) {
            this.f4556d = System.currentTimeMillis();
        }
    }
}
