package g;

import com.google.android.gms.internal.ads.zzdwh;

/* loaded from: classes3.dex */
public final class etf extends byk {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f16142a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f16143b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzdwh f16144e;

    public etf(zzdwh zzdwhVar, String str, String str2) {
        this.f16142a = str;
        this.f16143b = str2;
        this.f16144e = zzdwhVar;
    }

    @Override // g.df
    public final void c(bfi bfiVar) {
        this.f16144e.j(zzdwh.g(bfiVar), this.f16143b);
    }

    @Override // g.df
    public final /* bridge */ /* synthetic */ void d(Object obj) {
        this.f16144e.i(this.f16142a, this.f16143b, (dth) obj);
    }
}
