package com.bytedance.sdk.gromore.dq.dq.iw;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.core.admanager.no;
import com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.mn;
import g.hat;
import java.util.Map;

/* loaded from: classes.dex */
public class d extends com.bytedance.sdk.openadsdk.f.d.d.d {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.p.dq.d.dq.dq f2312d;
    private no dq;
    private com.bytedance.msdk.api.p.dq.kk.s iw = new com.bytedance.msdk.api.p.dq.kk.s() { // from class: com.bytedance.sdk.gromore.dq.dq.iw.d.2
        @Override // com.bytedance.msdk.api.p.dq.kk.s
        public void d() {
            if (d.this.ox != null) {
                d.this.ox.d();
            }
        }

        @Override // com.bytedance.msdk.api.p.dq.kk.s
        public void dq() {
            if (d.this.ox != null) {
                d.this.ox.dq(d.this);
            }
        }
    };
    private com.bytedance.msdk.api.p.dq.kk.p mn = new com.bytedance.msdk.api.p.dq.kk.p() { // from class: com.bytedance.sdk.gromore.dq.dq.iw.d.3
        @Override // com.bytedance.msdk.api.p.dq.kk.p
        public void d() {
            if (d.this.p != null) {
                d.this.p.d();
            }
        }

        @Override // com.bytedance.msdk.api.p.dq.kk.p
        public void dq() {
            if (d.this.p != null) {
                d.this.p.dq(d.this);
            }
        }

        @Override // com.bytedance.msdk.api.p.dq.kk.p
        public Activity getActivity() {
            return null;
        }

        @Override // com.bytedance.msdk.api.p.dq.kk.p
        public void ox() {
            if (d.this.p != null) {
                d.this.p.dq();
            }
        }

        @Override // com.bytedance.msdk.api.p.dq.kk.p
        public void p() {
            if (d.this.ox != null) {
                d.this.ox.dq();
            }
        }
    };
    private com.bytedance.sdk.openadsdk.p.dq.d.dq.ox ox;
    private com.bytedance.sdk.openadsdk.p.dq.d.dq.d p;
    private com.bytedance.sdk.openadsdk.r.dq.d.dq.dq s;

    public d(no noVar, com.bytedance.sdk.openadsdk.r.dq.d.dq.dq dqVar) {
        this.dq = noVar;
        this.s = dqVar;
        o();
    }

    private void o() {
        this.dq.dq(new com.bytedance.msdk.api.p.dq.kk.d() { // from class: com.bytedance.sdk.gromore.dq.dq.iw.d.1
            @Override // com.bytedance.msdk.api.p.dq.kk.d
            public void d(int i) {
                if (d.this.f2312d != null) {
                    d.this.f2312d.dq(d.this, i);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.kk.d
            public void d_(com.bytedance.msdk.api.dq dqVar) {
                if (d.this.s == null || dqVar == null) {
                    return;
                }
                d.this.s.dq(d.this, new com.bytedance.sdk.gromore.dq.dq.dq(dqVar.dq, dqVar.f756d));
            }

            @Override // com.bytedance.msdk.api.p.dq.kk.d
            public void dq(int i) {
                if (d.this.f2312d != null) {
                    d.this.f2312d.dq(d.this, i);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.kk.d
            public void mn() {
                if (d.this.f2312d != null) {
                    d.this.f2312d.d(d.this);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.kk.d
            public void w_() {
                if (d.this.f2312d != null) {
                    d.this.f2312d.dq(d.this);
                }
            }
        });
        this.dq.dq(this.iw);
        this.dq.dq(this.mn);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public View d() {
        no noVar = this.dq;
        if (noVar != null) {
            return noVar.no();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public void d(ViewGroup viewGroup) {
        no noVar = this.dq;
        if (noVar != null) {
            noVar.d(viewGroup);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void d(Double d2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public View dq() {
        no noVar = this.dq;
        if (noVar != null) {
            return noVar.f();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public void dq(ViewGroup viewGroup) {
        no noVar = this.dq;
        if (noVar == null || viewGroup == null) {
            return;
        }
        noVar.dq(viewGroup);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public void dq(ViewGroup viewGroup, Activity activity) {
        no noVar = this.dq;
        if (noVar == null || viewGroup == null || activity == null) {
            return;
        }
        noVar.dq(viewGroup, activity);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public void dq(final com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
        no noVar = this.dq;
        if (noVar != null) {
            noVar.dq(new com.bytedance.msdk.api.p.dq.d() { // from class: com.bytedance.sdk.gromore.dq.dq.iw.d.4
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
        this.f2312d = dqVar;
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
        no noVar = this.dq;
        return noVar != null ? noVar.q() : new int[0];
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public mn kk() {
        return new dq(new ox(this.dq));
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public void mn() {
        no noVar = this.dq;
        if (noVar != null) {
            noVar.cd();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public View ox() {
        no noVar = this.dq;
        if (noVar != null) {
            return noVar.mp();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public int p() {
        no noVar = this.dq;
        if (noVar != null) {
            return noVar.z();
        }
        return -1;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public Map<String, Object> s() {
        no noVar = this.dq;
        if (noVar != null) {
            return noVar.xi();
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
