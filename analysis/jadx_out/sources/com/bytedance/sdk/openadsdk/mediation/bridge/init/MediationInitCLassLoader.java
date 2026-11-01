package com.bytedance.sdk.openadsdk.mediation.bridge.init;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
import com.bytedance.sdk.openadsdk.mediation.bridge.MediationValueSetBuilder;
import com.bytedance.sdk.openadsdk.mediation.bridge.valueset.MediationInitConfig;

/* loaded from: classes3.dex */
public class MediationInitCLassLoader implements Bridge {
    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 8100) {
            MediationInitConfig create = MediationInitConfig.create(valueSet);
            try {
                Object newInstance = ((!create.isCustom() || create.getCustomInitConfigValueSet() == null) ? Class.forName(create.getClassName()) : Class.forName(create.getCustomInitConfigValueSet().stringValue(8536))).newInstance();
                if (newInstance instanceof Bridge) {
                    MediationValueSetBuilder create2 = MediationValueSetBuilder.create();
                    create2.add(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, TTAppContextHolder.getContext());
                    create2.add(8424, valueSet);
                    ((Bridge) newInstance).call(8240, create2.build(), null);
                }
            } catch (ClassNotFoundException e2) {
                e2.printStackTrace();
            } catch (IllegalAccessException e3) {
                e3.printStackTrace();
            } catch (InstantiationException e4) {
                e4.printStackTrace();
            }
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return null;
    }
}
