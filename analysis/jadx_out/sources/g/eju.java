package g;

import com.google.android.gms.internal.ads.zzdwh;

/* loaded from: classes3.dex */
public final class eju extends gsg {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f15682a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f15683b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzdwh f15684e;

    public eju(zzdwh zzdwhVar, String str, String str2) {
        this.f15682a = str;
        this.f15683b = str2;
        this.f15684e = zzdwhVar;
    }

    @Override // g.df
    public final void c(bfi bfiVar) {
        this.f15684e.j(zzdwh.g(bfiVar), this.f15683b);
    }

    @Override // g.df
    public final /* bridge */ /* synthetic */ void d(Object obj) {
        this.f15684e.i(this.f15682a, this.f15683b, (eti) obj);
    }
}
