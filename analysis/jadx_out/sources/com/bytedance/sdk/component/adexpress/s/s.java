package com.bytedance.sdk.component.adexpress.s;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import com.bytedance.component.sdk.annotation.UiThread;
import com.bytedance.sdk.component.dq.e;
import com.bytedance.sdk.component.utils.ia;
import com.bytedance.sdk.component.widget.SSWebView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class s {
    private static int iw = 10;
    private static volatile s kk = null;
    private static int mn = 10;
    private static final byte[] s = new byte[0];
    private final AtomicBoolean ia = new AtomicBoolean(false);
    private List<SSWebView> dq = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    private List<SSWebView> f1785d = new ArrayList();
    private Map<Integer, ox> ox = new HashMap();
    private Map<Integer, p> p = new HashMap();

    private s() {
        com.bytedance.sdk.component.adexpress.dq.dq.ox ox = com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox();
        if (ox != null) {
            iw = ox.ia();
            mn = ox.kk();
        }
    }

    public static s dq() {
        if (kk == null) {
            synchronized (s.class) {
                try {
                    if (kk == null) {
                        kk = new s();
                    }
                } finally {
                }
            }
        }
        return kk;
    }

    private static void dq(Runnable runnable) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            ia.d().post(runnable);
        }
    }

    public SSWebView d(Context context, String str) {
        SSWebView remove;
        if (ox() <= 0 || (remove = this.dq.remove(0)) == null) {
            return null;
        }
        ox();
        return remove;
    }

    public void d() {
        for (SSWebView sSWebView : this.dq) {
            if (sSWebView != null) {
                sSWebView.dq();
            }
        }
        this.dq.clear();
        for (SSWebView sSWebView2 : this.f1785d) {
            if (sSWebView2 != null) {
                sSWebView2.dq();
            }
        }
        this.f1785d.clear();
    }

    @UiThread
    public void d(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        sSWebView.aa_();
        iw(sSWebView);
        dq(sSWebView);
    }

    public SSWebView dq(Context context, String str) {
        SSWebView remove;
        if (p() <= 0 || (remove = this.f1785d.remove(0)) == null) {
            return null;
        }
        this.f1785d.size();
        return remove;
    }

    @SuppressLint({"JavascriptInterface"})
    public void dq(final com.bytedance.sdk.component.mp.dq dqVar, e eVar, final String str) {
        if (dqVar == null || eVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        final p pVar = this.p.get(Integer.valueOf(dqVar.hashCode()));
        if (pVar != null) {
            pVar.dq(eVar);
        } else {
            pVar = new p(eVar);
            this.p.put(Integer.valueOf(dqVar.hashCode()), pVar);
        }
        dq(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.s.s.1
            @Override // java.lang.Runnable
            public void run() {
                dqVar.dq(pVar, str);
            }
        });
    }

    public void dq(final com.bytedance.sdk.component.mp.dq dqVar, final String str) {
        if (dqVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        p pVar = this.p.get(Integer.valueOf(dqVar.hashCode()));
        if (pVar != null) {
            pVar.dq(null);
        }
        dq(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.s.s.2
            @Override // java.lang.Runnable
            public void run() {
                dqVar.d(str);
            }
        });
    }

    public void dq(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        if (this.f1785d.size() >= mn) {
            sSWebView.dq();
        } else {
            if (this.f1785d.contains(sSWebView)) {
                return;
            }
            this.f1785d.add(sSWebView);
            this.f1785d.size();
        }
    }

    @SuppressLint({"JavascriptInterface"})
    public void dq(SSWebView sSWebView, d dVar) {
        if (sSWebView == null || dVar == null) {
            return;
        }
        ox oxVar = this.ox.get(Integer.valueOf(sSWebView.hashCode()));
        if (oxVar != null) {
            oxVar.dq(dVar);
        } else {
            oxVar = new ox(dVar);
            this.ox.put(Integer.valueOf(sSWebView.hashCode()), oxVar);
        }
        sSWebView.dq(oxVar, "SDK_INJECT_GLOBAL");
    }

    public void iw(SSWebView sSWebView) {
        ox oxVar;
        if (sSWebView == null || (oxVar = this.ox.get(Integer.valueOf(sSWebView.hashCode()))) == null) {
            return;
        }
        oxVar.dq(null);
    }

    public int ox() {
        return this.dq.size();
    }

    @UiThread
    public void ox(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        sSWebView.aa_();
        iw(sSWebView);
        p(sSWebView);
    }

    public int p() {
        return this.f1785d.size();
    }

    public void p(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        if (this.dq.size() >= iw) {
            sSWebView.dq();
        } else {
            if (this.dq.contains(sSWebView)) {
                return;
            }
            this.dq.add(sSWebView);
            ox();
        }
    }

    public int s() {
        return p() + this.dq.size();
    }

    public boolean s(SSWebView sSWebView) {
        if (sSWebView == null) {
            return false;
        }
        sSWebView.dq();
        return true;
    }
}
