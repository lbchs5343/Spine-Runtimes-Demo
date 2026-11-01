package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzej {

    /* renamed from: a, reason: collision with root package name */
    public int f7092a;

    /* renamed from: b, reason: collision with root package name */
    public long[] f7093b;

    /* renamed from: c, reason: collision with root package name */
    public Object[] f7094c;

    /* renamed from: d, reason: collision with root package name */
    public int f7095d;

    public zzej() {
        throw null;
    }

    public zzej(int i) {
        this.f7093b = new long[10];
        this.f7094c = new Object[10];
    }

    public final Object e() {
        zzdb.zzf(this.f7092a > 0);
        Object[] objArr = this.f7094c;
        int i = this.f7095d;
        Object obj = objArr[i];
        objArr[i] = null;
        this.f7095d = (i + 1) % objArr.length;
        this.f7092a--;
        return obj;
    }

    public final synchronized int zza() {
        return this.f7092a;
    }

    public final synchronized Object zzb() {
        if (this.f7092a == 0) {
            return null;
        }
        return e();
    }

    public final synchronized Object zzc(long j) {
        Object obj;
        obj = null;
        while (this.f7092a > 0 && j - this.f7093b[this.f7095d] >= 0) {
            obj = e();
        }
        return obj;
    }

    public final synchronized void zzd(long j, Object obj) {
        try {
            if (this.f7092a > 0) {
                if (j <= this.f7093b[((this.f7095d + r0) - 1) % this.f7094c.length]) {
                    zze();
                }
            }
            int length = this.f7094c.length;
            if (this.f7092a >= length) {
                int i = length + length;
                long[] jArr = new long[i];
                Object[] objArr = new Object[i];
                int i2 = this.f7095d;
                int i3 = length - i2;
                System.arraycopy(this.f7093b, i2, jArr, 0, i3);
                System.arraycopy(this.f7094c, this.f7095d, objArr, 0, i3);
                int i4 = this.f7095d;
                if (i4 > 0) {
                    System.arraycopy(this.f7093b, 0, jArr, i3, i4);
                    System.arraycopy(this.f7094c, 0, objArr, i3, this.f7095d);
                }
                this.f7093b = jArr;
                this.f7094c = objArr;
                this.f7095d = 0;
            }
            int i5 = this.f7095d;
            int i6 = this.f7092a;
            Object[] objArr2 = this.f7094c;
            int length2 = (i5 + i6) % objArr2.length;
            this.f7093b[length2] = j;
            objArr2[length2] = obj;
            this.f7092a = i6 + 1;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zze() {
        this.f7095d = 0;
        this.f7092a = 0;
        Arrays.fill(this.f7094c, (Object) null);
    }
}
