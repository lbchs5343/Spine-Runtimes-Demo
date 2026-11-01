package com.bytedance.sdk.openadsdk.ia;

import com.bytedance.sdk.component.iw.jy;
import com.bytedance.sdk.component.iw.o;
import com.bytedance.sdk.openadsdk.ats.AutoService;
import com.bytedance.sdk.openadsdk.core.ir.u;
import com.bytedance.sdk.openadsdk.core.r.ji;
import java.io.InputStream;

/* loaded from: classes3.dex */
public class d {
    public static jy dq() {
        return (jy) AutoService.dq(jy.class);
    }

    private static o dq(o oVar) {
        return u.dq() ? oVar.dq(new ox()) : oVar;
    }

    public static o dq(ji jiVar) {
        return dq(dq().dq(jiVar.dq()).dq(jiVar.d()).d(jiVar.ox()).d(jiVar.mn()));
    }

    public static o dq(String str) {
        return dq(dq().dq(str));
    }

    public static InputStream dq(String str, String str2) {
        return dq().dq(str, str2);
    }
}
