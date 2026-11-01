package com.bytedance.sdk.openadsdk.f.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.CSJAdError;
import g.hat;

/* loaded from: classes3.dex */
public class dq extends CSJAdError {
    private final Bridge dq;

    public dq(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    @Override // com.bytedance.sdk.openadsdk.CSJAdError
    public int getCode() {
        return this.dq.values().intValue(263001);
    }

    @Override // com.bytedance.sdk.openadsdk.CSJAdError
    public String getMsg() {
        return (String) this.dq.values().objectValue(263002, String.class);
    }
}
