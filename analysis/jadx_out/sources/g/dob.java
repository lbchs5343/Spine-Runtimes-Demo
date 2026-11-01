package g;

import android.util.Pair;
import com.google.android.gms.internal.ads.zzado;
import com.google.android.gms.internal.ads.zzadr;
import com.google.android.gms.internal.ads.zzen;

/* loaded from: classes3.dex */
public final class dob implements deu {

    /* renamed from: a, reason: collision with root package name */
    public final long[] f14505a;

    /* renamed from: b, reason: collision with root package name */
    public final long[] f14506b;

    /* renamed from: c, reason: collision with root package name */
    public final long f14507c;

    public dob(long[] jArr, long[] jArr2, long j) {
        this.f14505a = jArr;
        this.f14506b = jArr2;
        this.f14507c = j == -9223372036854775807L ? zzen.zzs(jArr2[jArr2.length - 1]) : j;
    }

    public static Pair d(long[] jArr, long[] jArr2, long j) {
        int zzd = zzen.zzd(jArr, j, true, true);
        long j2 = jArr[zzd];
        long j3 = jArr2[zzd];
        int i = zzd + 1;
        if (i == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        return Pair.create(Long.valueOf(j), Long.valueOf(((long) ((jArr[i] == j2 ? 0.0d : (j - j2) / (r6 - j2)) * (jArr2[i] - j3))) + j3));
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final long zza() {
        return this.f14507c;
    }

    @Override // g.deu
    public final int zzc() {
        return -2147483647;
    }

    @Override // g.deu
    public final long zzd() {
        return -1L;
    }

    @Override // g.deu
    public final long zze(long j) {
        return zzen.zzs(((Long) d(this.f14505a, this.f14506b, j).second).longValue());
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final zzado zzg(long j) {
        Pair d2 = d(this.f14506b, this.f14505a, zzen.zzv(Math.max(0L, Math.min(j, this.f14507c))));
        zzadr zzadrVar = new zzadr(zzen.zzs(((Long) d2.first).longValue()), ((Long) d2.second).longValue());
        return new zzado(zzadrVar, zzadrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final boolean zzh() {
        return true;
    }
}
