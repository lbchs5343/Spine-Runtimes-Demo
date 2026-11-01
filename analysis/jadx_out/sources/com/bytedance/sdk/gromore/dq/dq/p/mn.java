package com.bytedance.sdk.gromore.dq.dq.p;

import java.util.Map;

/* loaded from: classes.dex */
public class mn extends com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq {
    private com.bytedance.sdk.gromore.dq.dq.d dq;

    public mn(com.bytedance.sdk.gromore.dq.dq.d dVar) {
        this.dq = dVar;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq
    public String getAbTestId() {
        com.bytedance.sdk.gromore.dq.dq.d dVar = this.dq;
        return dVar != null ? dVar.jy() : "";
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq
    public String getChannel() {
        com.bytedance.sdk.gromore.dq.dq.d dVar = this.dq;
        return dVar != null ? dVar.mp() : "";
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq
    public Map<String, String> getCustomData() {
        com.bytedance.sdk.gromore.dq.dq.d dVar = this.dq;
        if (dVar != null) {
            return dVar.dq();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq
    public String getCustomSdkName() {
        com.bytedance.sdk.gromore.dq.dq.d dVar = this.dq;
        return dVar != null ? dVar.ox() : "";
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq
    public String getEcpm() {
        com.bytedance.sdk.gromore.dq.dq.d dVar = this.dq;
        return dVar != null ? dVar.iw() : "";
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq
    public String getErrorMsg() {
        com.bytedance.sdk.gromore.dq.dq.d dVar = this.dq;
        return dVar != null ? dVar.ia() : "";
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq
    public String getLevelTag() {
        com.bytedance.sdk.gromore.dq.dq.d dVar = this.dq;
        return dVar != null ? dVar.s() : "";
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq
    public int getReqBiddingType() {
        com.bytedance.sdk.gromore.dq.dq.d dVar = this.dq;
        if (dVar != null) {
            return dVar.mn();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq
    public String getRequestId() {
        com.bytedance.sdk.gromore.dq.dq.d dVar = this.dq;
        return dVar != null ? dVar.kk() : "";
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq
    public String getRitType() {
        com.bytedance.sdk.gromore.dq.dq.d dVar = this.dq;
        return dVar != null ? dVar.o() : "";
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq
    public String getScenarioId() {
        com.bytedance.sdk.gromore.dq.dq.d dVar = this.dq;
        return dVar != null ? dVar.f() : "";
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq
    public String getSdkName() {
        com.bytedance.sdk.gromore.dq.dq.d dVar = this.dq;
        return dVar != null ? dVar.d() : "";
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq
    public String getSegmentId() {
        com.bytedance.sdk.gromore.dq.dq.d dVar = this.dq;
        return dVar != null ? dVar.ig() : "";
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq
    public String getSlotId() {
        com.bytedance.sdk.gromore.dq.dq.d dVar = this.dq;
        return dVar != null ? dVar.p() : "";
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq
    public String getSubChannel() {
        com.bytedance.sdk.gromore.dq.dq.d dVar = this.dq;
        return dVar != null ? dVar.q() : "";
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq
    public String getSubRitType() {
        com.bytedance.sdk.gromore.dq.dq.d dVar = this.dq;
        return dVar != null ? dVar.no() : "";
    }
}
