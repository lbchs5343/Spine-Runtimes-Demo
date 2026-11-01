package com.bytedance.sdk.openadsdk.core.video.nativevideo;

import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.adexpress.d.mn;
import com.bytedance.sdk.component.adexpress.d.q;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.cd;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.ugeno.component.interact.o;
import com.bytedance.sdk.openadsdk.core.ugeno.kk;
import com.bytedance.sdk.openadsdk.core.ugeno.ox.dq;
import com.bytedance.sdk.openadsdk.core.wp;
import g.dbw;
import g.tn;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class UGenVideoPanelView extends NativeExpressView {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.ugeno.ox.ox f3656d;
    private j dq;
    private ViewGroup i;
    private AtomicBoolean k;
    private Context le;
    private NativeVideoTsView ox;
    private CopyOnWriteArrayList<Message> p;
    private dq s;

    public static class dq extends Handler {
        UGenVideoPanelView dq;

        private dq(Looper looper) {
            super(looper);
        }

        public void dq(UGenVideoPanelView uGenVideoPanelView) {
            this.dq = uGenVideoPanelView;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0022  */
        /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void handleMessage(Message message) {
            View view;
            super.handleMessage(message);
            if (this.dq == null || message == null) {
                return;
            }
            Object obj = message.obj;
            if (obj instanceof WeakReference) {
                Object obj2 = ((WeakReference) obj).get();
                if (obj2 instanceof View) {
                    view = (View) obj2;
                    if (view != null) {
                        return;
                    }
                    int i = message.what;
                    if (i == 0) {
                        this.dq.d(view);
                        return;
                    } else {
                        if (i != 2) {
                            return;
                        }
                        this.dq.dq(view);
                        return;
                    }
                }
            }
            view = null;
            if (view != null) {
            }
        }
    }

    public UGenVideoPanelView(Context context, j jVar, NativeVideoTsView nativeVideoTsView, String str) {
        super(context, jVar, new com.bytedance.sdk.openadsdk.f.d.ox.d(null), str);
        this.p = new CopyOnWriteArrayList<>();
        this.s = new dq(Looper.getMainLooper());
        this.k = new AtomicBoolean(true);
        this.le = context;
        this.dq = jVar;
        this.ox = nativeVideoTsView;
        this.s.dq(this);
        q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(final View view) {
        if (view == null) {
            return false;
        }
        ViewGroup viewGroup = this.i;
        if (!(viewGroup instanceof FrameLayout) && !(viewGroup instanceof RelativeLayout)) {
            return false;
        }
        viewGroup.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.UGenVideoPanelView.5
            @Override // java.lang.Runnable
            public void run() {
                view.setLayoutParams(new ViewGroup.LayoutParams(UGenVideoPanelView.this.i.getWidth(), UGenVideoPanelView.this.i.getHeight()));
                view.setVisibility(0);
                ViewParent parent = view.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(view);
                }
                UGenVideoPanelView.this.i.removeView(view);
                UGenVideoPanelView.this.i.addView(view);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final JSONObject jSONObject, final int i, final String str) {
        NativeVideoTsView nativeVideoTsView;
        if (jSONObject == null || (nativeVideoTsView = this.ox) == null) {
            return;
        }
        nativeVideoTsView.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.UGenVideoPanelView.2
            @Override // java.lang.Runnable
            public void run() {
                dq.C0191dq c0191dq = new dq.C0191dq();
                JSONObject dq2 = kk.dq(UGenVideoPanelView.this.dq, UGenVideoPanelView.this.ox);
                if (dq2 != null && !TextUtils.isEmpty(str)) {
                    try {
                        dq2.put("ugen_id", str);
                    } catch (JSONException unused) {
                    }
                }
                c0191dq.s(dq2);
                c0191dq.dq(jSONObject);
                c0191dq.dq((dbw) new cd());
                c0191dq.d(UGenVideoPanelView.this.ox.getHeight());
                c0191dq.dq(UGenVideoPanelView.this.ox.getWidth());
                c0191dq.dq(no.ia().s());
                com.bytedance.sdk.openadsdk.core.ugeno.ox.dq dq3 = c0191dq.dq();
                UGenVideoPanelView uGenVideoPanelView = UGenVideoPanelView.this;
                uGenVideoPanelView.f3656d = new com.bytedance.sdk.openadsdk.core.ugeno.ox.ox(uGenVideoPanelView.le, UGenVideoPanelView.this.dq, dq3, UGenVideoPanelView.this.ox);
                UGenVideoPanelView.this.f3656d.dq(UGenVideoPanelView.this);
                UGenVideoPanelView.this.ox(i, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean dq(final View view) {
        ViewGroup viewGroup = this.i;
        if (viewGroup == null || view == null) {
            return false;
        }
        viewGroup.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.UGenVideoPanelView.4
            @Override // java.lang.Runnable
            public void run() {
                view.setLayoutParams(new ViewGroup.LayoutParams(UGenVideoPanelView.this.i.getWidth(), UGenVideoPanelView.this.i.getHeight()));
                view.setVisibility(0);
                UGenVideoPanelView.this.ox.removeView(view);
                ViewParent parent = view.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(view);
                }
                UGenVideoPanelView.this.ox.addView(view);
                UGenVideoPanelView.this.i.getGlobalVisibleRect(new Rect());
                UGenVideoPanelView.this.ox.getGlobalVisibleRect(new Rect());
                view.setTranslationY(r2.top - r3.top);
                for (ViewParent parent2 = UGenVideoPanelView.this.ox.getParent(); parent2 != null; parent2 = parent2.getParent()) {
                    if (parent2 instanceof ViewGroup) {
                        ((ViewGroup) parent2).setClipChildren(false);
                        if (parent2.hashCode() == UGenVideoPanelView.this.i.hashCode()) {
                            return;
                        }
                    }
                }
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean dq(View view, int i) {
        NativeVideoTsView nativeVideoTsView = this.ox;
        boolean z = false;
        if (nativeVideoTsView == null) {
            return false;
        }
        if (i == 0) {
            if (this.i != null) {
                z = d(view);
                view.bringToFront();
                dq(this.gh);
                return z;
            }
            Message obtain = Message.obtain();
            obtain.what = 0;
            obtain.obj = new WeakReference(view);
            this.p.add(obtain);
            z = true;
            view.bringToFront();
            dq(this.gh);
            return z;
        }
        if (i != 2) {
            if (nativeVideoTsView != null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                view.setVisibility(0);
                this.ox.addView(view);
                z = true;
            }
            view.bringToFront();
            dq(this.gh);
            return z;
        }
        if (this.i != null) {
            z = dq(view);
            view.bringToFront();
            dq(this.gh);
            return z;
        }
        Message obtain2 = Message.obtain();
        obtain2.what = 2;
        obtain2.obj = new WeakReference(view);
        this.p.add(obtain2);
        z = true;
        view.bringToFront();
        dq(this.gh);
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox(final int i, final String str) {
        this.f3656d.dq(new mn() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.UGenVideoPanelView.3
            @Override // com.bytedance.sdk.component.adexpress.d.mn
            public void dq(int i2, String str2) {
                HashMap hashMap = new HashMap();
                hashMap.put("error_code", Integer.valueOf(i2));
                hashMap.put("error_msg", str2);
                hashMap.put("render_type", 1);
                o.dq(UGenVideoPanelView.this.dq, false, str, 3, hashMap);
            }

            @Override // com.bytedance.sdk.component.adexpress.d.mn
            public void dq(View view, q qVar) {
                View childAt;
                if (UGenVideoPanelView.this.ox == null || view == null) {
                    return;
                }
                boolean dq2 = UGenVideoPanelView.this.dq(view, i);
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    if (viewGroup.getChildCount() > 0 && (childAt = viewGroup.getChildAt(0)) != null && childAt.getVisibility() == 8) {
                        HashMap hashMap = new HashMap();
                        tn.e(105, hashMap, "error_code", 1, "render_type");
                        o.dq(UGenVideoPanelView.this.dq, false, str, 3, hashMap);
                        return;
                    }
                }
                o.dq(UGenVideoPanelView.this.dq, dq2, str, 3, null);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.component.adexpress.d.ia
    public void dq(View view, int i, com.bytedance.sdk.component.adexpress.ox oxVar) {
        super.dq(view, i, oxVar);
        o.dq(this.dq, o.dq(this.ox, oxVar), o.dq(oxVar), 3);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.component.adexpress.d.ia
    public void dq(View view, int i, com.bytedance.sdk.component.adexpress.ox oxVar, int i2) {
        super.dq(view, i, oxVar, i2);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void dq(boolean z) {
        NativeVideoTsView nativeVideoTsView = this.ox;
        if (nativeVideoTsView == null) {
            return;
        }
        this.gh = z;
        nativeVideoTsView.d(z, true);
        com.bykv.vk.openvk.component.video.api.p.ox nativeVideoController = this.ox.getNativeVideoController();
        if (nativeVideoController != null) {
            nativeVideoController.d(z);
        }
        com.bytedance.sdk.openadsdk.core.ugeno.ox.ox oxVar = this.f3656d;
        if (oxVar == null) {
            return;
        }
        oxVar.setSoundMute(z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    public void ig() {
    }

    public void q() {
        j jVar;
        JSONObject bn;
        JSONArray optJSONArray;
        if (!this.k.getAndSet(false) || (jVar = this.dq) == null || this.ox == null || jVar.gv() == 166 || (bn = this.dq.bn()) == null || (optJSONArray = bn.optJSONArray("components")) == null) {
            return;
        }
        this.gh = wp.d().p(c.kk(this.dq));
        int length = optJSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (optJSONObject.optInt("render_sequence") == 2) {
                final int optInt = optJSONObject.optInt("displayAreaAndroid");
                String optString = optJSONObject.optString("ugen_md5");
                String optString2 = optJSONObject.optString("ugen_url");
                final String optString3 = optJSONObject.optString("ugen_id");
                JSONObject d2 = kk.d(optString, optString2);
                if (d2 == null || d2.length() <= 0) {
                    kk.dq(optString, optString2, new com.bytedance.sdk.openadsdk.core.ugeno.ox() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.UGenVideoPanelView.1
                        @Override // com.bytedance.sdk.openadsdk.core.ugeno.ox
                        public void dq(String str) {
                            try {
                                UGenVideoPanelView.this.dq(new JSONObject(str), optInt, optString3);
                            } catch (Throwable unused) {
                            }
                        }
                    });
                } else {
                    dq(d2, optInt, optString3);
                }
            }
        }
    }

    public void setAdSlot(com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        this.ia = dVar;
    }

    public void setDeveloperContainer(ViewGroup viewGroup) {
        this.i = viewGroup;
        if (viewGroup != null) {
            Iterator<Message> it = this.p.iterator();
            while (it.hasNext()) {
                this.s.handleMessage(it.next());
            }
        }
    }
}
