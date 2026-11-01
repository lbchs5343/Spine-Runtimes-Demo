package com.bytedance.sdk.openadsdk.f.dq.ox;

import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTCustomController;
import g.hat;
import java.util.Map;

/* loaded from: classes3.dex */
public class p {
    public static final ValueSet dq(final TTCustomController tTCustomController) {
        hat f2 = hat.f();
        if (tTCustomController == null) {
            return null;
        }
        f2.m(262101, new ValueSet.ValueGetter<Boolean>() { // from class: com.bytedance.sdk.openadsdk.f.dq.ox.p.1
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                return Boolean.valueOf(TTCustomController.this.isCanUseLocation());
            }
        });
        f2.m(262102, new ValueSet.ValueGetter<ValueSet>() { // from class: com.bytedance.sdk.openadsdk.f.dq.ox.p.6
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public ValueSet get() {
                return ox.dq(TTCustomController.this.getTTLocation());
            }
        });
        f2.m(262103, new ValueSet.ValueGetter<Boolean>() { // from class: com.bytedance.sdk.openadsdk.f.dq.ox.p.7
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                return Boolean.valueOf(TTCustomController.this.alist());
            }
        });
        f2.m(262104, new ValueSet.ValueGetter<Boolean>() { // from class: com.bytedance.sdk.openadsdk.f.dq.ox.p.8
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                return Boolean.valueOf(TTCustomController.this.isCanUsePhoneState());
            }
        });
        f2.m(262105, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.f.dq.ox.p.9
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return TTCustomController.this.getDevImei();
            }
        });
        f2.m(262106, new ValueSet.ValueGetter<Boolean>() { // from class: com.bytedance.sdk.openadsdk.f.dq.ox.p.10
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                return Boolean.valueOf(TTCustomController.this.isCanUseWifiState());
            }
        });
        f2.m(262107, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.f.dq.ox.p.11
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return TTCustomController.this.getMacAddress();
            }
        });
        f2.m(262108, new ValueSet.ValueGetter<Boolean>() { // from class: com.bytedance.sdk.openadsdk.f.dq.ox.p.12
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                return Boolean.valueOf(TTCustomController.this.isCanUseWriteExternal());
            }
        });
        f2.m(262109, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.f.dq.ox.p.13
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return TTCustomController.this.getDevOaid();
            }
        });
        f2.m(262110, new ValueSet.ValueGetter<Boolean>() { // from class: com.bytedance.sdk.openadsdk.f.dq.ox.p.2
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                return Boolean.valueOf(TTCustomController.this.isCanUseAndroidId());
            }
        });
        f2.m(262113, tTCustomController.getMediationPrivacyConfig() != null ? com.bytedance.sdk.openadsdk.mediation.init.dq.dq.dq.d.dq(tTCustomController.getMediationPrivacyConfig()) : null);
        f2.m(262112, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.f.dq.ox.p.3
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return TTCustomController.this.getAndroidId();
            }
        });
        f2.m(262111, new ValueSet.ValueGetter<Boolean>() { // from class: com.bytedance.sdk.openadsdk.f.dq.ox.p.4
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                return Boolean.valueOf(TTCustomController.this.isCanUsePermissionRecordAudio());
            }
        });
        f2.m(262119, new ValueSet.ValueGetter<Map>() { // from class: com.bytedance.sdk.openadsdk.f.dq.ox.p.5
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Map get() {
                return TTCustomController.this.userPrivacyConfig();
            }
        });
        return f2.k();
    }
}
