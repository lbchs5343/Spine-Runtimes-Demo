package g;

import android.view.View;
import com.google.android.gms.internal.ads.zzbpp;
import com.google.android.gms.internal.ads.zzbqs;
import com.google.android.gms.internal.ads.zzefe;
import com.google.android.gms.internal.ads.zzegm;
import com.google.android.gms.internal.ads.zzegx;

/* loaded from: classes3.dex */
public final class dlk extends zzbqs {

    /* renamed from: a, reason: collision with root package name */
    public final zzefe f14371a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzegm f14372b;

    public /* synthetic */ dlk(zzegm zzegmVar, zzefe zzefeVar) {
        this.f14372b = zzegmVar;
        this.f14371a = zzefeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqt
    public final void zze(String str) {
        ((zzegx) this.f14371a.zzc).zzi(0, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbqt
    public final void zzf(abz abzVar) {
        ((zzegx) this.f14371a.zzc).zzh(abzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbqt
    public final void zzg(bjq bjqVar) {
        this.f14372b.f6932d = (View) bpp.b(bjqVar);
        ((zzegx) this.f14371a.zzc).zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzbqt
    public final void zzh(zzbpp zzbppVar) {
        this.f14372b.f6929a = zzbppVar;
        ((zzegx) this.f14371a.zzc).zzo();
    }
}
