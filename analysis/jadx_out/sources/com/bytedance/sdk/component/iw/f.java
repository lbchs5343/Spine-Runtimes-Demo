package com.bytedance.sdk.component.iw;

import com.bytedance.sdk.openadsdk.ats.ATSApi;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;

@ATSApi
/* loaded from: classes.dex */
public interface f<T> {
    @ATSMethod(2)
    void dq(int i, String str, Throwable th);

    @ATSMethod(1)
    void dq(no<T> noVar);
}
