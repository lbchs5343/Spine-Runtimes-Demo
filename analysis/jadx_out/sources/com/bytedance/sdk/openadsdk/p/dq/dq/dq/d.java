package com.bytedance.sdk.openadsdk.p.dq.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.CSJSplashAd;
import g.hat;

/* loaded from: classes3.dex */
public class d implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final CSJSplashAd.SplashCardListener f3847d;
    private ValueSet dq = hat.f19147b;

    public d(CSJSplashAd.SplashCardListener splashCardListener) {
        this.f3847d = splashCardListener;
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
        CSJSplashAd.SplashCardListener splashCardListener = this.f3847d;
        if (splashCardListener != null) {
            switch (i) {
                case 112102:
                    splashCardListener.onSplashCardClick();
                    break;
                case 112103:
                    splashCardListener.onSplashCardClose();
                    break;
                case 121201:
                    this.f3847d.onSplashCardReadyToShow(new com.bytedance.sdk.openadsdk.f.dq.dq.d((Bridge) valueSet.objectValue(0, Bridge.class)));
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
