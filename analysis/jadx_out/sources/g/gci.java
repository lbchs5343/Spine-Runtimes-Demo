package g;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbpc;
import com.google.android.gms.internal.ads.zzbxo;

/* loaded from: classes3.dex */
public final class gci extends bir {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbpc f17885a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f17886b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f17887c;

    public gci(Context context, String str, zzbpc zzbpcVar) {
        this.f17886b = context;
        this.f17887c = str;
        this.f17885a = zzbpcVar;
    }

    @Override // g.bir
    public final Object e() {
        ph.h(this.f17886b, "rewarded");
        return new fzj();
    }

    @Override // g.bir
    public final Object f(drf drfVar) {
        return drfVar.e(new bpp(this.f17886b), this.f17887c, this.f17885a, 243799000);
    }

    @Override // g.bir
    public final /* bridge */ /* synthetic */ Object g() {
        return zzbxo.zza(this.f17886b, this.f17887c, this.f17885a);
    }
}
