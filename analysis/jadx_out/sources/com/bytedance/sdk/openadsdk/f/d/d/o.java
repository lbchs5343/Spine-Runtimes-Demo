package com.bytedance.sdk.openadsdk.f.d.d;

import android.graphics.Bitmap;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;

/* loaded from: classes3.dex */
public abstract class o extends no implements Bridge {
    private ValueSet dq;

    private ValueSet kx() {
        return hat.e(super.values()).k();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.no, com.bytedance.sdk.openadsdk.f.d.d.q, com.bytedance.sdk.openadsdk.f.d.d.kk, com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        switch (i) {
            case 170101:
                dq(valueSet.booleanValue(0));
                break;
            case 170102:
                dq((Bitmap) valueSet.objectValue(0, Bitmap.class), valueSet.intValue(1));
                break;
            case 170103:
                dq(new com.bytedance.sdk.openadsdk.i.dq.d.dq.dq((Bridge) valueSet.objectValue(0, Bridge.class)));
                break;
        }
        return (T) super.call(i, valueSet, cls);
    }

    public abstract void dq(Bitmap bitmap, int i);

    public abstract void dq(com.bytedance.sdk.openadsdk.i.dq.d.dq.dq dqVar);

    public abstract void dq(boolean z);

    @Override // com.bytedance.sdk.openadsdk.f.d.d.no, com.bytedance.sdk.openadsdk.f.d.d.q, com.bytedance.sdk.openadsdk.f.d.d.kk, com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        ValueSet valueSet = this.dq;
        if (valueSet != null) {
            return valueSet;
        }
        ValueSet kx = kx();
        this.dq = kx;
        return kx;
    }
}
