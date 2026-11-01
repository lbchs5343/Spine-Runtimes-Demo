package com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import g.hat;

/* loaded from: classes3.dex */
public class ox {
    private final Bridge dq;

    public ox(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    public String d() {
        return (String) this.dq.call(267002, hat.g(0).k(), String.class);
    }

    public String dq() {
        return (String) this.dq.call(267001, hat.g(0).k(), String.class);
    }

    public String ox() {
        return (String) this.dq.call(267003, hat.g(0).k(), String.class);
    }

    public String p() {
        return (String) this.dq.call(267004, hat.g(0).k(), String.class);
    }
}
