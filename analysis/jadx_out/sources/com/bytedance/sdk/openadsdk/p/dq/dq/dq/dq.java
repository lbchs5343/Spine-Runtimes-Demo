package com.bytedance.sdk.openadsdk.p.dq.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.CSJSplashAd;
import g.hat;

/* loaded from: classes3.dex */
public class dq implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final CSJSplashAd.SplashAdListener f3848d;
    private ValueSet dq = hat.f19147b;

    public dq(CSJSplashAd.SplashAdListener splashAdListener) {
        this.f3848d = splashAdListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0044, code lost:
    
        return null;
     */
    @Override // com.bykv.vk.openvk.api.proto.Caller
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (this.f3848d != null) {
            switch (i) {
                case 111101:
                    this.f3848d.onSplashAdShow(new com.bytedance.sdk.openadsdk.f.dq.dq.d((Bridge) valueSet.objectValue(0, Bridge.class)));
                    break;
                case 111102:
                    this.f3848d.onSplashAdClick(new com.bytedance.sdk.openadsdk.f.dq.dq.d((Bridge) valueSet.objectValue(0, Bridge.class)));
                    break;
                case 111103:
                    this.f3848d.onSplashAdClose(new com.bytedance.sdk.openadsdk.f.dq.dq.d((Bridge) valueSet.objectValue(0, Bridge.class)), valueSet.intValue(1));
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
