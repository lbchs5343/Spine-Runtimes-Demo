package com.bytedance.sdk.openadsdk.core.cd;

import com.bytedance.sdk.openadsdk.core.no;

/* loaded from: classes3.dex */
public class p extends com.bytedance.sdk.openadsdk.q.dq {
    private com.bytedance.sdk.openadsdk.q.p s() {
        String iw = com.bytedance.sdk.openadsdk.core.mn.dq.iw();
        iw.getClass();
        switch (iw) {
            case "2g":
                return com.bytedance.sdk.openadsdk.q.p.TYPE_2G;
            case "3g":
                return com.bytedance.sdk.openadsdk.q.p.TYPE_3G;
            case "4g":
                return com.bytedance.sdk.openadsdk.q.p.TYPE_4G;
            case "5g":
                return com.bytedance.sdk.openadsdk.q.p.TYPE_5G;
            case "wifi":
                return com.bytedance.sdk.openadsdk.q.p.TYPE_WIFI;
            default:
                return com.bytedance.sdk.openadsdk.q.p.TYPE_UNKNOWN;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.q.dq
    public boolean d() {
        return no.ia().s();
    }

    @Override // com.bytedance.sdk.openadsdk.q.dq
    public boolean ox() {
        return super.ox();
    }

    @Override // com.bytedance.sdk.openadsdk.q.dq
    public com.bytedance.sdk.openadsdk.q.p p() {
        return s();
    }
}
