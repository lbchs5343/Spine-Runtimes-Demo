package g;

import com.google.android.gms.internal.ads.zzflu;
import com.google.android.gms.internal.ads.zzfmo;
import com.google.android.gms.internal.ads.zzgfa;

/* loaded from: classes3.dex */
public final class zp extends zzflu {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzfmo f20405b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zp(zzfmo zzfmoVar, zzgfa zzgfaVar) {
        super(zzgfaVar);
        this.f20405b = zzfmoVar;
    }

    public final void c(abz abzVar) {
        zzfmo zzfmoVar = this.f20405b;
        zzfmoVar.l.set(false);
        int i = abzVar.zza;
        if (i != 1 && i != 8 && i != 10 && i != 11) {
            zzfmo.o(zzfmoVar, true);
            return;
        }
        ghd ghdVar = zzfmoVar.f8017f;
        agd.k("Preloading " + ghdVar.zzb + ", for adUnitId:" + ghdVar.zza + ", Ad load failed. Stop preloading due to non-retriable error:");
        zzfmoVar.h.set(false);
    }
}
