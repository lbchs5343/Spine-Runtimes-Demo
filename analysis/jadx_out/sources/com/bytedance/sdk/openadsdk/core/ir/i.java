package com.bytedance.sdk.openadsdk.core.ir;

import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.l;
import com.bytedance.sdk.openadsdk.core.r.t;
import com.bytedance.sdk.openadsdk.core.r.xz;

/* loaded from: classes3.dex */
public class i {
    public static String d(j jVar) {
        if (jVar == null) {
            return "";
        }
        int no = no(jVar);
        return no != 1 ? no != 2 ? "" : com.bytedance.sdk.openadsdk.core.r.ig.d(jVar) : l.ox(jVar);
    }

    public static String dq(j jVar) {
        if (jVar == null) {
            return "";
        }
        int no = no(jVar);
        return no != 1 ? no != 2 ? no != 3 ? no != 4 ? "" : xz.s(jVar) : com.bytedance.sdk.openadsdk.core.r.gh.iw(jVar) : com.bytedance.sdk.openadsdk.core.r.ig.d(jVar) : l.ox(jVar);
    }

    public static int ia(j jVar) {
        if (jVar == null) {
            return -1;
        }
        return no(jVar) != 3 ? l.cd(jVar) : com.bytedance.sdk.openadsdk.core.r.gh.o(jVar);
    }

    public static boolean iw(j jVar) {
        if (jVar == null) {
            return false;
        }
        int no = no(jVar);
        return no != 1 ? no != 2 ? no == 4 : com.bytedance.sdk.openadsdk.core.r.ig.p(jVar) : l.f(jVar);
    }

    public static boolean kk(j jVar) {
        return no(jVar) == 3;
    }

    public static int mn(j jVar) {
        if (jVar == null) {
            return 0;
        }
        return no(jVar) != 3 ? l.fw(jVar) : com.bytedance.sdk.openadsdk.core.r.gh.kk(jVar);
    }

    private static int no(j jVar) {
        if (com.bytedance.sdk.openadsdk.core.r.ig.dq(jVar)) {
            return 2;
        }
        if (l.dq(jVar)) {
            return 1;
        }
        if (com.bytedance.sdk.openadsdk.core.r.gh.dq(jVar)) {
            return 3;
        }
        return xz.dq(jVar) ? 4 : 0;
    }

    public static int o(j jVar) {
        if (jVar == null) {
            return 0;
        }
        return l.gh(jVar);
    }

    public static boolean ox(j jVar) {
        return (jVar == null || no(jVar) == 0) ? false : true;
    }

    public static boolean p(j jVar) {
        int no;
        return (jVar == null || (no = no(jVar)) == 0 || no == 3) ? false : true;
    }

    public static boolean s(j jVar) {
        if (jVar == null || t.dq(jVar)) {
            return false;
        }
        int no = no(jVar);
        if (no == 1) {
            return l.jy(jVar);
        }
        if (no == 2) {
            return com.bytedance.sdk.openadsdk.core.r.ig.ox(jVar);
        }
        if (no != 3) {
            return false;
        }
        return com.bytedance.sdk.openadsdk.core.r.gh.dq(jVar);
    }
}
