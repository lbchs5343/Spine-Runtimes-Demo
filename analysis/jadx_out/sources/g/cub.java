package g;

import com.google.android.gms.internal.ads.zzbxc;
import com.google.android.gms.internal.ads.zzbxi;
import com.google.android.gms.internal.ads.zzfek;
import com.google.android.gms.internal.ads.zzfms;
import com.google.android.gms.internal.ads.zzgfa;

/* loaded from: classes3.dex */
public final class cub extends zzbxi {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfms f13517a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzgfa f13518b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbxc f13519c;

    public cub(zzfms zzfmsVar, zzgfa zzgfaVar, zzfek zzfekVar) {
        this.f13518b = zzgfaVar;
        this.f13519c = zzfekVar;
        this.f13517a = zzfmsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbxj
    public final void zze(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbxj
    public final void zzf(abz abzVar) {
        String bfiVar = abzVar.zzb().toString();
        zzfms zzfmsVar = this.f13517a;
        agd.b("Failed to load rewarded ad with error: " + bfiVar + ", adUnitId: " + zzfmsVar.f8017f.zza);
        new zp(zzfmsVar, this.f13518b).c(abzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbxj
    public final void zzg() {
        new zp(this.f13517a, this.f13518b).zzb(this.f13519c);
    }
}
