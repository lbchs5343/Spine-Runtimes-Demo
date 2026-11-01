package g;

import android.content.Context;
import com.ss.android.download.api.constant.BaseConstants;

/* loaded from: classes3.dex */
public final class hbn extends bir {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f19179a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ph f19180b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f19181c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ eno f19182d;

    public hbn(ph phVar, Context context, eno enoVar, String str) {
        this.f19181c = context;
        this.f19182d = enoVar;
        this.f19179a = str;
        this.f19180b = phVar;
    }

    @Override // g.bir
    public final Object e() {
        ph.h(this.f19181c, BaseConstants.MARKET_URI_AUTHORITY_SEARCH);
        return new drz();
    }

    @Override // g.bir
    public final Object f(drf drfVar) {
        return drfVar.i(new bpp(this.f19181c), this.f19182d, this.f19179a, 243799000);
    }

    @Override // g.bir
    public final /* bridge */ /* synthetic */ Object g() {
        return ((ejy) this.f19180b.f19811c).h(this.f19181c, this.f19182d, this.f19179a, null, 3);
    }
}
