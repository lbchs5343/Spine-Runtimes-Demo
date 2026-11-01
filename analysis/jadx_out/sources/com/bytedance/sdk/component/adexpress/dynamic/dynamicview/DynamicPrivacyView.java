package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.dynamic.ox.ia;
import com.bytedance.sdk.component.adexpress.dynamic.ox.mn;

/* loaded from: classes.dex */
public class DynamicPrivacyView extends DynamicBaseWidgetImp {

    /* renamed from: d, reason: collision with root package name */
    private TextView f1715d;
    private TextView dq;
    private TextView i;
    private LinearLayout k;
    private TextView le;
    private TextView r;

    public DynamicPrivacyView(Context context, DynamicRootView dynamicRootView, ia iaVar) {
        super(context, dynamicRootView, iaVar);
        this.dq = new TextView(this.no);
        this.f1715d = new TextView(this.no);
        this.r = new TextView(this.no);
        this.k = new LinearLayout(this.no);
        this.i = new TextView(this.no);
        this.le = new TextView(this.no);
        this.dq.setTag(9);
        this.f1715d.setTag(10);
        this.r.setTag(12);
        this.k.addView(this.r);
        this.k.addView(this.le);
        this.k.addView(this.f1715d);
        this.k.addView(this.i);
        this.k.addView(this.dq);
        addView(this.k, getWidgetLayoutParams());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp
    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(this.mn, this.ia);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.p
    public boolean ia() {
        this.r.setText("功能");
        this.f1715d.setText("权限");
        this.i.setText(" | ");
        this.le.setText(" | ");
        this.dq.setText("隐私");
        mn mnVar = this.ig;
        if (mnVar != null) {
            this.r.setTextColor(mnVar.mn());
            this.r.setTextSize(this.ig.s());
            this.f1715d.setTextColor(this.ig.mn());
            this.f1715d.setTextSize(this.ig.s());
            this.i.setTextColor(this.ig.mn());
            this.le.setTextColor(this.ig.mn());
            this.dq.setTextColor(this.ig.mn());
            this.dq.setTextSize(this.ig.s());
            return false;
        }
        this.r.setTextColor(-1);
        this.r.setTextSize(12.0f);
        this.f1715d.setTextColor(-1);
        this.f1715d.setTextSize(12.0f);
        this.i.setTextColor(-1);
        this.le.setTextColor(-1);
        this.dq.setTextColor(-1);
        this.dq.setTextSize(12.0f);
        return false;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget
    public boolean ox() {
        this.dq.setOnTouchListener((View.OnTouchListener) getDynamicClickListener());
        this.dq.setOnClickListener((View.OnClickListener) getDynamicClickListener());
        this.f1715d.setOnTouchListener((View.OnTouchListener) getDynamicClickListener());
        this.f1715d.setOnClickListener((View.OnClickListener) getDynamicClickListener());
        this.r.setOnTouchListener((View.OnTouchListener) getDynamicClickListener());
        this.r.setOnClickListener((View.OnClickListener) getDynamicClickListener());
        return true;
    }
}
