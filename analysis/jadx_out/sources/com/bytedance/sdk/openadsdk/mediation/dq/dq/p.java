package com.bytedance.sdk.openadsdk.mediation.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdNative;

/* loaded from: classes3.dex */
public class p extends com.bytedance.sdk.openadsdk.r.dq.dq.dq.ox {
    private TTAdNative.FullScreenVideoAdListener dq;

    public p(TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener) {
        super(fullScreenVideoAdListener);
        this.dq = fullScreenVideoAdListener;
    }

    @Override // com.bytedance.sdk.openadsdk.r.dq.dq.dq.ox, com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 132102) {
            if (this.dq != null) {
                this.dq.onFullScreenVideoAdLoad(new mp((Bridge) valueSet.objectValue(0, Bridge.class)));
                return null;
            }
        } else if (i == 132103 && this.dq != null) {
            this.dq.onFullScreenVideoCached(new mp((Bridge) valueSet.objectValue(0, Bridge.class)));
            return null;
        }
        return (T) super.call(i, valueSet, cls);
    }
}
