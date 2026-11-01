package g;

import com.google.android.gms.internal.ads.zzdwh;

/* loaded from: classes3.dex */
public final class awb extends fle {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f10963a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f10964b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzdwh f10965e;

    public awb(zzdwh zzdwhVar, String str, String str2) {
        this.f10963a = str;
        this.f10964b = str2;
        this.f10965e = zzdwhVar;
    }

    @Override // g.df
    public final void c(bfi bfiVar) {
        this.f10965e.j(zzdwh.g(bfiVar), this.f10964b);
    }

    @Override // g.df
    public final /* bridge */ /* synthetic */ void d(Object obj) {
        this.f10965e.i(this.f10963a, this.f10964b, (ls) obj);
    }
}
