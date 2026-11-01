package com.bytedance.sdk.openadsdk.core.component.reward.ox;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.no.dq.d;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.xi;
import com.bytedance.sdk.openadsdk.core.ugeno.ia.s;
import g.ajp;
import g.blw;
import g.cyx;
import g.dlv;
import g.dvh;
import g.eho;
import g.fzc;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public abstract class d {

    /* renamed from: f, reason: collision with root package name */
    protected Map<String, Object> f2625f;
    protected Activity ia;
    protected String ig;
    protected String jy;
    protected xi kk;
    protected j mn;
    protected dq mp;
    protected String no;
    protected ajp o;
    protected AtomicBoolean q;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        private int f2629d;
        private boolean dq;
        private String ox;
        private Dialog p;

        public dq(boolean z, int i, String str) {
            this(z, i, str, null);
        }

        public dq(boolean z, int i, String str, Dialog dialog) {
            this.dq = z;
            this.f2629d = i;
            this.ox = str;
            this.p = dialog;
        }

        public String d() {
            return this.ox;
        }

        public int dq() {
            return this.f2629d;
        }

        public boolean ox() {
            return this.dq;
        }

        public boolean p() {
            Dialog dialog = this.p;
            if (dialog == null) {
                return false;
            }
            return dialog.isShowing();
        }

        public void s() {
            Dialog dialog = this.p;
            if (dialog != null) {
                dialog.dismiss();
            }
        }
    }

    public d(Activity activity, j jVar) {
        this.mp = new dq(false, 0, "");
        this.q = new AtomicBoolean(false);
        this.ia = activity;
        this.mn = jVar;
    }

    public d(Activity activity, j jVar, xi xiVar) {
        this(activity, jVar);
        this.kk = xiVar;
    }

    public dq d(o oVar) {
        return new dq(false, 0, "");
    }

    public void d(String str) {
        this.jy = str;
    }

    public boolean d() {
        return false;
    }

    public View dq(JSONObject jSONObject, JSONObject jSONObject2, cyx cyxVar) {
        ajp ajpVar = new ajp(this.ia);
        this.o = ajpVar;
        dlv n = ajpVar.n(jSONObject);
        this.o.s(cyxVar);
        this.o.r(jSONObject2);
        if (n == null) {
            return null;
        }
        return n.kk();
    }

    public dq dq(o oVar) {
        return new dq(false, 0, "");
    }

    public abstract String dq();

    public void dq(Dialog dialog, View view, float f2) {
        if (dialog == null || view == null) {
            return;
        }
        if (this.mn.ho() == 1) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.y = ce.ox(this.ia, -20.0f);
            dialog.getWindow().setAttributes(attributes);
        }
        if (this.mn.ho() == 2) {
            view.setScaleX(f2);
            view.setScaleY(f2);
            view.setPivotY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            view.measure(0, 0);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, view.getMeasuredHeight());
            layoutParams.leftMargin = (int) ((1.0f - f2) * view.getMeasuredWidth());
            layoutParams.topMargin = (int) Math.max(((ce.s((Context) this.ia) - (view.getMeasuredHeight() * f2)) / 2.0f) - ce.no(this.ia), ce.no(this.ia));
            view.setLayoutParams(layoutParams);
        }
    }

    public void dq(com.bytedance.sdk.openadsdk.core.widget.mn mnVar) {
        mnVar.getWindow().setBackgroundDrawable(new ColorDrawable(0));
    }

    public void dq(final com.bytedance.sdk.openadsdk.core.widget.mn mnVar, final ViewGroup viewGroup, final o oVar, final JSONObject jSONObject) {
        JSONObject jSONObject2;
        try {
            jSONObject2 = new JSONObject(kk());
        } catch (JSONException unused) {
            jSONObject2 = new JSONObject();
        }
        final View dq2 = dq(jSONObject, jSONObject2, new cyx() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.ox.d.3
            @Override // g.cyx
            public void dq(dlv dlvVar, String str, blw blwVar) {
            }

            @Override // g.cyx
            public void dq(fzc fzcVar, dvh dvhVar, eho ehoVar) {
                j jVar;
                JSONObject jSONObject3 = fzcVar.f17691d;
                if (jSONObject3 == null) {
                    return;
                }
                String optString = jSONObject3.optString("type");
                JSONObject optJSONObject = jSONObject.optJSONObject("event_template");
                boolean optBoolean = jSONObject3.optBoolean("uchain", false);
                if (optJSONObject != null && optBoolean && (jVar = d.this.mn) != null && jVar.ju()) {
                    mnVar.dismiss();
                    c.kx();
                    com.bytedance.sdk.component.no.ox.d.INSTANCE.dq(optJSONObject);
                    HashMap hashMap = new HashMap();
                    hashMap.put("reward_dialog_callback", oVar);
                    new d.dq(optString).dq(d.this.mn.ve()).dq(hashMap).dq().dq();
                    return;
                }
                optString.getClass();
                if (!optString.equals("exit_watch")) {
                    if (optString.equals("continue_watch")) {
                        mnVar.dismiss();
                        d.this.p(oVar);
                        return;
                    }
                    return;
                }
                mnVar.dismiss();
                o oVar2 = oVar;
                if (oVar2 != null) {
                    oVar2.d();
                }
            }
        });
        if (dq2 == null) {
            return;
        }
        this.ia.getWindow().getDecorView().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.ox.d.4
            @Override // java.lang.Runnable
            public void run() {
                viewGroup.addView(dq2);
                d dVar = d.this;
                dVar.dq(mnVar, dq2, dVar.ia());
                mnVar.dq(viewGroup);
                mnVar.show();
            }
        });
    }

    public void dq(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        Map<String, Object> map2 = this.f2625f;
        if (map2 == null) {
            this.f2625f = map;
        } else {
            map2.putAll(map);
        }
    }

    public float ia() {
        return 0.55f;
    }

    public boolean iw() {
        return true;
    }

    public String kk() {
        return !TextUtils.isEmpty(this.jy) ? this.jy : dq();
    }

    public int mn() {
        return 0;
    }

    public dq ox(final o oVar) {
        if (!iw()) {
            return new dq(false, 0, "");
        }
        final com.bytedance.sdk.openadsdk.core.widget.mn mnVar = new com.bytedance.sdk.openadsdk.core.widget.mn(this.ia);
        dq(mnVar);
        final FrameLayout frameLayout = new FrameLayout(this.ia);
        mnVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.ox.d.1
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                ajp ajpVar = d.this.o;
                if (ajpVar != null) {
                    ajpVar.s(null);
                }
            }
        });
        com.bytedance.sdk.openadsdk.core.ugeno.mn.dq dqVar = new com.bytedance.sdk.openadsdk.core.ugeno.mn.dq();
        dqVar.dq(this.kk.p());
        dqVar.d(this.kk.s());
        dqVar.ox(this.kk.p());
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        com.bytedance.sdk.openadsdk.core.ugeno.ia.s.dq(dqVar, new s.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.ox.d.2
            @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.s.dq
            public void dq(JSONObject jSONObject) {
                if (d.this.q.get()) {
                    return;
                }
                if (jSONObject == null) {
                    d.this.mp = new dq(false, 0, "");
                    countDownLatch.countDown();
                } else {
                    d.this.dq(mnVar, frameLayout, oVar, jSONObject);
                    d dVar = d.this;
                    dVar.mp = new dq(true, dVar.mn(), d.this.kk.p(), mnVar);
                    countDownLatch.countDown();
                }
            }
        });
        try {
            countDownLatch.await(500L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
        this.q.set(true);
        return this.mp;
    }

    public void ox() {
    }

    public void ox(String str) {
        this.ig = str;
    }

    public void p() {
    }

    public void p(o oVar) {
        if (oVar != null) {
            oVar.dq();
        }
    }

    public void p(String str) {
        this.no = str;
    }

    public void s() {
    }
}
