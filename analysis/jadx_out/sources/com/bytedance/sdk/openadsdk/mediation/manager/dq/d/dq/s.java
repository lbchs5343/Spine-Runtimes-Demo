package com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;

/* loaded from: classes3.dex */
public abstract class s extends ox implements Bridge {
    private ValueSet dq;

    private ValueSet dq() {
        hat e2 = hat.e(super.values());
        e2.m(270008, new ValueSet.ValueGetter<Boolean>() { // from class: com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s.1
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                return Boolean.valueOf(s.this.hasDislike());
            }
        });
        e2.m(270011, new ValueSet.ValueGetter<Boolean>() { // from class: com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s.2
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                return Boolean.valueOf(s.this.isExpress());
            }
        });
        return e2.k();
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.ox, com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        switch (i) {
            case 270009:
                setUseCustomVideo(valueSet.booleanValue(0));
                break;
            case 270010:
                setShakeViewListener(new com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.iw((Bridge) valueSet.objectValue(0, Bridge.class)));
                break;
            case 271048:
                onResume();
                break;
            case 271049:
                onPause();
                break;
        }
        return (T) super.call(i, valueSet, cls);
    }

    public abstract boolean hasDislike();

    public abstract boolean isExpress();

    public abstract void onPause();

    public abstract void onResume();

    public abstract void setShakeViewListener(com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.iw iwVar);

    public abstract void setUseCustomVideo(boolean z);

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.ox, com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        ValueSet valueSet = this.dq;
        if (valueSet != null) {
            return valueSet;
        }
        ValueSet dq = dq();
        this.dq = dq;
        return dq;
    }
}
