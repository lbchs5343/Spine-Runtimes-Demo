package g;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.MobileAds;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class dn {
    public abstract axk getSDKVersionInfo();

    public abstract axk getVersionInfo();

    public abstract void initialize(Context context, nc ncVar, List<bli> list);

    public void loadAppOpenAd(gtn gtnVar, gon gonVar) {
        gonVar.ac(new ezz(7, getClass().getSimpleName().concat(" does not support app open ads."), MobileAds.ERROR_DOMAIN, null));
    }

    public void loadBannerAd(cdw cdwVar, gon gonVar) {
        gonVar.ac(new ezz(7, getClass().getSimpleName().concat(" does not support banner ads."), MobileAds.ERROR_DOMAIN, null));
    }

    public void loadInterscrollerAd(cdw cdwVar, gon gonVar) {
        gonVar.ac(new ezz(7, getClass().getSimpleName().concat(" does not support interscroller ads."), MobileAds.ERROR_DOMAIN, null));
    }

    public void loadInterstitialAd(jy jyVar, gon gonVar) {
        gonVar.ac(new ezz(7, getClass().getSimpleName().concat(" does not support interstitial ads."), MobileAds.ERROR_DOMAIN, null));
    }

    @Deprecated
    public void loadNativeAd(giv givVar, gon gonVar) {
        gonVar.ac(new ezz(7, getClass().getSimpleName().concat(" does not support native ads."), MobileAds.ERROR_DOMAIN, null));
    }

    public void loadNativeAdMapper(giv givVar, gon gonVar) throws RemoteException {
        throw new RemoteException("Method is not found");
    }

    public void loadRewardedAd(dpg dpgVar, gon gonVar) {
        gonVar.ac(new ezz(7, getClass().getSimpleName().concat(" does not support rewarded ads."), MobileAds.ERROR_DOMAIN, null));
    }

    public void loadRewardedInterstitialAd(dpg dpgVar, gon gonVar) {
        gonVar.ac(new ezz(7, getClass().getSimpleName().concat(" does not support rewarded interstitial ads."), MobileAds.ERROR_DOMAIN, null));
    }
}
