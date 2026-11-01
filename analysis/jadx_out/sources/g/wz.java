package g;

import com.google.android.gms.internal.ads.zzdwh;

/* loaded from: classes3.dex */
public final class wz extends gsq {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f20256a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f20257b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzdwh f20258e;

    public wz(zzdwh zzdwhVar, String str, String str2) {
        this.f20256a = str;
        this.f20257b = str2;
        this.f20258e = zzdwhVar;
    }

    @Override // g.df
    public final void c(bfi bfiVar) {
        this.f20258e.j(zzdwh.g(bfiVar), this.f20257b);
    }

    @Override // g.df
    public final /* bridge */ /* synthetic */ void d(Object obj) {
        this.f20258e.i(this.f20256a, this.f20257b, (eks) obj);
    }
}
