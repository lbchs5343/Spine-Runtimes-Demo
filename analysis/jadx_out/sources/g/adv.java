package g;

import com.google.android.gms.internal.ads.zzade;
import com.google.android.gms.internal.ads.zzado;
import com.google.android.gms.internal.ads.zzadq;
import com.google.android.gms.internal.ads.zzadr;
import com.google.android.gms.internal.ads.zzafk;

/* loaded from: classes3.dex */
public final class adv extends zzade {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzadq f10061b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzafk f10062c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public adv(zzafk zzafkVar, zzadq zzadqVar, zzadq zzadqVar2) {
        super(zzadqVar);
        this.f10061b = zzadqVar2;
        this.f10062c = zzafkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzade, com.google.android.gms.internal.ads.zzadq
    public final zzado zzg(long j) {
        zzado zzg = this.f10061b.zzg(j);
        zzadr zzadrVar = zzg.zza;
        long j2 = zzadrVar.zzc;
        zzafk zzafkVar = this.f10062c;
        zzadr zzadrVar2 = new zzadr(zzadrVar.zzb, j2 + zzafkVar.f4170a);
        zzadr zzadrVar3 = zzg.zzb;
        return new zzado(zzadrVar2, new zzadr(zzadrVar3.zzb, zzadrVar3.zzc + zzafkVar.f4170a));
    }
}
