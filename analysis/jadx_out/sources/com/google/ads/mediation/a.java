package com.google.ads.mediation;

import g.bfi;
import g.eey;
import g.eti;
import g.frt;
import g.gsg;

/* loaded from: classes3.dex */
public final class a extends gsg {

    /* renamed from: a, reason: collision with root package name */
    public final AbstractAdViewAdapter f3916a;

    /* renamed from: b, reason: collision with root package name */
    public final eey f3917b;

    public a(AbstractAdViewAdapter abstractAdViewAdapter, eey eeyVar) {
        this.f3916a = abstractAdViewAdapter;
        this.f3917b = eeyVar;
    }

    @Override // g.df
    public final void c(bfi bfiVar) {
        this.f3917b.onAdFailedToLoad(this.f3916a, bfiVar);
    }

    @Override // g.df
    public final /* bridge */ /* synthetic */ void d(Object obj) {
        eti etiVar = (eti) obj;
        AbstractAdViewAdapter abstractAdViewAdapter = this.f3916a;
        abstractAdViewAdapter.mInterstitialAd = etiVar;
        eey eeyVar = this.f3917b;
        etiVar.setFullScreenContentCallback(new frt(abstractAdViewAdapter, eeyVar));
        eeyVar.onAdLoaded(abstractAdViewAdapter);
    }
}
