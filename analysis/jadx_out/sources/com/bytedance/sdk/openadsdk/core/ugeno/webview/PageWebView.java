package com.bytedance.sdk.openadsdk.core.ugeno.webview;

import android.content.Context;
import android.util.SparseArray;
import android.webkit.DownloadListener;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.ir.r;
import com.bytedance.sdk.openadsdk.core.jy.p;
import com.bytedance.sdk.openadsdk.core.o.ox.jy;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.widget.dq.d;
import com.bytedance.sdk.openadsdk.core.widget.dq.ox;
import com.bytedance.sdk.openadsdk.h.mn;
import g.dmm;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class PageWebView extends FrameLayout implements p {
    private static final SparseArray<WeakReference<DownloadListener>> dq = new SparseArray<>();

    /* renamed from: d, reason: collision with root package name */
    private SSWebView f3634d;
    private dmm iw;
    private Context ox;
    private j p;
    private c s;

    public PageWebView(Context context) {
        super(context);
        this.ox = context;
        SSWebView sSWebView = new SSWebView(context);
        this.f3634d = sSWebView;
        addView(sSWebView);
    }

    public static void dq(JSONObject jSONObject) {
        if (jSONObject != null) {
            dq.remove(jSONObject.hashCode());
        }
    }

    public static void dq(JSONObject jSONObject, DownloadListener downloadListener) {
        if (downloadListener == null || jSONObject == null) {
            return;
        }
        dq.put(jSONObject.hashCode(), new WeakReference<>(downloadListener));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox(JSONObject jSONObject) {
        WeakReference<DownloadListener> weakReference;
        d.dq(this.ox).dq(false).d(false).dq(this.f3634d);
        SSWebView sSWebView = this.f3634d;
        if (sSWebView != null) {
            r.dq(sSWebView, op.f3334d, j.p(this.p));
        }
        this.f3634d.setMixedContentMode(0);
        if (jSONObject == null || (weakReference = dq.get(jSONObject.hashCode())) == null || weakReference.get() == null) {
            return;
        }
        this.f3634d.setDownloadListener(weakReference.get());
    }

    public void d(final JSONObject jSONObject) {
        mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.webview.PageWebView.1
            @Override // java.lang.Runnable
            public void run() {
                PageWebView.this.ox(jSONObject);
            }
        });
    }

    public void dq() {
        HashMap hashMap;
        if (this.f3634d == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.p);
        this.s = new c(this.ox);
        dmm dmmVar = this.iw;
        if (dmmVar != null && (hashMap = dmmVar.f14435c) != null && hashMap.containsKey("key_reward_page")) {
            Object obj = hashMap.get("key_reward_page");
            if (obj instanceof Map) {
                this.s.dq((Map<String, Object>) obj);
            }
        }
        this.s.d(this.f3634d).dq(this.p).ox(arrayList).d(this.p.fx()).ox(this.p.dn()).ox(7).p(com.bytedance.sdk.openadsdk.core.ir.c.f(this.p)).dq(this.f3634d).dq(true).d(jy.dq(this.p)).dq((p) this);
        this.f3634d.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.dq.p(this.ox, this.s, this.p.fx(), new com.bytedance.sdk.openadsdk.core.ig.p(this.p, this.f3634d), null));
        this.f3634d.setWebChromeClient(new ox(this.s));
    }

    public void dq(String str) {
        SSWebView sSWebView = this.f3634d;
        if (sSWebView != null) {
            sSWebView.dq(str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.jy.p
    public void dq(boolean z, JSONArray jSONArray) {
    }

    public void setMeta(j jVar) {
        this.p = jVar;
    }

    public void setUGenContext(dmm dmmVar) {
        this.iw = dmmVar;
    }
}
