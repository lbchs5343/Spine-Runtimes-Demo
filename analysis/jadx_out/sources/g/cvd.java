package g;

import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzcaj;
import com.google.android.gms.internal.ads.zzcvq;
import com.google.android.gms.internal.ads.zzcvr;
import com.google.android.gms.internal.ads.zzdfa;
import com.google.android.gms.internal.ads.zzdxr;
import com.google.android.gms.internal.ads.zzfin;
import com.google.android.gms.internal.ads.zzfix;
import com.google.android.gms.internal.ads.zzfjl;
import com.google.android.gms.internal.ads.zzfjr;
import com.google.android.gms.internal.ads.zzgei;
import com.google.android.gms.internal.ads.zzhfx;
import com.google.android.gms.internal.ads.zzhgg;
import com.google.android.gms.internal.ads.zzhgp;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class cvd implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f13571a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f13572b;

    /* renamed from: c, reason: collision with root package name */
    public final esl f13573c;

    /* renamed from: d, reason: collision with root package name */
    public final zzcvr f13574d;

    public cvd(zzhgg zzhggVar, esl eslVar, zzcvr zzcvrVar, zzhgg zzhggVar2) {
        this.f13572b = zzhggVar;
        this.f13573c = eslVar;
        this.f13574d = zzcvrVar;
        this.f13571a = zzhggVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        zzfjr zzfjrVar = (zzfjr) this.f13572b.zzb();
        atn atnVar = new atn(zzfin.zzc(), ((zzdxr) this.f13573c.f16090b).zzb());
        zzcvq zzb = this.f13574d.zzb();
        zzdfa zzdfaVar = (zzdfa) this.f13571a.zzb();
        zzfix zza = zzfjrVar.zzb(zzfjl.GENERATE_SIGNALS, zzb.zzc()).zzf(atnVar).zzi(((Integer) edt.f15376a.f15379d.zza(zzbcn.zzfx)).intValue(), TimeUnit.SECONDS).zza();
        zzgei.zzr(zza, new dcq(24, zzdfaVar), zzcaj.zza);
        return zza;
    }
}
