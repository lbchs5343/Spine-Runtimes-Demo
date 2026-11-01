package com.bytedance.sdk.openadsdk.f.dq.dq;

import android.app.Activity;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTAdInteractionListener;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationFullScreenManager;
import g.hat;
import java.util.Map;

/* loaded from: classes3.dex */
public class ig implements TTFullScreenVideoAd {
    private final Bridge dq;

    public ig(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd
    public long getExpirationTimestamp() {
        return this.dq.values().longValue(130004);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd
    public int getFullVideoAdType() {
        return this.dq.values().intValue(130003);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd
    public int getInteractionType() {
        return this.dq.values().intValue(130001);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd
    public Map<String, Object> getMediaExtraInfo() {
        return (Map) this.dq.values().objectValue(130002, Map.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd
    public MediationFullScreenManager getMediationManager() {
        return new com.bytedance.sdk.openadsdk.mediation.manager.dq.dq.dq.ox((Bridge) this.dq.call(130106, hat.g(0).k(), Bridge.class));
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

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd
    public void setDownloadListener(TTAppDownloadListener tTAppDownloadListener) {
        hat g2 = hat.g(1);
        g2.m(0, new com.bytedance.sdk.openadsdk.f.dq.d.d(tTAppDownloadListener));
        this.dq.call(130102, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd
    public void setFullScreenVideoAdInteractionListener(TTFullScreenVideoAd.FullScreenVideoAdInteractionListener fullScreenVideoAdInteractionListener) {
        hat g2 = hat.g(1);
        g2.m(0, new com.bytedance.sdk.openadsdk.k.dq.dq.dq.dq(fullScreenVideoAdInteractionListener));
        this.dq.call(130101, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void setPrice(Double d2) {
        hat g2 = hat.g(1);
        g2.m(0, d2);
        this.dq.call(210103, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd
    public void setShowDownLoadBar(boolean z) {
        hat g2 = hat.g(1);
        g2.i(0, z);
        this.dq.call(130105, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd
    public void showFullScreenVideoAd(Activity activity) {
        hat g2 = hat.g(1);
        g2.m(0, activity);
        this.dq.call(130103, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd
    public void showFullScreenVideoAd(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        hat g2 = hat.g(3);
        g2.m(0, activity);
        g2.m(1, ritScenes);
        g2.n(2, str);
        this.dq.call(130104, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void win(Double d2) {
        hat g2 = hat.g(1);
        g2.m(0, d2);
        this.dq.call(210101, g2.k(), Void.class);
    }
}
