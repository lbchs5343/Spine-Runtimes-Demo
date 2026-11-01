package com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class dq implements Bridge {
    private ValueSet dq;

    private ValueSet dq() {
        hat f2 = hat.f();
        f2.m(271006, new ValueSet.ValueGetter<Map<String, String>>() { // from class: com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq.1
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Map<String, String> get() {
                return dq.this.getCustomData();
            }
        });
        f2.m(271007, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq.9
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return dq.this.getSdkName();
            }
        });
        f2.m(271008, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq.10
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return dq.this.getCustomSdkName();
            }
        });
        f2.m(271009, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq.11
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return dq.this.getSlotId();
            }
        });
        f2.m(271010, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq.12
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return dq.this.getLevelTag();
            }
        });
        f2.m(271011, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq.13
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return dq.this.getEcpm();
            }
        });
        f2.m(271012, new ValueSet.ValueGetter<Integer>() { // from class: com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq.14
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(dq.this.getReqBiddingType());
            }
        });
        f2.m(271013, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq.15
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return dq.this.getErrorMsg();
            }
        });
        f2.m(271014, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq.16
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return dq.this.getRequestId();
            }
        });
        f2.m(271015, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq.2
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return dq.this.getRitType();
            }
        });
        f2.m(271016, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq.3
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return dq.this.getSegmentId();
            }
        });
        f2.m(271017, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq.4
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return dq.this.getChannel();
            }
        });
        f2.m(271018, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq.5
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return dq.this.getSubChannel();
            }
        });
        f2.m(271019, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq.6
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return dq.this.getAbTestId();
            }
        });
        f2.m(271020, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq.7
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return dq.this.getScenarioId();
            }
        });
        f2.m(271051, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq.8
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return dq.this.getSubRitType();
            }
        });
        return f2.k();
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        return null;
    }

    public abstract String getAbTestId();

    public abstract String getChannel();

    public abstract Map<String, String> getCustomData();

    public abstract String getCustomSdkName();

    public abstract String getEcpm();

    public abstract String getErrorMsg();

    public abstract String getLevelTag();

    public abstract int getReqBiddingType();

    public abstract String getRequestId();

    public abstract String getRitType();

    public abstract String getScenarioId();

    public abstract String getSdkName();

    public abstract String getSegmentId();

    public abstract String getSlotId();

    public abstract String getSubChannel();

    public abstract String getSubRitType();

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
