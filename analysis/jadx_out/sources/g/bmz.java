package g;

import com.google.android.gms.internal.ads.zzado;
import com.google.android.gms.internal.ads.zzadr;
import com.google.android.gms.internal.ads.zzdb;
import com.google.android.gms.internal.ads.zzen;

/* loaded from: classes3.dex */
public final class bmz implements deu {

    /* renamed from: a, reason: collision with root package name */
    public final int f11849a;

    /* renamed from: b, reason: collision with root package name */
    public final long f11850b;

    /* renamed from: c, reason: collision with root package name */
    public final long f11851c;

    /* renamed from: d, reason: collision with root package name */
    public final long f11852d;

    /* renamed from: e, reason: collision with root package name */
    public final int f11853e;

    /* renamed from: f, reason: collision with root package name */
    public final long f11854f;

    /* renamed from: g, reason: collision with root package name */
    public final long[] f11855g;

    public bmz(long j, int i, long j2, int i2, long j3, long[] jArr) {
        this.f11851c = j;
        this.f11853e = i;
        this.f11854f = j2;
        this.f11849a = i2;
        this.f11850b = j3;
        this.f11855g = jArr;
        this.f11852d = j3 != -1 ? j + j3 : -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final long zza() {
        return this.f11854f;
    }

    @Override // g.deu
    public final int zzc() {
        return this.f11849a;
    }

    @Override // g.deu
    public final long zzd() {
        return this.f11852d;
    }

    @Override // g.deu
    public final long zze(long j) {
        if (!zzh()) {
            return 0L;
        }
        long j2 = j - this.f11851c;
        if (j2 <= this.f11853e) {
            return 0L;
        }
        long[] jArr = this.f11855g;
        zzdb.zzb(jArr);
        double d2 = (j2 * 256.0d) / this.f11850b;
        int zzd = zzen.zzd(jArr, (long) d2, true, true);
        long j3 = this.f11854f;
        long j4 = (zzd * j3) / 100;
        long j5 = jArr[zzd];
        int i = zzd + 1;
        long j6 = (j3 * i) / 100;
        return Math.round((j5 == (zzd == 99 ? 256L : jArr[i]) ? 0.0d : (d2 - j5) / (r0 - j5)) * (j6 - j4)) + j4;
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final zzado zzg(long j) {
        double d2;
        double d3;
        boolean zzh = zzh();
        int i = this.f11853e;
        long j2 = this.f11851c;
        if (!zzh) {
            zzadr zzadrVar = new zzadr(0L, j2 + i);
            return new zzado(zzadrVar, zzadrVar);
        }
        long j3 = this.f11854f;
        long max = Math.max(0L, Math.min(j, j3));
        double d4 = (max * 100.0d) / j3;
        double d5 = 0.0d;
        if (d4 <= 0.0d) {
            d2 = 256.0d;
        } else if (d4 >= 100.0d) {
            d2 = 256.0d;
            d5 = 256.0d;
        } else {
            int i2 = (int) d4;
            long[] jArr = this.f11855g;
            zzdb.zzb(jArr);
            double d6 = jArr[i2];
            if (i2 == 99) {
                d2 = 256.0d;
                d3 = 256.0d;
            } else {
                d2 = 256.0d;
                d3 = jArr[i2 + 1];
            }
            d5 = ((d3 - d6) * (d4 - i2)) + d6;
        }
        long j4 = this.f11850b;
        zzadr zzadrVar2 = new zzadr(max, j2 + Math.max(i, Math.min(Math.round((d5 / d2) * j4), j4 - 1)));
        return new zzado(zzadrVar2, zzadrVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final boolean zzh() {
        return this.f11855g != null;
    }
}
