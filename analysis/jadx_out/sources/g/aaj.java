package g;

import com.google.android.gms.internal.ads.zzdwh;

/* loaded from: classes3.dex */
public final class aaj extends nl {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f9850f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ zzdwh f9851g;
    public final /* synthetic */ String h;
    public final /* synthetic */ aia i;

    public aaj(zzdwh zzdwhVar, String str, aia aiaVar, String str2) {
        this.h = str;
        this.i = aiaVar;
        this.f9850f = str2;
        this.f9851g = zzdwhVar;
    }

    @Override // g.nl
    public final void a() {
        aia aiaVar = this.i;
        this.f9851g.i(this.h, this.f9850f, aiaVar);
    }

    @Override // g.nl
    public final void d(bfi bfiVar) {
        this.f9851g.j(zzdwh.g(bfiVar), this.f9850f);
    }
}
