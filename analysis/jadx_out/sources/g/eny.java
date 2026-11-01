package g;

import com.google.android.gms.internal.ads.zzena;
import com.google.android.gms.internal.ads.zzflz;
import com.google.android.gms.internal.ads.zzgfa;

/* loaded from: classes3.dex */
public final class eny extends grh {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzflz f15876a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzgfa f15877b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzena f15878c;

    public eny(zzflz zzflzVar, zzgfa zzgfaVar, zzena zzenaVar) {
        this.f15877b = zzgfaVar;
        this.f15878c = zzenaVar;
        this.f15876a = zzflzVar;
    }

    @Override // g.gpa
    public final void zzb(abz abzVar) {
        String bfiVar = abzVar.zzb().toString();
        zzflz zzflzVar = this.f15876a;
        agd.b("Failed to load interstitial ad with error: " + bfiVar + " for ad unit: " + zzflzVar.f8017f.zza);
        new zp(zzflzVar, this.f15877b).c(abzVar);
    }

    @Override // g.gpa
    public final void zzc() {
        new zp(this.f15876a, this.f15877b).zzb(this.f15878c);
    }
}
