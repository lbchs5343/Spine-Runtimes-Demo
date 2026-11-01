package com.bytedance.sdk.openadsdk.wp.dq.dq.dq;

import android.view.View;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import g.hat;

/* loaded from: classes3.dex */
public class ox implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final TTNativeAd.ExpressRenderListener f3915d;
    private ValueSet dq = hat.f19147b;

    public ox(TTNativeAd.ExpressRenderListener expressRenderListener) {
        this.f3915d = expressRenderListener;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (this.f3915d != null && i == 142101) {
            this.f3915d.onRenderSuccess((View) valueSet.objectValue(0, View.class), valueSet.floatValue(1), valueSet.floatValue(2), valueSet.booleanValue(3));
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return this.dq;
    }
}
