package g;

import android.content.Context;
import com.google.android.gms.internal.ads.zzchq;
import com.google.android.gms.internal.ads.zzcid;
import com.google.android.gms.internal.ads.zzhfx;

/* loaded from: classes3.dex */
public final class frd implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzchq f17275a;

    /* renamed from: b, reason: collision with root package name */
    public final zzcid f17276b;

    public frd(zzchq zzchqVar, zzcid zzcidVar) {
        this.f17275a = zzchqVar;
        this.f17276b = zzcidVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        return new edu((Context) this.f17275a.zzb(), (akx) this.f17276b.zzb());
    }
}
