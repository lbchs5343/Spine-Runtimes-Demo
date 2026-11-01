package g;

import com.google.android.gms.internal.ads.zzacs;
import com.google.android.gms.internal.ads.zzacv;
import com.google.android.gms.internal.ads.zzadq;
import com.google.android.gms.internal.ads.zzdb;
import java.io.EOFException;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class emj implements arm {

    /* renamed from: a, reason: collision with root package name */
    public long f15795a;

    /* renamed from: b, reason: collision with root package name */
    public long f15796b;

    /* renamed from: d, reason: collision with root package name */
    public long f15797d;

    /* renamed from: e, reason: collision with root package name */
    public final long f15798e;

    /* renamed from: f, reason: collision with root package name */
    public long f15799f;

    /* renamed from: g, reason: collision with root package name */
    public long f15800g;
    public final dbh h;
    public int i;
    public final cxs j;
    public long k;
    public final long l;
    public long m;

    public emj(dbh dbhVar, long j, long j2, long j3, long j4, boolean z) {
        zzdb.zzd(j >= 0 && j2 > j);
        this.h = dbhVar;
        this.l = j;
        this.f15798e = j2;
        if (j3 == j2 - j || z) {
            this.m = j4;
            this.i = 4;
        } else {
            this.i = 0;
        }
        this.j = new cxs();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00bc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00bd  */
    @Override // g.arm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long c(zzacs zzacsVar) {
        long j;
        long j2;
        long j3;
        long max;
        long j4;
        int i = this.i;
        long j5 = this.f15798e;
        cxs cxsVar = this.j;
        if (i == 0) {
            j = 0;
            long zzf = zzacsVar.zzf();
            this.f15796b = zzf;
            this.i = 1;
            long j6 = (-65307) + j5;
            if (j6 > zzf) {
                return j6;
            }
        } else if (i != 1) {
            if (i == 2) {
                long j7 = this.k;
                long j8 = this.f15797d;
                if (j7 == j8) {
                    max = -1;
                    j3 = -1;
                } else {
                    long zzf2 = zzacsVar.zzf();
                    if (cxsVar.i(zzacsVar, j8)) {
                        cxsVar.h(zzacsVar, false);
                        zzacsVar.zzj();
                        long j9 = this.f15795a;
                        long j10 = cxsVar.f13709e;
                        long j11 = j9 - j10;
                        j2 = 2;
                        int i2 = cxsVar.f13705a + cxsVar.f13706b;
                        if (j11 < 0 || j11 >= 72000) {
                            if (j11 < 0) {
                                this.f15797d = zzf2;
                                this.f15799f = j10;
                            } else {
                                this.k = zzacsVar.zzf() + i2;
                                this.f15800g = j10;
                            }
                            long j12 = this.f15797d;
                            long j13 = this.k;
                            long j14 = j12 - j13;
                            if (j14 < 100000) {
                                this.f15797d = j13;
                                j3 = -1;
                                max = j13;
                            } else {
                                j3 = -1;
                                max = Math.max(j13, Math.min(((j11 * j14) / (this.f15799f - this.f15800g)) + (zzacsVar.zzf() - (i2 * (j11 <= 0 ? 2L : 1L))), j12 - 1));
                            }
                        } else {
                            max = -1;
                            j3 = -1;
                        }
                        if (max == j3) {
                            return max;
                        }
                        this.i = 3;
                        j4 = j3;
                    } else {
                        max = this.k;
                        if (max == zzf2) {
                            throw new IOException("No ogg page can be found.");
                        }
                        j3 = -1;
                    }
                }
                j2 = 2;
                if (max == j3) {
                }
            } else {
                if (i != 3) {
                    return -1L;
                }
                j4 = -1;
                j2 = 2;
            }
            while (true) {
                cxsVar.i(zzacsVar, j4);
                cxsVar.h(zzacsVar, false);
                if (cxsVar.f13709e > this.f15795a) {
                    zzacsVar.zzj();
                    this.i = 4;
                    return -(this.f15800g + j2);
                }
                zzacsVar.zzk(cxsVar.f13705a + cxsVar.f13706b);
                this.k = zzacsVar.zzf();
                this.f15800g = cxsVar.f13709e;
                j4 = -1;
            }
        } else {
            j = 0;
        }
        cxsVar.f13707c = 0;
        cxsVar.f13709e = j;
        cxsVar.f13710f = 0;
        cxsVar.f13705a = 0;
        cxsVar.f13706b = 0;
        if (!cxsVar.i(zzacsVar, -1L)) {
            throw new EOFException();
        }
        cxsVar.h(zzacsVar, false);
        zzacsVar.zzk(cxsVar.f13705a + cxsVar.f13706b);
        long j15 = cxsVar.f13709e;
        while ((cxsVar.f13707c & 4) != 4 && cxsVar.i(zzacsVar, -1L) && zzacsVar.zzf() < j5 && cxsVar.h(zzacsVar, true) && zzacv.zze(zzacsVar, cxsVar.f13705a + cxsVar.f13706b)) {
            j15 = cxsVar.f13709e;
        }
        this.m = j15;
        this.i = 4;
        return this.f15796b;
    }

    @Override // g.arm
    public final /* bridge */ /* synthetic */ zzadq zze() {
        if (this.m != 0) {
            return new bjh(this);
        }
        return null;
    }

    @Override // g.arm
    public final void zzg(long j) {
        this.f15795a = Math.max(0L, Math.min(j, this.m - 1));
        this.i = 2;
        this.k = this.l;
        this.f15797d = this.f15798e;
        this.f15800g = 0L;
        this.f15799f = this.m;
    }
}
