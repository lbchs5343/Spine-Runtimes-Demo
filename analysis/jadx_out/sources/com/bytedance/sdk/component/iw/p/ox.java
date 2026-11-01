package com.bytedance.sdk.component.iw.p;

import android.text.TextUtils;

/* loaded from: classes.dex */
public class ox extends dq {
    @Override // com.bytedance.sdk.component.iw.p.kk
    public String dq() {
        return "generate_key";
    }

    @Override // com.bytedance.sdk.component.iw.p.kk
    public void dq(com.bytedance.sdk.component.iw.ox.ox oxVar) {
        if (TextUtils.isEmpty(oxVar.mn())) {
            com.bytedance.sdk.component.iw.ig s = oxVar.r().s();
            oxVar.d(s.dq(oxVar));
            oxVar.dq(s.d(oxVar));
        }
        oxVar.dq(new mn());
    }
}
