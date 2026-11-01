package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public final class zzia {

    /* renamed from: f, reason: collision with root package name */
    public final long f8758f;
    public final long i;
    public long k = -9223372036854775807L;

    /* renamed from: c, reason: collision with root package name */
    public long f8755c = -9223372036854775807L;

    /* renamed from: g, reason: collision with root package name */
    public long f8759g = -9223372036854775807L;
    public long l = -9223372036854775807L;
    public float h = 1.0f;
    public long j = -9223372036854775807L;

    /* renamed from: e, reason: collision with root package name */
    public long f8757e = -9223372036854775807L;

    /* renamed from: a, reason: collision with root package name */
    public long f8753a = -9223372036854775807L;

    /* renamed from: b, reason: collision with root package name */
    public long f8754b = -9223372036854775807L;

    /* renamed from: d, reason: collision with root package name */
    public long f8756d = -9223372036854775807L;

    public /* synthetic */ zzia(long j, long j2) {
        this.f8758f = j;
        this.i = j2;
    }

    public final void m() {
        long j;
        long j2 = this.k;
        if (j2 != -9223372036854775807L) {
            j = this.f8755c;
            if (j == -9223372036854775807L) {
                long j3 = this.f8759g;
                if (j3 != -9223372036854775807L && j2 < j3) {
                    j2 = j3;
                }
                j = this.l;
                if (j == -9223372036854775807L || j2 <= j) {
                    j = j2;
                }
            }
        } else {
            j = -9223372036854775807L;
        }
        if (this.f8757e == j) {
            return;
        }
        this.f8757e = j;
        this.f8753a = j;
        this.f8754b = -9223372036854775807L;
        this.f8756d = -9223372036854775807L;
        this.j = -9223372036854775807L;
    }

    public final float zza(long j, long j2) {
        long j3;
        if (this.k == -9223372036854775807L) {
            return 1.0f;
        }
        long j4 = j - j2;
        long j5 = this.f8754b;
        if (j5 == -9223372036854775807L) {
            this.f8754b = j4;
            this.f8756d = 0L;
        } else {
            this.f8754b = Math.max(j4, (long) ((j4 * 9.999871E-4f) + (j5 * 0.999f)));
            this.f8756d = (long) ((Math.abs(j4 - r0) * 9.999871E-4f) + (this.f8756d * 0.999f));
        }
        if (this.j != -9223372036854775807L && SystemClock.elapsedRealtime() - this.j < 1000) {
            return this.h;
        }
        this.j = SystemClock.elapsedRealtime();
        long j6 = (this.f8756d * 3) + this.f8754b;
        if (this.f8753a > j6) {
            float zzs = zzen.zzs(1000L);
            long[] jArr = {j6, this.f8757e, this.f8753a - (((long) ((this.h - 1.0f) * zzs)) + ((long) (0.029999971f * zzs)))};
            j3 = jArr[0];
            for (int i = 1; i < 3; i++) {
                long j7 = jArr[i];
                if (j7 > j3) {
                    j3 = j7;
                }
            }
            this.f8753a = j3;
        } else {
            long max = Math.max(this.f8753a, Math.min(j - ((long) (Math.max(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.h - 1.0f) / 1.0E-7f)), j6));
            this.f8753a = max;
            long j8 = this.l;
            if (j8 == -9223372036854775807L || max <= j8) {
                j3 = max;
            } else {
                this.f8753a = j8;
                j3 = j8;
            }
        }
        long j9 = j - j3;
        if (Math.abs(j9) < this.f8758f) {
            this.h = 1.0f;
            return 1.0f;
        }
        float max2 = Math.max(0.97f, Math.min((j9 * 1.0E-7f) + 1.0f, 1.03f));
        this.h = max2;
        return max2;
    }

    public final long zzb() {
        return this.f8753a;
    }

    public final void zzc() {
        long j = this.f8753a;
        if (j == -9223372036854775807L) {
            return;
        }
        long j2 = j + this.i;
        this.f8753a = j2;
        long j3 = this.l;
        if (j3 != -9223372036854775807L && j2 > j3) {
            this.f8753a = j3;
        }
        this.j = -9223372036854775807L;
    }

    public final void zzd(zzaq zzaqVar) {
        long j = zzaqVar.zza;
        this.k = zzen.zzs(-9223372036854775807L);
        this.f8759g = zzen.zzs(-9223372036854775807L);
        this.l = zzen.zzs(-9223372036854775807L);
        m();
    }

    public final void zze(long j) {
        this.f8755c = j;
        m();
    }
}
