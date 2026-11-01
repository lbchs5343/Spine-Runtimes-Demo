package com.bytedance.sdk.openadsdk.live;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.android.live.base.api.callback.Callback;
import g.hat;

/* loaded from: classes3.dex */
public class dq implements Callback<Object> {
    private Bridge dq;

    public dq(Bridge bridge) {
        this.dq = bridge;
    }

    @Override // com.bytedance.android.live.base.api.callback.Callback
    public void invoke(Object obj) {
        Bridge bridge = this.dq;
        if (bridge != null) {
            hat f2 = hat.f();
            f2.f19148c.put(0, obj);
            bridge.call(1, f2.k(), null);
        }
    }
}
