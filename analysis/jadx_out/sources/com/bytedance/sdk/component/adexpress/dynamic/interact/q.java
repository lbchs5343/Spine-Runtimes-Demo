package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.ShakeAnimationView;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class q implements jy, mn<ShakeAnimationView> {

    /* renamed from: d, reason: collision with root package name */
    private Context f1747d;
    private ShakeAnimationView dq;
    private int ia;
    private int iw;
    private JSONObject kk;
    private int mn;
    private boolean o;
    private DynamicBaseWidget ox;
    private com.bytedance.sdk.component.adexpress.dynamic.ox.mn p;
    private String s;

    public q(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ox.mn mnVar, String str, int i, int i2, int i3, JSONObject jSONObject, boolean z) {
        this.f1747d = context;
        this.ox = dynamicBaseWidget;
        this.p = mnVar;
        this.s = str;
        this.iw = i;
        this.mn = i2;
        this.ia = i3;
        this.kk = jSONObject;
        this.o = z;
        iw();
    }

    private void iw() {
        final com.bytedance.sdk.component.adexpress.dynamic.s.dq dynamicClickListener = this.ox.getDynamicClickListener();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("convertActionType", 1);
            dynamicClickListener.dq(jSONObject);
        } catch (Throwable unused) {
        }
        if ("16".equals(this.s)) {
            Context context = this.f1747d;
            ShakeAnimationView shakeAnimationView = new ShakeAnimationView(context, com.bytedance.sdk.component.adexpress.ox.dq.ia(context), this.iw, this.mn, this.ia, this.kk, this.o);
            this.dq = shakeAnimationView;
            if (shakeAnimationView.getShakeLayout() != null) {
                this.dq.getShakeLayout().setOnClickListener((View.OnClickListener) dynamicClickListener);
            }
        } else {
            Context context2 = this.f1747d;
            this.dq = new ShakeAnimationView(context2, com.bytedance.sdk.component.adexpress.ox.dq.mn(context2), this.iw, this.mn, this.ia, this.kk, this.o);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        this.dq.setGravity(17);
        layoutParams.gravity = 17;
        this.dq.setLayoutParams(layoutParams);
        this.dq.setTranslationY(com.bytedance.sdk.component.adexpress.p.mn.dq(this.f1747d, this.p.ws()));
        this.dq.setShakeText(this.p.yy());
        this.dq.setClipChildren(false);
        this.dq.setOnShakeViewListener(new ShakeAnimationView.dq() { // from class: com.bytedance.sdk.component.adexpress.dynamic.interact.q.1
            @Override // com.bytedance.sdk.component.adexpress.widget.ShakeAnimationView.dq
            public void dq(boolean z) {
                com.bytedance.sdk.component.adexpress.dynamic.s.dq dqVar = dynamicClickListener;
                if (dqVar != null) {
                    dqVar.dq(z, q.this);
                }
                q.this.dq.setOnClickListener((View.OnClickListener) dynamicClickListener);
                q.this.dq.performClick();
                if (q.this.p == null || !q.this.p.vw()) {
                    return;
                }
                q.this.dq.setOnClickListener(null);
            }
        });
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.mn
    public void d() {
        this.dq.clearAnimation();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.mn
    public void dq() {
        this.dq.dq();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.mn
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public ShakeAnimationView ox() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.jy
    public void s() {
        if (this.dq.getParent() != null) {
            ((ViewGroup) this.dq.getParent()).setVisibility(8);
        }
    }
}
