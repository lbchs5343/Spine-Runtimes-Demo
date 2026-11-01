package com.bytedance.sdk.openadsdk.core.live.p;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.core.ir.n;
import com.bytedance.sdk.openadsdk.core.no;
import g.hat;

/* loaded from: classes3.dex */
public class d {
    private static com.bytedance.sdk.component.mn.dq dq;

    private static void d() {
        if (dq == null) {
            dq = n.dq("csj_live");
        }
    }

    public static void d(String str) {
        d();
        try {
            com.bytedance.sdk.component.mn.dq dqVar = dq;
            if (dqVar != null) {
                dqVar.dq("live_init_".concat(String.valueOf(str)), 0);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void dq() {
        try {
            Bridge iw = no.ia().iw(4);
            if (iw != null) {
                hat f2 = hat.f();
                f2.f19148c.put(0, "com.byted.live.lite");
                iw.call(100, f2.k(), null);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void dq(String str) {
        d();
        try {
            com.bytedance.sdk.component.mn.dq dqVar = dq;
            if (dqVar != null) {
                dq.dq("live_init_".concat(String.valueOf(str)), dqVar.d("live_init_".concat(String.valueOf(str)), 0) + 1);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static boolean ox(String str) {
        d();
        com.bytedance.sdk.component.mn.dq dqVar = dq;
        return (dqVar != null ? dqVar.d("live_init_".concat(String.valueOf(str)), 0) : 0) < 5;
    }

    public static void p(String str) {
        dq();
        d(str);
    }
}
