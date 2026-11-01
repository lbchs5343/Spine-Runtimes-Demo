package com.bytedance.sdk.openadsdk.f.dq.dq;

import android.app.Activity;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTAdInteractionListener;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationRewardManager;
import g.hat;
import java.util.Map;

/* loaded from: classes3.dex */
public class f implements TTRewardVideoAd {
    private final Bridge dq;

    public f(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd
    public long getExpirationTimestamp() {
        return this.dq.values().longValue(120004);
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd
    public int getInteractionType() {
        return this.dq.values().intValue(120001);
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd
    public Map<String, Object> getMediaExtraInfo() {
        return (Map) this.dq.values().objectValue(120002, Map.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd
    public MediationRewardManager getMediationManager() {
        return new com.bytedance.sdk.openadsdk.mediation.manager.dq.dq.dq.s((Bridge) this.dq.call(121109, hat.g(0).k(), Bridge.class));
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd
    public int getRewardVideoAdType() {
        return this.dq.values().intValue(120003);
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

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd
    public void setDownloadListener(TTAppDownloadListener tTAppDownloadListener) {
        hat g2 = hat.g(1);
        g2.m(0, new com.bytedance.sdk.openadsdk.f.dq.d.d(tTAppDownloadListener));
        this.dq.call(120104, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void setPrice(Double d2) {
        hat g2 = hat.g(1);
        g2.m(0, d2);
        this.dq.call(210103, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd
    public void setRewardAdInteractionListener(TTRewardVideoAd.RewardAdInteractionListener rewardAdInteractionListener) {
        hat g2 = hat.g(1);
        g2.m(0, new com.bytedance.sdk.openadsdk.kx.dq.dq.dq.dq(rewardAdInteractionListener));
        this.dq.call(120101, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd
    public void setRewardPlayAgainController(TTRewardVideoAd.RewardAdPlayAgainController rewardAdPlayAgainController) {
        hat g2 = hat.g(1);
        g2.m(0, new com.bytedance.sdk.openadsdk.kx.dq.dq.dq.d(rewardAdPlayAgainController));
        this.dq.call(120103, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd
    public void setRewardPlayAgainInteractionListener(TTRewardVideoAd.RewardAdInteractionListener rewardAdInteractionListener) {
        hat g2 = hat.g(1);
        g2.m(0, new com.bytedance.sdk.openadsdk.kx.dq.dq.dq.dq(rewardAdInteractionListener));
        this.dq.call(120102, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd
    public void setShowDownLoadBar(boolean z) {
        hat g2 = hat.g(1);
        g2.i(0, z);
        this.dq.call(120107, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd
    public void showRewardVideoAd(Activity activity) {
        hat g2 = hat.g(1);
        g2.m(0, activity);
        this.dq.call(120105, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd
    public void showRewardVideoAd(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        hat g2 = hat.g(3);
        g2.m(0, activity);
        g2.m(1, ritScenes);
        g2.n(2, str);
        this.dq.call(120106, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void win(Double d2) {
        hat g2 = hat.g(1);
        g2.m(0, d2);
        this.dq.call(210101, g2.k(), Void.class);
    }
}
