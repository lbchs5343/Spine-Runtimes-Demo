package com.bytedance.sdk.openadsdk.f.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import g.hat;

/* loaded from: classes3.dex */
public class ia implements TTAdDislike {
    private final Bridge dq;

    public ia(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdDislike
    public boolean isShow() {
        return ((Boolean) this.dq.call(240105, hat.g(0).k(), Boolean.TYPE)).booleanValue();
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdDislike
    public void resetDislikeStatus() {
        this.dq.call(240104, hat.g(0).k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdDislike
    public void setDislikeInteractionCallback(TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        hat g2 = hat.g(1);
        g2.m(0, new com.bytedance.sdk.openadsdk.gh.dq.dq.dq.dq(dislikeInteractionCallback));
        this.dq.call(240102, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdDislike
    public void setDislikeSource(String str) {
        hat g2 = hat.g(1);
        g2.n(0, str);
        this.dq.call(240103, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdDislike
    public void showDislikeDialog() {
        this.dq.call(240101, hat.g(0).k(), Void.class);
    }
}
