package com.bytedance.sdk.openadsdk.f.dq.dq;

import android.app.Activity;
import android.view.View;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.DislikeInfo;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTAdInteractionListener;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationNativeManager;
import g.hat;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class jy implements TTNativeExpressAd {
    private final Bridge dq;

    public jy(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void destroy() {
        this.dq.call(150105, hat.g(0).k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public TTAdDislike getDislikeDialog(Activity activity) {
        hat g2 = hat.g(1);
        g2.m(0, activity);
        return new ia((Bridge) this.dq.call(150108, g2.k(), Bridge.class));
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public DislikeInfo getDislikeInfo() {
        return new p((Bridge) this.dq.values().objectValue(150003, Bridge.class));
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public View getExpressAdView() {
        return (View) this.dq.values().objectValue(150001, View.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public int getImageMode() {
        return this.dq.values().intValue(150002);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public int getInteractionType() {
        return this.dq.values().intValue(150004);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public Map<String, Object> getMediaExtraInfo() {
        return (Map) this.dq.values().objectValue(150005, Map.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public MediationNativeManager getMediationManager() {
        return new com.bytedance.sdk.openadsdk.mediation.manager.dq.dq.dq.p((Bridge) this.dq.call(150113, hat.g(0).k(), Bridge.class));
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void loss(Double d2, String str, String str2) {
        hat g2 = hat.g(3);
        g2.m(0, d2);
        g2.n(1, str);
        g2.n(2, str2);
        this.dq.call(210102, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void registerClickableRects(JSONObject jSONObject) {
        hat g2 = hat.g(1);
        g2.m(0, jSONObject);
        this.dq.call(150115, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void render() {
        this.dq.call(150104, hat.g(0).k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void setAdInteractionListener(TTAdInteractionListener tTAdInteractionListener) {
        hat g2 = hat.g(1);
        g2.m(0, new com.bytedance.sdk.openadsdk.f.dq.d.dq(tTAdInteractionListener));
        this.dq.call(210104, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setCanInterruptVideoPlay(boolean z) {
        hat g2 = hat.g(1);
        g2.i(0, z);
        this.dq.call(150112, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setDislikeCallback(Activity activity, TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        hat g2 = hat.g(2);
        g2.m(0, activity);
        g2.m(1, new com.bytedance.sdk.openadsdk.gh.dq.dq.dq.dq(dislikeInteractionCallback));
        this.dq.call(150106, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setDislikeDialog(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        hat g2 = hat.g(1);
        g2.m(0, tTDislikeDialogAbstract);
        this.dq.call(150107, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setDownloadListener(TTAppDownloadListener tTAppDownloadListener) {
        hat g2 = hat.g(1);
        g2.m(0, new com.bytedance.sdk.openadsdk.f.dq.d.d(tTAppDownloadListener));
        this.dq.call(150103, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setExpressInteractionListener(TTNativeExpressAd.AdInteractionListener adInteractionListener) {
        hat g2 = hat.g(1);
        g2.m(0, new com.bytedance.sdk.openadsdk.e.dq.dq.dq.dq(adInteractionListener));
        this.dq.call(150102, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setExpressInteractionListener(TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener) {
        hat g2 = hat.g(1);
        g2.m(0, new com.bytedance.sdk.openadsdk.e.dq.dq.dq.d(expressAdInteractionListener));
        this.dq.call(150101, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void setPrice(Double d2) {
        hat g2 = hat.g(1);
        g2.m(0, d2);
        this.dq.call(210103, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setSlideIntervalTime(int i) {
        hat g2 = hat.g(1);
        g2.o(0, i);
        this.dq.call(150110, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setVideoAdListener(TTNativeExpressAd.ExpressVideoAdListener expressVideoAdListener) {
        hat g2 = hat.g(1);
        g2.m(0, new com.bytedance.sdk.openadsdk.e.dq.dq.dq.ox(expressVideoAdListener));
        this.dq.call(150111, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void showInteractionExpressAd(Activity activity) {
        hat g2 = hat.g(1);
        g2.m(0, activity);
        this.dq.call(150109, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void unRegisterRects() {
        this.dq.call(150116, hat.g(0).k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void uploadDislikeEvent(String str) {
        hat g2 = hat.g(1);
        g2.n(0, str);
        this.dq.call(150114, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void win(Double d2) {
        hat g2 = hat.g(1);
        g2.m(0, d2);
        this.dq.call(210101, g2.k(), Void.class);
    }
}
