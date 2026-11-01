package com.bytedance.sdk.openadsdk.core.ugeno;

import android.content.Context;
import android.os.Looper;
import com.bytedance.sdk.openadsdk.core.le;
import com.bytedance.sdk.openadsdk.core.widget.s;
import g.ajp;
import g.blw;
import g.cyx;
import g.dlv;
import g.dmm;
import g.dvh;
import g.eho;
import g.fzc;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ia implements cyx {

    /* renamed from: d, reason: collision with root package name */
    private dlv f3579d;
    private Context dq;
    private s.dq ox;

    public ia(Context context) {
        this.dq = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(JSONObject jSONObject, JSONObject jSONObject2, com.bytedance.sdk.openadsdk.core.ugeno.ia.mn mnVar) {
        Context context = this.dq;
        ajp ajpVar = new ajp(context);
        dmm dmmVar = new dmm();
        dmmVar.f14433a = context;
        ajpVar.f10328a = dmmVar;
        ajpVar.f10334g = dmmVar.f14434b;
        dlv n = ajpVar.n(jSONObject);
        this.f3579d = n;
        if (n != null) {
            ajpVar.s(this);
            ajpVar.r(jSONObject2);
        }
        if (mnVar == null) {
            return;
        }
        dlv dlvVar = this.f3579d;
        if (dlvVar == null) {
            mnVar.dq(-1, "UGenWidget is null");
        } else {
            mnVar.dq(dlvVar);
        }
    }

    public void dq(s.dq dqVar) {
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
                this.ox.s(null);
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
            le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.ia.1
                @Override // java.lang.Runnable
                public void run() {
                    ia.this.d(jSONObject, jSONObject2, mnVar);
                }
            });
        }
    }
}
