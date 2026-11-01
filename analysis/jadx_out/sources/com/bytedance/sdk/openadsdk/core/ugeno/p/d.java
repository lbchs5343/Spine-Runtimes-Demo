package com.bytedance.sdk.openadsdk.core.ugeno.p;

import android.content.Context;
import android.os.Looper;
import android.view.MotionEvent;
import com.bytedance.sdk.openadsdk.core.ig.s;
import com.bytedance.sdk.openadsdk.core.le;
import com.bytedance.sdk.openadsdk.core.ugeno.ia.mn;
import g.ahr;
import g.ajp;
import g.blw;
import g.cyx;
import g.dlv;
import g.dvh;
import g.eho;
import g.fzc;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d implements cyx, ahr {

    /* renamed from: d, reason: collision with root package name */
    private s f3628d;
    private Context dq;
    private String iw;
    private int mn;
    private dlv ox;
    private dq p;
    private ahr s;

    public interface dq {
        void dq(fzc fzcVar);
    }

    public d(Context context, s sVar, String str, int i) {
        this.dq = context;
        this.f3628d = sVar;
        this.iw = str;
        this.mn = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(JSONObject jSONObject, JSONObject jSONObject2, mn mnVar) {
        ajp ajpVar = new ajp(this.dq);
        dlv n = ajpVar.n(jSONObject);
        this.ox = n;
        if (n == null) {
            s sVar = this.f3628d;
            if (sVar != null) {
                sVar.dq(-1, "ugeno render fail");
            }
            if (mnVar != null) {
                mnVar.dq(-1, "");
                return;
            }
            return;
        }
        ajpVar.f10332e = this;
        ajpVar.s(this);
        ajpVar.r(jSONObject2);
        this.f3628d.dq(0L);
        if (mnVar != null) {
            mnVar.dq(this.ox);
        }
    }

    public void dq(dq dqVar) {
        this.p = dqVar;
    }

    public void dq(ahr ahrVar) {
        this.s = ahrVar;
    }

    @Override // g.ahr
    public void dq(dlv dlvVar, MotionEvent motionEvent) {
        ahr ahrVar = this.s;
        if (ahrVar != null) {
            ahrVar.dq(dlvVar, motionEvent);
        }
    }

    @Override // g.cyx
    public void dq(dlv dlvVar, String str, blw blwVar) {
    }

    @Override // g.cyx
    public void dq(fzc fzcVar, dvh dvhVar, eho ehoVar) {
        dq dqVar;
        if (fzcVar == null || fzcVar.f17690c != 1 || (dqVar = this.p) == null) {
            return;
        }
        dqVar.dq(fzcVar);
    }

    public void dq(final JSONObject jSONObject, final JSONObject jSONObject2, final mn mnVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            d(jSONObject, jSONObject2, mnVar);
        } else {
            le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.p.d.1
                @Override // java.lang.Runnable
                public void run() {
                    d.this.d(jSONObject, jSONObject2, mnVar);
                }
            });
        }
    }
}
