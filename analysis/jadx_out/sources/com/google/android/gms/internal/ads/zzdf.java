package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzdf {

    /* renamed from: a, reason: collision with root package name */
    public boolean f5909a;

    public zzdf() {
        throw null;
    }

    public zzdf(zzdc zzdcVar) {
    }

    public final synchronized void zza() throws InterruptedException {
        while (!this.f5909a) {
            wait();
        }
    }

    public final synchronized void zzb() {
        boolean z = false;
        while (!this.f5909a) {
            try {
                wait();
            } catch (InterruptedException unused) {
                z = true;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public final synchronized boolean zzc() {
        boolean z;
        z = this.f5909a;
        this.f5909a = false;
        return z;
    }

    public final synchronized boolean zzd() {
        return this.f5909a;
    }

    public final synchronized boolean zze() {
        if (this.f5909a) {
            return false;
        }
        this.f5909a = true;
        notifyAll();
        return true;
    }
}
