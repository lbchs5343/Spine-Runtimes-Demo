package com.bytedance.sdk.openadsdk.core.widget;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.widget.ia;
import g.dlv;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class kk extends AlertDialog {

    /* renamed from: d, reason: collision with root package name */
    private JSONObject f3700d;
    private JSONObject dq;
    private boolean ia;
    private com.bytedance.sdk.openadsdk.core.ugeno.dq iw;
    private com.bytedance.sdk.openadsdk.core.ugeno.ia.mn mn;
    private Context ox;
    private ia.dq p;
    private String s;

    public kk(String str, Context context, JSONObject jSONObject, JSONObject jSONObject2, com.bytedance.sdk.openadsdk.core.ugeno.ia.mn mnVar, j jVar) {
        super(context, r.mn(context, "tt_dialog_full"));
        this.mn = mnVar;
        this.ox = context;
        this.dq = jSONObject;
        this.s = str;
        this.f3700d = jSONObject2;
        this.iw = new com.bytedance.sdk.openadsdk.core.ugeno.dq(context, jVar);
    }

    private void d() {
        if (this.dq == null || this.f3700d == null || this.iw == null) {
            return;
        }
        this.ia = false;
        final FrameLayout frameLayout = new FrameLayout(this.ox);
        this.iw.dq(this.dq, this.f3700d, new com.bytedance.sdk.openadsdk.core.ugeno.ia.mn() { // from class: com.bytedance.sdk.openadsdk.core.widget.kk.1
            @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.mn
            public void dq(int i, String str) {
                kk.this.ia = true;
                if (kk.this.mn != null) {
                    FrameLayout frameLayout2 = frameLayout;
                    if (frameLayout2 != null) {
                        frameLayout2.removeAllViews();
                    }
                    kk.this.mn.dq(i, str);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.mn
            public void dq(dlv dlvVar) {
                kk.this.ia = false;
                if (kk.this.mn != null) {
                    kk.this.mn.dq(null);
                }
                frameLayout.addView(dlvVar.kk(), new FrameLayout.LayoutParams(dlvVar.ir(), dlvVar.u()));
                kk.this.setContentView(frameLayout);
            }
        });
    }

    public String dq() {
        return this.s;
    }

    public void dq(com.bytedance.sdk.openadsdk.core.ugeno.ia.mn mnVar) {
        this.mn = mnVar;
    }

    public void dq(ia.dq dqVar) {
        this.p = dqVar;
        com.bytedance.sdk.openadsdk.core.ugeno.dq dqVar2 = this.iw;
        if (dqVar2 != null) {
            dqVar2.dq(dqVar);
        }
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        ia.dq dqVar = this.p;
        if (dqVar != null) {
            dqVar.ox(this);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        d();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        if (this.ia) {
            hide();
            dismiss();
        }
    }
}
