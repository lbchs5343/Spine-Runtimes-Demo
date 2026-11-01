package com.bytedance.sdk.openadsdk.core.gh;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
class s implements com.bytedance.sdk.component.ia.dq.dq.s {
    private com.bytedance.sdk.component.kk.d dq;

    public s(com.bytedance.sdk.component.kk.d dVar) {
        this.dq = dVar;
    }

    @Override // com.bytedance.sdk.component.ia.dq.dq.s
    public String d() {
        com.bytedance.sdk.component.kk.d dVar = this.dq;
        return dVar != null ? dVar.p() : "";
    }

    @Override // com.bytedance.sdk.component.ia.dq.dq.s
    public boolean dq() {
        com.bytedance.sdk.component.kk.d dVar = this.dq;
        if (dVar != null) {
            return dVar.ia();
        }
        return false;
    }

    @Override // com.bytedance.sdk.component.ia.dq.dq.s
    public int ox() {
        com.bytedance.sdk.component.kk.d dVar = this.dq;
        if (dVar != null) {
            return dVar.dq();
        }
        return -1;
    }

    @Override // com.bytedance.sdk.component.ia.dq.dq.s
    public String p() {
        com.bytedance.sdk.component.kk.d dVar = this.dq;
        return dVar != null ? dVar.d() : "";
    }

    @Override // com.bytedance.sdk.component.ia.dq.dq.s
    public Map<String, String> s() {
        com.bytedance.sdk.component.kk.d dVar = this.dq;
        return dVar != null ? dVar.ox() : new HashMap();
    }
}
