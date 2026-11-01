package com.bytedance.msdk.ox.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class ox extends com.bytedance.msdk.d.s {

    /* renamed from: d, reason: collision with root package name */
    protected Bridge f1125d;
    protected com.bytedance.msdk.ox.ox.d.dq.dq.d dq;

    public ox(com.bytedance.msdk.ox.ox.d.dq.dq.d dVar, Bridge bridge) {
        this.dq = dVar;
        this.f1125d = bridge;
    }

    @Override // com.bytedance.msdk.d.s
    public void ce() {
        super.ce();
        com.bytedance.msdk.ox.ox.d.dq.dq.d dVar = this.dq;
        if (dVar != null) {
            dVar.no();
        }
    }

    @Override // com.bytedance.msdk.d.s
    public void d(Map<String, Object> map) {
        dq(true, dk(), -1, null);
    }

    @Override // com.bytedance.msdk.d.s
    public void dq(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        int lossReason = MediationConstant.BiddingLossReason.OTHER.getLossReason();
        try {
            Object obj = map.get(MediationConstant.BIDDING_LOSE_REASON);
            if (obj instanceof MediationConstant.BiddingLossReason) {
                lossReason = ((MediationConstant.BiddingLossReason) obj).getLossReason();
            }
        } catch (Exception unused) {
        }
        dq(false, -1.0d, lossReason, null);
    }

    public void dq(boolean z, double d2, int i, Map<String, Object> map) {
        com.bytedance.msdk.ox.ox.d.dq.dq.d dVar = this.dq;
        if (dVar != null) {
            dVar.dq(z, d2, i, map);
        }
    }

    @Override // com.bytedance.msdk.d.s
    public void er() {
        super.er();
        com.bytedance.msdk.ox.ox.d.dq.dq.d dVar = this.dq;
        if (dVar != null) {
            dVar.ig();
        }
    }

    @Override // com.bytedance.msdk.d.s
    public MediationConstant.AdIsReadyStatus kx() {
        com.bytedance.msdk.ox.ox.d.dq.dq.d dVar = this.dq;
        return dVar != null ? dVar.o() : super.kx();
    }

    @Override // com.bytedance.msdk.d.s
    public void p() {
        super.p();
        com.bytedance.msdk.ox.ox.d.dq.dq.d dVar = this.dq;
        if (dVar != null) {
            dVar.mp();
        }
    }

    @Override // com.bytedance.msdk.d.s
    public boolean s() {
        return false;
    }
}
