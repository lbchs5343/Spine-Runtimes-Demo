package g;

import com.google.android.gms.internal.ads.zzhgg;
import com.google.android.gms.internal.ads.zzhgp;

/* loaded from: classes3.dex */
public final class evj implements zzhgg {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16229a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f16230b;

    public /* synthetic */ evj(int i, Object obj) {
        this.f16229a = i;
        this.f16230b = obj;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        switch (this.f16229a) {
            case 0:
                return new fqs(((bxr) this.f16230b).ch);
            case 1:
                return new det(((bxr) this.f16230b).ch);
            default:
                return ((zzhgp) this.f16230b).zzb();
        }
    }
}
