package com.bytedance.sdk.component.p;

import com.bytedance.sdk.openadsdk.ats.ATSApi;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;

@ATSApi("embed_applog")
/* loaded from: classes.dex */
public interface d {
    @ATSMethod(2)
    String d();

    @ATSMethod(1)
    String dq();

    @ATSMethod(3)
    byte[] dq(byte[] bArr, int i);
}
