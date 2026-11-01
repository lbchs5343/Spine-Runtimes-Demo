package com.bytedance.sdk.openadsdk.mediation.bridge.valueset;

import android.content.Context;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;

/* loaded from: classes3.dex */
public class MediationLoaderConfig {
    private ValueSet dq;

    private MediationLoaderConfig(ValueSet valueSet) {
        if (valueSet != null) {
            ValueSet valueSet2 = (ValueSet) valueSet.objectValue(8424, ValueSet.class);
            if (valueSet2 != null) {
                this.dq = valueSet2;
            } else {
                this.dq = valueSet;
            }
        }
    }

    public static MediationLoaderConfig create(ValueSet valueSet) {
        return new MediationLoaderConfig(valueSet);
    }

    private boolean dq() {
        ValueSet valueSet = this.dq;
        return (valueSet == null || valueSet.isEmpty()) ? false : true;
    }

    public String getADNName() {
        return dq() ? this.dq.stringValue(AVMDLDataLoader.KeyIsLiveGetPlayCacheSec) : "";
    }

    public ValueSet getAdSlotValueSet() {
        if (dq()) {
            return (ValueSet) this.dq.objectValue(8548, ValueSet.class);
        }
        return null;
    }

    public int getAdType() {
        if (dq()) {
            return this.dq.intValue(AVMDLDataLoader.KeyIsLiveMaxTrySwitchP2pTimes);
        }
        return 0;
    }

    public String getClassName() {
        return dq() ? this.dq.stringValue(AVMDLDataLoader.KeyIsLiveMobileUploadAllow) : "";
    }

    public Context getContext() {
        if (dq()) {
            return (Context) this.dq.objectValue(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, Context.class);
        }
        return null;
    }

    public Bridge getGMCustomAdLoader() {
        if (dq()) {
            return (Bridge) this.dq.objectValue(AVMDLDataLoader.KeyIsLiveMobileDownloadAllow, Bridge.class);
        }
        return null;
    }

    public ValueSet getMediationCustomServiceConfigValue() {
        if (dq()) {
            return (ValueSet) this.dq.objectValue(8546, ValueSet.class);
        }
        return null;
    }
}
