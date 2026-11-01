package com.bytedance.sdk.component.iw;

import com.bytedance.sdk.openadsdk.ats.ATSApi;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import java.util.Map;

@ATSApi
/* loaded from: classes.dex */
public interface no<T> {
    @ATSMethod(2)
    String d();

    @ATSMethod(1)
    String dq();

    @ATSMethod(9)
    boolean ia();

    @ATSMethod(7)
    int iw();

    @ATSMethod(10)
    boolean kk();

    @ATSMethod(8)
    Map<String, String> mn();

    @ATSMethod(12)
    int no();

    @ATSMethod(11)
    mn o();

    @ATSMethod(3)
    T ox();

    @ATSMethod(4)
    T p();

    @ATSMethod(6)
    int s();

    @ATSMethod(5)
    void setResult(T t);
}
