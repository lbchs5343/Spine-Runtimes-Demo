package com.bytedance.sdk.openadsdk.mediation;

import com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.iw;
import com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.d;
import com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq;
import com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes3.dex */
public class MediationNativeManagerDefault extends s {
    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.ox
    public List<d> getAdLoadInfo() {
        return new LinkedList();
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.ox
    public dq getBestEcpm() {
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
    public dq getShowEcpm() {
        return new MediationAdEcpmInfoDefault();
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s
    public boolean hasDislike() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s
    public boolean isExpress() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.ox
    public boolean isReady() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s
    public void onPause() {
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s
    public void onResume() {
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s
    public void setShakeViewListener(iw iwVar) {
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s
    public void setUseCustomVideo(boolean z) {
    }
}
