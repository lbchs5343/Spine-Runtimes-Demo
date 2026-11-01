package com.bytedance.sdk.openadsdk.wp.dq.d.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import g.hat;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {
    private final Bridge dq;

    public d(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    public void d() {
        this.dq.call(144105, hat.g(0).k(), Void.class);
    }

    public void d(JSONObject jSONObject) {
        hat g2 = hat.g(1);
        g2.m(0, jSONObject);
        this.dq.call(144103, g2.k(), Void.class);
    }

    public JSONObject dq() {
        return (JSONObject) this.dq.call(144102, hat.g(0).k(), JSONObject.class);
    }

    public void dq(JSONObject jSONObject) {
        hat g2 = hat.g(1);
        g2.m(0, jSONObject);
        this.dq.call(144101, g2.k(), Void.class);
    }

    public void ox(JSONObject jSONObject) {
        hat g2 = hat.g(1);
        g2.m(0, jSONObject);
        this.dq.call(144104, g2.k(), Void.class);
    }
}
