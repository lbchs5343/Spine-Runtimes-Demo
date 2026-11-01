package com.bytedance.sdk.openadsdk.mediation.custom;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.awf;

/* loaded from: classes3.dex */
public final class MediationCustomServiceConfig {

    /* renamed from: d, reason: collision with root package name */
    private String f3829d;
    private String dq;
    private int ox;
    private int p;
    private String s;

    public MediationCustomServiceConfig(ValueSet valueSet) {
        if (valueSet != null) {
            this.dq = valueSet.stringValue(AVMDLDataLoader.KeyIsLiveGetPlayCacheSec);
            this.f3829d = valueSet.stringValue(2);
            this.ox = valueSet.intValue(AVMDLDataLoader.KeyIsLiveMaxTrySwitchP2pTimes);
            this.p = valueSet.intValue(8094);
            this.s = valueSet.stringValue(8547);
        }
    }

    public MediationCustomServiceConfig(String str, String str2, int i, int i2, String str3) {
        this.dq = str;
        this.f3829d = str2;
        this.ox = i;
        this.p = i2;
        this.s = str3;
    }

    public String getADNNetworkName() {
        return this.dq;
    }

    public String getADNNetworkSlotId() {
        return this.f3829d;
    }

    public int getAdStyleType() {
        return this.ox;
    }

    public String getCustomAdapterJson() {
        return this.s;
    }

    public int getSubAdtype() {
        return this.p;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("MediationCustomServiceConfig{mADNNetworkName='");
        sb.append(this.dq);
        sb.append("', mADNNetworkSlotId='");
        sb.append(this.f3829d);
        sb.append("', mAdStyleType=");
        sb.append(this.ox);
        sb.append(", mSubAdtype=");
        sb.append(this.p);
        sb.append(", mCustomAdapterJson='");
        return awf.ad(sb, this.s, "'}");
    }
}
