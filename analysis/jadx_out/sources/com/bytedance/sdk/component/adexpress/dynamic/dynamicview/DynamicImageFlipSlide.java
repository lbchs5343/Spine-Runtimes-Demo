package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.component.adexpress.d.no;
import com.bytedance.sdk.component.adexpress.dynamic.interact.jy;
import com.bytedance.sdk.component.adexpress.dynamic.ox.ia;
import com.bytedance.sdk.component.adexpress.widget.ImageFlipSlideGroup;
import org.json.JSONObject;

@SuppressLint({"ViewConstructor"})
/* loaded from: classes.dex */
public class DynamicImageFlipSlide extends DynamicImageView {

    /* renamed from: d, reason: collision with root package name */
    private final d f1710d;
    private final ImageFlipSlideGroup dq;

    public interface d {
        void dq(dq dqVar);
    }

    public interface dq {
        void dq();
    }

    public static class ox implements View.OnClickListener, View.OnTouchListener, com.bytedance.sdk.component.adexpress.dynamic.s.dq {

        /* renamed from: d, reason: collision with root package name */
        d f1711d;
        com.bytedance.sdk.component.adexpress.dynamic.s.dq dq;

        public ox(com.bytedance.sdk.component.adexpress.dynamic.s.dq dqVar, d dVar) {
            this.dq = dqVar;
            this.f1711d = dVar;
        }

        @Override // com.bytedance.sdk.component.adexpress.dynamic.s.dq
        public void d(View view) {
            com.bytedance.sdk.component.adexpress.dynamic.s.dq dqVar = this.dq;
            if (dqVar != null) {
                dqVar.d(view);
            }
        }

        @Override // com.bytedance.sdk.component.adexpress.dynamic.s.dq
        public void dq(View view) {
            com.bytedance.sdk.component.adexpress.dynamic.s.dq dqVar = this.dq;
            if (dqVar != null) {
                dqVar.dq(view);
            }
        }

        @Override // com.bytedance.sdk.component.adexpress.dynamic.s.dq
        public void dq(no noVar) {
            com.bytedance.sdk.component.adexpress.dynamic.s.dq dqVar = this.dq;
            if (dqVar != null) {
                dqVar.dq(noVar);
            }
        }

        @Override // com.bytedance.sdk.component.adexpress.dynamic.s.dq
        public void dq(JSONObject jSONObject) {
            com.bytedance.sdk.component.adexpress.dynamic.s.dq dqVar = this.dq;
            if (dqVar != null) {
                dqVar.dq(jSONObject);
            }
        }

        @Override // com.bytedance.sdk.component.adexpress.dynamic.s.dq
        public void dq(boolean z, jy jyVar) {
            com.bytedance.sdk.component.adexpress.dynamic.s.dq dqVar = this.dq;
            if (dqVar != null) {
                dqVar.dq(z, jyVar);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(final View view) {
            d dVar = this.f1711d;
            if (dVar != null) {
                dVar.dq(new dq() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicImageFlipSlide.ox.1
                    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicImageFlipSlide.dq
                    public void dq() {
                        com.bytedance.sdk.component.adexpress.dynamic.s.dq dqVar = ox.this.dq;
                        if (dqVar instanceof View.OnClickListener) {
                            ((View.OnClickListener) dqVar).onClick(view);
                        }
                    }
                });
                return;
            }
            com.bytedance.sdk.component.adexpress.dynamic.s.dq dqVar = this.dq;
            if (dqVar instanceof View.OnClickListener) {
                ((View.OnClickListener) dqVar).onClick(view);
            }
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            com.bytedance.sdk.component.adexpress.dynamic.s.dq dqVar = this.dq;
            if (dqVar instanceof View.OnTouchListener) {
                return ((View.OnTouchListener) dqVar).onTouch(view, motionEvent);
            }
            return false;
        }
    }

    public DynamicImageFlipSlide(Context context, DynamicRootView dynamicRootView, ia iaVar) {
        super(context, dynamicRootView, iaVar);
        this.f1710d = new d() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicImageFlipSlide.1
            @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicImageFlipSlide.d
            public void dq(dq dqVar) {
                if (DynamicImageFlipSlide.this.dq != null) {
                    DynamicImageFlipSlide.this.dq.dq(dqVar);
                }
            }
        };
        ImageFlipSlideGroup imageFlipSlideGroup = new ImageFlipSlideGroup(getContext(), TextUtils.equals(getDynamicLayoutBrickValue().bn(), "slide"));
        this.dq = imageFlipSlideGroup;
        addView(imageFlipSlideGroup, getWidgetLayoutParams());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget
    public com.bytedance.sdk.component.adexpress.dynamic.s.dq getDynamicClickListener() {
        com.bytedance.sdk.component.adexpress.dynamic.s.dq dynamicClickListener = this.q.getDynamicClickListener();
        return this.ig.jo() ? new ox(dynamicClickListener, this.f1710d) : dynamicClickListener;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicImageView, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.p
    public boolean ia() {
        super.ia();
        this.dq.dq(this.ig.no(), d(this.ig.no()));
        this.dq.d(this.ig.cc(), d(this.ig.cc()));
        this.dq.setFilterColors(this.ig.mc());
        this.dq.ox();
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicImageView, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.dq.dq();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicImageView, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.dq.d();
    }
}
