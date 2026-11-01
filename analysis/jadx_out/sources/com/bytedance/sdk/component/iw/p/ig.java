package com.bytedance.sdk.component.iw.p;

import com.bytedance.sdk.component.iw.gh;

/* loaded from: classes.dex */
public class ig extends dq {
    @Override // com.bytedance.sdk.component.iw.p.kk
    public String dq() {
        return "raw_cache";
    }

    @Override // com.bytedance.sdk.component.iw.p.kk
    public void dq(com.bytedance.sdk.component.iw.ox.ox oxVar) {
        byte[] dq = oxVar.r().d(oxVar.i()).dq((gh) oxVar.iw());
        if (dq == null) {
            oxVar.dq(new iw());
        } else {
            oxVar.dq(new d(dq, null));
        }
    }
}
