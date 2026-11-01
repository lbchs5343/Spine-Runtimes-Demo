package g;

import android.content.Context;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.google.android.gms.internal.ads.zzbpc;

/* loaded from: classes3.dex */
public final class ezj extends bir {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f16410a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzbpc f16411b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ph f16412c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Context f16413d;
    public final /* synthetic */ eno h;

    public ezj(ph phVar, Context context, eno enoVar, String str, zzbpc zzbpcVar) {
        this.f16413d = context;
        this.h = enoVar;
        this.f16410a = str;
        this.f16411b = zzbpcVar;
        this.f16412c = phVar;
    }

    @Override // g.bir
    public final Object e() {
        ph.h(this.f16413d, MediationConstant.RIT_TYPE_INTERSTITIAL);
        return new drz();
    }

    @Override // g.bir
    public final Object f(drf drfVar) {
        return drfVar.g(new bpp(this.f16413d), this.h, this.f16410a, this.f16411b, 243799000);
    }

    @Override // g.bir
    public final /* bridge */ /* synthetic */ Object g() {
        return ((ejy) this.f16412c.f19811c).h(this.f16413d, this.h, this.f16410a, this.f16411b, 2);
    }
}
