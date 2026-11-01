package com.bytedance.sdk.openadsdk.f.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdNative;
import g.hat;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public class d implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final TTAdNative.CSJSplashAdListener f3752d;
    private ValueSet dq = hat.f19147b;

    public d(TTAdNative.CSJSplashAdListener cSJSplashAdListener) {
        this.f3752d = cSJSplashAdListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (this.f3752d != null) {
            switch (i) {
                case 114102:
                    Bridge bridge = (Bridge) valueSet.objectValue(0, Bridge.class);
                    com.bytedance.sdk.openadsdk.f.dq.dq.d dVar = new com.bytedance.sdk.openadsdk.f.dq.dq.d(bridge);
                    if (bridge != null) {
                        try {
                            if (bridge.values().intValue(1) >= 5700) {
                                this.f3752d.onSplashLoadSuccess(dVar);
                            } else {
                                Method declaredMethod = this.f3752d.getClass().getDeclaredMethod("onSplashLoadSuccess", null);
                                if (declaredMethod != null) {
                                    declaredMethod.invoke(this.f3752d, null);
                                }
                            }
                            break;
                        } catch (Exception e2) {
                            e2.printStackTrace();
                            break;
                        }
                    }
                    break;
                case 114103:
                    this.f3752d.onSplashLoadFail(new com.bytedance.sdk.openadsdk.f.dq.dq.dq((Bridge) valueSet.objectValue(0, Bridge.class)));
                    break;
                case 114104:
                    this.f3752d.onSplashRenderSuccess(new com.bytedance.sdk.openadsdk.f.dq.dq.d((Bridge) valueSet.objectValue(0, Bridge.class)));
                    break;
                case 114105:
                    this.f3752d.onSplashRenderFail(new com.bytedance.sdk.openadsdk.f.dq.dq.d((Bridge) valueSet.objectValue(0, Bridge.class)), new com.bytedance.sdk.openadsdk.f.dq.dq.dq((Bridge) valueSet.objectValue(1, Bridge.class)));
                    break;
            }
        } else {
            return null;
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return this.dq;
    }
}
