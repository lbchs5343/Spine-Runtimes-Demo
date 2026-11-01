package com.bytedance.sdk.component.d.dq.dq.dq;

import com.bytedance.sdk.component.d.dq.f;
import com.bytedance.sdk.component.ox.d.bl;
import java.io.IOException;

/* loaded from: classes.dex */
public class dq implements com.bytedance.sdk.component.d.dq.d {
    com.bytedance.sdk.component.ox.d.s dq;

    public dq(com.bytedance.sdk.component.ox.d.s sVar) {
        this.dq = sVar;
    }

    @Override // com.bytedance.sdk.component.d.dq.d
    public void d() {
        this.dq.d();
    }

    @Override // com.bytedance.sdk.component.d.dq.d
    public f dq() throws IOException {
        return new iw(this.dq.dq());
    }

    @Override // com.bytedance.sdk.component.d.dq.d
    public void dq(final com.bytedance.sdk.component.d.dq.ox oxVar) {
        this.dq.dq(new com.bytedance.sdk.component.ox.d.iw() { // from class: com.bytedance.sdk.component.d.dq.dq.dq.dq.1
            @Override // com.bytedance.sdk.component.ox.d.iw
            public void dq(com.bytedance.sdk.component.ox.d.s sVar, bl blVar) throws IOException {
                oxVar.onResponse(new dq(sVar), new iw(blVar));
            }

            @Override // com.bytedance.sdk.component.ox.d.iw
            public void dq(com.bytedance.sdk.component.ox.d.s sVar, IOException iOException) {
                oxVar.onFailure(new dq(sVar), iOException);
            }
        });
    }

    @Override // com.bytedance.sdk.component.d.dq.d
    public boolean ox() {
        return this.dq.ox();
    }

    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public com.bytedance.sdk.component.d.dq.d clone() {
        return new dq(this.dq.p());
    }
}
