package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView;
import com.bytedance.sdk.component.utils.r;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class gh implements mn<WriggleGuideAnimationView> {

    /* renamed from: d, reason: collision with root package name */
    private Context f1743d;
    private WriggleGuideAnimationView dq;
    private com.bytedance.sdk.component.adexpress.dynamic.ox.o iw;
    private boolean mn;
    private DynamicBaseWidget ox;
    private com.bytedance.sdk.component.adexpress.dynamic.ox.mn p;
    private String s;

    public gh(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ox.mn mnVar, String str, com.bytedance.sdk.component.adexpress.dynamic.ox.o oVar, boolean z) {
        this.f1743d = context;
        this.ox = dynamicBaseWidget;
        this.p = mnVar;
        this.s = str;
        this.iw = oVar;
        this.mn = z;
        s();
    }

    private void s() {
        int gx = this.p.gx();
        final com.bytedance.sdk.component.adexpress.dynamic.s.dq dynamicClickListener = this.ox.getDynamicClickListener();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("convertActionType", 2);
            dynamicClickListener.dq(jSONObject);
        } catch (Throwable unused) {
        }
        if ("18".equals(this.s)) {
            Context context = this.f1743d;
            WriggleGuideAnimationView wriggleGuideAnimationView = new WriggleGuideAnimationView(context, com.bytedance.sdk.component.adexpress.ox.dq.kk(context), this.iw, this.mn);
            this.dq = wriggleGuideAnimationView;
            if (wriggleGuideAnimationView.getWriggleLayout() != null) {
                this.dq.getWriggleLayout().setOnClickListener((View.OnClickListener) dynamicClickListener);
            }
            if (this.dq.getTopTextView() != null) {
                if (TextUtils.isEmpty(this.p.ij())) {
                    this.dq.getTopTextView().setText(r.d(this.f1743d, "tt_splash_wriggle_top_text_style_17"));
                } else {
                    this.dq.getTopTextView().setText(this.p.ij());
                }
            }
        } else {
            Context context2 = this.f1743d;
            this.dq = new WriggleGuideAnimationView(context2, com.bytedance.sdk.component.adexpress.ox.dq.kk(context2), this.iw, this.mn);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 81;
        this.dq.setTranslationY(-((int) com.bytedance.sdk.component.adexpress.p.mn.dq(this.f1743d, gx)));
        this.dq.setLayoutParams(layoutParams);
        this.dq.setShakeText(this.p.yy());
        this.dq.setClipChildren(false);
        final View wriggleProgressIv = this.dq.getWriggleProgressIv();
        this.dq.setOnShakeViewListener(new WriggleGuideAnimationView.dq() { // from class: com.bytedance.sdk.component.adexpress.dynamic.interact.gh.1
            @Override // com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView.dq
            public void dq() {
                if (wriggleProgressIv != null) {
                    if (gh.this.dq != null) {
                        gh.this.dq.setOnClickListener((View.OnClickListener) dynamicClickListener);
                        gh.this.dq.performClick();
                    }
                    if (gh.this.p == null || !gh.this.p.vw()) {
                        return;
                    }
                    gh.this.dq.setOnClickListener(null);
                }
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
    public WriggleGuideAnimationView ox() {
        return this.dq;
    }
}
