package com.bytedance.sdk.openadsdk.core.dislike;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.dislike.dq.p;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.f.d.d.iw;

/* loaded from: classes3.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private static p f2800d;
    private static com.bytedance.sdk.openadsdk.core.dislike.dq.ox dq;

    public static void dq() {
        if (f2800d == null) {
            f2800d = new p() { // from class: com.bytedance.sdk.openadsdk.core.dislike.dq.1
                @Override // com.bytedance.sdk.openadsdk.core.dislike.dq.p
                public int dq(Context context, float f2) {
                    return ce.ox(context, f2);
                }
            };
        }
        if (dq == null) {
            dq = new com.bytedance.sdk.openadsdk.core.dislike.dq.ox() { // from class: com.bytedance.sdk.openadsdk.core.dislike.dq.2
                @Override // com.bytedance.sdk.openadsdk.core.dislike.dq.ox
                public void dq(Context context, com.bytedance.sdk.openadsdk.core.dislike.ox.d dVar, String str) {
                    com.bytedance.sdk.openadsdk.core.ig.ox.dq(dVar.ox(), dVar.p(), dVar.mn(), str);
                }

                @Override // com.bytedance.sdk.openadsdk.core.dislike.dq.ox
                public void dq(com.bytedance.sdk.openadsdk.core.dislike.ox.d dVar, iw iwVar) {
                    com.bytedance.sdk.openadsdk.core.ig.ox.dq(dVar, iwVar);
                }
            };
        }
        com.bytedance.sdk.openadsdk.core.dislike.dq.dq.dq(dq, f2800d);
    }
}
