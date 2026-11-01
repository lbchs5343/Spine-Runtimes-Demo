package com.bytedance.sdk.openadsdk.core.nativeexpress;

import com.bytedance.sdk.openadsdk.core.r.j;
import g.dbw;
import g.tr;

/* loaded from: classes3.dex */
public class kk implements dbw, com.bytedance.sdk.component.adexpress.d.kk {

    /* renamed from: d, reason: collision with root package name */
    private String f3239d;
    private com.bytedance.sdk.openadsdk.iw.dq dq;
    private long iw;
    private com.bytedance.sdk.openadsdk.q.ia mn;
    private j ox;
    private String p;
    private long s;

    public kk(com.bytedance.sdk.openadsdk.iw.dq dqVar, String str, j jVar, String str2) {
        this.dq = dqVar;
        this.f3239d = str;
        this.p = str2;
        this.ox = jVar;
    }

    @Override // g.dbw
    public void d() {
        this.dq.p("ugen_sub_analysis_end");
    }

    @Override // com.bytedance.sdk.component.adexpress.d.kk
    public void d(int i) {
        if (i == 3) {
            this.dq.d("dynamic_sub_analysis2_start");
        } else {
            this.dq.d("dynamic_sub_analysis_start");
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.d.kk
    public void d(boolean z) {
        this.dq.dq(z ? 1 : 0);
    }

    @Override // g.dbw
    public void dq() {
        this.dq.p("ugen_render_start");
        this.dq.p("ugen_sub_analysis_start");
    }

    @Override // com.bytedance.sdk.component.adexpress.d.kk
    public void dq(int i) {
        this.s = System.currentTimeMillis();
        if (i == 3) {
            this.dq.dq("dynamic_render2_start");
        } else {
            this.dq.dq("dynamic_render_start");
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.d.kk
    public void dq(int i, int i2, String str, boolean z) {
        this.dq.dq(true);
        if (i == 3) {
            this.dq.d(i2, "dynamic_render2_error");
        } else {
            this.dq.d(i2, "dynamic_render_error");
        }
        ia.dq(i2, this.f3239d, this.p, this.ox);
    }

    @Override // com.bytedance.sdk.component.adexpress.d.kk
    public void dq(int i, String str) {
        this.dq.dq(i, str);
        ia.dq(i, this.f3239d, this.p, this.ox);
        com.bytedance.sdk.openadsdk.q.ia iaVar = this.mn;
        if (iaVar == null) {
            return;
        }
        iaVar.dq(true, kx.dq(this.ox), 105);
    }

    public void dq(com.bytedance.sdk.openadsdk.q.ia iaVar) {
        this.mn = iaVar;
    }

    @Override // g.dbw
    public void dq(tr trVar) {
        int i = trVar.f20062a;
        if (i == 0) {
            this.dq.p("ugen_sub_render_end");
            this.dq.s("ugen_render_success");
        } else {
            this.dq.ox(i, "ugen_render_error");
        }
        this.dq.dq(true);
    }

    @Override // g.dbw
    public void dq(boolean z) {
    }

    @Override // com.bytedance.sdk.component.adexpress.d.kk
    public void ia() {
        this.dq.d();
        com.bytedance.sdk.openadsdk.q.ia iaVar = this.mn;
        if (iaVar == null) {
            return;
        }
        iaVar.ia(kx.dq(this.ox));
    }

    @Override // com.bytedance.sdk.component.adexpress.d.kk
    public void ig() {
        this.dq.q();
    }

    @Override // com.bytedance.sdk.component.adexpress.d.kk
    public void iw() {
        this.dq.dq();
    }

    @Override // com.bytedance.sdk.component.adexpress.d.kk
    public void iw(int i) {
        final String str;
        this.iw = System.currentTimeMillis();
        if (i == 3) {
            this.dq.ox("dynamic_render2_success");
            str = "dynamic2_render";
        } else {
            this.dq.ox("dynamic_render_success");
            str = "dynamic_backup_native_render";
        }
        this.dq.dq(true);
        com.bytedance.sdk.component.o.mn.ox(new com.bytedance.sdk.component.o.kk("dynamic_success") { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.kk.1
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.core.ig.ox.mn(kk.this.ox, kk.this.f3239d, str, null);
            }
        });
    }

    @Override // com.bytedance.sdk.component.adexpress.d.kk
    public void kk() {
        this.dq.ox();
    }

    @Override // com.bytedance.sdk.component.adexpress.d.kk
    public void mn() {
        com.bytedance.sdk.openadsdk.q.ia iaVar = this.mn;
        if (iaVar == null) {
            return;
        }
        iaVar.mn(kx.dq(this.ox));
    }

    @Override // com.bytedance.sdk.component.adexpress.d.kk
    public void mp() {
        this.dq.d();
    }

    @Override // com.bytedance.sdk.component.adexpress.d.kk
    public void no() {
        this.dq.dq(true);
        this.dq.mp();
    }

    @Override // com.bytedance.sdk.component.adexpress.d.kk
    public void o() {
        this.dq.dq(true);
        this.dq.s();
        com.bytedance.sdk.component.o.mn.ox(new com.bytedance.sdk.component.o.kk("native_success") { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.kk.2
            @Override // java.lang.Runnable
            public void run() {
                ia.dq(kk.this.f3239d, kk.this.p, kk.this.ox);
                com.bytedance.sdk.openadsdk.core.ig.ox.mn(kk.this.ox, kk.this.f3239d, "dynamic_backup_render", null);
            }
        });
    }

    @Override // g.dbw
    public void ox() {
        this.dq.p("ugen_sub_render_start");
    }

    @Override // com.bytedance.sdk.component.adexpress.d.kk
    public void ox(int i) {
        if (i == 3) {
            this.dq.d("dynamic_sub_analysis2_end");
        } else {
            this.dq.d("dynamic_sub_analysis_end");
        }
    }

    @Override // g.dbw
    public void p() {
    }

    @Override // com.bytedance.sdk.component.adexpress.d.kk
    public void p(int i) {
        if (i == 3) {
            this.dq.d("dynamic_sub_render2_start");
        } else {
            this.dq.d("dynamic_sub_render_start");
        }
    }

    public void q() {
        this.dq.f();
        this.dq.fw();
    }

    @Override // g.dbw
    public void s() {
    }

    @Override // com.bytedance.sdk.component.adexpress.d.kk
    public void s(int i) {
        if (i == 3) {
            this.dq.d("dynamic_sub_render2_end");
        } else {
            this.dq.d("dynamic_sub_render_end");
        }
    }
}
