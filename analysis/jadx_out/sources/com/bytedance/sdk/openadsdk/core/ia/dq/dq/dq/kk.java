package com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.d.dq.d.o;
import com.bytedance.sdk.openadsdk.core.r.io;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.util.Map;

/* loaded from: classes3.dex */
public class kk implements com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq {

    /* renamed from: d, reason: collision with root package name */
    private j f2959d;
    private com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq dq;
    private com.bytedance.sdk.component.no.dq.dq ia;
    private io iw;
    private Map<String, Object> mn;
    private Context ox;
    private boolean p;
    private String s;

    public kk(io ioVar, Context context, boolean z, String str, Map<String, Object> map, com.bytedance.sdk.component.no.dq.dq dqVar) {
        this.iw = ioVar;
        this.ox = context;
        this.p = z;
        this.s = str;
        this.mn = map;
        this.ia = dqVar;
    }

    public void dq(j jVar) {
        this.f2959d = jVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq
    public boolean dq(final Map<String, Object> map) {
        boolean dq = !o.dq() ? new o(this.f2959d, this.ox).dq(this.s).d(this.p).dq(new o.dq() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.kk.1
            @Override // com.bytedance.sdk.openadsdk.core.d.dq.d.o.dq
            public void d() {
                if (kk.this.dq != null ? kk.this.dq.dq(map) : false) {
                    return;
                }
                kk.this.ia.d(kk.this.mn);
            }

            @Override // com.bytedance.sdk.openadsdk.core.d.dq.d.o.dq
            public void dq() {
            }
        }) : false;
        o.dq(false);
        if (dq) {
            return true;
        }
        com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq dqVar = this.dq;
        return dqVar != null && dqVar.dq(map);
    }
}
