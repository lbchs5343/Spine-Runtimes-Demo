package com.bytedance.sdk.openadsdk.core.ugeno;

import android.content.Context;
import android.os.Looper;
import android.os.Message;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.le;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.widget.ia;
import g.ajp;
import g.blw;
import g.cyx;
import g.dlv;
import g.dmm;
import g.dvh;
import g.eho;
import g.fzc;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq implements cyx, e.dq, d {

    /* renamed from: d, reason: collision with root package name */
    private Context f3576d;
    private dlv dq;
    private AtomicBoolean ia = new AtomicBoolean(false);
    private final e iw = new e(Looper.getMainLooper(), this);
    private com.bytedance.sdk.openadsdk.core.ugeno.ia.mn mn;
    private ia.dq ox;
    private c p;
    private j s;

    public dq(Context context, j jVar) {
        this.f3576d = context;
        this.s = jVar;
    }

    private void d() {
        e eVar = this.iw;
        if (eVar == null) {
            return;
        }
        eVar.removeMessages(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(JSONObject jSONObject, JSONObject jSONObject2, com.bytedance.sdk.openadsdk.core.ugeno.ia.mn mnVar) {
        this.mn = mnVar;
        Context context = this.f3576d;
        ajp ajpVar = new ajp(context);
        dmm dmmVar = new dmm();
        dmmVar.f14433a = context;
        HashMap hashMap = new HashMap();
        c cVar = new c(this.f3576d);
        this.p = cVar;
        cVar.dq(this.ox);
        this.p.dq(this);
        this.p.d(dq(jSONObject2));
        String d2 = com.bytedance.sdk.openadsdk.core.ir.c.d(this.s);
        this.p.ox(com.bytedance.sdk.openadsdk.core.ir.c.dq(d2));
        this.p.dq(d2);
        hashMap.put("key_js_object", this.p);
        hashMap.put("key_material", this.s);
        dmmVar.f14434b = jSONObject2;
        dmmVar.f14435c = hashMap;
        ajpVar.f10328a = dmmVar;
        ajpVar.f10334g = jSONObject2;
        dlv n = ajpVar.n(jSONObject);
        this.dq = n;
        if (n == null) {
            com.bytedance.sdk.openadsdk.core.ugeno.ia.mn mnVar2 = this.mn;
            if (mnVar2 != null) {
                mnVar2.dq(-1, "UGenWidget is null");
                return;
            }
            return;
        }
        ajpVar.s(this);
        ajpVar.r(jSONObject2);
        e eVar = this.iw;
        if (eVar != null) {
            eVar.sendEmptyMessageDelayed(1, 1000L);
        }
    }

    private JSONObject dq(JSONObject jSONObject) {
        JSONObject optJSONObject;
        if (jSONObject == null || (optJSONObject = jSONObject.optJSONObject("easy_dl_dialog")) == null) {
            return null;
        }
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject2.put("app_name", optJSONObject.opt("app_name"));
            jSONObject2.put("app_version", optJSONObject.opt("app_version"));
            jSONObject2.put("developer_name", optJSONObject.opt("developer_name"));
            jSONObject2.put("package_name", optJSONObject.opt("package_name"));
            jSONObject2.put("score", optJSONObject.opt("score"));
            jSONObject2.put("icon_url", optJSONObject.opt("icon_url"));
            jSONObject2.put("description", optJSONObject.opt("description"));
            jSONObject2.put("creative_tags", optJSONObject.opt("creative_tags"));
            jSONObject2.put("easy_pl_material", optJSONObject.opt("easy_pl_material"));
            jSONObject3.put("ugen_download_dialog", jSONObject2);
            return jSONObject3;
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.d
    public void dq() {
        d();
        if (this.ia.get() || this.mn == null) {
            return;
        }
        this.ia.set(true);
        this.mn.dq(this.dq);
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.d
    public void dq(int i, String str) {
        d();
        if (this.ia.get() || this.mn == null) {
            return;
        }
        this.ia.set(true);
        this.mn.dq(i, str);
    }

    @Override // com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
        if (message == null || message.what != 1 || this.ia.get()) {
            return;
        }
        if (this.mn != null) {
            this.ia.set(true);
            this.mn.dq(10, "load time out");
        }
        d();
    }

    public void dq(ia.dq dqVar) {
        this.ox = dqVar;
    }

    @Override // g.cyx
    public void dq(dlv dlvVar, String str, blw blwVar) {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x004d, code lost:
    
        if (r2.equals("openAppFunctionDesc") == false) goto L13;
     */
    @Override // g.cyx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void dq(fzc fzcVar, dvh dvhVar, eho ehoVar) {
        JSONObject jSONObject;
        if (fzcVar == null || this.ox == null) {
            return;
        }
        char c2 = 1;
        if (fzcVar.f17690c != 1 || (jSONObject = fzcVar.f17691d) == null) {
            return;
        }
        String optString = jSONObject.optString("type");
        optString.getClass();
        switch (optString.hashCode()) {
            case -1822902106:
                if (optString.equals("openAppPermission")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -459025504:
                break;
            case -267096736:
                if (optString.equals("closeDialog")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 7917298:
                if (optString.equals("downloadEvent")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1237425033:
                if (optString.equals("openAppPolicy")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                this.ox.d(null);
                break;
            case 1:
                this.ox.dq();
                break;
            case 2:
                this.ox.ox(null);
                break;
            case 3:
                this.ox.dq(null);
                break;
            case 4:
                this.ox.p(null);
                break;
        }
    }

    public void dq(final JSONObject jSONObject, final JSONObject jSONObject2, final com.bytedance.sdk.openadsdk.core.ugeno.ia.mn mnVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            d(jSONObject, jSONObject2, mnVar);
        } else {
            le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.dq.1
                @Override // java.lang.Runnable
                public void run() {
                    dq.this.d(jSONObject, jSONObject2, mnVar);
                }
            });
        }
    }
}
