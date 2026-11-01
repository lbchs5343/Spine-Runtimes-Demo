package com.bytedance.sdk.component.dq;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.bytedance.component.sdk.annotation.AnyThread;
import com.bytedance.component.sdk.annotation.MainThread;
import com.bytedance.sdk.component.dq.mn;
import g.awf;
import g.tn;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class dq {

    /* renamed from: d, reason: collision with root package name */
    protected mp f1860d;
    protected Context dq;
    mn mn;
    protected ia ox;
    protected String s;
    protected Handler p = new Handler(Looper.getMainLooper());
    protected volatile boolean iw = false;
    private final Map<String, mn> ia = new HashMap();

    private mn d(String str) {
        return (TextUtils.equals(str, this.s) || TextUtils.isEmpty(str)) ? this.mn : this.ia.get(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public f dq(JSONObject jSONObject) {
        String optString;
        Object opt;
        if (this.iw) {
            return null;
        }
        String optString2 = jSONObject.optString("__callback_id");
        String optString3 = jSONObject.optString("func");
        if (dq() == null) {
            return null;
        }
        try {
            String string = jSONObject.getString("__msg_type");
            String str = "";
            try {
                opt = jSONObject.opt("params");
            } catch (Throwable unused) {
                optString = jSONObject.optString("params");
            }
            if (opt != null) {
                if (opt instanceof JSONObject) {
                    optString = String.valueOf((JSONObject) opt);
                    String string2 = jSONObject.getString("JSSDK");
                    return f.dq().dq(string2).d(string).ox(optString3).p(optString).s(optString2).iw(jSONObject.optString("namespace")).mn(jSONObject.optString("__iframe_url")).dq();
                }
                str = opt instanceof String ? (String) opt : String.valueOf(opt);
            }
            optString = str;
            String string22 = jSONObject.getString("JSSDK");
            return f.dq().dq(string22).d(string).ox(optString3).p(optString).s(optString2).iw(jSONObject.optString("namespace")).mn(jSONObject.optString("__iframe_url")).dq();
        } catch (JSONException e2) {
            kk.d("Failed to create call.", e2);
            return f.dq(optString2, -1);
        }
    }

    public void d() {
        this.mn.dq();
        Iterator<mn> it = this.ia.values().iterator();
        while (it.hasNext()) {
            it.next().dq();
        }
        this.p.removeCallbacksAndMessages(null);
        this.iw = true;
    }

    public final void d(String str, f fVar) {
        JSONObject jSONObject;
        if (this.iw) {
            return;
        }
        if (TextUtils.isEmpty(fVar.iw)) {
            kk.dq("By passing js callback due to empty callback: ".concat(String.valueOf(str)));
            return;
        }
        if (!str.startsWith("{") || !str.endsWith("}")) {
            kk.dq(new IllegalArgumentException("Illegal callback data: ".concat(str)));
        }
        kk.dq("Invoking js callback: " + fVar.iw);
        try {
            jSONObject = new JSONObject(str);
        } catch (Exception unused) {
            jSONObject = new JSONObject();
        }
        dq(jy.dq().dq("__msg_type", "callback").dq("__callback_id", fVar.iw).dq("__params", jSONObject).d(), fVar);
    }

    public abstract String dq();

    @MainThread
    public final void dq(f fVar) {
        String dq;
        if (this.iw || (dq = dq()) == null) {
            return;
        }
        mn d2 = d(fVar.mn);
        if (d2 == null) {
            kk.d("Received call with unknown namespace, ".concat(String.valueOf(fVar)));
            if (this.f1860d != null) {
                dq();
            }
            d(wp.dq(new cd(-4, awf.ad(new StringBuilder("Namespace "), fVar.mn, " unknown."))), fVar);
            return;
        }
        iw iwVar = new iw();
        iwVar.f1871d = dq;
        iwVar.dq = this.dq;
        iwVar.ox = d2;
        try {
            mn.dq dq2 = d2.dq(fVar, iwVar);
            if (dq2 != null) {
                if (dq2.dq) {
                    d(dq2.f1877d, fVar);
                }
                if (this.f1860d != null) {
                    dq();
                    return;
                }
                return;
            }
            kk.d("Received call but not registered, ".concat(String.valueOf(fVar)));
            if (this.f1860d != null) {
                dq();
            }
            d(wp.dq(new cd(-2, "Function " + fVar.p + " is not registered.")), fVar);
        } catch (Exception e2) {
            kk.dq("call finished with error, ".concat(String.valueOf(fVar)), e2);
            d(wp.dq(e2), fVar);
        }
    }

    public abstract void dq(o oVar);

    public final void dq(o oVar, i iVar) {
        this.dq = getContext(oVar);
        this.ox = oVar.p;
        this.f1860d = oVar.kk;
        this.mn = new mn(oVar, this, iVar);
        this.s = oVar.no;
        dq(oVar);
    }

    @AnyThread
    public abstract void dq(String str);

    public void dq(String str, f fVar) {
        dq(str);
    }

    public final <T> void dq(String str, T t) {
        if (this.iw) {
            return;
        }
        String dq = this.ox.dq((ia) t);
        kk.dq("Sending js event: ".concat(String.valueOf(str)));
        dq(tn.r("{\"__msg_type\":\"event\",\"__event_id\":\"", str, "\",\"__params\":", dq, "}"));
    }

    public abstract Context getContext(o oVar);

    public void invokeMethod(final String str) {
        if (this.iw) {
            return;
        }
        kk.dq("Received call: ".concat(String.valueOf(str)));
        this.p.post(new Runnable() { // from class: com.bytedance.sdk.component.dq.dq.1
            @Override // java.lang.Runnable
            public void run() {
                f fVar;
                if (dq.this.iw) {
                    return;
                }
                try {
                    fVar = dq.this.dq(new JSONObject(str));
                } catch (Exception e2) {
                    kk.d("Exception thrown while parsing function.", e2);
                    fVar = null;
                }
                if (!f.dq(fVar)) {
                    dq.this.dq(fVar);
                    return;
                }
                kk.dq("By pass invalid call: ".concat(String.valueOf(fVar)));
                if (fVar != null) {
                    dq.this.d(wp.dq(new cd(fVar.dq, "Failed to parse invocation.")), fVar);
                }
            }
        });
    }
}
