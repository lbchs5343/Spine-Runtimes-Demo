package com.bytedance.sdk.openadsdk.r.dq.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.f.dq.dq.ig;
import g.hat;

/* loaded from: classes3.dex */
public class ox implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final TTAdNative.FullScreenVideoAdListener f3866d;
    private ValueSet dq = hat.f19147b;

    public ox(TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener) {
        this.f3866d = fullScreenVideoAdListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0045, code lost:
    
        return null;
     */
    @Override // com.bykv.vk.openvk.api.proto.Caller
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener = this.f3866d;
        if (fullScreenVideoAdListener != null) {
            switch (i) {
                case 132101:
                    this.f3866d.onError(valueSet.intValue(0), (String) valueSet.objectValue(1, String.class));
                    break;
                case 132102:
                    this.f3866d.onFullScreenVideoAdLoad(new ig((Bridge) valueSet.objectValue(0, Bridge.class)));
                    break;
                case 132103:
                    this.f3866d.onFullScreenVideoCached(new ig((Bridge) valueSet.objectValue(0, Bridge.class)));
                    break;
                case 132104:
                    fullScreenVideoAdListener.onFullScreenVideoCached();
                    break;
            }
        } else {
            return null;
        }
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return this.dq;
    }
}
