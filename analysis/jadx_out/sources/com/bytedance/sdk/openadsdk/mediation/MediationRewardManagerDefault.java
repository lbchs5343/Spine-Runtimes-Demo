package com.bytedance.sdk.openadsdk.mediation;

import com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.d;
import com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq;
import com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.iw;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes3.dex */
public class MediationRewardManagerDefault extends iw {
    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.iw
    public void destroy() {
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.ox
    public List<d> getAdLoadInfo() {
        return new LinkedList();
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.ox
    public MediationAdEcpmInfoDefault getBestEcpm() {
        return new MediationAdEcpmInfoDefault();
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.ox
    public List<dq> getCacheList() {
        return new LinkedList();
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.ox
    public List<dq> getMultiBiddingEcpm() {
        return new LinkedList();
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.ox
    public MediationAdEcpmInfoDefault getShowEcpm() {
        return new MediationAdEcpmInfoDefault();
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.ox
    public boolean isReady() {
        return true;
    }
}
