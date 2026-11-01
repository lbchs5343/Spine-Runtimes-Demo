package com.bytedance.sdk.component.iw;

import com.bytedance.sdk.openadsdk.ats.ATSApi;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import java.io.InputStream;

@ATSApi("img_service")
/* loaded from: classes.dex */
public interface jy {
    @ATSMethod(3)
    void d(double d2);

    @ATSMethod(8)
    boolean d(String str, String str2, String str3);

    @ATSMethod(1)
    o dq(String str);

    @ATSMethod(6)
    InputStream dq(String str, String str2);

    @ATSMethod(7)
    InputStream dq(String str, String str2, String str3);

    @ATSMethod(5)
    void dq();

    @ATSMethod(2)
    void dq(double d2);

    @ATSMethod(4)
    void ox(double d2);
}
