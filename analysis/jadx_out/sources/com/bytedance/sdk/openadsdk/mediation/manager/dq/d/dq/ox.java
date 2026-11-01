package com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class ox implements Bridge {
    private ValueSet dq;

    private ValueSet dq() {
        return hat.f().k();
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        switch (i) {
            case 270001:
                return (T) Boolean.class.cast(Boolean.valueOf(isReady()));
            case 270002:
                return (T) getAdLoadInfo();
            case 270003:
                return (T) getMultiBiddingEcpm();
            case 270004:
                return (T) getBestEcpm();
            case 270005:
                return (T) getCacheList();
            case 270006:
                return (T) getShowEcpm();
            default:
                return null;
        }
    }

    public abstract List<d> getAdLoadInfo();

    public abstract dq getBestEcpm();

    public abstract List<dq> getCacheList();

    public abstract List<dq> getMultiBiddingEcpm();

    public abstract dq getShowEcpm();

    public abstract boolean isReady();

    @Override // com.bykv.vk.openvk.api.proto.Bridge
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
