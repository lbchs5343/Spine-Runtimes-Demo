package g;

import android.content.Context;
import com.google.android.gms.internal.ads.zzchq;
import com.google.android.gms.internal.ads.zzcid;
import com.google.android.gms.internal.ads.zzckz;
import com.google.android.gms.internal.ads.zzdsr;
import com.google.android.gms.internal.ads.zzeri;
import com.google.android.gms.internal.ads.zzfin;
import com.google.android.gms.internal.ads.zzhfx;
import com.google.android.gms.internal.ads.zzhgg;
import com.google.android.gms.internal.ads.zzhgp;

/* loaded from: classes3.dex */
public final class bph implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11954a;

    /* renamed from: b, reason: collision with root package name */
    public final zzchq f11955b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f11956c;

    public /* synthetic */ bph(zzchq zzchqVar, zzhgg zzhggVar, int i) {
        this.f11954a = i;
        this.f11955b = zzchqVar;
        this.f11956c = zzhggVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        switch (this.f11954a) {
            case 0:
                Context zza = this.f11955b.zza();
                zzckz.zza();
                return new bsn(zza, zzeri.zzc(), ((zzcid) this.f11956c).zza());
            default:
                return new sq(this.f11955b.zza(), (zzdsr) this.f11956c.zzb(), zzfin.zzc());
        }
    }
}
