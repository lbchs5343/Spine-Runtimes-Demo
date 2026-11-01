package com.bytedance.sdk.openadsdk.core.component.reward.draw;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bykv.vk.openvk.component.video.api.s.dq;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.view.FullRewardExpressView;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.h;
import com.bytedance.sdk.openadsdk.core.jy.dq;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.iw;
import com.bytedance.sdk.openadsdk.core.nativeexpress.kx;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.o;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.r.t;
import com.bytedance.sdk.openadsdk.core.video.d.dq;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    protected final j f2587d;
    protected final TTBaseVideoActivity dq;
    private com.bytedance.sdk.openadsdk.core.d.dq ia;
    private long ig;
    private iw iw;
    private boolean jy;
    private com.bytedance.sdk.openadsdk.core.o.d.ox kk;
    private com.bytedance.sdk.openadsdk.core.nativeexpress.s mn;
    private final AtomicBoolean mp = new AtomicBoolean(false);
    private boolean no;
    private ViewGroup o;
    protected final String ox;
    public boolean p;
    private final boolean q;
    private int s;

    public d(final TTBaseVideoActivity tTBaseVideoActivity, j jVar, String str, boolean z, boolean z2) {
        this.kk = null;
        this.dq = tTBaseVideoActivity;
        this.f2587d = jVar;
        this.ox = str;
        this.q = z;
        this.jy = z2;
        iw iwVar = new iw(tTBaseVideoActivity, jVar, str, c.dq(str)) { // from class: com.bytedance.sdk.openadsdk.core.component.reward.draw.d.1
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.iw, com.bytedance.sdk.openadsdk.core.d.d, com.bytedance.sdk.openadsdk.core.d.p
            public void dq(View view, o oVar) {
                super.dq(view, oVar);
                tTBaseVideoActivity.dq(2);
            }
        };
        this.iw = iwVar;
        ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) iwVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(tTBaseVideoActivity.ob());
        com.bytedance.sdk.openadsdk.core.nativeexpress.s sVar = new com.bytedance.sdk.openadsdk.core.nativeexpress.s(tTBaseVideoActivity, jVar, str, c.dq(str)) { // from class: com.bytedance.sdk.openadsdk.core.component.reward.draw.d.2
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.s, com.bytedance.sdk.openadsdk.core.d.d, com.bytedance.sdk.openadsdk.core.d.p
            public void dq(View view, o oVar) {
                super.dq(view, oVar);
                com.bytedance.sdk.openadsdk.core.d.dq.d dVar = (com.bytedance.sdk.openadsdk.core.d.dq.d) this.kk.dq(com.bytedance.sdk.openadsdk.core.d.dq.d.class);
                if (dVar == null || !dVar.d(view)) {
                    return;
                }
                tTBaseVideoActivity.dq(2);
            }
        };
        this.mn = sVar;
        ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) sVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(tTBaseVideoActivity.ob());
        com.bytedance.sdk.openadsdk.core.d.dq dqVar = new com.bytedance.sdk.openadsdk.core.d.dq(tTBaseVideoActivity, jVar, str, 7);
        this.ia = dqVar;
        tTBaseVideoActivity.dq((com.bytedance.sdk.openadsdk.core.d.dq.ox.ox) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.ox.class));
        ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) this.ia.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(tTBaseVideoActivity.ob());
        if (jVar.y() == 4) {
            this.kk = com.bytedance.sdk.openadsdk.core.o.s.dq((Context) tTBaseVideoActivity, jVar, str, false);
            final String fx = dq().fx();
            this.kk.dq(new com.bytedance.sdk.openadsdk.core.o.d.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.draw.d.3
                @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
                public void d(long j, long j2, String str2, String str3) {
                    if (j > 0) {
                        dq.C0166dq.dq(fx, 2, (int) ((j2 * 100) / j));
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
                public void dq() {
                    dq.C0166dq.dq(fx, 1, 0);
                }

                @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
                public void dq(long j, long j2, String str2, String str3) {
                    if (j > 0) {
                        dq.C0166dq.dq(fx, 3, (int) ((j2 * 100) / j));
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
                public void dq(long j, String str2, String str3) {
                    dq.C0166dq.dq(fx, 5, 100);
                }

                @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
                public void dq(String str2, String str3) {
                    dq.C0166dq.dq(fx, 6, 100);
                }

                @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
                public void ox(long j, long j2, String str2, String str3) {
                    if (j > 0) {
                        dq.C0166dq.dq(fx, 4, (int) ((j2 * 100) / j));
                    }
                }
            });
        }
    }

    public String d() {
        return this.ox;
    }

    public void d(boolean z) {
        this.f2587d.o(z);
    }

    public j dq() {
        return this.f2587d;
    }

    public void dq(ViewGroup viewGroup, ViewGroup viewGroup2, FullRewardExpressView fullRewardExpressView) {
        this.o = viewGroup2;
        if (viewGroup == null || fullRewardExpressView == null || dq() == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = this.kk;
        if (oxVar != null) {
            oxVar.ia();
            if (fullRewardExpressView.getContext() != null && (fullRewardExpressView.getContext() instanceof Activity)) {
                this.kk.dq((Activity) fullRewardExpressView.getContext());
            }
        }
        this.iw.dq(fullRewardExpressView);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.iw.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.kk);
        fullRewardExpressView.setClickListener(this.iw);
        this.mn.dq(fullRewardExpressView);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.mn.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.kk);
        fullRewardExpressView.setClickCreativeListener(this.mn);
        this.ia.dq(viewGroup);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.ia.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.kk);
        mn();
        ImageView imageView = new ImageView(this.dq);
        com.bytedance.sdk.openadsdk.ia.d.dq(this.f2587d.oh().get(0)).dq(imageView);
        this.o.addView(imageView);
    }

    public void dq(NativeExpressView nativeExpressView) {
        if (this.mp.getAndSet(true)) {
            return;
        }
        Map<String, Object> ob = this.dq.ob();
        kx.dq(ob, this.f2587d, nativeExpressView);
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.f2587d, this.ox, ob, this.dq.l());
        com.bytedance.sdk.openadsdk.core.kx.dq.dq().p();
    }

    public void dq(boolean z) {
        this.p = z;
    }

    public void ia() {
        ce.dq((View) this.o, 0);
        this.dq.q();
    }

    public long ig() {
        return this.ig;
    }

    public boolean iw() {
        return this.p;
    }

    public void kk() {
        com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = this.kk;
        if (oxVar != null) {
            oxVar.kk();
        }
    }

    public void mn() {
        if (Build.VERSION.SDK_INT < 23 || this.jy) {
            return;
        }
        this.jy = true;
        com.bytedance.sdk.openadsdk.f.d.ox.d dq = h.dq(7);
        if (pa.q(this.f2587d) != null) {
            com.bykv.vk.openvk.component.video.api.ox.p dq2 = pa.dq(1, this.f2587d);
            dq2.dq("material_meta", this.f2587d);
            dq2.dq("ad_slot", Integer.valueOf(dq != null ? dq.k() : 0));
            com.bytedance.sdk.openadsdk.core.video.p.d.dq(dq2, (dq.InterfaceC0005dq) null);
        }
    }

    public com.bykv.vk.openvk.component.video.api.ox.p no() {
        com.bykv.vk.openvk.component.video.api.ox.p dq = pa.dq(1, this.f2587d);
        dq.d(this.f2587d.fx());
        dq.d(100);
        dq.ox(100);
        dq.ox(this.f2587d.dn());
        dq.d(this.p);
        return dq;
    }

    public void o() {
        if (this.q) {
            this.dq.dq(this.f2587d, this.ia);
        }
    }

    public com.bytedance.sdk.openadsdk.core.d.dq ox() {
        return this.ia;
    }

    public int p() {
        if (this.no) {
            int d2 = t.d(this.f2587d) - this.s;
            this.s = t.d(this.f2587d);
            return d2;
        }
        if (this.s >= t.d(this.f2587d)) {
            return 0;
        }
        this.s++;
        return 1;
    }

    public dq.InterfaceC0195dq s() {
        return new dq.InterfaceC0195dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.draw.d.4
            @Override // com.bytedance.sdk.openadsdk.core.video.d.dq.InterfaceC0195dq
            public void d() {
                d.this.ia();
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.d.dq.InterfaceC0195dq
            public void dq() {
                d.this.no = true;
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.d.dq.InterfaceC0195dq
            public void dq(int i, String str) {
                d.this.ia();
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.d.dq.InterfaceC0195dq
            public void dq(long j, long j2) {
                ce.dq((View) d.this.o, 8);
                d.this.ig = j;
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.d.dq.InterfaceC0195dq
            public void ox() {
            }
        };
    }
}
