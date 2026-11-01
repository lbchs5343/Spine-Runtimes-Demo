package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import g.aqq;
import g.aqs;
import g.clz;
import g.gin;

@Deprecated
/* loaded from: classes3.dex */
public interface CustomEventBanner extends aqq {
    /* synthetic */ void onDestroy();

    /* synthetic */ void onPause();

    /* synthetic */ void onResume();

    void requestBannerAd(Context context, aqs aqsVar, String str, gin ginVar, clz clzVar, Bundle bundle);
}
