package com.bytedance.sdk.gromore.dq.dq.mn.ox;

import android.app.Activity;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.mediation.dq.d.kk;
import java.util.Map;

/* loaded from: classes.dex */
public class s extends kk {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.k.dq.d.dq.dq f2329d;
    private com.bytedance.msdk.ox.p.dq dq;

    public s(com.bytedance.msdk.ox.p.dq dqVar) {
        this.dq = dqVar;
        iw();
    }

    private void iw() {
        com.bytedance.msdk.ox.p.dq dqVar = this.dq;
        if (dqVar == null) {
            return;
        }
        dqVar.dq(new com.bytedance.msdk.api.p.dq.iw.dq() { // from class: com.bytedance.sdk.gromore.dq.dq.mn.ox.s.1
            @Override // com.bytedance.msdk.api.p.dq.iw.dq
            public void d() {
                if (s.this.f2329d != null) {
                    s.this.f2329d.d();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.iw.dq
            public void dq() {
                if (s.this.f2329d != null) {
                    s.this.f2329d.dq();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.iw.dq
            public void dq(com.bytedance.msdk.api.dq dqVar2) {
                if (dqVar2 == null || !(s.this.f2329d instanceof com.bytedance.sdk.openadsdk.mediation.dq.d.dq.d)) {
                    return;
                }
                ((com.bytedance.sdk.openadsdk.mediation.dq.d.dq.d) s.this.f2329d).dq(dqVar2.dq, dqVar2.f756d);
            }

            @Override // com.bytedance.msdk.api.p.dq.iw.dq
            public void dq(com.bytedance.msdk.api.ox.dq dqVar2) {
                if (s.this.f2329d instanceof com.bytedance.sdk.openadsdk.mediation.dq.d.dq.d) {
                    ((com.bytedance.sdk.openadsdk.mediation.dq.d.dq.d) s.this.f2329d).dq(p.dq(dqVar2));
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.iw.dq
            public void ia() {
                if (s.this.f2329d instanceof com.bytedance.sdk.openadsdk.mediation.dq.d.dq.d) {
                    ((com.bytedance.sdk.openadsdk.mediation.dq.d.dq.d) s.this.f2329d).ia();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.iw.dq
            public void iw() {
                if (s.this.f2329d != null) {
                    s.this.f2329d.s();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.iw.dq
            public void mn() {
                if (s.this.f2329d instanceof com.bytedance.sdk.openadsdk.mediation.dq.d.dq.d) {
                    ((com.bytedance.sdk.openadsdk.mediation.dq.d.dq.d) s.this.f2329d).mn();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.iw.dq
            public void ox() {
                if (s.this.f2329d != null) {
                    s.this.f2329d.ox();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.iw.dq
            public void p() {
                if (s.this.f2329d != null) {
                    s.this.f2329d.p();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.iw.dq
            public void s() {
                if (s.this.f2329d instanceof com.bytedance.sdk.openadsdk.mediation.dq.d.dq.d) {
                    ((com.bytedance.sdk.openadsdk.mediation.dq.d.dq.d) s.this.f2329d).iw();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public Map<String, Object> d() {
        com.bytedance.msdk.ox.p.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.r();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void d(Double d2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public int dq() {
        com.bytedance.msdk.ox.p.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.gh();
        }
        return -1;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public void dq(Activity activity) {
        com.bytedance.msdk.ox.p.dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.dq(activity);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public void dq(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        com.bytedance.msdk.ox.p.dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.dq(activity, ritScenes, str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public void dq(final com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
        com.bytedance.msdk.ox.p.dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.dq(new com.bytedance.msdk.api.p.dq.d() { // from class: com.bytedance.sdk.gromore.dq.dq.mn.ox.s.2
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

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public void dq(com.bytedance.sdk.openadsdk.k.dq.d.dq.dq dqVar) {
        this.f2329d = dqVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2, String str, String str2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public void dq(boolean z) {
        com.bytedance.msdk.ox.p.dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.d(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public int ox() {
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public long p() {
        return Long.MAX_VALUE;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.p s() {
        return new ia(new iw(this.dq));
    }
}
