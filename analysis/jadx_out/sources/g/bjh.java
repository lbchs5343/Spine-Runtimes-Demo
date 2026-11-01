package g;

import com.bykv.vk.component.ttvideo.player.C;
import com.google.android.gms.internal.ads.zzado;
import com.google.android.gms.internal.ads.zzadq;
import com.google.android.gms.internal.ads.zzadr;
import java.math.BigInteger;

/* loaded from: classes3.dex */
public final class bjh implements zzadq {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ emj f11696a;

    @Override // com.google.android.gms.internal.ads.zzadq
    public final long zza() {
        emj emjVar = this.f11696a;
        dbh dbhVar = emjVar.h;
        return (emjVar.m * C.MICROS_PER_SECOND) / dbhVar.r;
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final zzado zzg(long j) {
        emj emjVar = this.f11696a;
        long j2 = (emjVar.h.r * j) / C.MICROS_PER_SECOND;
        long j3 = emjVar.l;
        BigInteger valueOf = BigInteger.valueOf(j2);
        zzadr zzadrVar = new zzadr(j, Math.max(j3, Math.min((valueOf.multiply(BigInteger.valueOf(r5 - j3)).divide(BigInteger.valueOf(emjVar.m)).longValue() + j3) - 30000, emjVar.f15798e - 1)));
        return new zzado(zzadrVar, zzadrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final boolean zzh() {
        return true;
    }
}
