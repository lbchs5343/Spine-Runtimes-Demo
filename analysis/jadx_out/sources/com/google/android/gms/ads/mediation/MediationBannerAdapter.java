package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import g.bmi;
import g.clz;
import g.gin;
import g.xm;

@Deprecated
/* loaded from: classes3.dex */
public interface MediationBannerAdapter extends xm {
    View getBannerView();

    @Override // g.xm, com.google.android.gms.ads.mediation.MediationInterstitialAdapter, com.google.android.gms.ads.mediation.MediationNativeAdapter
    /* synthetic */ void onDestroy();

    @Override // g.xm, com.google.android.gms.ads.mediation.MediationInterstitialAdapter, com.google.android.gms.ads.mediation.MediationNativeAdapter
    /* synthetic */ void onPause();

    @Override // g.xm, com.google.android.gms.ads.mediation.MediationInterstitialAdapter, com.google.android.gms.ads.mediation.MediationNativeAdapter
    /* synthetic */ void onResume();

    void requestBannerAd(Context context, bmi bmiVar, Bundle bundle, gin ginVar, clz clzVar, Bundle bundle2);
}
