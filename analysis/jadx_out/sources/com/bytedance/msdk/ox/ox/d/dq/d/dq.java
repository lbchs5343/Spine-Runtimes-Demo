package com.bytedance.msdk.ox.ox.d.dq.d;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.core.u;
import com.bytedance.sdk.openadsdk.f.d.d.jy;
import com.bytedance.sdk.openadsdk.f.d.d.mp;
import com.bytedance.sdk.openadsdk.f.d.d.q;
import com.bytedance.sdk.openadsdk.f.d.ox.d;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class dq extends com.bytedance.msdk.ox.ox.d.dq.d.d {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.msdk.api.dq.d f1137d;
    private com.bytedance.msdk.ox.s.d.d ox;

    public class d extends com.bytedance.msdk.d.s {
        jy dq;
        private boolean ox;
        private volatile boolean p = false;
        private final com.bytedance.sdk.openadsdk.e.dq.d.dq.d s;

        public d(Context context, jy jyVar) {
            Map<String, Object> ia;
            Bridge bridge = null;
            com.bytedance.sdk.openadsdk.e.dq.d.dq.d dVar = new com.bytedance.sdk.openadsdk.e.dq.d.dq.d(bridge) { // from class: com.bytedance.msdk.ox.ox.d.dq.d.dq.d.3
                @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
                public void d(View view, int i) {
                    if (((com.bytedance.msdk.d.s) d.this).ig instanceof com.bytedance.msdk.dq.d.dq) {
                        d.this.u().d(view);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
                public void dq(View view, float f2, float f3) {
                    ArrayList arrayList = new ArrayList(1);
                    arrayList.add(d.this);
                    dq.this.dq(arrayList);
                }

                @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
                public void dq(View view, int i) {
                    if (((com.bytedance.msdk.d.s) d.this).ig instanceof com.bytedance.msdk.dq.d.dq) {
                        d.this.u().dq(view);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
                public void dq(View view, String str, int i) {
                    dq.this.dq(new com.bytedance.msdk.api.dq(i, str));
                }
            };
            this.s = dVar;
            this.dq = jyVar;
            ig(jyVar.d());
            mp(this.dq.ox());
            mn(true);
            this.dq.dq(dVar);
            if (context instanceof Activity) {
                this.dq.dq((Activity) context, new com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq(bridge) { // from class: com.bytedance.msdk.ox.ox.d.dq.d.dq.d.1
                    @Override // com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq
                    public void d() {
                    }

                    @Override // com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq
                    public void dq() {
                    }

                    @Override // com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq
                    public void dq(int i, String str, boolean z) {
                        if (d.this.ox) {
                            return;
                        }
                        d.this.ox = true;
                        if (((com.bytedance.msdk.d.s) d.this).ig instanceof com.bytedance.msdk.dq.d.dq) {
                            com.bytedance.msdk.core.d.dq.dq(dq.this.ox.d());
                            d.this.u().C_();
                        }
                    }
                });
            }
            if (!dq.this.ox.dq() || (ia = this.dq.ia()) == null) {
                return;
            }
            double dq = com.bytedance.msdk.dq.ox.d.dq(ia.get("price"));
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_ECMP", "banner混存 pangle 模板native 返回的 cpm价格：".concat(String.valueOf(dq)));
            dq(dq <= 0.0d ? 0.0d : dq);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.bytedance.msdk.dq.d.dq u() {
            return (com.bytedance.msdk.dq.d.dq) this.ig;
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public com.bytedance.sdk.openadsdk.f.d.d.ia dq(Activity activity) {
            jy jyVar = this.dq;
            return jyVar != null ? jyVar.dq(activity) : super.dq(activity);
        }

        @Override // com.bytedance.msdk.d.s
        public Map<String, Object> dq() {
            Map<String, Object> ia;
            jy jyVar = this.dq;
            if (jyVar == null || (ia = jyVar.ia()) == null) {
                return null;
            }
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "getMediaExtraInfo ".concat(String.valueOf(ia)));
            ox(ia);
            return super.dq();
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void dq(Activity activity, final com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
            if (this.dq != null) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle banner-native express:  activity = " + activity + " pluginDislikeInteractionCallback:" + dqVar);
                this.dq.dq(activity, new com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq(null) { // from class: com.bytedance.msdk.ox.ox.d.dq.d.dq.d.4
                    @Override // com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq
                    public void d() {
                        com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar2 = dqVar;
                        if (dqVar2 != null) {
                            dqVar2.d();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq
                    public void dq() {
                        com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar2 = dqVar;
                        if (dqVar2 != null) {
                            dqVar2.dq();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq
                    public void dq(int i, String str, boolean z) {
                        if (d.this.ox) {
                            return;
                        }
                        d.this.ox = true;
                        com.bytedance.msdk.core.d.dq.dq(dq.this.ox.d());
                        com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar2 = dqVar;
                        if (dqVar2 != null) {
                            dqVar2.dq(i, str, z);
                        }
                    }
                });
            }
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void dq(Dialog dialog) {
            if (this.dq != null) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle banner-native express:  ttDislikeDialogAbstract = ".concat(String.valueOf(dialog)));
                if (dialog instanceof TTDislikeDialogAbstract) {
                    this.dq.dq((TTDislikeDialogAbstract) dialog);
                }
            }
        }

        @Override // com.bytedance.msdk.d.s
        public void dq(com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle banner express: setVideoAdListener pluginExpressVideoAdListener = ".concat(String.valueOf(oxVar)));
            jy jyVar = this.dq;
            if (jyVar != null) {
                jyVar.dq(oxVar);
            }
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void dq(com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle banner express: setDownloadListener pluginTTAppDownloadListener = ".concat(String.valueOf(dVar)));
            jy jyVar = this.dq;
            if (jyVar != null) {
                jyVar.dq(dVar);
            }
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void dq(String str) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle banner express: uploadDislikeEvent event = ".concat(String.valueOf(str)));
            jy jyVar = this.dq;
            if (jyVar != null) {
                jyVar.dq(str);
            }
        }

        @Override // com.bytedance.msdk.d.s
        public long ia() {
            jy jyVar = this.dq;
            if (jyVar != null) {
                return com.bytedance.msdk.dq.ox.d.d(jyVar.ia());
            }
            return 0L;
        }

        @Override // com.bytedance.msdk.d.s
        public View ig() {
            jy jyVar = this.dq;
            if (jyVar != null) {
                return jyVar.dq();
            }
            return null;
        }

        @Override // com.bytedance.msdk.d.s
        public String iw() {
            jy jyVar = this.dq;
            return jyVar != null ? com.bytedance.msdk.dq.ox.d.ox(jyVar.ia()) : "";
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public com.bytedance.sdk.openadsdk.f.d.d.p kk() {
            jy jyVar = this.dq;
            return jyVar != null ? jyVar.iw() : super.kk();
        }

        @Override // com.bytedance.msdk.d.s
        public long mn() {
            jy jyVar = this.dq;
            if (jyVar != null) {
                return com.bytedance.msdk.dq.ox.d.dq(jyVar.ia());
            }
            return 0L;
        }

        @Override // com.bytedance.msdk.d.s
        public void no() {
            jy jyVar = this.dq;
            if (jyVar != null) {
                jyVar.p();
            }
        }

        @Override // com.bytedance.msdk.d.s
        public void p() {
            this.p = true;
            com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.ox.ox.d.dq.d.dq.d.2
                @Override // java.lang.Runnable
                public void run() {
                    jy jyVar = d.this.dq;
                    if (jyVar != null) {
                        jyVar.s();
                    }
                }
            });
        }

        @Override // com.bytedance.msdk.d.s
        public boolean s() {
            return this.p;
        }
    }

    /* renamed from: com.bytedance.msdk.ox.ox.d.dq.d.dq$dq, reason: collision with other inner class name */
    public class C0075dq extends com.bytedance.msdk.d.s {
        private com.bytedance.sdk.openadsdk.f.d.d.no ox;
        private Context p;
        private boolean s;
        private volatile boolean q = false;
        com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dq = new com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq(0 == true ? 1 : 0) { // from class: com.bytedance.msdk.ox.ox.d.dq.d.dq.dq.3
            @Override // com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq
            public void d(View view, q qVar) {
                if (((com.bytedance.msdk.d.s) C0075dq.this).ig instanceof com.bytedance.msdk.dq.d.dq) {
                    C0075dq.this.u().dq(view);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq
            public void dq(View view, q qVar) {
                if (((com.bytedance.msdk.d.s) C0075dq.this).ig instanceof com.bytedance.msdk.dq.d.dq) {
                    C0075dq.this.u().dq(view);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq
            public void dq(q qVar) {
                if (((com.bytedance.msdk.d.s) C0075dq.this).ig instanceof com.bytedance.msdk.dq.d.dq) {
                    C0075dq.this.u().d(null);
                }
            }
        };

        /* JADX WARN: Multi-variable type inference failed */
        public C0075dq(Context context, com.bytedance.sdk.openadsdk.f.d.d.no noVar) {
            Map<String, Object> le;
            this.ox = noVar;
            this.p = context;
            com.bytedance.sdk.openadsdk.f.d.d.ox gh = noVar.gh();
            if (gh != null) {
                i(gh.dq());
                le(gh.ox());
                wp(gh.p());
                e(gh.d());
                HashMap hashMap = new HashMap();
                Map<String, String> s = gh.s();
                if (s != null && s.size() > 0) {
                    hashMap.putAll(s);
                }
                s(hashMap);
                if (com.bytedance.msdk.dq.ox.d.dq("5.4.0.3")) {
                    no(gh.mn());
                }
                o(gh.ia());
            }
            n(noVar.mn());
            op(noVar.ia());
            ji(noVar.kk());
            kx(noVar.q() != null ? noVar.q().ox() : null);
            ig(noVar.fw());
            mp(noVar.f());
            ir(noVar.mp());
            p(noVar.o());
            ia(noVar.f() == 4);
            mn(false);
            if (noVar.fw() == 16 || noVar.fw() == 3 || noVar.fw() == 2) {
                if (noVar.jy() != null && !noVar.jy().isEmpty() && noVar.jy().get(0) != null) {
                    mp mpVar = noVar.jy().get(0);
                    h(mpVar.ox());
                    r(mpVar.dq());
                    gh(mpVar.d());
                }
            } else if (noVar.fw() == 4 && noVar.jy() != null && noVar.jy().size() > 0) {
                ArrayList arrayList = new ArrayList();
                Iterator<mp> it = noVar.jy().iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().ox());
                }
                dq((List<String>) arrayList);
            }
            ig(noVar.fw());
            if (!dq.this.ox.dq() || (le = noVar.le()) == null) {
                return;
            }
            double dq = com.bytedance.msdk.dq.ox.d.dq(le.get("price"));
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_ECMP", "pangle native 返回的 cpm价格：".concat(String.valueOf(dq)));
            dq(dq <= 0.0d ? 0.0d : dq);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.bytedance.msdk.dq.d.dq u() {
            return (com.bytedance.msdk.dq.d.dq) this.ig;
        }

        @Override // com.bytedance.msdk.d.s
        public int d() {
            com.bytedance.sdk.openadsdk.f.d.d.no noVar = this.ox;
            if (noVar != null) {
                return noVar.ox();
            }
            return 0;
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public com.bytedance.sdk.openadsdk.f.d.d.ia dq(Activity activity) {
            if (this.ox == null) {
                return null;
            }
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle banner native: getDislikeDialog = ".concat(String.valueOf(activity)));
            return this.ox.dq(activity);
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public com.bytedance.sdk.openadsdk.f.d.d.ia dq(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
            if (this.ox == null) {
                return null;
            }
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle banner native : getDislikeDialog = ".concat(String.valueOf(tTDislikeDialogAbstract)));
            return this.ox.dq(tTDislikeDialogAbstract);
        }

        @Override // com.bytedance.msdk.d.s
        public Map<String, Object> dq() {
            Map<String, Object> le;
            com.bytedance.sdk.openadsdk.f.d.d.no noVar = this.ox;
            if (noVar == null || (le = noVar.le()) == null) {
                return null;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("coupon", le.get("coupon"));
            hashMap.put("live_room", le.get("live_room"));
            hashMap.put("product", le.get("product"));
            ox(hashMap);
            return super.dq();
        }

        @Override // com.bytedance.msdk.d.s
        public void dq(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.bytedance.msdk.api.p.dq.mn.no noVar, List<View> list4) {
            FrameLayout frameLayout;
            com.bytedance.sdk.openadsdk.f.d.d.no noVar2;
            View i;
            View findViewById;
            super.dq(activity, viewGroup, list, list2, list3, noVar, list4);
            com.bytedance.sdk.openadsdk.f.d.d.no noVar3 = this.ox;
            if (noVar3 != null) {
                noVar3.dq(viewGroup, (List<View>) null, list, list2, list3, (View) null, this.dq);
                this.ox.dq(activity, new com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq(null) { // from class: com.bytedance.msdk.ox.ox.d.dq.d.dq.dq.1
                    @Override // com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq
                    public void d() {
                    }

                    @Override // com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq
                    public void dq() {
                    }

                    @Override // com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq
                    public void dq(int i2, String str, boolean z) {
                        if (C0075dq.this.s) {
                            return;
                        }
                        C0075dq.this.s = true;
                        if (((com.bytedance.msdk.d.s) C0075dq.this).ig instanceof com.bytedance.msdk.dq.d.dq) {
                            com.bytedance.msdk.core.d.dq.dq(dq.this.ox.d());
                            C0075dq.this.u().C_();
                        }
                    }
                });
            }
            com.bytedance.sdk.openadsdk.f.d.d.no noVar4 = this.ox;
            if (noVar4 != null && noVar4.iw() != null && noVar != null && (findViewById = viewGroup.findViewById(noVar.ig)) != null) {
                findViewById.setVisibility(0);
                if (findViewById instanceof ViewGroup) {
                    ViewGroup viewGroup2 = (ViewGroup) findViewById;
                    viewGroup2.removeAllViews();
                    ImageView imageView = new ImageView(this.p);
                    imageView.setImageBitmap(this.ox.iw());
                    imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
                    layoutParams.width = com.bytedance.msdk.api.s.ox(this.p, 38.0f);
                    layoutParams.height = com.bytedance.msdk.api.s.ox(this.p, 38.0f);
                    findViewById.setLayoutParams(layoutParams);
                    viewGroup2.addView(imageView, -1, -1);
                } else if (findViewById instanceof ImageView) {
                    ((ImageView) findViewById).setImageBitmap(this.ox.iw());
                }
            }
            if (noVar == null || (frameLayout = (FrameLayout) viewGroup.findViewById(noVar.mn)) == null || (noVar2 = this.ox) == null || (i = noVar2.i()) == null) {
                return;
            }
            d(i);
            frameLayout.removeAllViews();
            frameLayout.addView(i, -1, -1);
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void dq(Activity activity, final com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
            if (this.ox != null) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle banner native:  activity = " + activity + " pluginDislikeInteractionCallback:" + dqVar);
                this.ox.dq(activity, new com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq(null) { // from class: com.bytedance.msdk.ox.ox.d.dq.d.dq.dq.4
                    @Override // com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq
                    public void d() {
                        com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar2 = dqVar;
                        if (dqVar2 != null) {
                            dqVar2.d();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq
                    public void dq() {
                        com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar2 = dqVar;
                        if (dqVar2 != null) {
                            dqVar2.dq();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq
                    public void dq(int i, String str, boolean z) {
                        if (C0075dq.this.s) {
                            return;
                        }
                        C0075dq.this.s = true;
                        com.bytedance.msdk.core.d.dq.dq(dq.this.ox.d());
                        com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar2 = dqVar;
                        if (dqVar2 != null) {
                            dqVar2.dq(i, str, z);
                        }
                    }
                });
            }
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void dq(Dialog dialog) {
            if (this.ox != null) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle banner native:  ttDislikeDialogAbstract = ".concat(String.valueOf(dialog)));
                if (dialog instanceof TTDislikeDialogAbstract) {
                    this.ox.d((TTDislikeDialogAbstract) dialog);
                }
            }
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void dq(String str) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle banner native: uploadDislikeEvent event = ".concat(String.valueOf(str)));
            com.bytedance.sdk.openadsdk.f.d.d.no noVar = this.ox;
            if (noVar != null) {
                noVar.dq(str);
            }
        }

        @Override // com.bytedance.msdk.d.s
        public long ia() {
            com.bytedance.sdk.openadsdk.f.d.d.no noVar = this.ox;
            if (noVar != null) {
                return com.bytedance.msdk.dq.ox.d.d(noVar.le());
            }
            return 0L;
        }

        @Override // com.bytedance.msdk.d.s
        public String iw() {
            com.bytedance.sdk.openadsdk.f.d.d.no noVar = this.ox;
            return noVar != null ? com.bytedance.msdk.dq.ox.d.ox(noVar.le()) : "";
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public com.bytedance.sdk.openadsdk.f.d.d.p kk() {
            if (this.ox == null) {
                return null;
            }
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle banner native : getDislikeInfo");
            return this.ox.cd();
        }

        @Override // com.bytedance.msdk.d.s
        public long mn() {
            com.bytedance.sdk.openadsdk.f.d.d.no noVar = this.ox;
            if (noVar != null) {
                return com.bytedance.msdk.dq.ox.d.dq(noVar.le());
            }
            return 0L;
        }

        @Override // com.bytedance.msdk.d.s
        public boolean o() {
            return true;
        }

        @Override // com.bytedance.msdk.d.s
        public int ox() {
            com.bytedance.sdk.openadsdk.f.d.d.no noVar = this.ox;
            if (noVar != null) {
                return noVar.p();
            }
            return 0;
        }

        @Override // com.bytedance.msdk.d.s
        public void p() {
            this.q = true;
            com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.ox.ox.d.dq.d.dq.dq.2
                @Override // java.lang.Runnable
                public void run() {
                    if (C0075dq.this.ox != null) {
                        C0075dq.this.ox.dq((com.bytedance.sdk.openadsdk.le.dq.d.dq.dq) null);
                        C0075dq.this.ox.wp();
                    }
                }
            });
        }

        @Override // com.bytedance.msdk.d.s
        public boolean s() {
            return this.q;
        }
    }

    public class ox extends com.bytedance.msdk.d.s {

        /* renamed from: d, reason: collision with root package name */
        SoftReference<FrameLayout> f1145d;
        jy dq;
        private boolean q;
        private boolean s;
        final Object ox = new Object();
        private volatile boolean jy = false;

        /* renamed from: f, reason: collision with root package name */
        private final com.bytedance.sdk.openadsdk.e.dq.d.dq.d f1146f = new com.bytedance.sdk.openadsdk.e.dq.d.dq.d(null) { // from class: com.bytedance.msdk.ox.ox.d.dq.d.dq.ox.4
            @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
            public void d(View view, int i) {
                if (((com.bytedance.msdk.d.s) ox.this).ig instanceof com.bytedance.msdk.dq.d.dq) {
                    ox.this.u().d(view);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
            public void dq(View view, float f2, float f3) {
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK_banner", com.bytedance.msdk.dq.s.s.d(dq.this.ox.d(), dq.this.ox.ig()) + "TTBannerView onRenderSuccess 渲染成功！！mBannerViewRef = " + ox.this.f1145d);
                SoftReference<FrameLayout> softReference = ox.this.f1145d;
                if (softReference != null) {
                    FrameLayout frameLayout = softReference.get();
                    if (frameLayout != null) {
                        com.bytedance.msdk.api.s.dq(view);
                        frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
                    }
                    ox.this.q = true;
                }
            }

            @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
            public void dq(View view, int i) {
                if (((com.bytedance.msdk.d.s) ox.this).ig instanceof com.bytedance.msdk.dq.d.dq) {
                    ox.this.u().dq(view);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
            public void dq(View view, String str, int i) {
                ox.this.q = false;
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK_banner", com.bytedance.msdk.dq.s.s.d(dq.this.ox.d(), dq.this.ox.ig()) + "TTBannerView onRenderFail -> code=" + i + ",msg=" + str);
            }
        };

        public ox() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.bytedance.msdk.dq.d.dq u() {
            return (com.bytedance.msdk.dq.d.dq) this.ig;
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public com.bytedance.sdk.openadsdk.f.d.d.ia dq(Activity activity) {
            if (this.dq == null) {
                return null;
            }
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle banner : getDislikeDialog = ".concat(String.valueOf(activity)));
            return this.dq.dq(activity);
        }

        @Override // com.bytedance.msdk.d.s
        public Map<String, Object> dq() {
            Map<String, Object> ia;
            jy jyVar = this.dq;
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
        public void dq(int i) {
            if (this.dq != null) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle banner : setSlideIntervalTime  intervalTime = ".concat(String.valueOf(i)));
                this.dq.dq(i);
            }
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void dq(Activity activity, final com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
            if (this.dq != null) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle banner : activity = " + activity + " pluginDislikeInteractionCallback:" + dqVar);
                this.dq.dq(activity, new com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq(null) { // from class: com.bytedance.msdk.ox.ox.d.dq.d.dq.ox.3
                    @Override // com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq
                    public void d() {
                        com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar2 = dqVar;
                        if (dqVar2 != null) {
                            dqVar2.d();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq
                    public void dq() {
                        com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar2 = dqVar;
                        if (dqVar2 != null) {
                            dqVar2.dq();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq
                    public void dq(int i, String str, boolean z) {
                        if (ox.this.s) {
                            return;
                        }
                        ox.this.s = true;
                        com.bytedance.msdk.core.d.dq.dq(dq.this.ox.d());
                        com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar2 = dqVar;
                        if (dqVar2 != null) {
                            dqVar2.dq(i, str, z);
                        }
                    }
                });
            }
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void dq(Dialog dialog) {
            if (this.dq != null) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle banner :  ttDislikeDialogAbstract = ".concat(String.valueOf(dialog)));
                if (dialog instanceof TTDislikeDialogAbstract) {
                    this.dq.dq((TTDislikeDialogAbstract) dialog);
                }
            }
        }

        public void dq(final Context context) {
            u dq = dq.this.dq(context);
            if (dq == null) {
                return;
            }
            d.dq dq2 = com.bytedance.msdk.dq.ox.d.dq(dq.this.f1137d, dq.this.ox.ig(), dq.this.ox.f(), dq.this.ox.fw(), dq.this.ox.e(), false);
            float q = dq.this.f1137d.q();
            dq2.dq(q).d(dq.this.f1137d.jy());
            dq.ox(dq2.dq(), new com.bytedance.sdk.openadsdk.r.dq.d.dq.iw(null) { // from class: com.bytedance.msdk.ox.ox.d.dq.d.dq.ox.1
                @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.iw
                public void dq(int i, String str) {
                    dq.this.dq(new com.bytedance.msdk.api.dq(i, str));
                }

                @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.iw
                public void dq(List<jy> list) {
                    Map<String, Object> ia;
                    if (list == null || list.size() == 0 || context == null) {
                        dq.this.dq(new com.bytedance.msdk.api.dq(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "load list is null or empty"));
                        return;
                    }
                    ox.this.dq = list.get(0);
                    Context context2 = context;
                    if (context2 instanceof Activity) {
                        ox.this.dq.dq((Activity) context2, new com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq(null) { // from class: com.bytedance.msdk.ox.ox.d.dq.d.dq.ox.1.1
                            @Override // com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq
                            public void d() {
                            }

                            @Override // com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq
                            public void dq() {
                            }

                            @Override // com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq
                            public void dq(int i, String str, boolean z) {
                                if (ox.this.s) {
                                    return;
                                }
                                ox.this.s = true;
                                if (((com.bytedance.msdk.d.s) ox.this).ig instanceof com.bytedance.msdk.dq.d.dq) {
                                    com.bytedance.msdk.core.d.dq.dq(dq.this.ox.d());
                                    ox.this.u().C_();
                                }
                            }
                        });
                    }
                    ox.this.mn(true);
                    ox oxVar = ox.this;
                    oxVar.mp(oxVar.dq.ox());
                    ox oxVar2 = ox.this;
                    oxVar2.ig(oxVar2.dq.d());
                    if (dq.this.ox.dq() && (ia = ox.this.dq.ia()) != null) {
                        double dq3 = com.bytedance.msdk.dq.ox.d.dq(ia.get("price"));
                        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_ECMP", com.bytedance.msdk.dq.s.s.d(dq.this.ox.d(), dq.this.ox.ig()) + "pangle banner 返回的 cpm价格：" + dq3);
                        ox oxVar3 = ox.this;
                        if (dq3 <= 0.0d) {
                            dq3 = 0.0d;
                        }
                        oxVar3.dq(dq3);
                    }
                    ox oxVar4 = ox.this;
                    oxVar4.dq.dq(oxVar4.f1146f);
                    ox.this.f1145d = new SoftReference<>(new FrameLayout(context));
                    ox.this.dq.p();
                    ArrayList arrayList = new ArrayList(1);
                    arrayList.add(ox.this);
                    dq.this.dq(arrayList);
                }
            });
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void dq(String str) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle banner : uploadDislikeEvent event = ".concat(String.valueOf(str)));
            jy jyVar = this.dq;
            if (jyVar != null) {
                jyVar.dq(str);
            }
        }

        @Override // com.bytedance.msdk.d.s
        public long ia() {
            jy jyVar = this.dq;
            if (jyVar != null) {
                return com.bytedance.msdk.dq.ox.d.d(jyVar.ia());
            }
            return 0L;
        }

        @Override // com.bytedance.msdk.d.s
        public synchronized View ig() {
            SoftReference<FrameLayout> softReference = this.f1145d;
            if (softReference == null) {
                return null;
            }
            FrameLayout frameLayout = softReference.get();
            synchronized (this.ox) {
                if (frameLayout == null) {
                    try {
                        long uptimeMillis = SystemClock.uptimeMillis();
                        long j = 2000 + uptimeMillis;
                        while (!this.q && uptimeMillis < j) {
                            this.ox.wait(j - uptimeMillis);
                            uptimeMillis = SystemClock.uptimeMillis();
                        }
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                }
            }
            return frameLayout;
        }

        @Override // com.bytedance.msdk.d.s
        public String iw() {
            jy jyVar = this.dq;
            return jyVar != null ? com.bytedance.msdk.dq.ox.d.ox(jyVar.ia()) : "";
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public com.bytedance.sdk.openadsdk.f.d.d.p kk() {
            if (this.dq == null) {
                return null;
            }
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle banner : getDislikeInfo");
            return this.dq.iw();
        }

        @Override // com.bytedance.msdk.d.s
        public long mn() {
            jy jyVar = this.dq;
            if (jyVar != null) {
                return com.bytedance.msdk.dq.ox.d.dq(jyVar.ia());
            }
            return 0L;
        }

        @Override // com.bytedance.msdk.d.s
        public void p() {
            this.jy = true;
            com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.ox.ox.d.dq.d.dq.ox.2
                @Override // java.lang.Runnable
                public void run() {
                    jy jyVar = ox.this.dq;
                    if (jyVar != null) {
                        jyVar.dq((com.bytedance.sdk.openadsdk.e.dq.d.dq.dq) null);
                        ox.this.dq.s();
                    }
                }
            });
        }

        @Override // com.bytedance.msdk.d.s
        public boolean s() {
            return this.jy;
        }
    }

    public dq(com.bytedance.msdk.ox.dq.d dVar) {
        super(dVar);
    }

    private void d(final Context context) {
        u dq = dq(context);
        if (dq == null) {
            return;
        }
        d.dq d2 = com.bytedance.msdk.dq.ox.d.dq(this.f1137d, this.ox.ig(), this.ox.f(), this.ox.fw(), this.ox.e(), false).dq(this.f1137d.e()).d(this.f1137d.kx());
        float q = this.f1137d.q();
        float jy = this.f1137d.jy();
        boolean dq2 = com.bytedance.msdk.dq.ox.d.dq(this.f1137d);
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle banner native express autoHeight:" + dq2 + " width:" + q + "  height:" + jy);
        if (jy <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || dq2) {
            d2.dq(q).d(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        } else {
            d2.dq(q).d(jy);
        }
        dq.dq(d2.dq(), new com.bytedance.sdk.openadsdk.r.dq.d.dq.iw(null) { // from class: com.bytedance.msdk.ox.ox.d.dq.d.dq.1
            @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.iw
            public void dq(int i, String str) {
                dq.this.dq(new com.bytedance.msdk.api.dq(i, str));
            }

            @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.iw
            public void dq(List<jy> list) {
                if (list == null || list.size() == 0) {
                    dq.this.dq(new com.bytedance.msdk.api.dq(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "load list is null or empty"));
                    return;
                }
                for (jy jyVar : list) {
                    if (jyVar != null) {
                        dq.this.new d(context, jyVar).no();
                        return;
                    }
                }
            }
        });
    }

    private void ox(final Context context) {
        u dq = dq(context);
        if (dq == null) {
            return;
        }
        d.dq dq2 = com.bytedance.msdk.dq.ox.d.dq(this.f1137d, this.ox.ig(), this.ox.f(), this.ox.fw(), this.ox.e(), false);
        dq2.dq(this.f1137d.e()).d(this.f1137d.kx());
        dq.dq(dq2.dq(), new com.bytedance.sdk.openadsdk.r.dq.d.dq.ox(null) { // from class: com.bytedance.msdk.ox.ox.d.dq.d.dq.2
            @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.ox
            public void dq(int i, String str) {
                dq.this.dq(new com.bytedance.msdk.api.dq(i, str));
            }

            @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.ox
            public void dq(List<com.bytedance.sdk.openadsdk.f.d.d.no> list) {
                if (list == null || list.isEmpty()) {
                    dq.this.dq(new com.bytedance.msdk.api.dq(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "load list is null or empty"));
                    return;
                }
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(dq.this.new C0075dq(context, list.get(0)));
                dq.this.dq(arrayList);
            }
        });
    }

    @Override // com.bytedance.msdk.ox.ox.d.dq.d
    public void d(Context context, com.bytedance.msdk.ox.s.d.d dVar, com.bytedance.msdk.api.dq.d dVar2, Map<String, Object> map) {
        this.f1137d = dVar2;
        this.ox = dVar;
        if (dVar2 == null) {
            dq(new com.bytedance.msdk.api.dq("load ad fail adSlot is null"));
            return;
        }
        if (map != null) {
            Object obj = map.get("tt_ad_sub_type");
            if (obj == null || ((Integer) obj).intValue() != 4) {
                new ox().dq(context);
                return;
            }
            Object obj2 = map.get("tt_ad_origin_type");
            if (obj2 != null) {
                int intValue = ((Integer) obj2).intValue();
                if (intValue == 1) {
                    d(context);
                } else if (intValue == 2) {
                    ox(context.getApplicationContext());
                } else {
                    dq(new com.bytedance.msdk.api.dq(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "originType is mismatch"));
                }
            }
        }
    }
}
