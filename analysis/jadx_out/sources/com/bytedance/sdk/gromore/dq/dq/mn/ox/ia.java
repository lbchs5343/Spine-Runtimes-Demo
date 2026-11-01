package com.bytedance.sdk.gromore.dq.dq.mn.ox;

import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class ia extends com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.p {
    private com.bytedance.sdk.gromore.dq.dq.s.iw dq;

    public ia(com.bytedance.sdk.gromore.dq.dq.s.iw iwVar) {
        this.dq = iwVar;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.p
    public void destroy() {
        com.bytedance.sdk.gromore.dq.dq.s.iw iwVar = this.dq;
        if (iwVar != null) {
            iwVar.mn();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.ox
    public List<com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.d> getAdLoadInfo() {
        if (this.dq == null) {
            return new LinkedList();
        }
        LinkedList linkedList = new LinkedList();
        for (int i = 0; i < this.dq.d().size(); i++) {
            linkedList.add(new com.bytedance.sdk.gromore.dq.dq.p.ia(this.dq.d().get(i)));
        }
        return linkedList;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.ox
    public com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq getBestEcpm() {
        com.bytedance.sdk.gromore.dq.dq.s.iw iwVar = this.dq;
        return iwVar != null ? new com.bytedance.sdk.gromore.dq.dq.p.mn(iwVar.p()) : new com.bytedance.sdk.gromore.dq.dq.p.mn(null);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.ox
    public List<com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq> getCacheList() {
        if (this.dq == null) {
            return new LinkedList();
        }
        LinkedList linkedList = new LinkedList();
        for (int i = 0; i < this.dq.s().size(); i++) {
            linkedList.add(new com.bytedance.sdk.gromore.dq.dq.p.mn(this.dq.s().get(i)));
        }
        return linkedList;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.ox
    public List<com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq> getMultiBiddingEcpm() {
        if (this.dq == null) {
            return new LinkedList();
        }
        LinkedList linkedList = new LinkedList();
        for (int i = 0; i < this.dq.ox().size(); i++) {
            linkedList.add(new com.bytedance.sdk.gromore.dq.dq.p.mn(this.dq.ox().get(i)));
        }
        return linkedList;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.ox
    public com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq getShowEcpm() {
        com.bytedance.sdk.gromore.dq.dq.s.iw iwVar = this.dq;
        return iwVar != null ? new com.bytedance.sdk.gromore.dq.dq.p.mn(iwVar.iw()) : new com.bytedance.sdk.gromore.dq.dq.p.mn(null);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.ox
    public boolean isReady() {
        com.bytedance.sdk.gromore.dq.dq.s.iw iwVar = this.dq;
        if (iwVar != null) {
            return iwVar.dq();
        }
        return false;
    }
}
