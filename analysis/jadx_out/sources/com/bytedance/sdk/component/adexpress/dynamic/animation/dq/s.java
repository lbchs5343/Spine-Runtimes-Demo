package com.bytedance.sdk.component.adexpress.dynamic.animation.dq;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.BounceInterpolator;
import android.view.animation.LinearInterpolator;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class s extends p {
    public s(View view, com.bytedance.sdk.component.adexpress.dynamic.ox.dq dqVar) {
        super(view, dqVar);
    }

    private void d(List<ObjectAnimator> list) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ox, "translationY", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, -com.bytedance.sdk.component.adexpress.p.mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), this.f1683d.r())).setDuration((int) (this.f1683d.o() * 1000.0d));
        duration.setInterpolator(new BounceInterpolator());
        duration.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.animation.dq.s.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                s.this.ox.setTranslationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        list.add(dq(duration));
    }

    private void dq(List<ObjectAnimator> list) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ox, "translationY", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, -com.bytedance.sdk.component.adexpress.p.mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), this.f1683d.r())).setDuration(((int) (this.f1683d.o() * 1000.0d)) / 2);
        duration.setInterpolator(new LinearInterpolator());
        duration.setRepeatMode(2);
        com.bytedance.sdk.component.adexpress.dynamic.ox.dq dqVar = this.f1683d;
        dqVar.iw(dqVar.jy() * 2);
        list.add(dq(duration));
    }

    private void ox(List<ObjectAnimator> list) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ox, "translationY", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, -com.bytedance.sdk.component.adexpress.p.mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), this.f1683d.r())).setDuration((int) (this.f1683d.o() * 1000.0d));
        duration.setInterpolator(new BounceInterpolator());
        duration.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.animation.dq.s.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                s.this.ox.setTranslationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        list.add(dq(duration));
    }

    private void p(List<ObjectAnimator> list) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ox, "translationY", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, -com.bytedance.sdk.component.adexpress.p.mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), this.f1683d.r())).setDuration((int) (this.f1683d.o() * 1000.0d));
        duration.setInterpolator(new BounceInterpolator());
        list.add(dq(duration));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.dq.p
    public List<ObjectAnimator> dq() {
        char c2;
        ArrayList arrayList = new ArrayList();
        String i = this.f1683d.i();
        switch (i.hashCode()) {
            case 3029889:
                if (i.equals("both")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 3387192:
                if (i.equals(LiveConfigKey.NONE)) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 483313230:
                if (i.equals("forwards")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 1356771568:
                if (i.equals("backwards")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            dq(arrayList);
            return arrayList;
        }
        if (c2 == 1) {
            p(arrayList);
            return arrayList;
        }
        if (c2 != 2) {
            ox(arrayList);
            return arrayList;
        }
        d(arrayList);
        return arrayList;
    }
}
