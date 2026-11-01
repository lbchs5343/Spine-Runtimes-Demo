package g;

import com.google.android.gms.internal.ads.zzbaf;
import com.google.android.gms.internal.ads.zzbah;
import com.google.android.gms.internal.ads.zzflw;
import com.google.android.gms.internal.ads.zzgfa;

/* loaded from: classes3.dex */
public final class czs extends zzbah {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzflw f13815a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzgfa f13816b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ghd f13817c;

    public czs(zzflw zzflwVar, zzgfa zzgfaVar, ghd ghdVar) {
        this.f13816b = zzgfaVar;
        this.f13817c = ghdVar;
        this.f13815a = zzflwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbai
    public final void zzb(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbai
    public final void zzc(abz abzVar) {
        agd.b("Failed to load app open ad with error parcel: " + abzVar.zzb().toString() + " for ad unit: " + this.f13817c.zza);
        new zp(this.f13815a, this.f13816b).c(abzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbai
    public final void zzd(zzbaf zzbafVar) {
        new zp(this.f13815a, this.f13816b).zzb(zzbafVar);
    }
}
