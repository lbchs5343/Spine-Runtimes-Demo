package com.bytedance.sdk.openadsdk.f.dq.ox;

import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.AdConfig;
import g.hat;
import java.util.Map;

/* loaded from: classes3.dex */
public class dq {
    public static final ValueSet dq(final AdConfig adConfig) {
        hat f2 = hat.f();
        if (adConfig == null) {
            return null;
        }
        f2.n(261001, adConfig.getAppId());
        f2.n(261002, adConfig.getAppName());
        f2.i(261003, adConfig.isPaid());
        f2.n(261004, adConfig.getKeywords());
        f2.n(261005, adConfig.getData());
        f2.o(261006, adConfig.getTitleBarTheme());
        f2.i(261007, adConfig.isAllowShowNotify());
        f2.i(261008, adConfig.isDebug());
        f2.m(261009, adConfig.getDirectDownloadNetworkType());
        f2.i(261011, adConfig.isSupportMultiProcess());
        f2.m(261012, adConfig.getCustomController() != null ? p.dq(adConfig.getCustomController()) : null);
        f2.m(261013, new ValueSet.ValueGetter<Integer>() { // from class: com.bytedance.sdk.openadsdk.f.dq.ox.dq.1
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(AdConfig.this.getPluginUpdateConfig());
            }
        });
        f2.m(261014, new ValueSet.ValueGetter<Integer>() { // from class: com.bytedance.sdk.openadsdk.f.dq.ox.dq.2
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(AdConfig.this.getAgeGroup());
            }
        });
        f2.m(261015, new ValueSet.ValueGetter<Integer>() { // from class: com.bytedance.sdk.openadsdk.f.dq.ox.dq.3
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(AdConfig.this.getThemeStatus());
            }
        });
        f2.m(261016, adConfig.getMediationConfig() != null ? com.bytedance.sdk.openadsdk.mediation.init.dq.dq.dq.dq.dq(adConfig.getMediationConfig()) : null);
        f2.i(261017, adConfig.isUseMediation());
        f2.m(261018, new ValueSet.ValueGetter<Map>() { // from class: com.bytedance.sdk.openadsdk.f.dq.ox.dq.4
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Map get() {
                return AdConfig.this.getInitExtra();
            }
        });
        return f2.k();
    }
}
