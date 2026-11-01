package g;

import com.google.android.gms.internal.ads.zzchq;
import com.google.android.gms.internal.ads.zzdxr;
import com.google.android.gms.internal.ads.zzfin;
import com.google.android.gms.internal.ads.zzhfx;

/* loaded from: classes3.dex */
public final class esl implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16089a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhfx f16090b;

    public /* synthetic */ esl(zzhfx zzhfxVar, int i) {
        this.f16089a = i;
        this.f16090b = zzhfxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        switch (this.f16089a) {
            case 0:
                return new atn(zzfin.zzc(), ((zzdxr) this.f16090b).zzb());
            default:
                return new fli(((zzchq) this.f16090b).zza());
        }
    }
}
