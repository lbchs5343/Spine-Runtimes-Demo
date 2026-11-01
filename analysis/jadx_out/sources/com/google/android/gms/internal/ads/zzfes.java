package com.google.android.gms.internal.ads;

import g.cvb;
import g.czz;
import g.edt;

/* loaded from: classes3.dex */
public final class zzfes {

    /* renamed from: b, reason: collision with root package name */
    public final cvb f7850b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f7851c = new Object();

    /* renamed from: a, reason: collision with root package name */
    public volatile int f7849a = 1;

    /* renamed from: d, reason: collision with root package name */
    public volatile long f7852d = 0;

    public zzfes(cvb cvbVar) {
        this.f7850b = cvbVar;
    }

    public final void e() {
        ((czz) this.f7850b).getClass();
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (this.f7851c) {
            try {
                if (this.f7849a == 3) {
                    if (this.f7852d + ((Long) edt.f15376a.f15379d.zza(zzbcn.zzfQ)).longValue() <= currentTimeMillis) {
                        this.f7849a = 1;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void f(int i, int i2) {
        e();
        Object obj = this.f7851c;
        ((czz) this.f7850b).getClass();
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (obj) {
            try {
                if (this.f7849a != i) {
                    return;
                }
                this.f7849a = i2;
                if (this.f7849a == 3) {
                    this.f7852d = currentTimeMillis;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zza() {
        f(2, 3);
    }

    public final void zzb(boolean z) {
        if (z) {
            f(1, 2);
        } else {
            f(2, 1);
        }
    }

    public final boolean zzc() {
        boolean z;
        synchronized (this.f7851c) {
            e();
            z = this.f7849a == 3;
        }
        return z;
    }

    public final boolean zzd() {
        boolean z;
        synchronized (this.f7851c) {
            e();
            z = this.f7849a == 2;
        }
        return z;
    }
}
