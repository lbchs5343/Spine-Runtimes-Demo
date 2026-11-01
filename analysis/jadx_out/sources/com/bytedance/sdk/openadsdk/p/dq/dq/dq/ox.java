package com.bytedance.sdk.openadsdk.p.dq.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.CSJSplashAd;
import g.hat;

/* loaded from: classes3.dex */
public class ox implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final CSJSplashAd.SplashClickEyeListener f3849d;
    private ValueSet dq = hat.f19147b;

    public ox(CSJSplashAd.SplashClickEyeListener splashClickEyeListener) {
        this.f3849d = splashClickEyeListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
    
        return null;
     */
    @Override // com.bykv.vk.openvk.api.proto.Caller
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        CSJSplashAd.SplashClickEyeListener splashClickEyeListener = this.f3849d;
        if (splashClickEyeListener != null) {
            switch (i) {
                case 113101:
                    this.f3849d.onSplashClickEyeReadyToShow(new com.bytedance.sdk.openadsdk.f.dq.dq.d((Bridge) valueSet.objectValue(0, Bridge.class)));
                    break;
                case 113102:
                    splashClickEyeListener.onSplashClickEyeClick();
                    break;
                case 113103:
                    splashClickEyeListener.onSplashClickEyeClose();
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
