package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import g.aqq;
import g.bpe;
import g.clz;

@Deprecated
/* loaded from: classes3.dex */
public interface CustomEventInterstitial extends aqq {
    /* synthetic */ void onDestroy();

    /* synthetic */ void onPause();

    /* synthetic */ void onResume();

    void requestInterstitialAd(Context context, bpe bpeVar, String str, clz clzVar, Bundle bundle);

    void showInterstitial();
}
