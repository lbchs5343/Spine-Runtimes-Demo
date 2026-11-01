package com.bytedance.sdk.openadsdk.f.dq.dq;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.CSJSplashAd;
import com.bytedance.sdk.openadsdk.TTAdInteractionListener;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationSplashManager;
import g.hat;
import java.util.Map;

/* loaded from: classes3.dex */
public class d implements CSJSplashAd {
    private final Bridge dq;

    public d(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    @Override // com.bytedance.sdk.openadsdk.CSJSplashAd
    public int getInteractionType() {
        return this.dq.values().intValue(110004);
    }

    @Override // com.bytedance.sdk.openadsdk.CSJSplashAd
    public Map<String, Object> getMediaExtraInfo() {
        return (Map) this.dq.values().objectValue(110005, Map.class);
    }

    @Override // com.bytedance.sdk.openadsdk.CSJSplashAd
    public MediationSplashManager getMediationManager() {
        return new com.bytedance.sdk.openadsdk.mediation.manager.dq.dq.dq.iw((Bridge) this.dq.call(110110, hat.g(0).k(), Bridge.class));
    }

    @Override // com.bytedance.sdk.openadsdk.CSJSplashAd
    public View getSplashCardView() {
        return (View) this.dq.values().objectValue(110003, View.class);
    }

    @Override // com.bytedance.sdk.openadsdk.CSJSplashAd
    public int[] getSplashClickEyeSizeToDp() {
        return (int[]) this.dq.values().objectValue(110006, int[].class);
    }

    @Override // com.bytedance.sdk.openadsdk.CSJSplashAd
    public View getSplashClickEyeView() {
        return (View) this.dq.values().objectValue(110002, View.class);
    }

    @Override // com.bytedance.sdk.openadsdk.CSJSplashAd
    public View getSplashView() {
        return (View) this.dq.values().objectValue(110001, View.class);
    }

    @Override // com.bytedance.sdk.openadsdk.CSJSplashAd
    public void hideSkipButton() {
        this.dq.call(110101, hat.g(0).k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void loss(Double d2, String str, String str2) {
        hat g2 = hat.g(3);
        g2.m(0, d2);
        g2.n(1, str);
        g2.n(2, str2);
        this.dq.call(210102, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void setAdInteractionListener(TTAdInteractionListener tTAdInteractionListener) {
        hat g2 = hat.g(1);
        g2.m(0, new com.bytedance.sdk.openadsdk.f.dq.d.dq(tTAdInteractionListener));
        this.dq.call(210104, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.CSJSplashAd
    public void setDownloadListener(TTAppDownloadListener tTAppDownloadListener) {
        hat g2 = hat.g(1);
        g2.m(0, new com.bytedance.sdk.openadsdk.f.dq.d.d(tTAppDownloadListener));
        this.dq.call(110102, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void setPrice(Double d2) {
        hat g2 = hat.g(1);
        g2.m(0, d2);
        this.dq.call(210103, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.CSJSplashAd
    public void setSplashAdListener(CSJSplashAd.SplashAdListener splashAdListener) {
        hat g2 = hat.g(1);
        g2.m(0, new com.bytedance.sdk.openadsdk.p.dq.dq.dq.dq(splashAdListener));
        this.dq.call(110103, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.CSJSplashAd
    public void setSplashCardListener(CSJSplashAd.SplashCardListener splashCardListener) {
        hat g2 = hat.g(1);
        g2.m(0, new com.bytedance.sdk.openadsdk.p.dq.dq.dq.d(splashCardListener));
        this.dq.call(110106, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.CSJSplashAd
    public void setSplashClickEyeListener(CSJSplashAd.SplashClickEyeListener splashClickEyeListener) {
        hat g2 = hat.g(1);
        g2.m(0, new com.bytedance.sdk.openadsdk.p.dq.dq.dq.ox(splashClickEyeListener));
        this.dq.call(110105, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.CSJSplashAd
    public void showSplashCardView(ViewGroup viewGroup, Activity activity) {
        hat g2 = hat.g(2);
        g2.m(0, viewGroup);
        g2.m(1, activity);
        this.dq.call(110109, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.CSJSplashAd
    public void showSplashClickEyeView(ViewGroup viewGroup) {
        hat g2 = hat.g(1);
        g2.m(0, viewGroup);
        this.dq.call(110107, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.CSJSplashAd
    public void showSplashView(ViewGroup viewGroup) {
        hat g2 = hat.g(1);
        g2.m(0, viewGroup);
        this.dq.call(110108, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.CSJSplashAd
    public void startClickEye() {
        this.dq.call(110104, hat.g(0).k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void win(Double d2) {
        hat g2 = hat.g(1);
        g2.m(0, d2);
        this.dq.call(210101, g2.k(), Void.class);
    }
}
