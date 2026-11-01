package com.bytedance.sdk.component.adexpress.dynamic.animation.dq;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public abstract class p implements com.bytedance.sdk.component.adexpress.dynamic.dynamicview.s {

    /* renamed from: d, reason: collision with root package name */
    com.bytedance.sdk.component.adexpress.dynamic.ox.dq f1683d;
    public View ox;
    private Set<ScheduledFuture<?>> p = new HashSet();
    public List<ObjectAnimator> dq = dq();

    public class dq implements Runnable {

        /* renamed from: d, reason: collision with root package name */
        ScheduledFuture<?> f1686d;
        ObjectAnimator dq;

        public dq(ObjectAnimator objectAnimator) {
            this.dq = objectAnimator;
        }

        public void dq(ScheduledFuture<?> scheduledFuture) {
            this.f1686d = scheduledFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox() != null) {
                com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox().d().post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.animation.dq.p.dq.1
                    @Override // java.lang.Runnable
                    public void run() {
                        dq.this.dq.resume();
                    }
                });
                if (this.f1686d != null) {
                    p.this.p.remove(this.f1686d);
                }
            }
        }
    }

    public p(View view, com.bytedance.sdk.component.adexpress.dynamic.ox.dq dqVar) {
        this.ox = view;
        this.f1683d = dqVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.s
    public void d() {
        List<ObjectAnimator> list = this.dq;
        if (list == null) {
            return;
        }
        for (ObjectAnimator objectAnimator : list) {
            objectAnimator.cancel();
            objectAnimator.removeAllUpdateListeners();
        }
        Iterator<ScheduledFuture<?>> it = this.p.iterator();
        while (it.hasNext()) {
            it.next().cancel(true);
        }
    }

    public ObjectAnimator dq(final ObjectAnimator objectAnimator) {
        objectAnimator.setStartDelay((long) (this.f1683d.q() * 1000.0d));
        if (this.f1683d.jy() > 0) {
            objectAnimator.setRepeatCount(this.f1683d.jy() - 1);
        } else {
            objectAnimator.setRepeatCount(-1);
        }
        if (!"normal".equals(this.f1683d.f())) {
            if ("alternate".equals(this.f1683d.f()) || "alternate-reverse".equals(this.f1683d.f())) {
                objectAnimator.setRepeatMode(2);
            } else {
                objectAnimator.setRepeatMode(1);
            }
        }
        if ("ease-in-out".equals(this.f1683d.mp())) {
            objectAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
        } else if ("ease-in".equals(this.f1683d.f())) {
            objectAnimator.setInterpolator(new AccelerateInterpolator());
        } else if ("ease-out".equals(this.f1683d.f())) {
            objectAnimator.setInterpolator(new DecelerateInterpolator());
        } else {
            objectAnimator.setInterpolator(new LinearInterpolator());
        }
        objectAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.animation.dq.p.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (valueAnimator.getCurrentPlayTime() > 0) {
                    p.this.ox.setVisibility(0);
                    if (p.this.ox.getParent() instanceof DynamicBaseWidgetImp) {
                        ((View) p.this.ox.getParent()).setVisibility(0);
                    }
                    objectAnimator.removeAllUpdateListeners();
                }
            }
        });
        return objectAnimator;
    }

    public abstract List<ObjectAnimator> dq();

    public void ox() {
        List<ObjectAnimator> list = this.dq;
        if (list == null) {
            return;
        }
        for (final ObjectAnimator objectAnimator : list) {
            objectAnimator.start();
            if (this.f1683d.fw() > 0.0d) {
                objectAnimator.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.animation.dq.p.1
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                        objectAnimator.pause();
                        dq dqVar = p.this.new dq(objectAnimator);
                        ScheduledFuture<?> dq2 = com.bytedance.sdk.component.adexpress.p.p.dq(dqVar, (long) (p.this.f1683d.fw() * 1000.0d), TimeUnit.MILLISECONDS);
                        dqVar.dq(dq2);
                        p.this.p.add(dq2);
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                    }
                });
            }
        }
    }
}
