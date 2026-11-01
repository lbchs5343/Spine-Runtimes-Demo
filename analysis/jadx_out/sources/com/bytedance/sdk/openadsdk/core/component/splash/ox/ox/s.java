package com.bytedance.sdk.openadsdk.core.component.splash.ox.ox;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn;
import com.bytedance.sdk.openadsdk.core.r.nh;

/* loaded from: classes3.dex */
public class s {

    /* renamed from: d, reason: collision with root package name */
    volatile boolean f2755d;
    volatile boolean dq;
    private com.bytedance.sdk.openadsdk.core.component.splash.dq.dq ia;
    private mn iw;
    private com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw mn;
    volatile boolean ox;
    private com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.s p;
    private d<com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw, mn> s;

    public s(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.s sVar, d<com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw, mn> dVar, com.bytedance.sdk.openadsdk.core.component.splash.dq.dq dqVar) {
        if (sVar == null || dVar == null) {
            return;
        }
        this.p = sVar;
        this.s = dVar;
        this.ia = dqVar;
    }

    public static boolean d(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, nh nhVar) {
        return dq(dVar, nhVar) && (com.bytedance.sdk.openadsdk.core.ox.p.dq().n() & 8) == 8;
    }

    public static boolean dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, nh nhVar) {
        return (dVar == null || nhVar == null || TextUtils.isEmpty(dVar.wp()) || nhVar.s > 0) ? false : true;
    }

    public void dq(int i) {
        if (this.p == null || this.s == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "loadAd Type ".concat(String.valueOf(i)));
        if (i == 0) {
            new com.bytedance.sdk.openadsdk.core.component.splash.d.dq.ox().dq(this.p, this.s);
            return;
        }
        if (i == 1) {
            new com.bytedance.sdk.openadsdk.core.component.splash.d.dq.dq(this.ia).dq(this.p, new d<com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw, mn>() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.s.1
                @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.d
                /* renamed from: dq, reason: merged with bridge method [inline-methods] */
                public void d(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw iwVar) {
                    s.this.s.d(iwVar);
                }

                @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.d
                public void dq(mn mnVar) {
                    if (mnVar != null && s.this.p != null) {
                        s.this.p.dq(mnVar.p());
                        s.this.p.dq(mnVar.ox());
                    }
                    new com.bytedance.sdk.openadsdk.core.component.splash.d.dq.ox().dq(s.this.p, s.this.s);
                }
            });
            return;
        }
        if (i != 2) {
            if (i == 3) {
                new com.bytedance.sdk.openadsdk.core.component.splash.d.dq.ox().dq(this.p, new d<com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw, mn>() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.s.4
                    @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.d
                    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
                    public void d(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw iwVar) {
                        s.this.mn = iwVar;
                        if (s.this.ox) {
                            return;
                        }
                        if (s.this.iw != null && iwVar != null) {
                            iwVar.dq(s.this.iw.p());
                            iwVar.dq(s.this.iw.ox());
                        }
                        s.this.ox = true;
                        s.this.s.d(iwVar);
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.d
                    public void dq(mn mnVar) {
                        s.this.dq = true;
                        if (s.this.f2755d) {
                            s.this.s.dq(mnVar);
                        }
                    }
                });
                new com.bytedance.sdk.openadsdk.core.component.splash.d.dq.dq(this.ia).dq(this.p, new d<com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw, mn>() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.s.5
                    @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.d
                    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
                    public void d(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw iwVar) {
                        if (s.this.ox) {
                            return;
                        }
                        s.this.ox = true;
                        s.this.s.d(iwVar);
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.d
                    public void dq(mn mnVar) {
                        s.this.iw = mnVar;
                        if (s.this.mn != null && mnVar != null) {
                            s.this.mn.dq(mnVar.p());
                            s.this.mn.dq(mnVar.ox());
                        }
                        s.this.f2755d = true;
                        if (s.this.dq) {
                            s.this.s.dq(mnVar);
                        }
                    }
                });
                return;
            } else {
                if (i != 4) {
                    return;
                }
                new com.bytedance.sdk.openadsdk.core.component.splash.d.dq.dq(this.ia).dq(this.p, new d<com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw, mn>() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.s.6
                    @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.d
                    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
                    public void d(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw iwVar) {
                        s.this.s.d(iwVar);
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.d
                    public void dq(mn mnVar) {
                        s.this.s.dq(mnVar);
                    }
                });
                return;
            }
        }
        new com.bytedance.sdk.openadsdk.core.component.splash.d.dq.ox().dq(this.p, new d<com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw, mn>() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.s.2
            @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.d
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public void d(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw iwVar) {
                s.this.mn = iwVar;
                if (s.this.iw != null && iwVar != null) {
                    iwVar.dq(s.this.iw.p());
                    iwVar.dq(s.this.iw.ox());
                }
                com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "实时物料加载成功 isCache " + iwVar.s());
                s.this.s.d(iwVar);
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.d
            public void dq(mn mnVar) {
                com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "实时物料加载失败 ");
                s.this.s.dq(mnVar);
            }
        });
        com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.s sVar = this.p;
        com.bytedance.sdk.openadsdk.f.d.ox.d p = sVar != null ? sVar.p() : null;
        com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.s sVar2 = this.p;
        if (d(p, sVar2 != null ? sVar2.s() : null)) {
            return;
        }
        new com.bytedance.sdk.openadsdk.core.component.splash.d.dq.dq(this.ia).dq(this.p, new d<com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw, mn>() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.s.3
            @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.d
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public void d(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw iwVar) {
                com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "缓存物料加载成功 isCache " + iwVar.s());
                s.this.s.d(iwVar);
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.d
            public void dq(mn mnVar) {
                s.this.iw = mnVar;
                com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "缓存物料加载失败  ");
                if (s.this.mn != null && mnVar != null) {
                    s.this.mn.dq(mnVar.p());
                    s.this.mn.dq(mnVar.ox());
                }
                s.this.s.dq(mnVar);
            }
        });
    }
}
