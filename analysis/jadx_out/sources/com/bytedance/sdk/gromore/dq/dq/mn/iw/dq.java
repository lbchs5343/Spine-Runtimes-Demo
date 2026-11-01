package com.bytedance.sdk.gromore.dq.dq.mn.iw;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.api.p.dq.kk.p;
import com.bytedance.msdk.api.p.dq.kk.s;
import com.bytedance.msdk.ox.p.mp;
import com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.mn;
import g.hat;
import java.util.Map;

/* loaded from: classes.dex */
public class dq extends com.bytedance.sdk.openadsdk.f.d.d.d {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.p.dq.d.dq.dq f2322d;
    private mp dq;
    private s iw = new s() { // from class: com.bytedance.sdk.gromore.dq.dq.mn.iw.dq.2
        @Override // com.bytedance.msdk.api.p.dq.kk.s
        public void d() {
            if (dq.this.ox != null) {
                dq.this.ox.d();
            }
        }

        @Override // com.bytedance.msdk.api.p.dq.kk.s
        public void dq() {
            if (dq.this.ox != null) {
                dq.this.ox.dq(dq.this);
            }
        }
    };
    private p mn = new p() { // from class: com.bytedance.sdk.gromore.dq.dq.mn.iw.dq.3
        @Override // com.bytedance.msdk.api.p.dq.kk.p
        public void d() {
            if (dq.this.p != null) {
                dq.this.p.d();
            }
        }

        @Override // com.bytedance.msdk.api.p.dq.kk.p
        public void dq() {
            if (dq.this.p != null) {
                dq.this.p.dq(dq.this);
            }
        }

        @Override // com.bytedance.msdk.api.p.dq.kk.p
        public Activity getActivity() {
            return null;
        }

        @Override // com.bytedance.msdk.api.p.dq.kk.p
        public void ox() {
            if (dq.this.p != null) {
                dq.this.p.dq();
            }
        }

        @Override // com.bytedance.msdk.api.p.dq.kk.p
        public void p() {
            if (dq.this.ox != null) {
                dq.this.ox.dq();
            }
        }
    };
    private com.bytedance.sdk.openadsdk.p.dq.d.dq.ox ox;
    private com.bytedance.sdk.openadsdk.p.dq.d.dq.d p;
    private com.bytedance.sdk.openadsdk.r.dq.d.dq.dq s;

    public dq(mp mpVar, com.bytedance.sdk.openadsdk.r.dq.d.dq.dq dqVar) {
        this.dq = mpVar;
        this.s = dqVar;
        o();
    }

    private void o() {
        this.dq.dq(new com.bytedance.msdk.api.p.dq.kk.d() { // from class: com.bytedance.sdk.gromore.dq.dq.mn.iw.dq.1
            @Override // com.bytedance.msdk.api.p.dq.kk.d
            public void d(int i) {
                if (dq.this.f2322d != null) {
                    dq.this.f2322d.dq(dq.this, i);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.kk.d
            public void d_(com.bytedance.msdk.api.dq dqVar) {
                if (dq.this.s == null || dqVar == null) {
                    return;
                }
                dq.this.s.dq(dq.this, new com.bytedance.sdk.gromore.dq.dq.dq(dqVar.dq, dqVar.f756d));
            }

            @Override // com.bytedance.msdk.api.p.dq.kk.d
            public void dq(int i) {
                if (dq.this.f2322d != null) {
                    dq.this.f2322d.dq(dq.this, i);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.kk.d
            public void mn() {
                if (dq.this.f2322d != null) {
                    dq.this.f2322d.d(dq.this);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.kk.d
            public void w_() {
                if (dq.this.f2322d != null) {
                    dq.this.f2322d.dq(dq.this);
                }
            }
        });
        this.dq.dq(this.iw);
        this.dq.dq(this.mn);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public View d() {
        mp mpVar = this.dq;
        if (mpVar != null) {
            return mpVar.le();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public void d(ViewGroup viewGroup) {
        mp mpVar = this.dq;
        if (mpVar != null) {
            mpVar.d(viewGroup);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void d(Double d2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public View dq() {
        mp mpVar = this.dq;
        if (mpVar != null) {
            return mpVar.kx();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public void dq(ViewGroup viewGroup) {
        mp mpVar = this.dq;
        if (mpVar == null || viewGroup == null) {
            return;
        }
        mpVar.dq(viewGroup);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public void dq(ViewGroup viewGroup, Activity activity) {
        mp mpVar = this.dq;
        if (mpVar == null || viewGroup == null || activity == null) {
            return;
        }
        mpVar.dq(viewGroup, activity);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public void dq(final com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
        mp mpVar = this.dq;
        if (mpVar != null) {
            mpVar.dq(new com.bytedance.msdk.api.p.dq.d() { // from class: com.bytedance.sdk.gromore.dq.dq.mn.iw.dq.4
                @Override // com.bytedance.msdk.api.p.dq.d
                public void d(long j, long j2, String str, String str2) {
                    com.bytedance.sdk.openadsdk.f.d.dq.d dVar2 = dVar;
                    if (dVar2 != null) {
                        dVar2.ox(j, j2, str, str2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq() {
                    com.bytedance.sdk.openadsdk.f.d.dq.d dVar2 = dVar;
                    if (dVar2 != null) {
                        dVar2.dq();
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq(long j, long j2, int i, int i2, String str, String str2) {
                    com.bytedance.sdk.openadsdk.f.d.dq.d dVar2 = dVar;
                    if (dVar2 != null) {
                        dVar2.dq(j, j2, str, str2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq(long j, long j2, String str, String str2) {
                    com.bytedance.sdk.openadsdk.f.d.dq.d dVar2 = dVar;
                    if (dVar2 != null) {
                        dVar2.d(j, j2, str, str2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq(long j, String str, String str2) {
                    com.bytedance.sdk.openadsdk.f.d.dq.d dVar2 = dVar;
                    if (dVar2 != null) {
                        dVar2.dq(j, str, str2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq(String str, String str2) {
                    com.bytedance.sdk.openadsdk.f.d.dq.d dVar2 = dVar;
                    if (dVar2 != null) {
                        dVar2.dq(str, str2);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.dq dqVar) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public void dq(com.bytedance.sdk.openadsdk.p.dq.d.dq.d dVar) {
        this.p = dVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public void dq(com.bytedance.sdk.openadsdk.p.dq.d.dq.dq dqVar) {
        this.f2322d = dqVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public void dq(com.bytedance.sdk.openadsdk.p.dq.d.dq.ox oxVar) {
        this.ox = oxVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2, String str, String str2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public void ia() {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public int[] iw() {
        mp mpVar = this.dq;
        return mpVar != null ? mpVar.wp() : new int[0];
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public mn kk() {
        return new com.bytedance.sdk.gromore.dq.dq.iw.dq(new d(this.dq));
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public void mn() {
        mp mpVar = this.dq;
        if (mpVar != null) {
            mpVar.ji();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public View ox() {
        mp mpVar = this.dq;
        if (mpVar != null) {
            return mpVar.k();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public int p() {
        mp mpVar = this.dq;
        if (mpVar != null) {
            return mpVar.gh();
        }
        return -1;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public Map<String, Object> s() {
        mp mpVar = this.dq;
        if (mpVar != null) {
            return mpVar.r();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d, com.bytedance.sdk.openadsdk.f.d.d.kk, com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        hat e2 = hat.e(super.values());
        e2.o(1, com.bytedance.sdk.gromore.init.dq.dq());
        return e2.k();
    }
}
