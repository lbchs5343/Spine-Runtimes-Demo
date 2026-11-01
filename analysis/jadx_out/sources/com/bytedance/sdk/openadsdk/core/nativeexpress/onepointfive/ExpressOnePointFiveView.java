package com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive;

import android.content.Context;
import android.os.SystemClock;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.h;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.e;
import com.bytedance.sdk.openadsdk.core.nativeexpress.i;
import com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.PullToRefreshHorizontalRecyclerView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.d;
import com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.iw;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.o;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.r.vf;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.f.d.d.jy;
import com.bytedance.sdk.openadsdk.f.d.ox.d;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ExpressOnePointFiveView extends LinearLayout implements d.dq {
    private static long mp;
    private dq cd;

    /* renamed from: d, reason: collision with root package name */
    private List<jy> f3245d;
    protected String dq;

    /* renamed from: f, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.e.dq.d.dq.d f3246f;
    private com.bytedance.sdk.openadsdk.e.dq.d.dq.ox fw;
    private final AtomicBoolean gh;
    private float ia;
    private int ig;
    private PullToRefreshHorizontalRecyclerView iw;
    private int jy;
    private float kk;
    private TextView mn;
    private iw no;
    private com.bytedance.sdk.component.widget.recycler.s o;
    private List<j> ox;
    private com.bytedance.sdk.openadsdk.f.d.ox.d p;
    private int q;
    private com.bytedance.sdk.openadsdk.f.d.ox.d s;

    public interface dq {
        void d(int i);

        void d(boolean z);
    }

    public ExpressOnePointFiveView(Context context, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, List<j> list) {
        super(context);
        this.f3245d = new CopyOnWriteArrayList();
        this.q = 0;
        this.jy = 0;
        this.dq = "embeded_ad";
        this.gh = new AtomicBoolean(false);
        this.p = dVar;
        dq(context);
        this.ox = list;
        d(list);
    }

    private void d() {
        com.bytedance.sdk.openadsdk.f.d.ox.d dVar = this.p;
        if (dVar == null) {
            return;
        }
        this.ia = dVar.no();
        float ig = this.p.ig();
        this.kk = ig;
        int i = (int) (((this.ia - 6.0f) / 3.0f) * 2.0f);
        this.q = i;
        if (ig == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            this.jy = (i * 16) / 9;
        } else {
            this.jy = (int) (ig - 52.0f);
        }
        this.iw.setLayoutParams(new LinearLayout.LayoutParams(ce.ox(getContext(), this.ia), ce.ox(getContext(), this.jy)));
        dq(this.p);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(int i) {
        try {
            if (i < this.f3245d.size()) {
                jy jyVar = this.f3245d.get(i);
                if (jyVar == null) {
                    jyVar = dq(this.ox.get(i), i);
                    this.f3245d.set(i, jyVar);
                }
                if (jyVar == null) {
                    return;
                }
                Object tag = jyVar.dq().getTag(2114387470);
                ig.d("ExpressOnePointFiveView", "nextPosition: " + i + "  isRendered: " + tag);
                if ((tag instanceof Boolean) && ((Boolean) tag).booleanValue()) {
                    return;
                }
                jyVar.dq().setTag(2114387470, Boolean.TRUE);
                jyVar.p();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void d(List<j> list) {
        this.f3245d.clear();
        for (int i = 0; i < this.ox.size(); i++) {
            try {
                this.f3245d.add(null);
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        this.f3245d.set(0, dq(list.get(0), 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(boolean z) {
        try {
            dq dqVar = this.cd;
            if (dqVar != null) {
                dqVar.d(z);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean d(long j) {
        boolean z = SystemClock.uptimeMillis() - mp <= j;
        mp = SystemClock.uptimeMillis();
        return z;
    }

    private void dq(Context context) {
        addView(com.bytedance.sdk.openadsdk.res.s.bu(context));
        this.iw = (PullToRefreshHorizontalRecyclerView) findViewById(2114387793);
        this.mn = (TextView) findViewById(2114387680);
        d();
        ox();
    }

    private void dq(jy jyVar, int i) {
        jyVar.dq(new d(this, i, this.f3246f));
        jyVar.dq(new ox(this, i, this.fw));
    }

    private void dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        d.dq d2 = h.d(dVar);
        d2.d(this.jy);
        d2.dq(this.q);
        this.s = d2.dq();
    }

    private int getLastMetaCommerceType() {
        try {
            List<j> list = this.ox;
            j jVar = list.get(list.size() - 1);
            if (jVar == null) {
                return 2;
            }
            String ap = jVar.ap();
            int po = jVar.po();
            if (com.bytedance.sdk.openadsdk.core.live.d.dq().ox() == 2) {
                if (com.bytedance.sdk.openadsdk.core.live.d.dq().dq(ap, po)) {
                    return 1;
                }
            }
            return 2;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 2;
        }
    }

    private void ox() {
        com.bytedance.sdk.component.widget.recycler.s sVar = new com.bytedance.sdk.component.widget.recycler.s(getContext());
        this.o = sVar;
        sVar.dq(0);
        this.iw.setLayoutManager(this.o);
        this.no = new iw(getContext(), this, this.q, this.jy);
        this.iw.getRecyclerView().setAdapter(this.no);
        this.iw.getRecyclerView().setItemAnimator(new com.bytedance.sdk.component.widget.recycler.ox());
        this.iw.getRecyclerView().getItemAnimator().dq(0L);
        this.iw.getRecyclerView().setHasFixedSize(true);
        new p().dq(this.iw.getRecyclerView());
        this.iw.setOnPullToBottomListener(new PullToRefreshHorizontalRecyclerView.dq() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.ExpressOnePointFiveView.1
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.PullToRefreshHorizontalRecyclerView.dq
            public void dq() {
                if (ExpressOnePointFiveView.d(500L)) {
                    return;
                }
                if (ExpressOnePointFiveView.this.ig == 1) {
                    ExpressOnePointFiveView.this.p();
                } else {
                    ExpressOnePointFiveView.this.d(false);
                }
            }
        });
        this.o.d(false);
        this.no.dq(new iw.d() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.ExpressOnePointFiveView.2
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.iw.d
            public void dq() {
                if (ExpressOnePointFiveView.this.ig == 2) {
                    ExpressOnePointFiveView.this.d(true);
                }
            }
        });
        this.iw.getRecyclerView().dq(new RecyclerView.q() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.ExpressOnePointFiveView.3
            @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.q
            public void dq(RecyclerView recyclerView, int i) {
                if (i == 0) {
                    try {
                        ExpressOnePointFiveView.this.d(ExpressOnePointFiveView.this.getCurrentCompletelyVisibleAdPosition() + 2);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }

            @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.q
            public void dq(RecyclerView recyclerView, int i, int i2) {
                super.dq(recyclerView, i, i2);
            }
        });
    }

    private void ox(final int i) {
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.ExpressOnePointFiveView.4
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("err_code", i);
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("express_onepointfive_render_error").dq(5).ox(ExpressOnePointFiveView.this.p == null ? "" : ExpressOnePointFiveView.this.p.mn()).d(jSONObject.toString());
            }
        }, "express_onepointfive_render_error");
    }

    private void ox(List<jy> list) {
        jy next;
        if (list == null || list.size() == 0) {
            return;
        }
        if (list.size() <= 2) {
            Iterator<jy> it = list.iterator();
            while (it.hasNext() && (next = it.next()) != null) {
                try {
                    next.dq().setTag(2114387470, Boolean.TRUE);
                    next.p();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            return;
        }
        for (int i = 0; i < 2; i++) {
            jy jyVar = list.get(i);
            if (jyVar == null) {
                return;
            }
            try {
                jyVar.dq().setTag(2114387470, Boolean.TRUE);
                jyVar.p();
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        try {
            List<jy> list = this.f3245d;
            jy jyVar = list.get(list.size() - 1);
            NativeExpressView nativeExpressView = (NativeExpressView) jyVar.dq();
            if (nativeExpressView != null) {
                HashMap hashMap = new HashMap(1);
                hashMap.put(TTDownloadField.TT_REFER, "left_slip");
                if (nativeExpressView.getClickListener() != null) {
                    ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) nativeExpressView.getClickListener().dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(hashMap);
                    nativeExpressView.getClickListener().dq(nativeExpressView, new o());
                    com.bytedance.sdk.openadsdk.e.dq.d.dq.d dVar = this.f3246f;
                    if (dVar != null) {
                        dVar.dq(nativeExpressView, jyVar.ox());
                        return;
                    }
                    return;
                }
                if (nativeExpressView.getClickCreativeListener() != null) {
                    ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) nativeExpressView.getClickCreativeListener().dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(hashMap);
                    nativeExpressView.getClickCreativeListener().dq(nativeExpressView, new o());
                    com.bytedance.sdk.openadsdk.e.dq.d.dq.d dVar2 = this.f3246f;
                    if (dVar2 != null) {
                        dVar2.dq(nativeExpressView, jyVar.ox());
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void s() {
        List<jy> list = this.f3245d;
        if (list != null) {
            for (jy jyVar : list) {
                if (jyVar != null) {
                    try {
                        jyVar.s();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
            this.f3245d.clear();
        }
    }

    public jy dq(j jVar, int i) {
        if (jVar == null) {
            return null;
        }
        jy eVar = pa.q(jVar) != null ? new e(getContext(), jVar, this.s) : new i(getContext(), jVar, this.s);
        dq(eVar, i);
        return eVar;
    }

    public List<jy> dq(List<j> list) {
        if (list == null || list.size() == 0 || this.s == null) {
            return null;
        }
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        int min = Math.min(list.size(), 2);
        for (int i = 0; i < min; i++) {
            jy dq2 = dq(list.get(i), i);
            if (dq2 != null) {
                copyOnWriteArrayList.add(dq2);
            }
        }
        ox(copyOnWriteArrayList);
        return copyOnWriteArrayList;
    }

    public void dq() {
        try {
            s();
            if (getParent() != null) {
                ((ViewGroup) getParent()).removeView(this);
            }
            removeAllViews();
            this.cd = null;
            this.f3246f = null;
            this.fw = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.d.dq
    public void dq(int i) {
        if (this.gh.get() || i != 0 || this.f3246f == null) {
            return;
        }
        this.gh.set(true);
        this.f3246f.dq(this, this.ia, this.kk);
        d(1);
        d(2);
    }

    public void dq(List<j> list, List<jy> list2) {
        if (this.f3245d != null) {
            s();
            for (int i = 0; i < list.size(); i++) {
                if (i < list2.size()) {
                    this.f3245d.add(list2.get(i));
                } else {
                    this.f3245d.add(null);
                }
            }
        }
        List<j> list3 = this.ox;
        if (list3 != null) {
            list3.clear();
            this.ox.addAll(list);
        }
        int showAdCount = getShowAdCount();
        dq(true);
        dq dqVar = this.cd;
        if (dqVar != null) {
            dqVar.d(showAdCount);
        }
    }

    public void dq(boolean z) {
        String str;
        if (this.no == null || this.mn == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.f.d.ox.d dVar = this.p;
        if (dVar == null || dVar.no() <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            if (this.f3246f == null || z) {
                return;
            }
            ox(40005);
            this.f3246f.dq(this, com.bytedance.sdk.openadsdk.core.o.dq(40005), 40005);
            return;
        }
        List<jy> list = this.f3245d;
        if (list == null || list.size() == 0) {
            if (this.f3246f == null || z) {
                return;
            }
            ox(40007);
            this.f3246f.dq(this, com.bytedance.sdk.openadsdk.core.o.dq(40007), 40007);
            return;
        }
        if (!z) {
            for (int i = 0; i < this.f3245d.size(); i++) {
                jy jyVar = this.f3245d.get(i);
                if (jyVar != null) {
                    dq(jyVar, i);
                }
            }
            ox(this.f3245d);
        }
        this.ig = getLastMetaCommerceType();
        try {
            this.iw.getRecyclerView().setItemViewCacheSize(this.f3245d.size());
            this.no.dq(this.ox, this.f3245d, this.ig);
            this.iw.getRecyclerView().dq(0);
            j jVar = this.ox.get(0);
            if (jVar == null || jVar.ur() == null) {
                return;
            }
            vf ur = jVar.ur();
            TextView textView = this.mn;
            if (ur != null && ur.d() != null) {
                str = ur.d();
                textView.setText(str);
            }
            str = "";
            textView.setText(str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public jy getCurrentCompletelyVisibleAd() {
        try {
            if (this.o == null) {
                return null;
            }
            return this.f3245d.get(getCurrentCompletelyVisibleAdPosition());
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public int getCurrentCompletelyVisibleAdPosition() {
        try {
            com.bytedance.sdk.component.widget.recycler.s sVar = this.o;
            if (sVar == null) {
                return 0;
            }
            int no = sVar.no();
            if (no != -1) {
                return no;
            }
            int o = this.o.o();
            ig.d("ExpressOnePointFiveView", "complete -1, so current visible, pos: ".concat(String.valueOf(o)));
            return o;
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }

    public int getShowAdCount() {
        iw iwVar = this.no;
        if (iwVar != null) {
            return iwVar.p();
        }
        return 0;
    }

    public void setExpressInteractionListener(com.bytedance.sdk.openadsdk.e.dq.d.dq.d dVar) {
        this.f3246f = dVar;
    }

    public void setRefreshListener(dq dqVar) {
        this.cd = dqVar;
    }

    public void setVideoAdListener(com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar) {
        this.fw = oxVar;
    }
}
