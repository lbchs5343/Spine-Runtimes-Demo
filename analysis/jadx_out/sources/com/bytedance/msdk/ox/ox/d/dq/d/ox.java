package com.bytedance.msdk.ox.ox.d.dq.d;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.core.u;
import com.bytedance.sdk.openadsdk.f.d.d.mp;
import com.bytedance.sdk.openadsdk.f.d.d.q;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ox {

    public static class dq extends com.bytedance.msdk.d.s {
        private com.bytedance.sdk.openadsdk.f.d.d.o ox;
        private int p;
        com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dq = new com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq(0 == true ? 1 : 0) { // from class: com.bytedance.msdk.ox.ox.d.dq.d.ox.dq.3
            @Override // com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq
            public void d(View view, q qVar) {
                if (((com.bytedance.msdk.d.s) dq.this).no != null) {
                    ((com.bytedance.msdk.d.s) dq.this).no.dq(view);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq
            public void dq(View view, q qVar) {
                if (((com.bytedance.msdk.d.s) dq.this).no != null) {
                    ((com.bytedance.msdk.d.s) dq.this).no.dq(view);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq
            public void dq(q qVar) {
                if (((com.bytedance.msdk.d.s) dq.this).no != null) {
                    ((com.bytedance.msdk.d.s) dq.this).no.dq();
                }
            }
        };

        /* renamed from: d, reason: collision with root package name */
        com.bytedance.sdk.openadsdk.le.dq.d.dq.dq f1166d = new com.bytedance.sdk.openadsdk.le.dq.d.dq.dq(0 == true ? 1 : 0) { // from class: com.bytedance.msdk.ox.ox.d.dq.d.ox.dq.4
            @Override // com.bytedance.sdk.openadsdk.le.dq.d.dq.dq
            public void d(com.bytedance.sdk.openadsdk.f.d.d.no noVar) {
                if (((com.bytedance.msdk.d.s) dq.this).mn != null) {
                    ((com.bytedance.msdk.d.s) dq.this).mn.uh();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.le.dq.d.dq.dq
            public void dq(int i, int i2) {
                if (((com.bytedance.msdk.d.s) dq.this).mn != null) {
                    ((com.bytedance.msdk.d.s) dq.this).mn.dq(new com.bytedance.msdk.api.dq(i, "Android MediaPlay Error Code :".concat(String.valueOf(i2))));
                }
            }

            @Override // com.bytedance.sdk.openadsdk.le.dq.d.dq.dq
            public void dq(long j, long j2) {
                if (((com.bytedance.msdk.d.s) dq.this).mn != null) {
                    ((com.bytedance.msdk.d.s) dq.this).mn.dq(j, j2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.le.dq.d.dq.dq
            public void dq(com.bytedance.sdk.openadsdk.f.d.d.no noVar) {
                if (((com.bytedance.msdk.d.s) dq.this).mn != null) {
                    ((com.bytedance.msdk.d.s) dq.this).mn.by();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.le.dq.d.dq.dq
            public void ox(com.bytedance.sdk.openadsdk.f.d.d.no noVar) {
                if (((com.bytedance.msdk.d.s) dq.this).mn != null) {
                    ((com.bytedance.msdk.d.s) dq.this).mn.xz();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.le.dq.d.dq.dq
            public void p(com.bytedance.sdk.openadsdk.f.d.d.no noVar) {
                if (((com.bytedance.msdk.d.s) dq.this).mn != null) {
                    ((com.bytedance.msdk.d.s) dq.this).mn.yy();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.le.dq.d.dq.dq
            public void s(com.bytedance.sdk.openadsdk.f.d.d.no noVar) {
                if (((com.bytedance.msdk.d.s) dq.this).mn != null) {
                    ((com.bytedance.msdk.d.s) dq.this).mn.v();
                }
            }
        };

        /* JADX WARN: Multi-variable type inference failed */
        public dq(com.bytedance.sdk.openadsdk.f.d.d.o oVar, boolean z) {
            Map<String, Object> le;
            this.ox = oVar;
            com.bytedance.sdk.openadsdk.f.d.d.ox gh = oVar.gh();
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
                if (com.bytedance.msdk.dq.ox.d.dq("5.1.0.0")) {
                    k(gh.iw());
                }
                if (com.bytedance.msdk.dq.ox.d.dq("5.4.0.3")) {
                    no(gh.mn());
                }
                o(gh.ia());
            }
            n(oVar.mn());
            op(oVar.ia());
            ji(oVar.kk());
            kx(oVar.q() != null ? oVar.q().ox() : null);
            ig(oVar.fw());
            mp(oVar.f());
            ir(oVar.mp());
            p(oVar.o());
            ia(oVar.f() == 4);
            mn(false);
            if (oVar.fw() == 16 || oVar.fw() == 3 || oVar.fw() == 2) {
                if (oVar.jy() != null && !oVar.jy().isEmpty() && oVar.jy().get(0) != null) {
                    mp mpVar = oVar.jy().get(0);
                    h(mpVar.ox());
                    r(mpVar.dq());
                    gh(mpVar.d());
                }
            } else if (oVar.fw() != 4) {
                mp s2 = oVar.s();
                if (s2 == null && oVar.jy() != null && !oVar.jy().isEmpty() && oVar.jy().get(0) != null) {
                    s2 = oVar.jy().get(0);
                }
                if (s2 != null) {
                    h(s2.ox());
                    r(s2.dq());
                    gh(s2.d());
                }
            } else if (oVar.jy() != null && oVar.jy().size() > 0) {
                ArrayList arrayList = new ArrayList();
                Iterator<mp> it = oVar.jy().iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().ox());
                }
                dq((List<String>) arrayList);
            }
            if (z && (le = oVar.le()) != null) {
                double dq = com.bytedance.msdk.dq.ox.d.dq(le.get("price"));
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_ECMP", "pangle draw 返回的 cpm价格：".concat(String.valueOf(dq)));
                dq(dq <= 0.0d ? 0.0d : dq);
            }
            this.ox.dq(this.f1166d);
            dq(MediationConstant.EXTRA_ADID, Long.valueOf(ia()));
            dq(MediationConstant.EXTRA_CID, Long.valueOf(mn()));
            dq(MediationConstant.EXTRA_DURATION, Double.valueOf(this.ox.dq()));
            Map<String, Object> le2 = this.ox.le();
            if (le2 != null) {
                p(le2);
                dq("log_extra", le2.toString());
            }
        }

        private void d(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, List<View> list4, View view) {
            com.bytedance.sdk.openadsdk.f.d.d.o oVar = this.ox;
            if (oVar != null) {
                try {
                    oVar.dq(new com.bytedance.sdk.openadsdk.le.dq.d.dq.d(null) { // from class: com.bytedance.msdk.ox.ox.d.dq.d.ox.dq.1
                        @Override // com.bytedance.sdk.openadsdk.le.dq.d.dq.d
                        public void dq(int i) {
                            if (((com.bytedance.msdk.d.s) dq.this).o != null) {
                                ((com.bytedance.msdk.d.s) dq.this).o.dq(i);
                            }
                        }
                    });
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                this.ox.dq(viewGroup, list, list2, list3, list4, view, this.dq);
            }
        }

        @Override // com.bytedance.msdk.d.s
        public int cd() {
            return this.p;
        }

        @Override // com.bytedance.msdk.d.s
        public int d() {
            com.bytedance.sdk.openadsdk.f.d.d.o oVar = this.ox;
            if (oVar != null) {
                return oVar.ox();
            }
            return 0;
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void d(Activity activity) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle draw : setActivityForDownloadApp  activity = ".concat(String.valueOf(activity)));
            com.bytedance.sdk.openadsdk.f.d.d.o oVar = this.ox;
            if (oVar != null) {
                oVar.d(activity);
            }
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public com.bytedance.sdk.openadsdk.f.d.d.ia dq(Activity activity) {
            if (this.ox == null) {
                return super.dq(activity);
            }
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle draw : getDislikeDialog = ".concat(String.valueOf(activity)));
            return this.ox.dq(activity);
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public com.bytedance.sdk.openadsdk.f.d.d.ia dq(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
            if (this.ox == null) {
                return null;
            }
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle draw : getDislikeDialog = ".concat(String.valueOf(tTDislikeDialogAbstract)));
            return this.ox.dq(tTDislikeDialogAbstract);
        }

        @Override // com.bytedance.msdk.d.s
        public Map<String, Object> dq() {
            Map<String, Object> le;
            com.bytedance.sdk.openadsdk.f.d.d.o oVar = this.ox;
            if (oVar == null || (le = oVar.le()) == null) {
                return null;
            }
            ox(le);
            return super.dq();
        }

        @Override // com.bytedance.msdk.d.s
        public void dq(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.bytedance.msdk.api.p.dq.mn.no noVar, List<View> list4) {
            FrameLayout frameLayout;
            com.bytedance.sdk.openadsdk.f.d.d.o oVar;
            View i;
            com.bytedance.sdk.openadsdk.f.d.d.o oVar2;
            View findViewById;
            super.dq(activity, viewGroup, list, list2, list3, noVar, list4);
            d(viewGroup, null, list, list2, list3, null);
            com.bytedance.sdk.openadsdk.f.d.d.o oVar3 = this.ox;
            if (oVar3 != null && oVar3.iw() != null && noVar != null && (findViewById = viewGroup.findViewById(noVar.ig)) != null) {
                findViewById.setVisibility(0);
                if (findViewById instanceof ViewGroup) {
                    ViewGroup viewGroup2 = (ViewGroup) findViewById;
                    viewGroup2.removeAllViews();
                    ImageView imageView = new ImageView(viewGroup.getContext());
                    imageView.setImageBitmap(this.ox.iw());
                    imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
                    layoutParams.width = com.bytedance.msdk.dq.s.mn.d(viewGroup.getContext(), 38.0f);
                    layoutParams.height = com.bytedance.msdk.dq.s.mn.d(viewGroup.getContext(), 38.0f);
                    findViewById.setLayoutParams(layoutParams);
                    viewGroup2.addView(imageView, -1, -1);
                } else if (findViewById instanceof ImageView) {
                    ((ImageView) findViewById).setImageBitmap(this.ox.iw());
                }
            }
            if ((yy() && (oVar2 = this.ox) != null && oVar2.d() != null && !TextUtils.isEmpty(this.ox.d().dq())) || noVar == null || (frameLayout = (FrameLayout) viewGroup.findViewById(noVar.mn)) == null || (oVar = this.ox) == null || (i = oVar.i()) == null) {
                return;
            }
            d(i);
            frameLayout.removeAllViews();
            frameLayout.addView(i, -1, -1);
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void dq(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
            if (this.ox != null) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle draw :  activity = " + activity + " pluginDislikeInteractionCallback:" + dqVar);
                this.ox.dq(activity, dqVar);
            }
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void dq(Dialog dialog) {
            if (this.ox != null) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle draw :  ttDislikeDialogAbstract = ".concat(String.valueOf(dialog)));
                if (dialog instanceof TTDislikeDialogAbstract) {
                    this.ox.d((TTDislikeDialogAbstract) dialog);
                }
            }
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.d
        public void dq(Bitmap bitmap, int i) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle draw : setPauseIcon bitmap = " + bitmap + " i = " + i);
            com.bytedance.sdk.openadsdk.f.d.d.o oVar = this.ox;
            if (oVar != null) {
                oVar.dq(bitmap, i);
            }
        }

        @Override // com.bytedance.msdk.d.s
        public void dq(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, List<View> list4, View view) {
            super.dq(viewGroup, list, list2, list3, list4, view);
            d(viewGroup, list, list2, list3, list4, view);
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void dq(com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle draw : setDownloadListener pluginTTAppDownloadListener = ".concat(String.valueOf(dVar)));
            com.bytedance.sdk.openadsdk.f.d.d.o oVar = this.ox;
            if (oVar != null) {
                oVar.dq(dVar);
            }
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.d
        public void dq(com.bytedance.sdk.openadsdk.i.dq.d.dq.dq dqVar) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle draw : setDrawVideoListener pluginDrawVideoListener = ".concat(String.valueOf(dqVar)));
            com.bytedance.sdk.openadsdk.f.d.d.o oVar = this.ox;
            if (oVar != null) {
                oVar.dq(dqVar);
            }
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void dq(String str) {
            if (this.ox != null) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle draw : uploadDislikeEvent event = ".concat(String.valueOf(str)));
                this.ox.dq(str);
            }
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void dq(boolean z) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle draw : setCanInterruptVideoPlay b = ".concat(String.valueOf(z)));
            com.bytedance.sdk.openadsdk.f.d.d.o oVar = this.ox;
            if (oVar != null) {
                oVar.dq(z);
            }
        }

        @Override // com.bytedance.msdk.d.s
        public void f() {
            com.bytedance.sdk.openadsdk.f.d.d.o oVar = this.ox;
            if (oVar == null || oVar.r() == null || this.p != 3) {
                return;
            }
            this.ox.r().dq();
        }

        @Override // com.bytedance.msdk.d.s
        public void fw() {
            com.bytedance.sdk.openadsdk.f.d.d.o oVar = this.ox;
            if (oVar == null || oVar.r() == null) {
                return;
            }
            this.ox.r().d();
        }

        @Override // com.bytedance.msdk.d.s
        public View gh() {
            if (this.ox == null) {
                return null;
            }
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle draw : getVideoView = " + this.ox.i());
            return this.ox.i();
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public mp i() {
            if (this.ox == null) {
                return super.i();
            }
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle draw : getVideoCoverImage = " + this.ox.s());
            return this.ox.s();
        }

        @Override // com.bytedance.msdk.d.s
        public long ia() {
            com.bytedance.sdk.openadsdk.f.d.d.o oVar = this.ox;
            if (oVar != null) {
                return com.bytedance.msdk.dq.ox.d.d(oVar.le());
            }
            return 0L;
        }

        @Override // com.bytedance.msdk.d.s
        public String iw() {
            com.bytedance.sdk.openadsdk.f.d.d.o oVar = this.ox;
            return oVar != null ? com.bytedance.msdk.dq.ox.d.ox(oVar.le()) : "";
        }

        @Override // com.bytedance.msdk.d.s
        public void jy() {
            com.bytedance.sdk.openadsdk.f.d.d.o oVar = this.ox;
            if (oVar == null || oVar.r() == null || this.p != 2) {
                return;
            }
            this.ox.r().dq();
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public int k() {
            if (this.ox == null) {
                return super.k();
            }
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle draw : getAppCommentNum = " + this.ox.no());
            return this.ox.no();
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public com.bytedance.sdk.openadsdk.f.d.d.p kk() {
            if (this.ox == null) {
                return null;
            }
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle draw : getDislikeInfo");
            return this.ox.cd();
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public Bitmap le() {
            if (this.ox == null) {
                return super.le();
            }
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle draw : getAdLogo = " + this.ox.iw());
            return this.ox.iw();
        }

        @Override // com.bytedance.msdk.d.s
        public long mn() {
            com.bytedance.sdk.openadsdk.f.d.d.o oVar = this.ox;
            if (oVar != null) {
                return com.bytedance.msdk.dq.ox.d.dq(oVar.le());
            }
            return 0L;
        }

        @Override // com.bytedance.msdk.d.s
        public String mp() {
            com.bytedance.sdk.openadsdk.f.d.d.o oVar;
            if (!yy() || (oVar = this.ox) == null || oVar.d() == null) {
                return null;
            }
            return this.ox.d().dq();
        }

        @Override // com.bytedance.msdk.d.s
        public boolean o() {
            return true;
        }

        @Override // com.bytedance.msdk.d.s
        public int ox() {
            com.bytedance.sdk.openadsdk.f.d.d.o oVar = this.ox;
            if (oVar != null) {
                return oVar.p();
            }
            return 0;
        }

        @Override // com.bytedance.msdk.d.s
        public void p() {
            com.bytedance.sdk.openadsdk.f.d.d.o oVar = this.ox;
            if (oVar != null) {
                oVar.dq((com.bytedance.sdk.openadsdk.le.dq.d.dq.dq) null);
                this.ox = null;
            }
        }

        @Override // com.bytedance.msdk.d.s
        public com.bytedance.msdk.api.p.dq.mn.iw q() {
            if (yy()) {
                return new com.bytedance.msdk.api.p.dq.mn.iw() { // from class: com.bytedance.msdk.ox.ox.d.dq.d.ox.dq.2
                    @Override // com.bytedance.msdk.api.p.dq.mn.iw
                    public void d() {
                        if (dq.this.ox == null || dq.this.ox.d() == null) {
                            return;
                        }
                        dq.this.ox.d().p();
                    }

                    @Override // com.bytedance.msdk.api.p.dq.mn.iw
                    public void d(long j) {
                        if (dq.this.ox == null || dq.this.ox.d() == null) {
                            return;
                        }
                        dq.this.ox.d().d(j);
                    }

                    @Override // com.bytedance.msdk.api.p.dq.mn.iw
                    public void dq() {
                        if (dq.this.ox == null || dq.this.ox.d() == null) {
                            return;
                        }
                        dq.this.ox.d().ox();
                    }

                    @Override // com.bytedance.msdk.api.p.dq.mn.iw
                    public void dq(int i, int i2) {
                        if (dq.this.ox == null || dq.this.ox.d() == null) {
                            return;
                        }
                        dq.this.ox.d().dq(i, i2);
                    }

                    @Override // com.bytedance.msdk.api.p.dq.mn.iw
                    public void dq(long j) {
                        if (dq.this.ox == null || dq.this.ox.d() == null) {
                            return;
                        }
                        dq.this.ox.d().dq(j);
                    }

                    @Override // com.bytedance.msdk.api.p.dq.mn.iw
                    public void dq(long j, int i, int i2) {
                        if (dq.this.ox == null || dq.this.ox.d() == null) {
                            return;
                        }
                        dq.this.ox.d().dq(j, i, i2);
                    }

                    @Override // com.bytedance.msdk.api.p.dq.mn.iw
                    public void ox(long j) {
                        if (dq.this.ox == null || dq.this.ox.d() == null) {
                            return;
                        }
                        dq.this.ox.d().ox(j);
                    }
                };
            }
            return null;
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public double r() {
            if (this.ox == null) {
                return super.r();
            }
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle draw : getVideoDuration = " + this.ox.dq());
            return this.ox.dq();
        }

        @Override // com.bytedance.msdk.d.s
        public boolean s() {
            return this.ox == null;
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public com.bytedance.sdk.openadsdk.f.d.d.s wp() {
            com.bytedance.sdk.openadsdk.f.d.d.o oVar = this.ox;
            if (oVar == null) {
                return super.wp();
            }
            com.bytedance.sdk.openadsdk.f.d.d.s r = oVar.r();
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle draw : getDownloadStatusController = ".concat(String.valueOf(r)));
            return r;
        }
    }

    public void dq(final boolean z, u uVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final com.bytedance.msdk.ox.ox.d.dq.d dVar2) {
        if (uVar == null || dVar2 == null) {
            return;
        }
        uVar.dq(dVar, new com.bytedance.sdk.openadsdk.r.dq.d.dq.d(null) { // from class: com.bytedance.msdk.ox.ox.d.dq.d.ox.1
            @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.d
            public void dq(int i, String str) {
                dVar2.dq(new com.bytedance.msdk.api.dq(i, str));
            }

            @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.d
            public void dq(List<com.bytedance.sdk.openadsdk.f.d.d.o> list) {
                if (list == null || list.isEmpty()) {
                    dVar2.dq(new com.bytedance.msdk.api.dq(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "load成功但返回广告是空"));
                    return;
                }
                ArrayList arrayList = new ArrayList();
                Iterator<com.bytedance.sdk.openadsdk.f.d.d.o> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(new dq(it.next(), z));
                }
                dVar2.dq(arrayList);
            }
        });
    }
}
