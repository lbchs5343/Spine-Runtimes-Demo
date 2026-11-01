package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.os.Bundle;
import g.ags;
import g.ccj;
import g.xm;

@Deprecated
/* loaded from: classes3.dex */
public interface MediationNativeAdapter extends xm {
    /* synthetic */ void onDestroy();

    /* synthetic */ void onPause();

    /* synthetic */ void onResume();

    void requestNativeAd(Context context, ccj ccjVar, Bundle bundle, ags agsVar, Bundle bundle2);
}
