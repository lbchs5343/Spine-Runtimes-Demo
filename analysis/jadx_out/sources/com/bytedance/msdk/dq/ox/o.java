package com.bytedance.msdk.dq.ox;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.core.u;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class o {
    private boolean dq;

    public class dq extends com.bytedance.msdk.d.s {

        /* renamed from: d, reason: collision with root package name */
        com.bytedance.msdk.dq.dq f1054d;
        com.bytedance.sdk.openadsdk.f.d.d.jy dq;
        com.bytedance.sdk.openadsdk.e.dq.d.dq.d ox;
        com.bytedance.sdk.openadsdk.e.dq.d.dq.ox p;
        private volatile boolean q = false;

        public dq(com.bytedance.sdk.openadsdk.f.d.d.jy jyVar, com.bytedance.msdk.dq.dq dqVar) {
            Map<String, Object> ia;
            Bridge bridge = null;
            this.ox = new com.bytedance.sdk.openadsdk.e.dq.d.dq.d(bridge) { // from class: com.bytedance.msdk.dq.ox.o.dq.2
                @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
                public void d(View view, int i) {
                    if (((com.bytedance.msdk.d.s) dq.this).iw != null) {
                        ((com.bytedance.msdk.d.s) dq.this).iw.dq();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
                public void dq(View view, float f2, float f3) {
                    if (((com.bytedance.msdk.d.s) dq.this).iw instanceof com.bytedance.msdk.api.p.dq.mn.mn) {
                        ((com.bytedance.msdk.api.p.dq.mn.mn) ((com.bytedance.msdk.d.s) dq.this).iw).dq(f2, f3);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
                public void dq(View view, int i) {
                    if (((com.bytedance.msdk.d.s) dq.this).iw != null) {
                        ((com.bytedance.msdk.d.s) dq.this).iw.dq(view);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
                public void dq(View view, String str, int i) {
                    if (((com.bytedance.msdk.d.s) dq.this).iw instanceof com.bytedance.msdk.api.p.dq.mn.mn) {
                        ((com.bytedance.msdk.api.p.dq.mn.mn) ((com.bytedance.msdk.d.s) dq.this).iw).dq(view, str, i);
                    }
                }
            };
            this.p = new com.bytedance.sdk.openadsdk.e.dq.d.dq.ox(bridge) { // from class: com.bytedance.msdk.dq.ox.o.dq.3
                @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.ox
                public void d() {
                    if (((com.bytedance.msdk.d.s) dq.this).mn != null) {
                        ((com.bytedance.msdk.d.s) dq.this).mn.uh();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.ox
                public void dq() {
                    if (((com.bytedance.msdk.d.s) dq.this).mn != null) {
                        ((com.bytedance.msdk.d.s) dq.this).mn.by();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.ox
                public void dq(int i, int i2) {
                    if (((com.bytedance.msdk.d.s) dq.this).mn != null) {
                        ((com.bytedance.msdk.d.s) dq.this).mn.dq(new com.bytedance.msdk.api.dq(i, "MediaPlayer inter error code:".concat(String.valueOf(i2))));
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.ox
                public void dq(long j, long j2) {
                    if (((com.bytedance.msdk.d.s) dq.this).mn != null) {
                        ((com.bytedance.msdk.d.s) dq.this).mn.dq(j, j2);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.ox
                public void ox() {
                    if (((com.bytedance.msdk.d.s) dq.this).mn != null) {
                        ((com.bytedance.msdk.d.s) dq.this).mn.xz();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.ox
                public void p() {
                    if (((com.bytedance.msdk.d.s) dq.this).mn != null) {
                        ((com.bytedance.msdk.d.s) dq.this).mn.yy();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.ox
                public void s() {
                    if (((com.bytedance.msdk.d.s) dq.this).mn != null) {
                        ((com.bytedance.msdk.d.s) dq.this).mn.v();
                    }
                }
            };
            this.dq = jyVar;
            this.f1054d = dqVar;
            ig(jyVar.d());
            mp(this.dq.ox());
            mn(true);
            if (o.this.dq && (ia = jyVar.ia()) != null) {
                double dq = d.dq(ia.get("price"));
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_ECMP", "pangle 模板native 返回的 cpm价格：".concat(String.valueOf(dq)));
                dq(dq <= 0.0d ? 0.0d : dq);
            }
            dq(MediationConstant.EXTRA_ADID, Long.valueOf(ia()));
            dq(MediationConstant.EXTRA_CID, Long.valueOf(mn()));
            Map<String, Object> ia2 = this.dq.ia();
            if (ia2 != null) {
                p(ia2);
                dq("log_extra", ia2.toString());
            }
            this.dq.dq(this.ox);
            this.dq.dq(this.p);
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public com.bytedance.sdk.openadsdk.f.d.d.ia dq(Activity activity) {
            com.bytedance.sdk.openadsdk.f.d.d.jy jyVar = this.dq;
            return jyVar != null ? jyVar.dq(activity) : super.dq(activity);
        }

        @Override // com.bytedance.msdk.d.s
        public Map<String, Object> dq() {
            Map<String, Object> ia;
            com.bytedance.sdk.openadsdk.f.d.d.jy jyVar = this.dq;
            if (jyVar == null || (ia = jyVar.ia()) == null) {
                return null;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("coupon", ia.get("coupon"));
            hashMap.put("live_room", ia.get("live_room"));
            hashMap.put("product", ia.get("product"));
            ox(hashMap);
            return super.dq();
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void dq(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
            if (this.dq != null) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle native express:  activity = " + activity + " pluginDislikeInteractionCallback:" + dqVar);
                this.dq.dq(activity, dqVar);
            }
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void dq(Dialog dialog) {
            if (this.dq != null) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle native express:  ttDislikeDialogAbstract = ".concat(String.valueOf(dialog)));
                if (dialog instanceof TTDislikeDialogAbstract) {
                    this.dq.dq((TTDislikeDialogAbstract) dialog);
                }
            }
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void dq(String str) {
            if (this.dq != null) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle native express: uploadDislikeEvent event = ".concat(String.valueOf(str)));
                this.dq.dq(str);
            }
        }

        @Override // com.bytedance.msdk.d.s
        public long ia() {
            com.bytedance.sdk.openadsdk.f.d.d.jy jyVar = this.dq;
            if (jyVar != null) {
                return d.d(jyVar.ia());
            }
            return 0L;
        }

        @Override // com.bytedance.msdk.d.s
        public View ig() {
            com.bytedance.sdk.openadsdk.f.d.d.jy jyVar = this.dq;
            if (jyVar != null) {
                return jyVar.dq();
            }
            return null;
        }

        @Override // com.bytedance.msdk.d.s
        public String iw() {
            com.bytedance.sdk.openadsdk.f.d.d.jy jyVar = this.dq;
            if (jyVar != null) {
                return d.ox(jyVar.ia());
            }
            return null;
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public com.bytedance.sdk.openadsdk.f.d.d.p kk() {
            com.bytedance.sdk.openadsdk.f.d.d.jy jyVar = this.dq;
            return jyVar != null ? jyVar.iw() : super.kk();
        }

        @Override // com.bytedance.msdk.d.s
        public long mn() {
            com.bytedance.sdk.openadsdk.f.d.d.jy jyVar = this.dq;
            if (jyVar != null) {
                return d.dq(jyVar.ia());
            }
            return 0L;
        }

        @Override // com.bytedance.msdk.d.s
        public void no() {
            com.bytedance.sdk.openadsdk.f.d.d.jy jyVar = this.dq;
            if (jyVar != null) {
                jyVar.p();
            }
        }

        @Override // com.bytedance.msdk.d.s
        public boolean o() {
            return true;
        }

        @Override // com.bytedance.msdk.d.s
        public void p() {
            this.q = true;
            com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.dq.ox.o.dq.1
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.f.d.d.jy jyVar = dq.this.dq;
                    if (jyVar != null) {
                        jyVar.s();
                    }
                }
            });
        }

        @Override // com.bytedance.msdk.d.s
        public boolean s() {
            return this.q;
        }
    }

    public void dq(boolean z, u uVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final com.bytedance.msdk.dq.dq dqVar) {
        if (uVar == null || dqVar == null) {
            return;
        }
        this.dq = z;
        uVar.dq(dVar, new com.bytedance.sdk.openadsdk.r.dq.d.dq.iw(null) { // from class: com.bytedance.msdk.dq.ox.o.1
            @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.iw
            public void dq(int i, String str) {
                dqVar.dq(new com.bytedance.msdk.api.dq(i, str));
            }

            @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.iw
            public void dq(List<com.bytedance.sdk.openadsdk.f.d.d.jy> list) {
                if (list == null || list.size() == 0) {
                    dqVar.dq(new com.bytedance.msdk.api.dq(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "load成功但返回广告是空"));
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (com.bytedance.sdk.openadsdk.f.d.d.jy jyVar : list) {
                    if (jyVar != null) {
                        arrayList.add(o.this.new dq(jyVar, dqVar));
                    }
                }
                dqVar.d(arrayList);
            }
        });
    }
}
