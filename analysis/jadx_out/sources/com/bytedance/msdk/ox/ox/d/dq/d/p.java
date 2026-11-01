package com.bytedance.msdk.ox.ox.d.dq.d;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.core.u;
import com.bytedance.sdk.openadsdk.f.d.d.jy;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class p {

    public static class dq extends com.bytedance.msdk.d.s {

        /* renamed from: d, reason: collision with root package name */
        com.bytedance.sdk.openadsdk.e.dq.d.dq.ox f1168d;
        com.bytedance.sdk.openadsdk.e.dq.d.dq.d dq;
        private jy ox;

        public dq(jy jyVar, boolean z) {
            Map<String, Object> ia;
            Bridge bridge = null;
            this.dq = new com.bytedance.sdk.openadsdk.e.dq.d.dq.d(bridge) { // from class: com.bytedance.msdk.ox.ox.d.dq.d.p.dq.1
                @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
                public void d(View view, int i) {
                    if (((com.bytedance.msdk.d.s) dq.this).no != null) {
                        ((com.bytedance.msdk.d.s) dq.this).no.dq();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
                public void dq(View view, float f2, float f3) {
                    if (((com.bytedance.msdk.d.s) dq.this).no instanceof com.bytedance.msdk.api.p.dq.ox.s) {
                        ((com.bytedance.msdk.api.p.dq.ox.s) ((com.bytedance.msdk.d.s) dq.this).no).dq(f2, f3);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
                public void dq(View view, int i) {
                    if (((com.bytedance.msdk.d.s) dq.this).no != null) {
                        ((com.bytedance.msdk.d.s) dq.this).no.dq(view);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
                public void dq(View view, String str, int i) {
                    if (((com.bytedance.msdk.d.s) dq.this).no instanceof com.bytedance.msdk.api.p.dq.ox.s) {
                        ((com.bytedance.msdk.api.p.dq.ox.s) ((com.bytedance.msdk.d.s) dq.this).no).dq(view, str, i);
                    }
                }
            };
            this.f1168d = new com.bytedance.sdk.openadsdk.e.dq.d.dq.ox(bridge) { // from class: com.bytedance.msdk.ox.ox.d.dq.d.p.dq.2
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
            this.ox = jyVar;
            ig(jyVar.d());
            mp(this.ox.ox());
            mn(true);
            if (z && (ia = jyVar.ia()) != null) {
                double dq = com.bytedance.msdk.dq.ox.d.dq(ia.get("price"));
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_ECMP", "pangle 模板draw 返回的 cpm价格：".concat(String.valueOf(dq)));
                dq(dq <= 0.0d ? 0.0d : dq);
            }
            this.ox.dq(this.dq);
            this.ox.dq(this.f1168d);
            dq(MediationConstant.EXTRA_ADID, Long.valueOf(ia()));
            dq(MediationConstant.EXTRA_CID, Long.valueOf(mn()));
            Map<String, Object> ia2 = this.ox.ia();
            if (ia2 != null) {
                p(ia2);
                dq("log_extra", ia2.toString());
            }
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public com.bytedance.sdk.openadsdk.f.d.d.ia dq(Activity activity) {
            jy jyVar = this.ox;
            return jyVar != null ? jyVar.dq(activity) : super.dq(activity);
        }

        @Override // com.bytedance.msdk.d.s
        public Map<String, Object> dq() {
            Map<String, Object> ia;
            jy jyVar = this.ox;
            if (jyVar == null || (ia = jyVar.ia()) == null) {
                return null;
            }
            ox(ia);
            return super.dq();
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void dq(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
            if (this.ox != null) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle draw express:  activity = " + activity + " pluginDislikeInteractionCallback:" + dqVar);
                this.ox.dq(activity, dqVar);
            }
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void dq(Dialog dialog) {
            if (this.ox != null) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle draw express:  ttDislikeDialogAbstract = ".concat(String.valueOf(dialog)));
                if (dialog instanceof TTDislikeDialogAbstract) {
                    this.ox.dq((TTDislikeDialogAbstract) dialog);
                }
            }
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void dq(com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle draw express: setDownloadListener pluginTTAppDownloadListener = ".concat(String.valueOf(dVar)));
            jy jyVar = this.ox;
            if (jyVar != null) {
                jyVar.dq(dVar);
            }
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void dq(String str) {
            if (this.ox != null) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle draw express: uploadDislikeEvent event = ".concat(String.valueOf(str)));
                this.ox.dq(str);
            }
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void dq(boolean z) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle draw express : setCanInterruptVideoPlay b = ".concat(String.valueOf(z)));
            jy jyVar = this.ox;
            if (jyVar != null) {
                jyVar.dq(z);
            }
        }

        @Override // com.bytedance.msdk.d.s
        public long ia() {
            jy jyVar = this.ox;
            if (jyVar != null) {
                return com.bytedance.msdk.dq.ox.d.d(jyVar.ia());
            }
            return 0L;
        }

        @Override // com.bytedance.msdk.d.s
        public View ig() {
            jy jyVar = this.ox;
            if (jyVar != null) {
                return jyVar.dq();
            }
            return null;
        }

        @Override // com.bytedance.msdk.d.s
        public String iw() {
            jy jyVar = this.ox;
            return jyVar != null ? com.bytedance.msdk.dq.ox.d.ox(jyVar.ia()) : "";
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public com.bytedance.sdk.openadsdk.f.d.d.p kk() {
            jy jyVar = this.ox;
            return jyVar != null ? jyVar.iw() : super.kk();
        }

        @Override // com.bytedance.msdk.d.s
        public long mn() {
            jy jyVar = this.ox;
            if (jyVar != null) {
                return com.bytedance.msdk.dq.ox.d.dq(jyVar.ia());
            }
            return 0L;
        }

        @Override // com.bytedance.msdk.d.s
        public void no() {
            jy jyVar = this.ox;
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
            jy jyVar = this.ox;
            if (jyVar != null) {
                jyVar.s();
                this.ox = null;
            }
        }

        @Override // com.bytedance.msdk.d.s
        public boolean s() {
            return this.ox == null;
        }
    }

    public void dq(final boolean z, u uVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final com.bytedance.msdk.ox.ox.d.dq.d dVar2) {
        if (uVar == null || dVar2 == null) {
            return;
        }
        uVar.d(dVar, new com.bytedance.sdk.openadsdk.r.dq.d.dq.iw(null) { // from class: com.bytedance.msdk.ox.ox.d.dq.d.p.1
            @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.iw
            public void dq(int i, String str) {
                dVar2.dq(new com.bytedance.msdk.api.dq(i, str));
            }

            @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.iw
            public void dq(List<jy> list) {
                if (list == null || list.size() == 0) {
                    dVar2.dq(new com.bytedance.msdk.api.dq(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "load成功但返回广告是空"));
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (jy jyVar : list) {
                    if (jyVar != null) {
                        arrayList.add(new dq(jyVar, z));
                    }
                }
                dVar2.dq(arrayList);
            }
        });
    }
}
