package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzecl {

    /* renamed from: d, reason: collision with root package name */
    public long f6810d = 0;

    /* renamed from: g, reason: collision with root package name */
    public int f6813g = 0;
    public long i = 0;

    /* renamed from: b, reason: collision with root package name */
    public long f6808b = 0;

    /* renamed from: c, reason: collision with root package name */
    public long f6809c = 0;

    /* renamed from: e, reason: collision with root package name */
    public final Object f6811e = new Object();
    public final Object j = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final Object f6807a = new Object();

    /* renamed from: f, reason: collision with root package name */
    public final Object f6812f = new Object();
    public final Object h = new Object();

    public final int zza() {
        int i;
        synchronized (this.j) {
            i = this.f6813g;
        }
        return i;
    }

    public final synchronized long zzb() {
        long j;
        synchronized (this.h) {
            j = this.f6809c;
        }
        return j;
    }

    public final synchronized long zzc() {
        long j;
        synchronized (this.f6812f) {
            j = this.f6808b;
        }
        return j;
    }

    public final synchronized long zzd() {
        long j;
        synchronized (this.f6811e) {
            j = this.f6810d;
        }
        return j;
    }

    public final long zze() {
        long j;
        synchronized (this.f6807a) {
            j = this.i;
        }
        return j;
    }

    public final synchronized void zzf(long j) {
        synchronized (this.h) {
            this.f6809c = j;
        }
    }

    public final synchronized void zzg(long j) {
        synchronized (this.f6812f) {
            this.f6808b = j;
        }
    }

    public final synchronized void zzh(long j) {
        synchronized (this.f6811e) {
            this.f6810d = j;
        }
    }

    public final void zzi(int i) {
        synchronized (this.j) {
            this.f6813g = i;
        }
    }

    public final void zzj(long j) {
        synchronized (this.f6807a) {
            this.i = j;
        }
    }
}
