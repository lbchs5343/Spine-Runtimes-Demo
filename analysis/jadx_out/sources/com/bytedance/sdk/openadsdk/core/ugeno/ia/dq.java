package com.bytedance.sdk.openadsdk.core.ugeno.ia;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.bytedance.sdk.component.adexpress.widget.GifView;
import com.bytedance.sdk.component.iw.f;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import com.bytedance.sdk.openadsdk.core.d.dq.d.p;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.fw;
import com.bytedance.sdk.openadsdk.core.jy.dq;
import com.bytedance.sdk.openadsdk.core.le;
import com.bytedance.sdk.openadsdk.core.nativeexpress.o;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.r.gh;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.kk;
import com.bytedance.sdk.openadsdk.core.r.q;
import com.bytedance.sdk.openadsdk.core.ugeno.ia.s;
import com.bytedance.sdk.openadsdk.core.ugeno.o.ox;
import com.bytedance.sdk.openadsdk.core.wp;
import g.co;
import g.dfp;
import g.dlv;
import g.eid;
import g.eyh;
import g.fde;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public abstract class dq implements o, ia, ox, p {
    protected int cd;

    /* renamed from: d, reason: collision with root package name */
    protected Context f3581d;
    protected com.bytedance.sdk.openadsdk.core.ugeno.mn.dq dq;

    /* renamed from: e, reason: collision with root package name */
    private FrameLayout f3582e;

    /* renamed from: f, reason: collision with root package name */
    protected int f3583f;
    protected int fw;
    protected d gh;
    protected dlv ia;
    protected String ig;
    protected com.bytedance.sdk.openadsdk.core.ugeno.s.dq iw;
    protected int jy;
    protected List<co> kk;
    private boolean kx;
    protected dlv mn;
    protected Map<String, Object> mp;
    protected ViewGroup ox;
    protected com.bytedance.sdk.openadsdk.core.ig.s p;
    protected JSONObject q;
    protected InterfaceC0189dq r;
    protected j s;
    private iw wp;
    private boolean le = true;
    private boolean k = true;
    protected AtomicInteger i = new AtomicInteger(2);
    protected AtomicInteger o = new AtomicInteger();
    protected Map<Integer, Boolean> no = new HashMap();

    /* renamed from: com.bytedance.sdk.openadsdk.core.ugeno.ia.dq$6, reason: invalid class name */
    public class AnonymousClass6 extends kk {
        final /* synthetic */ dlv dq;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass6(String str, dlv dlvVar) {
            super(str);
            this.dq = dlvVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            dq dqVar = dq.this;
            com.bytedance.sdk.openadsdk.core.le.d.dq(dqVar.s, dqVar.q, new com.bytedance.sdk.openadsdk.core.fw.ox() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.ia.dq.6.1
                @Override // com.bytedance.sdk.openadsdk.core.fw.ox
                public void dq(boolean z, List<j> list, boolean z2) {
                    if (list == null || list.size() <= 0) {
                        if (dq.this.i.get() > 0) {
                            AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                            dq.this.dq(anonymousClass6.dq);
                            dq.this.i.decrementAndGet();
                            return;
                        } else {
                            InterfaceC0189dq interfaceC0189dq = dq.this.r;
                            if (interfaceC0189dq != null) {
                                interfaceC0189dq.dq();
                                return;
                            }
                            return;
                        }
                    }
                    dq.this.f3583f = list.size();
                    dq dqVar2 = dq.this;
                    dqVar2.fw = list.size() + dqVar2.fw;
                    dq dqVar3 = dq.this;
                    dqVar3.cd = dqVar3.jy();
                    j jVar = list.get(0);
                    if (jVar != null) {
                        dq.this.q = jVar.td();
                    }
                    final List<co> dq = dq.this.dq(list);
                    le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.ia.dq.6.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            dlv dlvVar = AnonymousClass6.this.dq;
                            if (dlvVar == null || !(dlvVar instanceof eid)) {
                                return;
                            }
                            eid eidVar = (eid) dlvVar;
                            List list2 = dq;
                            if (eidVar.w == null || list2 == null || list2.isEmpty()) {
                                return;
                            }
                            if (eidVar.f15581a == null) {
                                eidVar.f15581a = new ArrayList();
                            }
                            int size = eidVar.f15581a.size();
                            eidVar.f15581a.addAll(list2);
                            dfp dfpVar = eidVar.w;
                            if (dfpVar.f14099e == null) {
                                dfpVar.f14099e = new ArrayList();
                            }
                            dfpVar.f14099e.addAll(list2);
                            eidVar.w.dq(size, eidVar.f15581a.size());
                        }
                    });
                }
            }, dq.this.s.ds());
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.core.ugeno.ia.dq$dq, reason: collision with other inner class name */
    public interface InterfaceC0189dq {
        void dq();
    }

    public dq(Context context, ViewGroup viewGroup, com.bytedance.sdk.openadsdk.core.ig.s sVar, j jVar, String str, int i) {
        this.f3581d = context;
        this.ox = viewGroup;
        this.p = sVar;
        this.s = jVar;
        this.ig = str;
        this.dq = jVar.gh();
        iw iwVar = new iw(this.f3581d, this.p, jVar, str, i);
        this.wp = iwVar;
        iwVar.dq((p) this);
        this.wp.dq((ox) this);
        if (this.s.fq() != null) {
            this.wp.dq((ia) this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(j jVar, dlv dlvVar) {
        String d2 = c.d(this.s);
        com.bytedance.sdk.openadsdk.core.d.dq dqVar = new com.bytedance.sdk.openadsdk.core.d.dq(this.f3581d, jVar, d2, c.dq(d2));
        Map<String, Object> s = ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).s();
        s.put("click_element_type", dlvVar.n());
        Map<String, Object> map = this.mp;
        if (map != null) {
            s.putAll(map);
        }
        final String fx = jVar.fx();
        com.bytedance.sdk.openadsdk.core.o.d.p d3 = com.bytedance.sdk.openadsdk.core.o.s.d(this.f3581d, jVar, d2, false);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq((com.bytedance.sdk.openadsdk.core.o.d.ox) d3);
        dqVar.dq(null, new com.bytedance.sdk.openadsdk.core.r.o());
        if (d3 != null) {
            d3.dq(new com.bytedance.sdk.openadsdk.core.o.d.dq() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.ia.dq.9
                @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
                public void d(long j, long j2, String str, String str2) {
                    if (j > 0) {
                        dq.C0166dq.dq(fx, 2, (int) ((j2 * 100) / j));
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
                public void dq() {
                    dq.C0166dq.dq(fx, 1, 0);
                }

                @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
                public void dq(long j, long j2, String str, String str2) {
                    if (j > 0) {
                        dq.C0166dq.dq(fx, 3, (int) ((j2 * 100) / j));
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
                public void dq(long j, String str, String str2) {
                    dq.C0166dq.dq(fx, 5, 100);
                }

                @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
                public void dq(String str, String str2) {
                    dq.C0166dq.dq(fx, 6, 100);
                }

                @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
                public void ox(long j, long j2, String str, String str2) {
                    if (j > 0) {
                        dq.C0166dq.dq(fx, 4, (int) ((j2 * 100) / j));
                    }
                }
            });
        }
        Object obj = this.f3581d;
        if (obj instanceof com.bytedance.sdk.openadsdk.core.mn.d) {
            ((com.bytedance.sdk.openadsdk.core.mn.d) obj).dq(2);
        }
    }

    private void dq(j jVar) {
        com.bytedance.sdk.openadsdk.core.ugeno.o.dq r;
        JSONObject d2;
        q dq;
        if (jVar == null || (r = jVar.r()) == null || (d2 = r.d()) == null || (dq = q.dq(d2)) == null) {
            return;
        }
        if (dq.ox() == 0 || dq.ox() == 5) {
            jVar.dq(dq);
        }
    }

    private void dq(j jVar, Map<String, Object> map) {
        if (jVar == null) {
            return;
        }
        String d2 = c.d(jVar);
        int ia = ce.ia(wp.getContext());
        com.bytedance.sdk.openadsdk.core.ig.ox.dq("click", jVar, new kk.dq().iw(-1.0f).s(-1.0f).p(-1.0f).ox(-1.0f).d(-1L).dq(-1L).ox(-1).p(-1).s(-1024).d(no.ia().ox() ? 1 : 2).dq(ia).dq(ce.iw(wp.getContext())).d(ce.mn(wp.getContext())).dq(), d2, true, map, -1, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ClickableViewAccessibility"})
    public View fw() {
        this.f3582e = new FrameLayout(this.f3581d);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(18.0f);
        gradientDrawable.setColor(Color.parseColor("#99000000"));
        gradientDrawable.setShape(0);
        this.f3582e.setBackground(gradientDrawable);
        final GifView gifView = new GifView(this.f3581d);
        com.bytedance.sdk.openadsdk.ia.d.dq(com.bytedance.sdk.openadsdk.core.mn.ox.dq("shop_page_guide_gif.gif")).ox(3).dq(Bitmap.Config.RGB_565).dq(new f() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.ia.dq.3
            @Override // com.bytedance.sdk.component.iw.f
            @ATSMethod(2)
            public void dq(int i, String str, Throwable th) {
            }

            @Override // com.bytedance.sdk.component.iw.f
            @ATSMethod(1)
            public void dq(com.bytedance.sdk.component.iw.no noVar) {
                Object ox = noVar.ox();
                try {
                    if (ox instanceof byte[]) {
                        if (noVar.ia()) {
                            gifView.dq((byte[]) ox, false);
                        } else {
                            gifView.setImageDrawable(fw.dq((byte[]) ox, 0));
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        });
        int ox = ce.ox(this.f3581d, 120.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(ox, ox);
        layoutParams.gravity = 17;
        layoutParams.bottomMargin = ce.ox(this.f3581d, 10.0f);
        gifView.setLayoutParams(layoutParams);
        this.f3582e.addView(gifView);
        TextView textView = new TextView(this.f3581d);
        textView.setText("需要浏览页面才能领取奖励");
        textView.setTextSize(14.0f);
        textView.setTypeface(Typeface.SERIF, 1);
        textView.setTextColor(Color.parseColor("#ffffff"));
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        layoutParams2.topMargin = ce.ox(this.f3581d, 70.0f);
        textView.setLayoutParams(layoutParams2);
        this.f3582e.addView(textView);
        this.f3582e.setOnTouchListener(new com.bytedance.sdk.openadsdk.core.ugeno.o.ox(this.f3581d, new ox.dq() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.ia.dq.4
            @Override // com.bytedance.sdk.openadsdk.core.ugeno.o.ox.dq
            public void d() {
                dq.this.f3582e.setVisibility(8);
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.o.ox.dq
            public void dq() {
                dlv dlvVar = dq.this.ia;
                if ((dlvVar instanceof eid) && dlvVar.kk() != null) {
                    ((RecyclerView) dq.this.ia.kk()).ox(1);
                }
                dq dqVar = dq.this;
                dqVar.dq(dqVar.ia);
                dq.this.f3582e.setVisibility(8);
                com.bytedance.sdk.openadsdk.core.ig.ox.dq(dq.this.s, "landingpage", "in_web_click", (com.bytedance.sdk.openadsdk.iw.dq.dq) null);
            }
        }, 200));
        this.f3582e.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.ia.dq.5
            @Override // java.lang.Runnable
            public void run() {
                dq.this.f3582e.setVisibility(8);
            }
        }, 3000L);
        return this.f3582e;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.ia
    public void d(dlv dlvVar) {
        j jVar = this.s;
        if (jVar == null || jVar.fq() == null) {
            return;
        }
        dlvVar.d(0);
    }

    public void d(boolean z) {
        this.kx = z;
    }

    public List<co> dq(List<j> list) {
        if (list == null || list.size() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (j jVar : list) {
            co coVar = new co();
            JSONObject ve = jVar.ve();
            try {
                ve.put("voice_btn_position", gh.jy(this.s));
            } catch (JSONException unused) {
            }
            coVar.f13214b = -2134548432;
            coVar.f13213a = ve;
            arrayList.add(coVar);
        }
        return arrayList;
    }

    public void dq(final j jVar, final dlv dlvVar) {
        if (!TextUtils.equals(dlvVar.n(), "mute")) {
            if (this.le) {
                if (!com.bytedance.sdk.openadsdk.core.ugeno.kk.iw(this.s)) {
                    dq(this.s, this.mp);
                }
                com.bytedance.sdk.openadsdk.core.ig.ox.dq(jVar, this.ig, "ugeno_coin_eCommerce_click_content", (com.bytedance.sdk.openadsdk.iw.dq.dq) null);
                com.bytedance.sdk.openadsdk.core.ig.ox.dq(jVar, this.ig, "page_click", (com.bytedance.sdk.openadsdk.iw.dq.dq) null);
                this.le = false;
            }
            dq(jVar);
            if (this instanceof com.bytedance.sdk.openadsdk.core.ugeno.o.p) {
                jVar.s(1);
                j jVar2 = this.s;
                if (jVar2 != null) {
                    jVar.dq(jVar2.gh());
                }
            }
            if (!com.bytedance.sdk.openadsdk.core.d.dq.d.p.dq(jVar, true)) {
                d(jVar, dlvVar);
                return;
            }
            com.bytedance.sdk.openadsdk.core.d.dq.d.p pVar = new com.bytedance.sdk.openadsdk.core.d.dq.d.p(jVar, this.f3581d);
            pVar.dq(new p.d() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.ia.dq.7
                @Override // com.bytedance.sdk.openadsdk.core.d.dq.d.p.d
                public void dq() {
                    le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.ia.dq.7.1
                        @Override // java.lang.Runnable
                        public void run() {
                            j jVar3 = jVar;
                            if (jVar3 == null || jVar3.vr() == null) {
                                return;
                            }
                            AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                            Toast.makeText(dq.this.f3581d, jVar.vr().p(), 0).show();
                        }
                    });
                    dq.this.d(jVar, dlvVar);
                }

                @Override // com.bytedance.sdk.openadsdk.core.d.dq.d.p.d
                public void dq(final String str, final boolean z) {
                    le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.ia.dq.7.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (z && "has_applied".equals(str)) {
                                Toast.makeText(dq.this.f3581d, "你已领券，快去直播间下单吧", 0).show();
                            } else {
                                Toast.makeText(dq.this.f3581d, "领券失败", 0).show();
                            }
                        }
                    });
                    dq.this.d(jVar, dlvVar);
                }
            });
            pVar.dq(new p.dq() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.ia.dq.8
                @Override // com.bytedance.sdk.openadsdk.core.d.dq.d.p.dq
                public void dq() {
                }
            });
            return;
        }
        eyh bl = dlvVar.bl();
        if (bl != null) {
            dlv ox = bl.ox("video_" + jVar.gv());
            if (ox instanceof com.bytedance.sdk.openadsdk.core.ugeno.component.video.d) {
                com.bytedance.sdk.openadsdk.core.ugeno.component.video.d dVar = (com.bytedance.sdk.openadsdk.core.ugeno.component.video.d) ox;
                if (dVar.d()) {
                    dVar.p(false);
                    if (dlvVar instanceof fde) {
                        ((fde) dlvVar).d(r.ox(this.f3581d, "tt_unmute"));
                        return;
                    }
                    return;
                }
                dVar.p(true);
                if (dlvVar instanceof fde) {
                    ((fde) dlvVar).d(r.ox(this.f3581d, "tt_mute"));
                }
            }
        }
    }

    public void dq(d dVar) {
        this.gh = dVar;
        iw iwVar = this.wp;
        if (iwVar != null) {
            iwVar.dq(dVar);
        }
    }

    public void dq(InterfaceC0189dq interfaceC0189dq) {
        this.r = interfaceC0189dq;
    }

    public void dq(com.bytedance.sdk.openadsdk.core.ugeno.s.dq dqVar) {
        this.iw = dqVar;
    }

    public void dq(dlv dlvVar) {
        com.bytedance.sdk.component.o.mn.d(new AnonymousClass6("shop_page", dlvVar));
    }

    public void dq(Map<String, Object> map) {
        this.mp = map;
    }

    public void dq(JSONObject jSONObject) {
        j dq;
        if (jSONObject == null || (dq = com.bytedance.sdk.openadsdk.core.d.dq(jSONObject)) == null) {
            return;
        }
        String d2 = c.d(this.s);
        HashMap hashMap = new HashMap();
        hashMap.put("is_slide", this.o);
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(dq, d2, hashMap, (Double) null);
        com.bytedance.sdk.openadsdk.core.kx.dq.dq().p();
        JSONObject jSONObject2 = new JSONObject();
        try {
            if (this.k && this.o.get() == 0) {
                return;
            }
            jSONObject2.put("is_slide", this.o);
            jSONObject2.put("timestamp", System.currentTimeMillis());
            com.bytedance.sdk.openadsdk.core.ig.ox.dq(dq, d2, "is_slide", jSONObject2, (com.bytedance.sdk.openadsdk.iw.dq.dq) null);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public void dq(JSONObject jSONObject, List<co> list) {
        this.p.d();
        this.wp.dq((o) this);
        this.wp.dq(jSONObject, list, new mn() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.ia.dq.2
            @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.mn
            public void dq(int i, String str) {
                com.bytedance.sdk.openadsdk.core.ugeno.s.dq dqVar = dq.this.iw;
                if (dqVar != null) {
                    dqVar.dq(i);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.mn
            public void dq(dlv dlvVar) {
                dq dqVar = dq.this;
                dqVar.mn = dlvVar;
                dqVar.ia = dqVar.wp.dq();
                dq.this.ox.addView(dlvVar.kk(), new FrameLayout.LayoutParams(dlvVar.ir(), dlvVar.u()));
                if (dq.this.kx) {
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(ce.ox(dq.this.f3581d, 200.0f), ce.ox(dq.this.f3581d, 200.0f));
                    layoutParams.gravity = 17;
                    dq dqVar2 = dq.this;
                    dqVar2.ox.addView(dqVar2.fw(), layoutParams);
                }
                com.bytedance.sdk.openadsdk.core.ugeno.s.dq dqVar3 = dq.this.iw;
                if (dqVar3 != null) {
                    dqVar3.dq(dlvVar.kk());
                }
                dq dqVar4 = dq.this;
                com.bytedance.sdk.openadsdk.core.ig.ox.dq(dqVar4.s, dqVar4.ig, "ugeno_coin_eCommerce_page_show_success", (com.bytedance.sdk.openadsdk.iw.dq.dq) null);
            }
        });
    }

    public void f() {
    }

    public abstract List<co> ig();

    public int jy() {
        int i = this.f3583f;
        int i2 = this.jy;
        return Math.max(i < i2 ? this.fw - i : this.fw - i2, 0);
    }

    public void mp() {
        try {
            this.kk = ig();
            s.dq(this.dq, new s.dq() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.ia.dq.1
                @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.s.dq
                public void dq(JSONObject jSONObject) {
                    if (jSONObject != null) {
                        dq dqVar = dq.this;
                        dqVar.dq(jSONObject, dqVar.kk);
                        return;
                    }
                    dq.this.p.dq(-1, "template info load fail");
                    com.bytedance.sdk.openadsdk.core.ugeno.s.dq dqVar2 = dq.this.iw;
                    if (dqVar2 != null) {
                        dqVar2.dq(-1);
                    }
                }
            });
        } catch (Exception e2) {
            this.p.dq(-3, e2.getMessage());
            com.bytedance.sdk.openadsdk.core.ugeno.s.dq dqVar = this.iw;
            if (dqVar != null) {
                dqVar.dq(-3);
            }
        }
    }

    public boolean q() {
        dlv ox;
        dlv dlvVar = this.mn;
        return (dlvVar == null || (ox = dlvVar.ox("interactionWebView")) == null || ox.kk() == null || ox.kk().getVisibility() != 0) ? false : true;
    }
}
