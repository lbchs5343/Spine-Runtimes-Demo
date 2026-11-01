package com.bytedance.sdk.openadsdk.core.ia.dq.dq.d;

import java.util.Map;

/* loaded from: classes3.dex */
public class d implements com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq f2948d;
    private com.bytedance.sdk.openadsdk.core.video.d.d dq;

    public d(com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq dqVar, com.bytedance.sdk.openadsdk.core.video.d.d dVar) {
        this.f2948d = dqVar;
        this.dq = dVar;
    }

    public d(com.bytedance.sdk.openadsdk.core.video.d.d dVar) {
        this.dq = dVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq
    public boolean dq(Map<String, Object> map) {
        com.bytedance.sdk.openadsdk.core.video.d.d dVar = this.dq;
        if (dVar == null) {
            return this.f2948d.dq(map);
        }
        if (dVar.dq()) {
            return true;
        }
        com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq dqVar = this.f2948d;
        if (dqVar == null) {
            return false;
        }
        return dqVar.dq(map);
    }
}
