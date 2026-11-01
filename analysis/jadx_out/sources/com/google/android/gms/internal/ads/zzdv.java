package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public final class zzdv {

    /* renamed from: a, reason: collision with root package name */
    public final int f6554a;

    /* renamed from: b, reason: collision with root package name */
    public int f6555b;

    /* renamed from: c, reason: collision with root package name */
    public int f6556c;

    /* renamed from: d, reason: collision with root package name */
    public final long[] f6557d;

    public zzdv() {
        throw null;
    }

    public zzdv(int i) {
        int i2 = 16;
        if (Integer.bitCount(16) != 1) {
            int highestOneBit = Integer.highestOneBit(15);
            i2 = highestOneBit + highestOneBit;
        }
        this.f6555b = 0;
        this.f6556c = 0;
        this.f6557d = new long[i2];
        this.f6554a = r3.length - 1;
    }

    public final long zza() {
        if (this.f6556c != 0) {
            return this.f6557d[this.f6555b];
        }
        throw new NoSuchElementException();
    }

    public final long zzb() {
        int i = this.f6556c;
        if (i == 0) {
            throw new NoSuchElementException();
        }
        int i2 = this.f6555b;
        long j = this.f6557d[i2];
        this.f6555b = (i2 + 1) & this.f6554a;
        this.f6556c = i - 1;
        return j;
    }

    public final void zzc() {
        this.f6555b = 0;
        this.f6556c = 0;
    }

    public final boolean zzd() {
        return this.f6556c == 0;
    }
}
