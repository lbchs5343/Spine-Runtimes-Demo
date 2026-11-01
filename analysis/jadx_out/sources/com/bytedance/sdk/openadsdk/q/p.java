package com.bytedance.sdk.openadsdk.q;

import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;

/* loaded from: classes3.dex */
public enum p {
    TYPE_2G("2g"),
    TYPE_3G("3g"),
    TYPE_4G("4g"),
    TYPE_5G("5g"),
    TYPE_WIFI("wifi"),
    TYPE_MOBILE("mobile"),
    TYPE_UNKNOWN(MediationConfigUserInfoForSegment.GENDER_UNKNOWN);

    private String ia;

    p(String str) {
        this.ia = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.ia;
    }
}
