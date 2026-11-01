package com.bytedance.sdk.openadsdk.core.ugeno.kk;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.d.d;
import com.bytedance.sdk.openadsdk.core.ir.iw;
import com.bytedance.sdk.openadsdk.core.ir.k;
import com.bytedance.sdk.openadsdk.core.le;
import com.bytedance.sdk.openadsdk.core.le.d;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.o;
import com.bytedance.sdk.openadsdk.core.ugeno.mn;
import com.bytedance.sdk.openadsdk.core.ugeno.webview.PageWebView;
import g.ahr;
import g.ajp;
import g.blw;
import g.cyx;
import g.dlv;
import g.dmm;
import g.dvh;
import g.eho;
import g.fzc;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq implements cyx, ahr {

    /* renamed from: d, reason: collision with root package name */
    private ViewGroup f3600d;
    private Context dq;
    private o ia;
    private com.bytedance.sdk.openadsdk.core.ugeno.s.dq iw;
    private JSONObject kk;
    private d mn;
    private Map<String, Object> o;
    private com.bytedance.sdk.openadsdk.core.ugeno.mn.dq ox;
    private j p;
    private dlv s;

    public dq(Context context, ViewGroup viewGroup, com.bytedance.sdk.openadsdk.core.ugeno.mn.dq dqVar, j jVar) {
        this.dq = context;
        this.f3600d = viewGroup;
        this.ox = dqVar;
        this.p = jVar;
    }

    private void dq(fzc fzcVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        String optString = jSONObject.optString("type");
        if (TextUtils.isEmpty(optString)) {
            return;
        }
        optString.getClass();
        if (!optString.equals("clickEvent")) {
            if (optString.equals("openPolicy")) {
                iw.dq(this.dq, this.p);
            }
        } else {
            d dVar = this.mn;
            if (dVar != null) {
                dVar.dq(fzcVar.f17689b.kk(), this.ia);
            }
        }
    }

    public void d() {
        PageWebView.dq(this.kk);
    }

    public void dq() {
        com.bytedance.sdk.openadsdk.core.ugeno.mn.dq dqVar = this.ox;
        if (dqVar == null) {
            com.bytedance.sdk.openadsdk.core.ugeno.s.dq dqVar2 = this.iw;
            if (dqVar2 != null) {
                dqVar2.dq(-1);
                return;
            }
            return;
        }
        JSONObject dq = mn.dq().dq(dqVar.dq(), this.ox.d());
        if (dq == null) {
            com.bytedance.sdk.openadsdk.core.le.d.dq(this.ox, new d.InterfaceC0169d() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.kk.dq.1
                @Override // com.bytedance.sdk.openadsdk.core.le.d.InterfaceC0169d
                public void dq() {
                    if (dq.this.iw != null) {
                        dq.this.iw.dq(-1);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.le.d.InterfaceC0169d
                public void dq(JSONObject jSONObject) {
                    dq.this.dq(jSONObject);
                }
            });
        } else {
            dq(dq);
        }
    }

    public void dq(DownloadListener downloadListener) {
        PageWebView.dq(this.kk, downloadListener);
    }

    public void dq(com.bytedance.sdk.openadsdk.core.d.d dVar) {
        this.mn = dVar;
    }

    public void dq(com.bytedance.sdk.openadsdk.core.ugeno.s.dq dqVar) {
        this.iw = dqVar;
    }

    @Override // g.ahr
    public void dq(dlv dlvVar, MotionEvent motionEvent) {
        this.ia.ox(motionEvent.getDeviceId());
        this.ia.d(motionEvent.getToolType(0));
        this.ia.p(motionEvent.getSource());
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                this.ia.ox(motionEvent.getRawX());
                this.ia.p(motionEvent.getRawY());
                this.ia.d(System.currentTimeMillis());
                return;
            } else {
                if (actionMasked != 2) {
                    return;
                }
                this.ia.ox(motionEvent.getRawX());
                this.ia.p(motionEvent.getRawY());
                return;
            }
        }
        this.ia.s((int) motionEvent.getRawX());
        this.ia.iw((int) motionEvent.getRawY());
        this.ia.dq(motionEvent.getRawX());
        this.ia.d(motionEvent.getRawY());
        this.ia.dq(System.currentTimeMillis());
        this.ia.d(motionEvent.getToolType(0));
        this.ia.ox(motionEvent.getDeviceId());
        this.ia.p(motionEvent.getSource());
        this.ia.dq(true);
        k.dq(motionEvent);
    }

    @Override // g.cyx
    public void dq(dlv dlvVar, String str, blw blwVar) {
    }

    @Override // g.cyx
    public void dq(fzc fzcVar, dvh dvhVar, eho ehoVar) {
        if (fzcVar != null && fzcVar.f17690c == 1) {
            dq(fzcVar, fzcVar.f17691d);
        }
    }

    public void dq(Map<String, Object> map) {
        this.o = map;
    }

    public void dq(final JSONObject jSONObject) {
        final ajp ajpVar = new ajp(this.dq);
        final JSONObject ve = this.p.ve();
        this.kk = ve;
        dmm dmmVar = new dmm();
        dmmVar.f14433a = this.dq;
        HashMap hashMap = new HashMap();
        hashMap.put("key_reward_page", this.o);
        dmmVar.f14435c = hashMap;
        ajpVar.f10328a = dmmVar;
        ajpVar.f10334g = dmmVar.f14434b;
        ajpVar.s(this);
        le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.kk.dq.2
            @Override // java.lang.Runnable
            public void run() {
                dq.this.s = ajpVar.n(jSONObject);
                if (dq.this.s == null) {
                    if (dq.this.iw != null) {
                        dq.this.iw.dq(-1);
                    }
                } else {
                    ajpVar.r(ve);
                    dq.this.f3600d.addView(dq.this.s.kk(), new FrameLayout.LayoutParams(dq.this.s.ir(), dq.this.s.u()));
                    if (dq.this.iw != null) {
                        dq.this.iw.dq(dq.this.s.kk());
                    }
                }
            }
        });
    }
}
