package com.bytedance.sdk.openadsdk.le.dq.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import g.hat;

/* loaded from: classes3.dex */
public class dq implements TTFeedAd.CustomizeVideo {
    private final Bridge dq;

    public dq(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.CustomizeVideo
    public String getVideoUrl() {
        return (String) this.dq.call(162101, hat.g(0).k(), String.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.CustomizeVideo
    public void reportVideoAutoStart() {
        this.dq.call(162107, hat.g(0).k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.CustomizeVideo
    public void reportVideoBreak(long j) {
        hat g2 = hat.g(1);
        g2.h(0, j);
        this.dq.call(162106, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.CustomizeVideo
    public void reportVideoContinue(long j) {
        hat g2 = hat.g(1);
        g2.h(0, j);
        this.dq.call(162104, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.CustomizeVideo
    public void reportVideoError(long j, int i, int i2) {
        hat g2 = hat.g(3);
        g2.h(0, j);
        g2.o(1, i);
        g2.o(2, i2);
        this.dq.call(162109, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.CustomizeVideo
    public void reportVideoFinish() {
        this.dq.call(162105, hat.g(0).k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.CustomizeVideo
    public void reportVideoPause(long j) {
        hat g2 = hat.g(1);
        g2.h(0, j);
        this.dq.call(162103, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.CustomizeVideo
    public void reportVideoStart() {
        this.dq.call(162102, hat.g(0).k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFeedAd.CustomizeVideo
    public void reportVideoStartError(int i, int i2) {
        hat g2 = hat.g(2);
        g2.o(0, i);
        g2.o(1, i2);
        this.dq.call(162108, g2.k(), Void.class);
    }
}
