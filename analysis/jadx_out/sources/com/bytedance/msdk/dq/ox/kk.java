package com.bytedance.msdk.dq.ox;

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
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class kk {

    public static class dq extends com.bytedance.msdk.d.s {
        private com.bytedance.sdk.openadsdk.f.d.d.no p;
        private int s;
        com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dq = new com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq(0 == true ? 1 : 0) { // from class: com.bytedance.msdk.dq.ox.kk.dq.2
            @Override // com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq
            public void d(View view, com.bytedance.sdk.openadsdk.f.d.d.q qVar) {
                if (((com.bytedance.msdk.d.s) dq.this).iw != null) {
                    ((com.bytedance.msdk.d.s) dq.this).iw.dq(view);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq
            public void dq(View view, com.bytedance.sdk.openadsdk.f.d.d.q qVar) {
                if (((com.bytedance.msdk.d.s) dq.this).iw != null) {
                    ((com.bytedance.msdk.d.s) dq.this).iw.dq(view);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq
            public void dq(com.bytedance.sdk.openadsdk.f.d.d.q qVar) {
                if (((com.bytedance.msdk.d.s) dq.this).iw != null) {
                    ((com.bytedance.msdk.d.s) dq.this).iw.dq();
                }
            }
        };

        /* renamed from: d, reason: collision with root package name */
        com.bytedance.sdk.openadsdk.le.dq.d.dq.dq f1050d = new com.bytedance.sdk.openadsdk.le.dq.d.dq.dq(0 == true ? 1 : 0) { // from class: com.bytedance.msdk.dq.ox.kk.dq.3
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
        com.bytedance.sdk.openadsdk.f.d.dq.d ox = new com.bytedance.sdk.openadsdk.f.d.dq.d(0 == true ? 1 : 0) { // from class: com.bytedance.msdk.dq.ox.kk.dq.4
            @Override // com.bytedance.sdk.openadsdk.f.d.dq.d
            public void d(long j, long j2, String str, String str2) {
                dq.this.s = 3;
                if (((com.bytedance.msdk.d.s) dq.this).ia != null) {
                    ((com.bytedance.msdk.d.s) dq.this).ia.dq(j, j2, str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.f.d.dq.d
            public void dq() {
                dq.this.s = 0;
                if (((com.bytedance.msdk.d.s) dq.this).ia != null) {
                    ((com.bytedance.msdk.d.s) dq.this).ia.dq();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.f.d.dq.d
            public void dq(long j, long j2, String str, String str2) {
                dq.this.s = 2;
                if (((com.bytedance.msdk.d.s) dq.this).ia != null) {
                    ((com.bytedance.msdk.d.s) dq.this).ia.dq(j, j2, (int) (j != 0 ? j2 / j : 0L), -1, str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.f.d.dq.d
            public void dq(long j, String str, String str2) {
                dq.this.s = 5;
                if (((com.bytedance.msdk.d.s) dq.this).ia != null) {
                    ((com.bytedance.msdk.d.s) dq.this).ia.dq(j, str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.f.d.dq.d
            public void dq(String str, String str2) {
                dq.this.s = 6;
                if (((com.bytedance.msdk.d.s) dq.this).ia != null) {
                    ((com.bytedance.msdk.d.s) dq.this).ia.dq(str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.f.d.dq.d
            public void ox(long j, long j2, String str, String str2) {
                dq.this.s = 4;
                if (((com.bytedance.msdk.d.s) dq.this).ia != null) {
                    ((com.bytedance.msdk.d.s) dq.this).ia.d(j, j2, str, str2);
                }
            }
        };

        /* JADX WARN: Multi-variable type inference failed */
        public dq(com.bytedance.sdk.openadsdk.f.d.d.no noVar, boolean z, boolean z2) {
            Map<String, Object> le;
            this.p = noVar;
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
                if (d.dq("5.1.0.0")) {
                    k(gh.iw());
                }
                if (d.dq("5.4.0.3")) {
                    no(gh.mn());
                }
                o(gh.ia());
            }
            ox(z2 ? 1 : 0);
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
                    com.bytedance.sdk.openadsdk.f.d.d.mp mpVar = noVar.jy().get(0);
                    h(mpVar.ox());
                    r(mpVar.dq());
                    gh(mpVar.d());
                }
            } else if (noVar.fw() != 4) {
                com.bytedance.sdk.openadsdk.f.d.d.mp s2 = noVar.s();
                if (s2 == null && noVar.jy() != null && !noVar.jy().isEmpty() && noVar.jy().get(0) != null) {
                    s2 = noVar.jy().get(0);
                }
                if (s2 != null) {
                    h(s2.ox());
                    r(s2.dq());
                    gh(s2.d());
                }
            } else if (noVar.jy() != null && noVar.jy().size() > 0) {
                ArrayList arrayList = new ArrayList();
                Iterator<com.bytedance.sdk.openadsdk.f.d.d.mp> it = noVar.jy().iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().ox());
                }
                dq((List<String>) arrayList);
            }
            if (z && (le = noVar.le()) != null) {
                double dq = d.dq(le.get("price"));
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_ECMP", "pangle native 返回的 cpm价格：".concat(String.valueOf(dq)));
                dq(dq <= 0.0d ? 0.0d : dq);
            }
            this.p.dq(this.f1050d);
            this.p.dq(this.ox);
            new HashMap();
            dq(MediationConstant.EXTRA_ADID, Long.valueOf(ia()));
            dq(MediationConstant.EXTRA_CID, Long.valueOf(mn()));
            dq(MediationConstant.EXTRA_DURATION, Double.valueOf(this.p.dq()));
            Map<String, Object> le2 = this.p.le();
            if (le2 != null) {
                p(le2);
                dq("log_extra", le2.toString());
            }
        }

        private synchronized void d(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, List<View> list4, View view) {
            com.bytedance.sdk.openadsdk.f.d.d.no noVar = this.p;
            if (noVar != null) {
                noVar.dq(this.ox);
                try {
                    this.p.dq(new com.bytedance.sdk.openadsdk.le.dq.d.dq.d(null) { // from class: com.bytedance.msdk.dq.ox.kk.dq.1
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
                this.p.dq(viewGroup, list, list2, list3, list4, view, this.dq);
            }
        }

        @Override // com.bytedance.msdk.d.s
        public int cd() {
            return this.s;
        }

        @Override // com.bytedance.msdk.d.s
        public int d() {
            com.bytedance.sdk.openadsdk.f.d.d.no noVar = this.p;
            if (noVar != null) {
                return noVar.ox();
            }
            return 0;
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void d(Activity activity) {
            com.bytedance.sdk.openadsdk.f.d.d.no noVar = this.p;
            if (noVar != null) {
                noVar.d(activity);
            }
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public com.bytedance.sdk.openadsdk.f.d.d.ia dq(Activity activity) {
            if (this.p == null) {
                return null;
            }
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle native : getDislikeDialog = ".concat(String.valueOf(activity)));
            return this.p.dq(activity);
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public com.bytedance.sdk.openadsdk.f.d.d.ia dq(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
            if (this.p == null) {
                return null;
            }
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle native : getDislikeDialog = ".concat(String.valueOf(tTDislikeDialogAbstract)));
            return this.p.dq(tTDislikeDialogAbstract);
        }

        @Override // com.bytedance.msdk.d.s
        public Map<String, Object> dq() {
            Map<String, Object> le;
            com.bytedance.sdk.openadsdk.f.d.d.no noVar = this.p;
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
            com.bytedance.sdk.openadsdk.f.d.d.no noVar3;
            View findViewById;
            super.dq(activity, viewGroup, list, list2, list3, noVar, list4);
            d(viewGroup, null, list, list2, list3, null);
            com.bytedance.sdk.openadsdk.f.d.d.no noVar4 = this.p;
            if (noVar4 != null && noVar4.iw() != null && noVar != null && (findViewById = viewGroup.findViewById(noVar.ig)) != null) {
                findViewById.setVisibility(0);
                if (findViewById instanceof ViewGroup) {
                    ViewGroup viewGroup2 = (ViewGroup) findViewById;
                    viewGroup2.removeAllViews();
                    ImageView imageView = new ImageView(viewGroup.getContext());
                    imageView.setImageBitmap(this.p.iw());
                    imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
                    layoutParams.width = com.bytedance.msdk.dq.s.mn.d(viewGroup.getContext(), 38.0f);
                    layoutParams.height = com.bytedance.msdk.dq.s.mn.d(viewGroup.getContext(), 38.0f);
                    findViewById.setLayoutParams(layoutParams);
                    viewGroup2.addView(imageView, -1, -1);
                } else if (findViewById instanceof ImageView) {
                    ((ImageView) findViewById).setImageBitmap(this.p.iw());
                }
            }
            if ((yy() && (noVar3 = this.p) != null && noVar3.d() != null && !TextUtils.isEmpty(this.p.d().dq())) || noVar == null || (frameLayout = (FrameLayout) viewGroup.findViewById(noVar.mn)) == null || (noVar2 = this.p) == null || (i = noVar2.i()) == null) {
                return;
            }
            d(i);
            frameLayout.removeAllViews();
            frameLayout.addView(i, -1, -1);
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void dq(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
            if (this.p != null) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle native:  activity = " + activity + " pluginDislikeInteractionCallback:" + dqVar);
                this.p.dq(activity, dqVar);
            }
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void dq(Dialog dialog) {
            if (this.p != null) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle native:  ttDislikeDialogAbstract = ".concat(String.valueOf(dialog)));
                if (dialog instanceof TTDislikeDialogAbstract) {
                    this.p.d((TTDislikeDialogAbstract) dialog);
                }
            }
        }

        @Override // com.bytedance.msdk.d.s
        public void dq(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, List<View> list4, View view) {
            super.dq(viewGroup, list, list2, list3, list4, view);
            d(viewGroup, list, list2, list3, list4, view);
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public void dq(String str) {
            if (this.p != null) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle native : uploadDislikeEvent event = ".concat(String.valueOf(str)));
                this.p.dq(str);
            }
        }

        @Override // com.bytedance.msdk.d.s
        public void f() {
            com.bytedance.sdk.openadsdk.f.d.d.no noVar = this.p;
            if (noVar == null || noVar.r() == null || this.s != 3) {
                return;
            }
            this.p.r().dq();
        }

        @Override // com.bytedance.msdk.d.s
        public void fw() {
            com.bytedance.sdk.openadsdk.f.d.d.no noVar = this.p;
            if (noVar == null || noVar.r() == null) {
                return;
            }
            this.p.r().d();
        }

        @Override // com.bytedance.msdk.d.s
        public View gh() {
            com.bytedance.sdk.openadsdk.f.d.d.no noVar = this.p;
            if (noVar != null) {
                return noVar.i();
            }
            return null;
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public com.bytedance.sdk.openadsdk.f.d.d.mp i() {
            com.bytedance.sdk.openadsdk.f.d.d.no noVar = this.p;
            return noVar != null ? noVar.s() : super.i();
        }

        @Override // com.bytedance.msdk.d.s
        public long ia() {
            com.bytedance.sdk.openadsdk.f.d.d.no noVar = this.p;
            if (noVar != null) {
                return d.d(noVar.le());
            }
            return 0L;
        }

        @Override // com.bytedance.msdk.d.s
        public String iw() {
            com.bytedance.sdk.openadsdk.f.d.d.no noVar = this.p;
            if (noVar != null) {
                return d.ox(noVar.le());
            }
            return null;
        }

        @Override // com.bytedance.msdk.d.s
        public void jy() {
            com.bytedance.sdk.openadsdk.f.d.d.no noVar = this.p;
            if (noVar == null || noVar.r() == null || this.s != 2) {
                return;
            }
            this.p.r().dq();
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public int k() {
            com.bytedance.sdk.openadsdk.f.d.d.no noVar = this.p;
            return noVar != null ? noVar.no() : super.k();
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public com.bytedance.sdk.openadsdk.f.d.d.p kk() {
            if (this.p == null) {
                return null;
            }
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle native : getDislikeInfo");
            return this.p.cd();
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public Bitmap le() {
            com.bytedance.sdk.openadsdk.f.d.d.no noVar = this.p;
            return noVar != null ? noVar.iw() : super.le();
        }

        @Override // com.bytedance.msdk.d.s
        public long mn() {
            com.bytedance.sdk.openadsdk.f.d.d.no noVar = this.p;
            if (noVar != null) {
                return d.dq(noVar.le());
            }
            return 0L;
        }

        @Override // com.bytedance.msdk.d.s
        public String mp() {
            com.bytedance.sdk.openadsdk.f.d.d.no noVar;
            if (!yy() || (noVar = this.p) == null || noVar.d() == null) {
                return null;
            }
            return this.p.d().dq();
        }

        @Override // com.bytedance.msdk.d.s
        public boolean o() {
            return true;
        }

        @Override // com.bytedance.msdk.d.s
        public int ox() {
            com.bytedance.sdk.openadsdk.f.d.d.no noVar = this.p;
            if (noVar != null) {
                return noVar.p();
            }
            return 0;
        }

        @Override // com.bytedance.msdk.d.s
        public synchronized void p() {
            com.bytedance.sdk.openadsdk.f.d.d.no noVar = this.p;
            if (noVar != null) {
                noVar.dq((com.bytedance.sdk.openadsdk.le.dq.d.dq.dq) null);
                this.p.wp();
                this.p = null;
            }
        }

        @Override // com.bytedance.msdk.d.s
        public com.bytedance.msdk.api.p.dq.mn.iw q() {
            if (yy()) {
                return new com.bytedance.msdk.api.p.dq.mn.iw() { // from class: com.bytedance.msdk.dq.ox.kk.dq.5
                    @Override // com.bytedance.msdk.api.p.dq.mn.iw
                    public void d() {
                        if (dq.this.p == null || dq.this.p.d() == null) {
                            return;
                        }
                        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle native : reportVideoAutoStart ");
                        dq.this.p.d().p();
                    }

                    @Override // com.bytedance.msdk.api.p.dq.mn.iw
                    public void d(long j) {
                        if (dq.this.p == null || dq.this.p.d() == null) {
                            return;
                        }
                        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle native : reportVideoContinue playingTime = ".concat(String.valueOf(j)));
                        dq.this.p.d().d(j);
                    }

                    @Override // com.bytedance.msdk.api.p.dq.mn.iw
                    public void dq() {
                        if (dq.this.p == null || dq.this.p.d() == null) {
                            return;
                        }
                        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle native : reportVideoFinish ");
                        dq.this.p.d().ox();
                    }

                    @Override // com.bytedance.msdk.api.p.dq.mn.iw
                    public void dq(int i, int i2) {
                        if (dq.this.p == null || dq.this.p.d() == null) {
                            return;
                        }
                        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle native : reportVideoStartError errorCode = " + i + " extra = " + i2);
                        dq.this.p.d().dq(i, i2);
                    }

                    @Override // com.bytedance.msdk.api.p.dq.mn.iw
                    public void dq(long j) {
                        if (dq.this.p == null || dq.this.p.d() == null) {
                            return;
                        }
                        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle native : reportVideoPause playingTime = ".concat(String.valueOf(j)));
                        dq.this.p.d().dq(j);
                    }

                    @Override // com.bytedance.msdk.api.p.dq.mn.iw
                    public void dq(long j, int i, int i2) {
                        if (dq.this.p == null || dq.this.p.d() == null) {
                            return;
                        }
                        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle native : reportVideoStartError playingTime " + j + "errorCode = " + i + " extra = " + i2);
                        dq.this.p.d().dq(j, i, i2);
                    }

                    @Override // com.bytedance.msdk.api.p.dq.mn.iw
                    public void ox(long j) {
                        if (dq.this.p == null || dq.this.p.d() == null) {
                            return;
                        }
                        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "pangle native : reportVideoBreak playingTime = ".concat(String.valueOf(j)));
                        dq.this.p.d().ox(j);
                    }
                };
            }
            return null;
        }

        @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
        public double r() {
            com.bytedance.sdk.openadsdk.f.d.d.no noVar = this.p;
            return noVar != null ? noVar.dq() : super.r();
        }

        @Override // com.bytedance.msdk.d.s
        public boolean s() {
            return this.p == null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(List<com.bytedance.sdk.openadsdk.f.d.d.no> list, final com.bytedance.msdk.dq.dq dqVar, final boolean z) {
        final int size = list.size();
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "PangleNativeAd_nativeSupportRenderControl_adNum:".concat(String.valueOf(size)));
        final AtomicInteger atomicInteger = new AtomicInteger();
        final ArrayList arrayList = new ArrayList();
        for (final com.bytedance.sdk.openadsdk.f.d.d.no noVar : list) {
            final long currentTimeMillis = System.currentTimeMillis();
            noVar.dq(new com.bytedance.sdk.openadsdk.wp.dq.d.dq.ox(null) { // from class: com.bytedance.msdk.dq.ox.kk.2
                @Override // com.bytedance.sdk.openadsdk.wp.dq.d.dq.ox
                public void dq(View view, float f2, float f3, boolean z2) {
                    com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "PangleNativeAd_nativeSupportRenderControl_onRenderSuccess:" + z2 + " duration:" + (System.currentTimeMillis() - currentTimeMillis));
                    arrayList.add(new dq(noVar, z, z2));
                    if (atomicInteger.incrementAndGet() != size || dqVar == null) {
                        return;
                    }
                    com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "PangleNativeAd_nativeSupportRenderControl_notifyAdSuccess!!!!!");
                    dqVar.d(arrayList);
                }
            });
            noVar.k();
        }
    }

    public void dq(final boolean z, u uVar, final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final com.bytedance.msdk.dq.dq dqVar) {
        if (uVar == null || dqVar == null || dVar == null) {
            return;
        }
        uVar.dq(dVar, new com.bytedance.sdk.openadsdk.r.dq.d.dq.ox(null) { // from class: com.bytedance.msdk.dq.ox.kk.1
            @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.ox
            public void dq(int i, String str) {
                dqVar.dq(new com.bytedance.msdk.api.dq(i, str));
            }

            @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.ox
            public void dq(List<com.bytedance.sdk.openadsdk.f.d.d.no> list) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "PangleNativeAd_onFeedAdLoad_SupportRenderControl:" + dVar.q());
                if (list == null || list.isEmpty()) {
                    dqVar.dq(new com.bytedance.msdk.api.dq(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "load成功但返回广告是空"));
                    return;
                }
                if (dVar.q()) {
                    kk.this.dq(list, dqVar, z);
                    return;
                }
                ArrayList arrayList = new ArrayList();
                Iterator<com.bytedance.sdk.openadsdk.f.d.d.no> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(new dq(it.next(), z, false));
                }
                dqVar.d(arrayList);
            }
        });
    }
}
