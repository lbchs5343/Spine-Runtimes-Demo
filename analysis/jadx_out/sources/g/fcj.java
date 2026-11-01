package g;

import com.google.ads.mediation.AbstractAdViewAdapter;

/* loaded from: classes3.dex */
public final class fcj extends nl implements eus, evo {

    /* renamed from: f, reason: collision with root package name */
    public final AbstractAdViewAdapter f16563f;

    /* renamed from: g, reason: collision with root package name */
    public final bmi f16564g;

    public fcj(AbstractAdViewAdapter abstractAdViewAdapter, bmi bmiVar) {
        this.f16563f = abstractAdViewAdapter;
        this.f16564g = bmiVar;
    }

    @Override // g.nl
    public final void a() {
        this.f16564g.onAdLoaded(this.f16563f);
    }

    @Override // g.nl
    public final void b() {
        this.f16564g.onAdOpened(this.f16563f);
    }

    @Override // g.nl
    public final void c() {
        this.f16564g.onAdClosed(this.f16563f);
    }

    @Override // g.nl
    public final void d(bfi bfiVar) {
        this.f16564g.onAdFailedToLoad(this.f16563f, bfiVar);
    }

    @Override // g.nl
    public final void onAdClicked() {
        this.f16564g.onAdClicked(this.f16563f);
    }

    @Override // g.eus
    public final void onAppEvent(String str, String str2) {
        this.f16564g.zzb(this.f16563f, str, str2);
    }
}
