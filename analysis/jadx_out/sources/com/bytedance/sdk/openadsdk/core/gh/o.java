package com.bytedance.sdk.openadsdk.core.gh;

import java.io.IOException;

/* loaded from: classes3.dex */
class o implements com.bytedance.sdk.component.ia.dq.dq.iw {
    com.bytedance.sdk.component.kk.d.s dq;

    public o(com.bytedance.sdk.component.kk.d.s sVar) {
        this.dq = sVar;
    }

    @Override // com.bytedance.sdk.component.ia.dq.dq.iw
    public void d(String str) {
        com.bytedance.sdk.component.kk.d.s sVar = this.dq;
        if (sVar != null) {
            sVar.ox(str);
        }
    }

    @Override // com.bytedance.sdk.component.ia.dq.dq.iw
    public com.bytedance.sdk.component.ia.dq.dq.s dq() {
        com.bytedance.sdk.component.kk.d.s sVar = this.dq;
        if (sVar == null) {
            return null;
        }
        return new kk(sVar.dq());
    }

    @Override // com.bytedance.sdk.component.ia.dq.dq.iw
    public void dq(final com.bytedance.sdk.component.ia.dq.dq.ox oxVar) {
        com.bytedance.sdk.component.kk.d.s sVar = this.dq;
        if (sVar != null) {
            sVar.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.o.1
                @Override // com.bytedance.sdk.component.kk.dq.dq
                public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar) {
                    if (oxVar != null) {
                        oxVar.dq(new p(pVar), new s(dVar));
                    }
                }

                @Override // com.bytedance.sdk.component.kk.dq.dq
                public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException) {
                    if (oxVar != null) {
                        oxVar.dq(new p(pVar), iOException);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.component.ia.dq.dq.iw
    public void dq(String str) {
        com.bytedance.sdk.component.kk.d.s sVar = this.dq;
        if (sVar != null) {
            sVar.dq(str);
        }
    }

    @Override // com.bytedance.sdk.component.ia.dq.dq.iw
    public void dq(String str, String str2) {
        com.bytedance.sdk.component.kk.d.s sVar = this.dq;
        if (sVar != null) {
            sVar.d(str, str2);
        }
    }

    @Override // com.bytedance.sdk.component.ia.dq.dq.iw
    public void dq(String str, byte[] bArr) {
        com.bytedance.sdk.component.kk.d.s sVar = this.dq;
        if (sVar != null) {
            sVar.dq(str, bArr);
        }
    }
}
