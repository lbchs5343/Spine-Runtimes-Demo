package com.bytedance.sdk.openadsdk.core.component.reward.view.ugen;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.d.d;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.gh;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.ugeno.ia.s;
import com.bytedance.sdk.openadsdk.core.ugeno.mn.dq;
import g.abn;
import g.ajp;
import g.blw;
import g.cyx;
import g.dlv;
import g.dvh;
import g.eho;
import g.fzc;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class UgenBanner extends FrameLayout {

    /* renamed from: d, reason: collision with root package name */
    private View f2678d;
    private ajp dq;
    private boolean ox;
    private final AtomicBoolean p;

    public UgenBanner(Context context) {
        super(context);
        this.p = new AtomicBoolean(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View dq(JSONObject jSONObject, JSONObject jSONObject2, cyx cyxVar) {
        ajp ajpVar = new ajp(getContext());
        this.dq = ajpVar;
        dlv n = ajpVar.n(jSONObject);
        this.dq.s(cyxVar);
        this.dq.r(jSONObject2);
        if (n == null) {
            return null;
        }
        View kk = n.kk();
        if (kk != null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(n.ir(), n.u());
            layoutParams.leftMargin = ce.ox(getContext(), 16.0f);
            layoutParams.rightMargin = ce.ox(getContext(), 16.0f);
            kk.setLayoutParams(layoutParams);
        }
        return kk;
    }

    public void d() {
        View view = this.f2678d;
        if (view == null || this.ox) {
            return;
        }
        addView(view);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f2678d, "translationY", -400.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        ofFloat.setDuration(600L);
        ofFloat.start();
    }

    public void dq() {
        this.ox = true;
        View view = this.f2678d;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public void dq(final j jVar, final d dVar) {
        dq ig = gh.ig(jVar);
        if (ig == null || jVar.gm() == null || TextUtils.isEmpty(jVar.gm().ox()) || jVar.wq() == null || TextUtils.isEmpty(jVar.wq().dq()) || this.p.getAndSet(true)) {
            return;
        }
        s.dq(ig, new s.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.view.ugen.UgenBanner.1
            @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.s.dq
            public void dq(JSONObject jSONObject) {
                if (jSONObject == null) {
                    return;
                }
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("icon", jVar.wq().dq());
                    jSONObject2.put("app_name", jVar.gm().ox());
                    jSONObject2.put(abn.EXTRA_TITLE, jVar.lk());
                    jSONObject2.put("button_text", TextUtils.isEmpty(jVar.tu()) ? "立即下载" : jVar.tu());
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
                UgenBanner ugenBanner = UgenBanner.this;
                ugenBanner.f2678d = ugenBanner.dq(jSONObject, jSONObject2, new cyx() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.view.ugen.UgenBanner.1.1
                    @Override // g.cyx
                    public void dq(dlv dlvVar, String str, blw blwVar) {
                    }

                    @Override // g.cyx
                    public void dq(fzc fzcVar, dvh dvhVar, eho ehoVar) {
                        JSONObject jSONObject3 = fzcVar.f17691d;
                        if (jSONObject3 != null && "banner_click".equals(jSONObject3.optString("type"))) {
                            UgenBanner.this.f2678d.setTag(2114387597, Boolean.TRUE);
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            dVar.dq(UgenBanner.this.f2678d, null);
                        }
                    }
                });
            }
        });
        postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.view.ugen.UgenBanner.2
            @Override // java.lang.Runnable
            public void run() {
                UgenBanner.this.d();
            }
        }, 3000L);
    }
}
