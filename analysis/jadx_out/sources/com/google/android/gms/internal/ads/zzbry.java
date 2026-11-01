package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import g.agd;
import g.akx;
import g.clz;
import g.dxb;
import g.eey;
import g.efr;
import g.esy;
import g.etg;
import g.iy;
import g.ti;

/* loaded from: classes3.dex */
public final class zzbry implements MediationInterstitialAdapter {

    /* renamed from: a, reason: collision with root package name */
    public Activity f4942a;

    /* renamed from: b, reason: collision with root package name */
    public eey f4943b;

    /* renamed from: c, reason: collision with root package name */
    public Uri f4944c;

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter, com.google.android.gms.ads.mediation.MediationNativeAdapter
    public final void onDestroy() {
        agd.c("Destroying AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter, com.google.android.gms.ads.mediation.MediationNativeAdapter
    public final void onPause() {
        agd.c("Pausing AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter, com.google.android.gms.ads.mediation.MediationNativeAdapter
    public final void onResume() {
        agd.c("Resuming AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, eey eeyVar, Bundle bundle, clz clzVar, Bundle bundle2) {
        this.f4943b = eeyVar;
        if (eeyVar == null) {
            agd.b("Listener not set for mediation. Returning.");
            return;
        }
        if (!(context instanceof Activity)) {
            agd.b("AdMobCustomTabs can only work with Activity context. Bailing out.");
            this.f4943b.onAdFailedToLoad(this, 0);
            return;
        }
        if (!zzbdo.zzg(context)) {
            agd.b("Default browser does not support custom tabs. Bailing out.");
            this.f4943b.onAdFailedToLoad(this, 0);
            return;
        }
        String string = bundle.getString("tab_url");
        if (TextUtils.isEmpty(string)) {
            agd.b("The tab_url retrieved from mediation metadata is empty. Bailing out.");
            this.f4943b.onAdFailedToLoad(this, 0);
        } else {
            this.f4942a = (Activity) context;
            this.f4944c = Uri.parse(string);
            this.f4943b.onAdLoaded(this);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        Intent intent = (Intent) new dxb().h().f16634c;
        intent.setData(this.f4944c);
        esy.f16117a.post(new efr(this, 23, new AdOverlayInfoParcel(new etg(intent, null), null, new iy(this), null, new akx(0, 0, false), null, null)));
        ti.f20033a.f20034ab.zzq();
    }
}
