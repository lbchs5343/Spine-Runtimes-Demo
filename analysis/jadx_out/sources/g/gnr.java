package g;

import android.content.Context;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.google.android.gms.internal.ads.zzbpg;

/* loaded from: classes3.dex */
public final class gnr extends bir {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f18470a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzbpg f18471b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ph f18472c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Context f18473d;
    public final /* synthetic */ eno h;

    public gnr(ph phVar, Context context, eno enoVar, String str, zzbpg zzbpgVar) {
        this.f18473d = context;
        this.h = enoVar;
        this.f18470a = str;
        this.f18471b = zzbpgVar;
        this.f18472c = phVar;
    }

    @Override // g.bir
    public final Object e() {
        ph.h(this.f18473d, MediationConstant.RIT_TYPE_BANNER);
        return new drz();
    }

    @Override // g.bir
    public final Object f(drf drfVar) {
        return drfVar.j(new bpp(this.f18473d), this.h, this.f18470a, this.f18471b, 243799000);
    }

    @Override // g.bir
    public final /* bridge */ /* synthetic */ Object g() {
        return ((ejy) this.f18472c.f19811c).h(this.f18473d, this.h, this.f18470a, this.f18471b, 1);
    }
}
