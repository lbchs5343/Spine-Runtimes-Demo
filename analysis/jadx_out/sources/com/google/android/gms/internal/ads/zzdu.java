package com.google.android.gms.internal.ads;

import g.tn;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzdu {

    /* renamed from: a, reason: collision with root package name */
    public int f6513a;

    /* renamed from: b, reason: collision with root package name */
    public long[] f6514b;

    public zzdu() {
        throw null;
    }

    public zzdu(int i) {
        this.f6514b = new long[i];
    }

    public final int zza() {
        return this.f6513a;
    }

    public final long zzb(int i) {
        if (i < 0 || i >= this.f6513a) {
            throw new IndexOutOfBoundsException(tn.t(i, this.f6513a, "Invalid index ", ", size is "));
        }
        return this.f6514b[i];
    }

    public final void zzc(long j) {
        int i = this.f6513a;
        long[] jArr = this.f6514b;
        if (i == jArr.length) {
            this.f6514b = Arrays.copyOf(jArr, i + i);
        }
        long[] jArr2 = this.f6514b;
        int i2 = this.f6513a;
        this.f6513a = i2 + 1;
        jArr2[i2] = j;
    }

    public final void zzd(long[] jArr) {
        int i = this.f6513a;
        int length = jArr.length;
        int i2 = i + length;
        long[] jArr2 = this.f6514b;
        int length2 = jArr2.length;
        if (i2 > length2) {
            this.f6514b = Arrays.copyOf(jArr2, Math.max(length2 + length2, i2));
        }
        System.arraycopy(jArr, 0, this.f6514b, this.f6513a, length);
        this.f6513a = i2;
    }
}
