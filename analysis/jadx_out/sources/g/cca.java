package g;

import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.android.gms.internal.ads.zzdwh;

/* loaded from: classes3.dex */
public final class cca extends nl implements fdm, edz, ehx {

    /* renamed from: f, reason: collision with root package name */
    public final Object f12622f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f12623g = 1;
    public final Object h;

    public cca(AbstractAdViewAdapter abstractAdViewAdapter, ccj ccjVar) {
        this.h = abstractAdViewAdapter;
        this.f12622f = ccjVar;
    }

    public cca(zzdwh zzdwhVar, String str) {
        this.h = str;
        this.f12622f = zzdwhVar;
    }

    private final void i() {
    }

    @Override // g.nl
    public void a() {
        int i = this.f12623g;
    }

    @Override // g.nl
    public void b() {
        switch (this.f12623g) {
            case 1:
                ((ccj) this.f12622f).onAdOpened((AbstractAdViewAdapter) this.h);
                break;
        }
    }

    @Override // g.nl
    public void c() {
        switch (this.f12623g) {
            case 1:
                ((ccj) this.f12622f).onAdClosed((AbstractAdViewAdapter) this.h);
                break;
        }
    }

    @Override // g.nl
    public final void d(bfi bfiVar) {
        switch (this.f12623g) {
            case 0:
                ((zzdwh) this.f12622f).j(zzdwh.g(bfiVar), (String) this.h);
                break;
            default:
                ((ccj) this.f12622f).onAdFailedToLoad((AbstractAdViewAdapter) this.h, bfiVar);
                break;
        }
    }

    @Override // g.nl
    public void e() {
        switch (this.f12623g) {
            case 1:
                ((ccj) this.f12622f).onAdImpression((AbstractAdViewAdapter) this.h);
                break;
        }
    }

    @Override // g.nl
    public void onAdClicked() {
        switch (this.f12623g) {
            case 1:
                ((ccj) this.f12622f).onAdClicked((AbstractAdViewAdapter) this.h);
                break;
        }
    }
}
