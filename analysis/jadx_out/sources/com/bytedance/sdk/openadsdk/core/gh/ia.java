package com.bytedance.sdk.openadsdk.core.gh;

/* loaded from: classes3.dex */
class ia implements com.bytedance.sdk.component.ia.dq.dq.d {
    com.bytedance.sdk.component.kk.d.ox dq;

    public ia(com.bytedance.sdk.component.kk.d.ox oxVar) {
        this.dq = oxVar;
    }

    @Override // com.bytedance.sdk.component.ia.dq.dq.d
    public com.bytedance.sdk.component.ia.dq.dq.s dq() {
        com.bytedance.sdk.component.kk.d.ox oxVar = this.dq;
        if (oxVar == null) {
            return null;
        }
        return new kk(oxVar.dq());
    }

    @Override // com.bytedance.sdk.component.ia.dq.dq.d
    public void dq(String str) {
        com.bytedance.sdk.component.kk.d.ox oxVar = this.dq;
        if (oxVar != null) {
            oxVar.dq(str);
        }
    }

    @Override // com.bytedance.sdk.component.ia.dq.dq.d
    public void dq(String str, String str2) {
        com.bytedance.sdk.component.kk.d.ox oxVar = this.dq;
        if (oxVar != null) {
            oxVar.d(str, str2);
        }
    }
}
