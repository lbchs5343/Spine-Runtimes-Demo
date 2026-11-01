package com.bytedance.sdk.openadsdk.core.component.reward.dq;

import com.bytedance.sdk.openadsdk.core.r.mn;
import com.bytedance.sdk.openadsdk.core.wp;

/* loaded from: classes3.dex */
public class p {
    private static final com.bytedance.sdk.openadsdk.core.p.d.dq dq = new com.bytedance.sdk.openadsdk.core.p.d.d(7);

    /* renamed from: d, reason: collision with root package name */
    private static final com.bytedance.sdk.openadsdk.core.p.d.dq f2584d = new com.bytedance.sdk.openadsdk.core.p.d.d(8);
    private static final com.bytedance.sdk.openadsdk.core.p.d.dq ox = new com.bytedance.sdk.openadsdk.core.p.d.s(7);
    private static final com.bytedance.sdk.openadsdk.core.p.d.dq p = new com.bytedance.sdk.openadsdk.core.p.d.s(8);
    private static final com.bytedance.sdk.openadsdk.core.p.d.dq s = new com.bytedance.sdk.openadsdk.core.p.d.p(7);
    private static final com.bytedance.sdk.openadsdk.core.p.d.dq iw = new com.bytedance.sdk.openadsdk.core.p.d.p(8);
    private static final com.bytedance.sdk.openadsdk.core.p.d.dq mn = new com.bytedance.sdk.openadsdk.core.p.d.ox(7);
    private static final com.bytedance.sdk.openadsdk.core.p.d.dq ia = new com.bytedance.sdk.openadsdk.core.p.d.ox(8);

    public static int dq(boolean z) {
        mn.dq dq2 = z ? mn.dq() : mn.d();
        if (!dq2.mn() || !wp.d().hz()) {
            return -1;
        }
        int p2 = dq2.p();
        if (p2 < 0 || p2 == 2 || p2 > 4) {
            return 1;
        }
        return p2;
    }

    public static com.bytedance.sdk.openadsdk.core.p.d.dq dq(boolean z, boolean z2) {
        if (z2) {
            return z ? mn : ia;
        }
        int dq2 = dq(z);
        return dq2 != -1 ? dq2 != 0 ? dq2 != 3 ? z ? ox : p : z ? s : iw : z ? dq : f2584d : z ? mn : ia;
    }
}
