package com.bytedance.sdk.gromore.dq.dq.p;

import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class o extends com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s {
    private gh dq;

    public o(gh ghVar) {
        this.dq = ghVar;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.ox
    public List<com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.d> getAdLoadInfo() {
        if (this.dq == null) {
            return new LinkedList();
        }
        LinkedList linkedList = new LinkedList();
        for (int i = 0; i < this.dq.d().size(); i++) {
            linkedList.add(new ia(this.dq.d().get(i)));
        }
        return linkedList;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.ox
    public com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq getBestEcpm() {
        gh ghVar = this.dq;
        return ghVar != null ? new mn(ghVar.p()) : new mn(null);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.ox
    public List<com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq> getCacheList() {
        if (this.dq == null) {
            return new LinkedList();
        }
        LinkedList linkedList = new LinkedList();
        for (int i = 0; i < this.dq.s().size(); i++) {
            linkedList.add(new mn(this.dq.s().get(i)));
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
            linkedList.add(new mn(this.dq.ox().get(i)));
        }
        return linkedList;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.ox
    public com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.dq getShowEcpm() {
        gh ghVar = this.dq;
        return ghVar != null ? new mn(ghVar.iw()) : new mn(null);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s
    public boolean hasDislike() {
        gh ghVar = this.dq;
        if (ghVar != null) {
            return ghVar.mn();
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s
    public boolean isExpress() {
        gh ghVar = this.dq;
        if (ghVar != null) {
            return ghVar.ia();
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.ox
    public boolean isReady() {
        gh ghVar = this.dq;
        if (ghVar != null) {
            return ghVar.dq();
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s
    public void onPause() {
        gh ghVar = this.dq;
        if (ghVar != null) {
            ghVar.o();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s
    public void onResume() {
        gh ghVar = this.dq;
        if (ghVar != null) {
            ghVar.kk();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s
    public void setShakeViewListener(final com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.iw iwVar) {
        gh ghVar = this.dq;
        if (ghVar != null) {
            ghVar.dq(new r() { // from class: com.bytedance.sdk.gromore.dq.dq.p.o.1
                @Override // com.bytedance.sdk.gromore.dq.dq.p.r
                public void dq() {
                    com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.iw iwVar2 = iwVar;
                    if (iwVar2 != null) {
                        iwVar2.dq();
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s
    public void setUseCustomVideo(boolean z) {
        gh ghVar = this.dq;
        if (ghVar != null) {
            ghVar.dq(z);
        }
    }
}
