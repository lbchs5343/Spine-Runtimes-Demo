package com.bytedance.sdk.openadsdk.core;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.component.utils.i;
import com.bytedance.sdk.openadsdk.core.EmptyView;
import com.bytedance.sdk.openadsdk.core.d.dq.dq.d;
import com.bytedance.sdk.openadsdk.core.d.dq.ox.ox;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.tn;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class k {
    private Activity bl;
    private com.bytedance.sdk.component.utils.i cd;

    /* renamed from: d, reason: collision with root package name */
    private volatile com.bytedance.sdk.openadsdk.core.o.d.ox f3119d;
    private final com.bytedance.sdk.openadsdk.core.r.j dq;

    /* renamed from: e, reason: collision with root package name */
    private volatile com.bytedance.sdk.openadsdk.core.d.d f3120e;

    /* renamed from: f, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq f3121f;
    private com.bytedance.sdk.openadsdk.core.o.d.dq gh;
    private com.bytedance.sdk.openadsdk.core.d.dq h;
    private long ia;
    private com.bytedance.sdk.openadsdk.core.ugeno.component.interact.mn ir;
    private String iw;
    private com.bytedance.sdk.openadsdk.core.d.dq ji;
    private View jy;
    private View k;
    private volatile com.bytedance.sdk.openadsdk.core.d.dq kx;
    private View le;
    private com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq mn;
    private ViewGroup mp;
    private WeakReference<NativeVideoTsView> n;
    private final Context ox;
    private com.bytedance.sdk.openadsdk.f.d.d.q p;
    private WeakReference<ViewGroup> q;
    private volatile NativeExpressView wp;
    private List<View> s = new ArrayList();
    private Double kk = null;
    private AtomicBoolean o = new AtomicBoolean(false);
    private AtomicBoolean no = new AtomicBoolean(false);
    private AtomicBoolean ig = new AtomicBoolean(false);
    private int fw = 5;
    private volatile long r = 0;
    private volatile boolean i = true;
    private volatile boolean op = false;

    public k(Context context, com.bytedance.sdk.openadsdk.f.d.d.q qVar, com.bytedance.sdk.openadsdk.core.r.j jVar, String str) {
        this.iw = "embeded_ad";
        this.p = qVar;
        this.dq = jVar;
        this.ox = context;
        this.iw = str;
    }

    private View d(ViewGroup viewGroup) {
        Object obj;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            Object tag = childAt.getTag();
            String str = "";
            if ((tag instanceof Map) && (obj = ((Map) tag).get(TTDownloadField.TT_TAG)) != null) {
                str = obj.toString();
            }
            if ("shake_compat".equals(str)) {
                return childAt;
            }
        }
        return null;
    }

    private void dq(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return;
        }
        View d2 = d(viewGroup);
        if (d2 != null) {
            HashMap p = tn.p(TTDownloadField.TT_TAG, "shake_compat");
            p.put("click_listener", this.ji);
            try {
                d2.setTag(com.bytedance.sdk.openadsdk.core.ir.ir.dq, p);
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.ig.p("ShakeUtils", "onPause error:" + th.getMessage());
                com.bytedance.sdk.openadsdk.core.ir.ir.dq(com.bytedance.sdk.openadsdk.core.ir.ir.dq, th.getMessage());
            }
            this.k = d2;
            return;
        }
        View view = new View(this.ox);
        view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.k.5
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view2) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view2) {
                try {
                    if (k.this.cd != null) {
                        k.this.cd.d();
                    }
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.ig.p("ShakeUtils", "onPause error:" + th2.getMessage());
                }
            }
        });
        HashMap hashMap = new HashMap();
        hashMap.put(TTDownloadField.TT_TAG, "shake_compat");
        hashMap.put("click_listener", this.ji);
        try {
            view.setTag(com.bytedance.sdk.openadsdk.core.ir.ir.dq, hashMap);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.ig.p("ShakeUtils", "onPause error:" + th2.getMessage());
            com.bytedance.sdk.openadsdk.core.ir.ir.dq(com.bytedance.sdk.openadsdk.core.ir.ir.dq, th2.getMessage());
        }
        view.setLayoutParams(new ViewGroup.LayoutParams(0, 0));
        viewGroup.addView(view);
        this.k = view;
    }

    private void dq(com.bytedance.sdk.openadsdk.core.d.d dVar, ViewGroup viewGroup, View view, final com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar, final com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar2, int i) {
        dq((com.bytedance.sdk.openadsdk.core.d.dq.ox.ox) dVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.ox.class));
        if (i != 3) {
            HashMap hashMap = new HashMap();
            hashMap.put("click_type", 1);
            ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) dVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(hashMap);
        }
        dVar.dq(viewGroup);
        dVar.d(view);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.p);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(new d.dq() { // from class: com.bytedance.sdk.openadsdk.core.k.4
            @Override // com.bytedance.sdk.openadsdk.core.d.dq.dq.d.dq
            public void dq(View view2, int i2) {
                com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar3 = dqVar;
                if (dqVar3 != null) {
                    dqVar3.d(view2, k.this.p);
                }
                com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar4 = dqVar2;
                if (dqVar4 != null) {
                    dqVar4.d(view2, k.this.p);
                }
                if (i2 != 2 || k.this.dq == null) {
                    return;
                }
                k.this.dq.dq(true);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void iw() {
        com.bytedance.sdk.openadsdk.core.r.no s = s();
        if (s == null) {
            return;
        }
        final float d2 = s.d();
        final float ox = s.ox();
        if (this.cd == null) {
            this.cd = new com.bytedance.sdk.component.utils.i(wp.getContext(), 1, no.ia().s());
        }
        this.cd.ox(this.dq.hm());
        this.cd.dq(this.dq.us());
        this.cd.dq(this.dq.mc());
        this.cd.dq(new i.dq() { // from class: com.bytedance.sdk.openadsdk.core.k.6
            @Override // com.bytedance.sdk.component.utils.i.dq
            public void dq(int i) {
                if (i == 1 && k.this.i && er.dq(k.this.mp)) {
                    com.bytedance.sdk.openadsdk.core.ir.ir.dq(k.this.q, d2, ox, k.this.r);
                }
            }
        });
        this.cd.dq();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, Object> mn() {
        NativeVideoTsView nativeVideoTsView;
        HashMap hashMap = new HashMap();
        if (this.s != null) {
            JSONArray jSONArray = new JSONArray();
            for (View view : this.s) {
                if (view != null) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put(MediaFormat.KEY_WIDTH, view.getWidth());
                        jSONObject.put(MediaFormat.KEY_HEIGHT, view.getHeight());
                        jSONObject.put("alpha", view.getAlpha());
                    } catch (Throwable unused) {
                    }
                    jSONArray.put(jSONObject);
                }
            }
            hashMap.put("image_view", jSONArray.toString());
        }
        if (this.mp != null) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put(MediaFormat.KEY_WIDTH, this.mp.getWidth());
                jSONObject2.put(MediaFormat.KEY_HEIGHT, this.mp.getHeight());
                jSONObject2.put("alpha", this.mp.getAlpha());
            } catch (Throwable unused2) {
            }
            hashMap.put("root_view", jSONObject2.toString());
        }
        WeakReference<NativeVideoTsView> weakReference = this.n;
        if (weakReference != null && (nativeVideoTsView = weakReference.get()) != null) {
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject3.put(MediaFormat.KEY_WIDTH, nativeVideoTsView.getWidth());
                jSONObject3.put(MediaFormat.KEY_HEIGHT, nativeVideoTsView.getHeight());
                jSONObject3.put("alpha", nativeVideoTsView.getAlpha());
            } catch (JSONException unused3) {
            }
            hashMap.put("video_view", jSONObject3.toString());
        }
        return hashMap;
    }

    private EmptyView ox(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof EmptyView) {
                return (EmptyView) childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox() {
        com.bytedance.sdk.openadsdk.core.r.j jVar = this.dq;
        if (jVar == null || jVar.y() != 4) {
            return;
        }
        if (this.op) {
            p();
        } else {
            this.op = true;
            com.bytedance.sdk.openadsdk.h.mn.dq(new com.bytedance.sdk.component.o.kk("feed_register_download") { // from class: com.bytedance.sdk.openadsdk.core.k.1
                @Override // java.lang.Runnable
                public void run() {
                    if (k.this.f3119d == null) {
                        k kVar = k.this;
                        kVar.f3119d = com.bytedance.sdk.openadsdk.core.o.s.dq(kVar.ox, k.this.dq, k.this.iw, false);
                    }
                    k.this.f3119d.dq(k.this.bl);
                    k.this.p();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        if (this.f3119d != null) {
            if (this.f3120e != null) {
                ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.f3120e.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.f3119d);
            }
            if (this.kx != null) {
                ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.kx.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.f3119d);
            }
            com.bytedance.sdk.openadsdk.core.d.dq dqVar = this.ji;
            if (dqVar != null) {
                ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.f3119d);
            }
            com.bytedance.sdk.openadsdk.core.d.dq dqVar2 = this.h;
            if (dqVar2 != null) {
                ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar2.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.f3119d);
            }
            try {
                this.f3119d.s(false);
                this.f3119d.dq(this.gh);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private com.bytedance.sdk.openadsdk.core.r.no s() {
        com.bytedance.sdk.openadsdk.core.r.j jVar;
        com.bytedance.sdk.openadsdk.core.r.no pq;
        if (this.fw == 5 && (jVar = this.dq) != null && (pq = jVar.pq()) != null && pq.dq() == 1) {
            return pq;
        }
        return null;
    }

    public void d() {
        if (this.f3119d != null) {
            this.f3119d.kk();
        }
        WeakReference<ViewGroup> weakReference = this.q;
        if (weakReference != null) {
            weakReference.clear();
        }
        final ViewGroup viewGroup = this.mp;
        final View view = this.le;
        if (viewGroup != null && view != null) {
            com.bytedance.sdk.component.utils.ia.d().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.k.8
                @Override // java.lang.Runnable
                public void run() {
                    viewGroup.removeView(view);
                }
            });
        }
        final View view2 = this.k;
        if (viewGroup != null && view2 != null) {
            com.bytedance.sdk.component.utils.ia.d().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.k.9
                @Override // java.lang.Runnable
                public void run() {
                    viewGroup.removeView(view2);
                }
            });
        }
        com.bytedance.sdk.component.utils.i iVar = this.cd;
        if (iVar != null) {
            iVar.d();
        }
    }

    public void d(View view, com.bytedance.sdk.openadsdk.core.r.o oVar) {
        if (this.f3120e != null) {
            this.f3120e.dq(view, oVar);
        }
    }

    public com.bytedance.sdk.openadsdk.core.o.d.ox dq() {
        return this.f3119d;
    }

    public void dq(int i) {
        this.fw = i;
    }

    public void dq(Activity activity) {
        this.bl = activity;
        if (this.f3119d != null) {
            this.f3119d.dq(activity);
        }
    }

    public void dq(View view, int i) {
        com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar = this.mn;
        if (dqVar != null) {
            dqVar.d(view, this.p);
        }
    }

    public void dq(View view, com.bytedance.sdk.openadsdk.core.r.o oVar) {
        if (this.kx != null) {
            this.kx.dq(view, oVar);
        }
    }

    public void dq(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, List<View> list4, View view, com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar, com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar2) {
        EmptyView emptyView;
        final com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar3;
        this.mn = dqVar;
        this.mp = viewGroup;
        this.q = new WeakReference<>(this.mp);
        this.jy = view;
        this.f3121f = dqVar2;
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.dq);
        Context context = this.ox;
        com.bytedance.sdk.openadsdk.core.r.j jVar = this.dq;
        String str = this.iw;
        com.bytedance.sdk.openadsdk.core.d.dq dqVar4 = new com.bytedance.sdk.openadsdk.core.d.dq(context, jVar, str, com.bytedance.sdk.openadsdk.core.ir.c.dq(str));
        this.ji = dqVar4;
        dq(dqVar4, this.mp, this.jy, dqVar, this.f3121f, 3);
        dq(viewGroup);
        EmptyView ox = ox(viewGroup);
        if (ox == null) {
            com.bytedance.sdk.openadsdk.core.r.j jVar2 = this.dq;
            EmptyView emptyView2 = new EmptyView(this.ox, viewGroup, jVar2 != null ? jVar2.vb() : 1000) { // from class: com.bytedance.sdk.openadsdk.core.k.2
                @Override // android.view.View
                public void onVisibilityChanged(View view2, int i) {
                    super.onVisibilityChanged(view2, i);
                    com.bytedance.sdk.component.utils.i iVar = k.this.cd;
                    if (iVar == null) {
                        return;
                    }
                    try {
                        k.this.i = isShown();
                        if (isShown()) {
                            iVar.dq();
                        } else {
                            iVar.d();
                        }
                    } catch (Throwable unused) {
                    }
                }
            };
            emptyView2.setMaterialMeta(this.dq);
            viewGroup.addView(emptyView2);
            emptyView = emptyView2;
        } else {
            emptyView = ox;
        }
        emptyView.dq();
        emptyView.setRefClickViews(list2);
        emptyView.setRefCreativeViews(list3);
        emptyView.setRefDirectDownloadViews(list4);
        this.le = emptyView;
        this.s = list;
        Context context2 = this.ox;
        com.bytedance.sdk.openadsdk.core.r.j jVar3 = this.dq;
        String str2 = this.iw;
        this.f3120e = new com.bytedance.sdk.openadsdk.core.d.d(context2, jVar3, str2, com.bytedance.sdk.openadsdk.core.ir.c.dq(str2));
        dq(this.f3120e, viewGroup, view, dqVar, dqVar2, 0);
        Context context3 = this.ox;
        com.bytedance.sdk.openadsdk.core.r.j jVar4 = this.dq;
        String str3 = this.iw;
        this.kx = new com.bytedance.sdk.openadsdk.core.d.dq(context3, jVar4, str3, com.bytedance.sdk.openadsdk.core.ir.c.dq(str3));
        dq(this.kx, viewGroup, view, dqVar, dqVar2, 1);
        if (com.bytedance.sdk.component.utils.o.dq(list4)) {
            dqVar3 = dqVar;
        } else {
            Context context4 = this.ox;
            com.bytedance.sdk.openadsdk.core.r.j jVar5 = this.dq;
            String str4 = this.iw;
            com.bytedance.sdk.openadsdk.core.d.dq dqVar5 = new com.bytedance.sdk.openadsdk.core.d.dq(context4, jVar5, str4, com.bytedance.sdk.openadsdk.core.ir.c.dq(str4));
            this.h = dqVar5;
            dqVar5.dq(2);
            dqVar3 = dqVar;
            dq(this.h, viewGroup, view, dqVar3, dqVar2, 2);
        }
        emptyView.dq(list2, this.f3120e);
        emptyView.dq(list3, this.kx);
        emptyView.dq(list4, this.h);
        emptyView.setCallback(new EmptyView.dq() { // from class: com.bytedance.sdk.openadsdk.core.k.3
            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void d() {
                if (k.this.f3119d != null) {
                    k.this.f3119d.kk();
                }
                try {
                    if (k.this.cd != null) {
                        k.this.cd.d();
                    }
                } catch (Throwable th) {
                    com.bytedance.sdk.component.utils.ig.p("ShakeUtils", "onPause error:" + th.getMessage());
                }
                k.this.o.set(false);
                k.this.no.set(false);
                k kVar = k.this;
                kVar.ia = com.bytedance.sdk.openadsdk.core.ig.ox.dq(kVar.ia, k.this.dq, k.this.iw);
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void dq() {
                k.this.ox();
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void dq(View view2) {
                k.this.ox();
                k.this.ia = System.currentTimeMillis();
                Map mn = k.this.mn();
                k.this.o.set(true);
                if (!k.this.no.get()) {
                    com.bytedance.sdk.openadsdk.core.ig.ox.dq(k.this.dq, k.this.iw, (Map<String, Object>) mn, k.this.kk);
                    com.bytedance.sdk.openadsdk.core.kx.dq.dq().p();
                }
                if (dqVar3 != null) {
                    if (!k.this.ig.getAndSet(true)) {
                        dqVar3.dq(k.this.p);
                    }
                    k.this.r = System.currentTimeMillis();
                    k.this.iw();
                }
                if (k.this.ir != null) {
                    k.this.ir.p();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void dq(boolean z) {
                if (k.this.f3119d != null && z) {
                    k.this.f3119d.ia();
                }
                k kVar = k.this;
                kVar.ia = com.bytedance.sdk.openadsdk.core.ig.ox.dq(kVar.ia, z, k.this.dq, k.this.iw);
                if (k.this.cd != null) {
                    if (z) {
                        k.this.cd.dq();
                        return;
                    }
                    try {
                        if (k.this.cd != null) {
                            k.this.cd.d();
                        }
                    } catch (Throwable th) {
                        com.bytedance.sdk.component.utils.ig.p("ShakeUtils", "onPause error:" + th.getMessage());
                    }
                }
            }
        });
        emptyView.setNeedCheckingShow(true);
        ox();
    }

    public void dq(final com.bytedance.sdk.openadsdk.core.d.dq.ox.ox oxVar) {
        oxVar.dq(new ox.dq() { // from class: com.bytedance.sdk.openadsdk.core.k.7
            @Override // com.bytedance.sdk.openadsdk.core.d.dq.ox.ox.dq
            public boolean dq() {
                oxVar.dq(k.this.mn());
                oxVar.dq(k.this.iw);
                oxVar.dq(k.this.kk);
                boolean z = k.this.o.get();
                k.this.no.set(!z);
                return z;
            }
        });
    }

    public void dq(NativeExpressView nativeExpressView) {
        this.wp = nativeExpressView;
        if (this.wp != null) {
            this.wp.setClickCreativeListener(this.kx);
            this.wp.setClickListener(this.f3120e);
        }
    }

    public void dq(com.bytedance.sdk.openadsdk.core.o.d.dq dqVar) {
        this.gh = dqVar;
    }

    public void dq(com.bytedance.sdk.openadsdk.core.ugeno.component.interact.mn mnVar) {
        this.ir = mnVar;
    }

    public void dq(com.bytedance.sdk.openadsdk.f.d.d.q qVar) {
        this.p = qVar;
    }

    public void dq(Double d2) {
        this.kk = d2;
    }

    public void dq(WeakReference<NativeVideoTsView> weakReference) {
        this.n = weakReference;
    }
}
