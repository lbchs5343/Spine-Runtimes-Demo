package com.google.android.gms.ads.mediation.rtb;

import android.os.RemoteException;
import com.google.android.gms.ads.MobileAds;
import g.alk;
import g.bic;
import g.cdw;
import g.dn;
import g.dpg;
import g.ezz;
import g.giv;
import g.gon;
import g.gtn;
import g.jy;

/* loaded from: classes3.dex */
public abstract class RtbAdapter extends dn {
    public abstract void collectSignals(alk alkVar, bic bicVar);

    public void loadRtbAppOpenAd(gtn gtnVar, gon gonVar) {
        loadAppOpenAd(gtnVar, gonVar);
    }

    public void loadRtbBannerAd(cdw cdwVar, gon gonVar) {
        loadBannerAd(cdwVar, gonVar);
    }

    public void loadRtbInterscrollerAd(cdw cdwVar, gon gonVar) {
        gonVar.ac(new ezz(7, getClass().getSimpleName().concat(" does not support interscroller ads."), MobileAds.ERROR_DOMAIN, null));
    }

    public void loadRtbInterstitialAd(jy jyVar, gon gonVar) {
        loadInterstitialAd(jyVar, gonVar);
    }

    @Deprecated
    public void loadRtbNativeAd(giv givVar, gon gonVar) {
        loadNativeAd(givVar, gonVar);
    }

    public void loadRtbNativeAdMapper(giv givVar, gon gonVar) throws RemoteException {
        loadNativeAdMapper(givVar, gonVar);
    }

    public void loadRtbRewardedAd(dpg dpgVar, gon gonVar) {
        loadRewardedAd(dpgVar, gonVar);
    }

    public void loadRtbRewardedInterstitialAd(dpg dpgVar, gon gonVar) {
        loadRewardedInterstitialAd(dpgVar, gonVar);
    }
}
