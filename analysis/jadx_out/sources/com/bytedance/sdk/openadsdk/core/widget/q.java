package com.bytedance.sdk.openadsdk.core.widget;

import android.app.Activity;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.widget.s;
import com.bytedance.sdk.openadsdk.core.wp;
import g.dlv;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class q extends s {
    private boolean ia;
    private com.bytedance.sdk.openadsdk.core.ugeno.ia iw;
    private volatile boolean mn;
    Window ox;
    private com.bytedance.sdk.openadsdk.core.ugeno.ia.mn p;
    private JSONObject s;

    public q(Activity activity, JSONObject jSONObject, com.bytedance.sdk.openadsdk.core.ugeno.ia.mn mnVar) {
        super(activity);
        this.ox = activity == null ? null : activity.getWindow();
        this.s = jSONObject;
        this.p = mnVar;
        this.iw = new com.bytedance.sdk.openadsdk.core.ugeno.ia(activity);
    }

    private void iw() {
        JSONObject jSONObject = this.s;
        if (jSONObject == null || this.p == null) {
            return;
        }
        JSONObject d2 = com.bytedance.sdk.openadsdk.core.ugeno.kk.d(this.s.remove("ugen_md5").toString(), jSONObject.remove("ugen_url").toString());
        if (d2 == null) {
            this.p.dq(11, "uegnTemplate is empty");
            this.mn = true;
        } else {
            final FrameLayout frameLayout = new FrameLayout(this.dq);
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            this.iw.dq(d2, this.s, new com.bytedance.sdk.openadsdk.core.ugeno.ia.mn() { // from class: com.bytedance.sdk.openadsdk.core.widget.q.1
                @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.mn
                public void dq(int i, String str) {
                    q.this.mn = true;
                    if (q.this.p != null) {
                        FrameLayout frameLayout2 = frameLayout;
                        if (frameLayout2 != null) {
                            frameLayout2.removeAllViews();
                        }
                        q.this.p.dq(i, str);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.mn
                public void dq(dlv dlvVar) {
                    q.this.mn = false;
                    if (q.this.p != null) {
                        q.this.p.dq(null);
                    }
                    frameLayout.addView(dlvVar.kk(), new FrameLayout.LayoutParams(dlvVar.ir(), dlvVar.u()));
                    q.this.setContentView(frameLayout);
                }
            });
        }
    }

    private void mn() {
        JSONObject jSONObject = this.s;
        if (jSONObject == null) {
            return;
        }
        dq(jSONObject.optString("app_name"));
        s(this.s.optString("app_version"));
        iw(this.s.optString("reg_number"));
        d(this.s.optString("icon_url"));
        mn(this.s.optString("developer_name"));
        dq(this.s.optInt("score"));
        dq(this.s.optJSONArray("creative_tags"));
        p(this.s.optString("description"));
    }

    private void s() {
        if (this.ox != null) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(-1);
            this.ox.setBackgroundDrawable(gradientDrawable);
            WindowManager.LayoutParams attributes = this.ox.getAttributes();
            attributes.alpha = 1.0f;
            this.ox.setAttributes(attributes);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.s
    public void d() {
    }

    public void d(s.dq dqVar) {
        super.dq(dqVar);
        com.bytedance.sdk.openadsdk.core.ugeno.ia iaVar = this.iw;
        if (iaVar != null) {
            iaVar.dq(dqVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.s
    public void dq() {
        if (this.dq == null) {
            this.dq = wp.getContext();
        }
        if (this.dq.getResources().getConfiguration().orientation == 1) {
            s();
            iw();
        } else {
            this.ia = true;
            super.dq();
            super.d();
            mn();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.s, android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.s
    public void ox() {
        if (this.ia) {
            super.ox();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.s, android.app.Dialog
    public void show() {
        super.show();
        if (this.mn) {
            hide();
            dismiss();
        }
    }
}
