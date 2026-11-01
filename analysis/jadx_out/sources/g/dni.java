package g;

import com.google.android.gms.internal.ads.zzado;
import com.google.android.gms.internal.ads.zzadr;
import com.google.android.gms.internal.ads.zzen;

/* loaded from: classes3.dex */
public final class dni implements deu {

    /* renamed from: a, reason: collision with root package name */
    public final long f14460a;

    /* renamed from: b, reason: collision with root package name */
    public final int f14461b;

    /* renamed from: c, reason: collision with root package name */
    public final long[] f14462c;

    /* renamed from: d, reason: collision with root package name */
    public final long[] f14463d;

    /* renamed from: e, reason: collision with root package name */
    public final long f14464e;

    public dni(long[] jArr, long[] jArr2, long j, long j2, int i) {
        this.f14462c = jArr;
        this.f14463d = jArr2;
        this.f14464e = j;
        this.f14460a = j2;
        this.f14461b = i;
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final long zza() {
        return this.f14464e;
    }

    @Override // g.deu
    public final int zzc() {
        return this.f14461b;
    }

    @Override // g.deu
    public final long zzd() {
        return this.f14460a;
    }

    @Override // g.deu
    public final long zze(long j) {
        return this.f14462c[zzen.zzd(this.f14463d, j, true, true)];
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final zzado zzg(long j) {
        long[] jArr = this.f14462c;
        int zzd = zzen.zzd(jArr, j, true, true);
        long j2 = jArr[zzd];
        long[] jArr2 = this.f14463d;
        zzadr zzadrVar = new zzadr(j2, jArr2[zzd]);
        if (zzadrVar.zzb >= j || zzd == jArr.length - 1) {
            return new zzado(zzadrVar, zzadrVar);
        }
        int i = zzd + 1;
        return new zzado(zzadrVar, new zzadr(jArr[i], jArr2[i]));
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final boolean zzh() {
        return true;
    }
}
