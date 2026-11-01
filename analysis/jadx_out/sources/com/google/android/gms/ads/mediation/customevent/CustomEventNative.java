package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import g.ags;
import g.aqq;
import g.hdj;

@Deprecated
/* loaded from: classes3.dex */
public interface CustomEventNative extends aqq {
    /* synthetic */ void onDestroy();

    /* synthetic */ void onPause();

    /* synthetic */ void onResume();

    void requestNativeAd(Context context, hdj hdjVar, String str, ags agsVar, Bundle bundle);
}
