package g;

import com.google.android.gms.internal.ads.zzded;
import com.google.android.gms.internal.ads.zzdsr;
import com.google.android.gms.internal.ads.zzfin;
import com.google.android.gms.internal.ads.zzhfx;
import com.google.android.gms.internal.ads.zzhgg;
import com.google.android.gms.internal.ads.zzhgp;

/* loaded from: classes3.dex */
public final class cyi implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13755a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f13756b;

    public /* synthetic */ cyi(zzhgg zzhggVar, int i) {
        this.f13755a = i;
        this.f13756b = zzhggVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        switch (this.f13755a) {
            case 0:
                return new zzded((bvr) this.f13756b.zzb(), zzfin.zzc());
            default:
                return new bgq((zzdsr) this.f13756b.zzb());
        }
    }
}
