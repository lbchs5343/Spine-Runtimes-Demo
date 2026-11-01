package com.bytedance.sdk.openadsdk.f.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.TTWidgetManager;
import g.hat;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class fw extends TTWidgetManager {
    private final Bridge dq;

    public fw(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    @Override // com.bytedance.sdk.openadsdk.TTWidgetManager
    public boolean updateWidgetWithType(int i, JSONObject jSONObject) {
        hat g2 = hat.g(2);
        g2.o(0, i);
        g2.m(1, jSONObject);
        return ((Boolean) this.dq.call(264001, g2.k(), Boolean.TYPE)).booleanValue();
    }
}
