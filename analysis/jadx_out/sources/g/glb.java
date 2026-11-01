package g;

import com.bykv.vk.component.ttvideo.player.C;
import com.google.android.gms.internal.ads.zzado;
import com.google.android.gms.internal.ads.zzadq;
import com.google.android.gms.internal.ads.zzadr;
import com.google.android.gms.internal.ads.zzen;
import java.math.RoundingMode;

/* loaded from: classes3.dex */
public final class glb implements zzadq {

    /* renamed from: a, reason: collision with root package name */
    public final long f18333a;

    /* renamed from: b, reason: collision with root package name */
    public final long f18334b;

    /* renamed from: c, reason: collision with root package name */
    public final gme f18335c;

    /* renamed from: d, reason: collision with root package name */
    public final int f18336d;

    /* renamed from: e, reason: collision with root package name */
    public final long f18337e;

    public glb(gme gmeVar, int i, long j, long j2) {
        this.f18335c = gmeVar;
        this.f18336d = i;
        this.f18337e = j;
        long j3 = (j2 - j) / gmeVar.f18390a;
        this.f18333a = j3;
        this.f18334b = f(j3);
    }

    public final long f(long j) {
        return zzen.zzu(j * this.f18336d, C.MICROS_PER_SECOND, this.f18335c.f18394e, RoundingMode.FLOOR);
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final long zza() {
        return this.f18334b;
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final zzado zzg(long j) {
        long j2 = this.f18336d;
        gme gmeVar = this.f18335c;
        long j3 = (gmeVar.f18394e * j) / (j2 * C.MICROS_PER_SECOND);
        long j4 = this.f18333a;
        long max = Math.max(0L, Math.min(j3, j4 - 1));
        long f2 = f(max);
        long j5 = this.f18337e;
        zzadr zzadrVar = new zzadr(f2, (gmeVar.f18390a * max) + j5);
        if (f2 >= j || max == j4 - 1) {
            return new zzado(zzadrVar, zzadrVar);
        }
        long j6 = max + 1;
        return new zzado(zzadrVar, new zzadr(f(j6), (j6 * gmeVar.f18390a) + j5));
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final boolean zzh() {
        return true;
    }
}
