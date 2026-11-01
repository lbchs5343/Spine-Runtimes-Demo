package g;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbpg;

/* loaded from: classes3.dex */
public final class akl extends bir {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f10388a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzbpg f10389b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ph f10390c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Context f10391d;
    public final /* synthetic */ eno h;

    public akl(ph phVar, Context context, eno enoVar, String str, zzbpg zzbpgVar) {
        this.f10391d = context;
        this.h = enoVar;
        this.f10388a = str;
        this.f10389b = zzbpgVar;
        this.f10390c = phVar;
    }

    @Override // g.bir
    public final Object e() {
        ph.h(this.f10391d, "app_open");
        return new drz();
    }

    @Override // g.bir
    public final Object f(drf drfVar) {
        return drfVar.m(new bpp(this.f10391d), this.h, this.f10388a, this.f10389b, 243799000);
    }

    @Override // g.bir
    public final /* bridge */ /* synthetic */ Object g() {
        return ((ejy) this.f10390c.f19811c).h(this.f10391d, this.h, this.f10388a, this.f10389b, 4);
    }
}
