package com.bytedance.sdk.openadsdk.core.gh;

import com.bytedance.sdk.openadsdk.ats.ATS;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import com.bytedance.sdk.openadsdk.core.ir.le;

@ATS(single = true, value = {"embed_applog"})
/* loaded from: classes3.dex */
public class ox implements com.bytedance.sdk.component.p.d {
    @Override // com.bytedance.sdk.component.p.d
    @ATSMethod(2)
    public String d() {
        return le.dq(false);
    }

    @Override // com.bytedance.sdk.component.p.d
    @ATSMethod(1)
    public String dq() {
        return com.bytedance.sdk.openadsdk.core.mn.dq().d();
    }

    @Override // com.bytedance.sdk.component.p.d
    @ATSMethod(3)
    public byte[] dq(byte[] bArr, int i) {
        return com.bytedance.sdk.openadsdk.h.d.dq(bArr, i);
    }
}
