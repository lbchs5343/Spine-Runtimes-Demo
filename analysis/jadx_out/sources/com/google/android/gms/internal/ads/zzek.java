package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.C;

/* loaded from: classes3.dex */
public final class zzek {

    /* renamed from: a, reason: collision with root package name */
    public final ThreadLocal f7150a = new ThreadLocal();

    /* renamed from: b, reason: collision with root package name */
    public long f7151b;

    /* renamed from: c, reason: collision with root package name */
    public long f7152c;

    /* renamed from: d, reason: collision with root package name */
    public long f7153d;

    public zzek(long j) {
        zzi(0L);
    }

    public static long zzg(long j) {
        return (j * C.MICROS_PER_SECOND) / 90000;
    }

    public static long zzh(long j) {
        return (j * 90000) / C.MICROS_PER_SECOND;
    }

    public final synchronized long zza(long j) {
        try {
            if (!zzj()) {
                long j2 = this.f7151b;
                if (j2 == 9223372036854775806L) {
                    Long l = (Long) this.f7150a.get();
                    if (l == null) {
                        throw null;
                    }
                    j2 = l.longValue();
                }
                this.f7152c = j2 - j;
                notifyAll();
            }
            this.f7153d = j;
        } catch (Throwable th) {
            throw th;
        }
        return j + this.f7152c;
    }

    public final synchronized long zzb(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        try {
            long j2 = this.f7153d;
            if (j2 != -9223372036854775807L) {
                long zzh = zzh(j2);
                long j3 = (4294967296L + zzh) / 8589934592L;
                long j4 = (((-1) + j3) * 8589934592L) + j;
                long j5 = (j3 * 8589934592L) + j;
                j = Math.abs(j4 - zzh) < Math.abs(j5 - zzh) ? j4 : j5;
            }
            return zza(zzg(j));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized long zzc(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long j2 = this.f7153d;
        if (j2 != -9223372036854775807L) {
            long zzh = zzh(j2);
            long j3 = zzh / 8589934592L;
            Long.signum(j3);
            long j4 = (j3 * 8589934592L) + j;
            j = j4 >= zzh ? j4 : ((j3 + 1) * 8589934592L) + j;
        }
        return zza(zzg(j));
    }

    public final synchronized long zzd() {
        long j = this.f7151b;
        if (j == Long.MAX_VALUE || j == 9223372036854775806L) {
            return -9223372036854775807L;
        }
        return j;
    }

    public final synchronized long zze() {
        long j;
        try {
            j = this.f7153d;
        } catch (Throwable th) {
            throw th;
        }
        return j != -9223372036854775807L ? j + this.f7152c : zzd();
    }

    public final synchronized long zzf() {
        return this.f7152c;
    }

    public final synchronized void zzi(long j) {
        this.f7151b = j;
        this.f7152c = j == Long.MAX_VALUE ? 0L : -9223372036854775807L;
        this.f7153d = -9223372036854775807L;
    }

    public final synchronized boolean zzj() {
        return this.f7152c != -9223372036854775807L;
    }
}
