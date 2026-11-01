package com.bytedance.sdk.openadsdk.core.o;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.o.ox.mp;
import com.bytedance.sdk.openadsdk.core.o.ox.no;
import com.bytedance.sdk.openadsdk.core.o.ox.q;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;

/* loaded from: classes3.dex */
public class s {
    public static com.bytedance.sdk.openadsdk.core.o.d.p d(Context context, j jVar, String str, boolean z) {
        return c.iw(context) ? dq() ? new com.bytedance.sdk.openadsdk.core.o.ox.iw(context, jVar, str, z) : new com.bytedance.sdk.openadsdk.core.o.ox.mn(context, jVar, str, z) : dq() ? new com.bytedance.sdk.openadsdk.core.o.ox.dq(context, jVar, str, z) : new com.bytedance.sdk.openadsdk.core.o.ox.d(context, jVar, str, z);
    }

    public static com.bytedance.sdk.openadsdk.core.o.d.ox dq(Context context, j jVar, String str, boolean z) {
        return com.bytedance.sdk.openadsdk.core.ia.dq.p.dq.dq() ? dq() ? new d(context, jVar, str, z) : new no(context, jVar, str, z) : c.iw(context) ? dq() ? new com.bytedance.sdk.openadsdk.core.o.ox.kk(context, jVar, str, z) : new com.bytedance.sdk.openadsdk.core.o.ox.o(context, jVar, str, z) : dq() ? new com.bytedance.sdk.openadsdk.core.o.ox.ox(context, jVar, str, z) : new com.bytedance.sdk.openadsdk.core.o.ox.p(context, jVar, str, z);
    }

    public static com.bytedance.sdk.openadsdk.core.o.d.ox dq(Context context, String str, j jVar, String str2) {
        return dq() ? new mp(context, str, jVar, str2, c.le(jVar)) : new q(context, str, jVar, str2, c.le(jVar));
    }

    public static boolean dq() {
        return op.f3334d >= 6600 && wp.d().no();
    }
}
