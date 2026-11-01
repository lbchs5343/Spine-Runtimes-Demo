package com.bytedance.sdk.gromore.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.ox;
import com.bytedance.sdk.openadsdk.mediation.dq.d.d;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.mediation.dq.d.dq f2303d;
    private ValueSet dq;

    public dq(ValueSet valueSet) {
        this.dq = valueSet;
        this.f2303d = new com.bytedance.sdk.openadsdk.mediation.dq.d.dq(valueSet);
    }

    public int d() {
        return this.f2303d.o();
    }

    public int dq() {
        return this.f2303d.kk();
    }

    public Bridge ia() {
        ValueSet valueSet = this.dq;
        if (valueSet != null) {
            return (Bridge) valueSet.objectValue(8302, Bridge.class);
        }
        return null;
    }

    public d iw() {
        com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar = this.f2303d;
        if (dqVar != null) {
            return dqVar.dq();
        }
        return null;
    }

    public int kk() {
        ValueSet valueSet = this.dq;
        if (valueSet != null) {
            return valueSet.intValue(3);
        }
        return 0;
    }

    public ox mn() {
        if (iw() != null) {
            return iw().mp();
        }
        return null;
    }

    public float ox() {
        return this.f2303d.no();
    }

    public float p() {
        return this.f2303d.ig();
    }

    public String s() {
        return this.f2303d.mn();
    }
}
