package com.bytedance.sdk.openadsdk.core.ir;

import android.annotation.SuppressLint;
import com.bytedance.sdk.component.mn.p;
import g.awf;

/* loaded from: classes3.dex */
public final class n {
    private static volatile boolean dq;

    public static class d {

        @SuppressLint({"StaticFieldLeak"})
        static final p.dq dq = n.p();
    }

    public static class dq {

        @SuppressLint({"StaticFieldLeak"})
        static final p.dq dq = n.p();
    }

    public static int d() {
        return 3;
    }

    private static String d(String str) {
        if (dq || com.bytedance.sdk.component.utils.fw.dq(com.bytedance.sdk.openadsdk.core.wp.getContext())) {
            return str;
        }
        StringBuilder o = awf.o(str);
        o.append(com.bytedance.sdk.component.utils.fw.d(com.bytedance.sdk.openadsdk.core.wp.getContext()));
        return o.toString();
    }

    public static com.bytedance.sdk.component.mn.dq dq(String str) {
        return dq.dq.dq(d(str)).dq();
    }

    public static com.bytedance.sdk.component.mn.dq dq(String str, boolean z) {
        return d.dq.dq(d(str)).dq(z).dq();
    }

    public static void dq() {
        dq = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static p.dq p() {
        com.bytedance.sdk.openadsdk.core.bl.mn d2 = com.bytedance.sdk.openadsdk.core.wp.d();
        d2.ix();
        return new p.dq().dq(com.bytedance.sdk.openadsdk.core.wp.getContext()).dq(1).d(d2.ne()).d(dq);
    }
}
