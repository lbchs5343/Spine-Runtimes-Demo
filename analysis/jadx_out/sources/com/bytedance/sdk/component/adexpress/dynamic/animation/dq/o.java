package com.bytedance.sdk.component.adexpress.dynamic.animation.dq;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class o extends p {
    private float iw;
    private dq p;
    private float s;

    public class dq {

        /* renamed from: d, reason: collision with root package name */
        private View f1682d;

        public dq(View view) {
            this.f1682d = view;
        }

        public void dq(int i) {
            if (!"top".equals(o.this.f1683d.dq())) {
                ViewGroup.LayoutParams layoutParams = this.f1682d.getLayoutParams();
                layoutParams.height = i;
                this.f1682d.setLayoutParams(layoutParams);
                this.f1682d.requestLayout();
                return;
            }
            if (o.this.ox instanceof ViewGroup) {
                for (int i2 = 0; i2 < ((ViewGroup) o.this.ox).getChildCount(); i2++) {
                    ((ViewGroup) o.this.ox).getChildAt(i2).setTranslationY(i - o.this.s);
                }
            }
            o oVar = o.this;
            oVar.ox.setTranslationY(oVar.s - i);
        }
    }

    public o(View view, com.bytedance.sdk.component.adexpress.dynamic.ox.dq dqVar) {
        super(view, dqVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.dq.p
    public List<ObjectAnimator> dq() {
        int i;
        String str;
        View view = this.ox;
        if ((view instanceof ImageView) && (view.getParent() instanceof DynamicBaseWidget)) {
            this.ox = (View) this.ox.getParent();
        }
        this.ox.setAlpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ox, "alpha", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f).setDuration((int) (this.f1683d.o() * 1000.0d));
        this.p = new dq(this.ox);
        final int i2 = this.ox.getLayoutParams().height;
        this.s = i2;
        this.iw = this.ox.getLayoutParams().width;
        if ("left".equals(this.f1683d.dq()) || "right".equals(this.f1683d.dq())) {
            i = (int) this.iw;
            str = MediaFormat.KEY_WIDTH;
        } else {
            str = MediaFormat.KEY_HEIGHT;
            i = i2;
        }
        ObjectAnimator duration2 = ObjectAnimator.ofInt(this.p, str, 0, i).setDuration((int) (this.f1683d.o() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(dq(duration));
        arrayList.add(dq(duration2));
        ((ObjectAnimator) arrayList.get(0)).addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.animation.dq.o.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                o.this.p.dq(i2);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator, boolean z) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator, boolean z) {
            }
        });
        return arrayList;
    }
}
