package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.os.Bundle;
import g.clz;
import g.eey;
import g.xm;

@Deprecated
/* loaded from: classes3.dex */
public interface MediationInterstitialAdapter extends xm {
    /* synthetic */ void onDestroy();

    /* synthetic */ void onPause();

    /* synthetic */ void onResume();

    void requestInterstitialAd(Context context, eey eeyVar, Bundle bundle, clz clzVar, Bundle bundle2);

    void showInterstitial();
}
