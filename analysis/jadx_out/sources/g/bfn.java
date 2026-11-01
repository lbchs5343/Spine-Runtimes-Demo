package g;

import android.content.Context;

/* loaded from: classes3.dex */
public final class bfn extends bgf {

    /* renamed from: a, reason: collision with root package name */
    public final dfu f11454a;

    /* renamed from: b, reason: collision with root package name */
    public final String f11455b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bfn(Context context, String str, String str2) {
        super(7);
        String at = ti.f20033a.z.at(context, str);
        this.f11454a = new dfu(at);
        this.f11455b = str2;
    }

    @Override // g.bgf
    public final void zza() {
        this.f11454a.zza(this.f11455b);
    }
}
