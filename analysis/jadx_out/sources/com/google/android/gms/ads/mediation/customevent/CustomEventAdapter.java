package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.common.annotation.KeepName;
import g.agd;
import g.ags;
import g.bli;
import g.bmi;
import g.ccj;
import g.clz;
import g.cuf;
import g.eey;
import g.ezz;
import g.gin;
import g.gpu;

@KeepName
/* loaded from: classes3.dex */
public final class CustomEventAdapter implements MediationBannerAdapter, MediationInterstitialAdapter, MediationNativeAdapter {

    /* renamed from: a, reason: collision with root package name */
    public static final ezz f3923a = new ezz(0, "Could not instantiate custom event adapter", MobileAds.ERROR_DOMAIN, null);

    /* renamed from: b, reason: collision with root package name */
    public CustomEventBanner f3924b;

    /* renamed from: c, reason: collision with root package name */
    public CustomEventInterstitial f3925c;

    /* renamed from: d, reason: collision with root package name */
    public CustomEventNative f3926d;

    public static Object e(Class cls, String str) {
        try {
            if (str != null) {
                return cls.cast(Class.forName(str).getDeclaredConstructor(null).newInstance(null));
            }
            throw null;
        } catch (Throwable th) {
            agd.b("Could not instantiate custom event adapter: " + str + ". " + th.getMessage());
            return null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public View getBannerView() {
        return null;
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter, g.xm, com.google.android.gms.ads.mediation.MediationInterstitialAdapter, com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void onDestroy() {
        CustomEventBanner customEventBanner = this.f3924b;
        if (customEventBanner != null) {
            customEventBanner.onDestroy();
        }
        CustomEventInterstitial customEventInterstitial = this.f3925c;
        if (customEventInterstitial != null) {
            customEventInterstitial.onDestroy();
        }
        CustomEventNative customEventNative = this.f3926d;
        if (customEventNative != null) {
            customEventNative.onDestroy();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter, g.xm, com.google.android.gms.ads.mediation.MediationInterstitialAdapter, com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void onPause() {
        CustomEventBanner customEventBanner = this.f3924b;
        if (customEventBanner != null) {
            customEventBanner.onPause();
        }
        CustomEventInterstitial customEventInterstitial = this.f3925c;
        if (customEventInterstitial != null) {
            customEventInterstitial.onPause();
        }
        CustomEventNative customEventNative = this.f3926d;
        if (customEventNative != null) {
            customEventNative.onPause();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter, g.xm, com.google.android.gms.ads.mediation.MediationInterstitialAdapter, com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void onResume() {
        CustomEventBanner customEventBanner = this.f3924b;
        if (customEventBanner != null) {
            customEventBanner.onResume();
        }
        CustomEventInterstitial customEventInterstitial = this.f3925c;
        if (customEventInterstitial != null) {
            customEventInterstitial.onResume();
        }
        CustomEventNative customEventNative = this.f3926d;
        if (customEventNative != null) {
            customEventNative.onResume();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public void requestBannerAd(Context context, bmi bmiVar, Bundle bundle, gin ginVar, clz clzVar, Bundle bundle2) {
        CustomEventBanner customEventBanner = (CustomEventBanner) e(CustomEventBanner.class, bundle.getString("class_name"));
        this.f3924b = customEventBanner;
        if (customEventBanner == null) {
            bmiVar.onAdFailedToLoad(this, f3923a);
            return;
        }
        Bundle bundle3 = bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name"));
        CustomEventBanner customEventBanner2 = this.f3924b;
        customEventBanner2.getClass();
        customEventBanner2.requestBannerAd(context, new gpu(16), bundle.getString("parameter"), ginVar, clzVar, bundle3);
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(Context context, eey eeyVar, Bundle bundle, clz clzVar, Bundle bundle2) {
        CustomEventInterstitial customEventInterstitial = (CustomEventInterstitial) e(CustomEventInterstitial.class, bundle.getString("class_name"));
        this.f3925c = customEventInterstitial;
        if (customEventInterstitial == null) {
            eeyVar.onAdFailedToLoad(this, f3923a);
            return;
        }
        Bundle bundle3 = bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name"));
        CustomEventInterstitial customEventInterstitial2 = this.f3925c;
        customEventInterstitial2.getClass();
        customEventInterstitial2.requestInterstitialAd(context, new bli(18), bundle.getString("parameter"), clzVar, bundle3);
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void requestNativeAd(Context context, ccj ccjVar, Bundle bundle, ags agsVar, Bundle bundle2) {
        CustomEventNative customEventNative = (CustomEventNative) e(CustomEventNative.class, bundle.getString("class_name"));
        this.f3926d = customEventNative;
        if (customEventNative == null) {
            ccjVar.onAdFailedToLoad(this, f3923a);
            return;
        }
        Bundle bundle3 = bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name"));
        CustomEventNative customEventNative2 = this.f3926d;
        customEventNative2.getClass();
        customEventNative2.requestNativeAd(context, new cuf(19), bundle.getString("parameter"), agsVar, bundle3);
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        CustomEventInterstitial customEventInterstitial = this.f3925c;
        if (customEventInterstitial != null) {
            customEventInterstitial.showInterstitial();
        }
    }
}
