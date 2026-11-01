package com.bytedance.sdk.openadsdk.core.r;

import java.util.Map;

/* loaded from: classes3.dex */
public class mp extends com.bytedance.sdk.openadsdk.f.d.d.ox {
    private s dq;

    public mp(j jVar) {
        if (jVar == null) {
            return;
        }
        this.dq = jVar.hy();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ox
    public String d() {
        s sVar = this.dq;
        return sVar == null ? "" : sVar.s();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ox
    public String dq() {
        s sVar = this.dq;
        return sVar == null ? "" : sVar.mp();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ox
    public String ia() {
        s sVar = this.dq;
        if (sVar == null) {
            return null;
        }
        return sVar.o();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ox
    public String iw() {
        s sVar = this.dq;
        if (sVar == null) {
            return null;
        }
        return sVar.d();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ox
    public String mn() {
        s sVar = this.dq;
        if (sVar == null) {
            return null;
        }
        return sVar.kk();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ox
    public String ox() {
        s sVar = this.dq;
        return sVar == null ? "" : sVar.mn();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ox
    public String p() {
        s sVar = this.dq;
        return sVar == null ? "" : sVar.ia();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ox
    public Map<String, String> s() {
        s sVar = this.dq;
        if (sVar == null) {
            return null;
        }
        return sVar.dq();
    }
}
