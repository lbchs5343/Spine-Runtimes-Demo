package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import com.bykv.vk.openvk.component.video.api.s.dq;
import com.bytedance.sdk.openadsdk.core.EmptyView;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.ExpressOnePointFiveView;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.ji;
import com.bytedance.sdk.openadsdk.core.r.nh;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.f.d.ox.d;
import com.bytedance.sdk.openadsdk.mediation.MediationNativeManagerDefault;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class wp extends d implements ExpressOnePointFiveView.dq {

    /* renamed from: d, reason: collision with root package name */
    protected List<j> f3266d;
    protected final Context dq;
    protected com.bytedance.sdk.openadsdk.f.d.ox.d iw;
    private j jy;
    protected com.bytedance.sdk.openadsdk.f.d.ox.d mn;
    protected com.bytedance.sdk.openadsdk.e.dq.d.dq.ox o;
    protected List<com.bytedance.sdk.openadsdk.f.d.d.jy> ox;
    protected List<j> p;
    protected ExpressOnePointFiveView s;
    private long ig = 0;
    private final AtomicBoolean mp = new AtomicBoolean(false);
    private Double q = null;
    protected String no = "embeded_ad";

    public wp(Context context, List<j> list, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        this.dq = context;
        this.f3266d = list;
        this.iw = dVar;
        ExpressOnePointFiveView expressOnePointFiveView = new ExpressOnePointFiveView(context, dVar, list);
        this.s = expressOnePointFiveView;
        dq(expressOnePointFiveView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final int i, final List<j> list) {
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().s(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.wp.4
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                List list2 = list;
                String mp = (list2 == null || list2.size() <= 0) ? "" : c.mp((j) list.get(0));
                com.bytedance.sdk.openadsdk.core.gh.dq.ox dq = com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq(5);
                com.bytedance.sdk.openadsdk.f.d.ox.d dVar = wp.this.iw;
                com.bytedance.sdk.openadsdk.core.gh.dq.ox iw = dq.ox(dVar != null ? dVar.mn() : "").iw(mp);
                iw.d(i).mn(com.bytedance.sdk.openadsdk.core.o.dq(i));
                return iw;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(View view) {
        this.ig = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final com.bytedance.sdk.openadsdk.core.r.dq dqVar, final List<j> list, final boolean z, final long j) {
        if (this.mp.getAndSet(false)) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.wp.3
                @Override // java.lang.Runnable
                public void run() {
                    j jVar;
                    try {
                        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(dqVar.d());
                        if (copyOnWriteArrayList.size() > 0) {
                            com.bytedance.sdk.openadsdk.core.ig.ox.d((j) copyOnWriteArrayList.get(0), c.d(wp.this.iw.k()), j);
                            wp wpVar = wp.this;
                            List<j> list2 = wpVar.f3266d;
                            if (list2 == null || list2.size() <= 0) {
                                jVar = null;
                            } else {
                                jVar = wp.this.f3266d.get(r2.size() - 1);
                            }
                            wpVar.jy = jVar;
                            wp wpVar2 = wp.this;
                            wpVar2.p = copyOnWriteArrayList;
                            ExpressOnePointFiveView expressOnePointFiveView = wpVar2.s;
                            if (expressOnePointFiveView != null) {
                                wpVar2.ox = expressOnePointFiveView.dq(copyOnWriteArrayList);
                            }
                            wp.this.ox(z);
                        } else {
                            wp.this.dq(108, (List<j>) list);
                        }
                        List list3 = list;
                        if (list3 != null) {
                            list3.clear();
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, List<j> list) {
        for (j jVar : list) {
            com.bytedance.sdk.openadsdk.core.video.ox.dq.d(jVar);
            if (jVar.xo() && jVar.oh() != null && !jVar.oh().isEmpty()) {
                for (ji jiVar : jVar.oh()) {
                    if (!TextUtils.isEmpty(jiVar.dq())) {
                        com.bytedance.sdk.openadsdk.core.le.s.dq().ox().dq(new com.bytedance.sdk.openadsdk.mp.d(jiVar.dq(), jiVar.mn()), com.bytedance.sdk.openadsdk.core.le.dq.dq.d(), jiVar.d(), jiVar.ox(), null);
                    }
                }
            }
            if (j.d(jVar) && !TextUtils.isEmpty(pa.dq(jVar))) {
                if (com.bytedance.sdk.openadsdk.core.wp.d().p(String.valueOf(c.kk(jVar))) && com.bytedance.sdk.openadsdk.core.wp.d().qz()) {
                    com.bykv.vk.openvk.component.video.api.ox.p dq = pa.dq(4, jVar);
                    dq.dq("material_meta", jVar);
                    dq.dq("ad_slot", Integer.valueOf(dVar != null ? dVar.k() : 0));
                    com.bytedance.sdk.openadsdk.core.video.p.d.dq(dq, (dq.InterfaceC0005dq) null);
                }
            }
        }
    }

    private void dq(List<com.bytedance.sdk.openadsdk.f.d.d.jy> list) {
        if (list != null) {
            for (com.bytedance.sdk.openadsdk.f.d.d.jy jyVar : list) {
                if (jyVar != null) {
                    try {
                        jyVar.s();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
            list.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox(boolean z) {
        List<j> list;
        if (this.s == null || z || (list = this.f3266d) == null) {
            return;
        }
        try {
            list.clear();
            this.f3266d.addAll(this.p);
            this.s.dq(this.p, this.ox);
            this.p = null;
            this.ox = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public int d() {
        com.bytedance.sdk.openadsdk.f.d.d.jy currentCompletelyVisibleAd;
        ExpressOnePointFiveView expressOnePointFiveView = this.s;
        if (expressOnePointFiveView == null || (currentCompletelyVisibleAd = expressOnePointFiveView.getCurrentCompletelyVisibleAd()) == null) {
            return -1;
        }
        return currentCompletelyVisibleAd.d();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.ExpressOnePointFiveView.dq
    public void d(int i) {
        this.ig = dq(this.ig, i, this.jy, this.no);
        dq((View) this.s);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.ExpressOnePointFiveView.dq
    public void d(final boolean z) {
        if (this.ox != null) {
            if (z) {
                return;
            }
            ox(false);
        } else {
            if (this.mp.get()) {
                return;
            }
            this.mp.set(true);
            if (this.mn == null) {
                this.mn = dq(this.iw);
            }
            final long currentTimeMillis = System.currentTimeMillis();
            nh nhVar = new nh();
            nhVar.mn = 2;
            com.bytedance.sdk.openadsdk.core.wp.dq().dq(this.mn, nhVar, 5, new h.d() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.wp.2
                @Override // com.bytedance.sdk.openadsdk.core.h.d
                public void dq(int i, String str, com.bytedance.sdk.openadsdk.core.r.d dVar) {
                    if (wp.this.mp.getAndSet(false)) {
                        dVar.dq(i);
                        com.bytedance.sdk.openadsdk.core.r.d.dq(dVar);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.h.d
                public void dq(com.bytedance.sdk.openadsdk.core.r.dq dqVar, com.bytedance.sdk.openadsdk.core.r.d dVar) {
                    if (dqVar.d() == null || dqVar.d().isEmpty()) {
                        if (wp.this.mp.getAndSet(false)) {
                            dVar.dq(-3);
                            com.bytedance.sdk.openadsdk.core.r.d.dq(dVar);
                            return;
                        }
                        return;
                    }
                    CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(dqVar.d());
                    wp wpVar = wp.this;
                    wpVar.dq(wpVar.mn, copyOnWriteArrayList);
                    wp.this.dq(dqVar, copyOnWriteArrayList, z, currentTimeMillis);
                }
            });
        }
    }

    public long dq(long j, int i, j jVar, String str) {
        if (j <= 0) {
            return j;
        }
        try {
            com.bytedance.sdk.openadsdk.core.ig.ox.dq(System.currentTimeMillis() - j, i, jVar, str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return 0L;
    }

    public long dq(long j, boolean z, String str) {
        if (z) {
            return System.currentTimeMillis();
        }
        try {
            return dq(j, this.s.getShowAdCount(), this.f3266d.get(this.s.getCurrentCompletelyVisibleAdPosition()), str);
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0L;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public View dq() {
        return this.s;
    }

    public com.bytedance.sdk.openadsdk.f.d.ox.d dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        d.dq d2 = com.bytedance.sdk.openadsdk.core.ir.h.d(dVar);
        d2.s(dq(dVar.f(), 1));
        return d2.dq();
    }

    public String dq(String str, int i) {
        try {
            JSONObject jSONObject = TextUtils.isEmpty(str) ? new JSONObject() : new JSONObject(str);
            jSONObject.put("_tt_group_load_more", i);
            return jSONObject.toString();
        } catch (JSONException e2) {
            e2.printStackTrace();
            return str;
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void dq(ExpressOnePointFiveView expressOnePointFiveView) {
        this.s.setRefreshListener(this);
        EmptyView emptyView = new EmptyView(this.dq, expressOnePointFiveView, 1000);
        expressOnePointFiveView.addView(emptyView);
        emptyView.setCallback(new EmptyView.dq() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.wp.1
            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void d() {
                try {
                    wp wpVar = wp.this;
                    if (wpVar.s == null || wpVar.f3266d == null) {
                        return;
                    }
                    long j = wpVar.ig;
                    int showAdCount = wp.this.s.getShowAdCount();
                    wp wpVar2 = wp.this;
                    wpVar.ig = wpVar.dq(j, showAdCount, wpVar2.f3266d.get(wpVar2.s.getCurrentCompletelyVisibleAdPosition()), wp.this.no);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void dq() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void dq(View view) {
                wp.this.dq(view);
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void dq(boolean z) {
                wp wpVar = wp.this;
                wpVar.ig = wpVar.dq(wpVar.ig, z, wp.this.no);
            }
        });
        emptyView.setNeedCheckingShow(true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(com.bytedance.sdk.openadsdk.e.dq.d.dq.d dVar) {
        ExpressOnePointFiveView expressOnePointFiveView = this.s;
        if (expressOnePointFiveView != null) {
            expressOnePointFiveView.setExpressInteractionListener(dVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar) {
        ExpressOnePointFiveView expressOnePointFiveView = this.s;
        if (expressOnePointFiveView != null) {
            expressOnePointFiveView.setVideoAdListener(oxVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(String str) {
        com.bytedance.sdk.openadsdk.core.ig.ox.d(o(), str);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(JSONObject jSONObject) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public Map<String, Object> ia() {
        HashMap hashMap = new HashMap();
        hashMap.put("_tt_ad_type_onepointfive", Boolean.TRUE);
        try {
            List<j> list = this.f3266d;
            boolean z = true;
            j jVar = list.get(list.size() - 1);
            if (com.bytedance.sdk.openadsdk.core.live.d.dq().ox() != 2 || !com.bytedance.sdk.openadsdk.core.live.d.dq().d(jVar)) {
                z = false;
            }
            hashMap.put("live_support_saas_live", Boolean.valueOf(z));
            return hashMap;
        } catch (Throwable th) {
            th.printStackTrace();
            return hashMap;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public com.bytedance.sdk.openadsdk.f.d.d.p iw() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s kk() {
        return new MediationNativeManagerDefault();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void mn() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d
    public j o() {
        List<j> list = this.f3266d;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return this.f3266d.get(0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public int ox() {
        com.bytedance.sdk.openadsdk.f.d.d.jy currentCompletelyVisibleAd;
        ExpressOnePointFiveView expressOnePointFiveView = this.s;
        if (expressOnePointFiveView == null || (currentCompletelyVisibleAd = expressOnePointFiveView.getCurrentCompletelyVisibleAd()) == null) {
            return -1;
        }
        return currentCompletelyVisibleAd.ox();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public void p() {
        try {
            ExpressOnePointFiveView expressOnePointFiveView = this.s;
            if (expressOnePointFiveView != null) {
                expressOnePointFiveView.dq(false);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public void s() {
        super.s();
        ExpressOnePointFiveView expressOnePointFiveView = this.s;
        if (expressOnePointFiveView != null) {
            expressOnePointFiveView.dq();
        }
        dq(this.ox);
        List<j> list = this.f3266d;
        if (list != null) {
            list.clear();
            this.f3266d = null;
        }
        List<j> list2 = this.p;
        if (list2 != null) {
            list2.clear();
            this.p = null;
        }
        this.jy = null;
        this.o = null;
    }
}
