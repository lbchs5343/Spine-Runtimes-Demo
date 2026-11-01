package com.google.android.material.behavior;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityManager;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import g.bwh;
import g.cod;
import g.dip;
import g.dvd;
import g.egh;
import g.eyt;
import g.gtk;
import g.tn;
import java.util.Iterator;
import java.util.LinkedHashSet;

@Deprecated
/* loaded from: classes3.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends dip {

    /* renamed from: a, reason: collision with root package name */
    public dvd f8997a;

    /* renamed from: b, reason: collision with root package name */
    public ViewPropertyAnimator f8998b;
    public TimeInterpolator p;
    public TimeInterpolator q;
    public int u;
    public int w;
    public AccessibilityManager x;
    public final LinkedHashSet r = new LinkedHashSet();
    public int s = 0;
    public final boolean t = true;
    public int v = 2;

    public HideBottomViewOnScrollBehavior() {
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
    }

    @Override // g.dip
    public final void g(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
        AccessibilityManager accessibilityManager;
        if (i <= 0) {
            if (i < 0) {
                y(view);
                return;
            }
            return;
        }
        if (this.v == 1) {
            return;
        }
        if (this.t && (accessibilityManager = this.x) != null && accessibilityManager.isTouchExplorationEnabled()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f8998b;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        this.v = 1;
        Iterator it = this.r.iterator();
        if (it.hasNext()) {
            throw tn.c(it);
        }
        this.f8998b = view.animate().translationY(this.s).setInterpolator(this.q).setDuration(this.w).setListener(new cod(3, this));
    }

    @Override // g.dip
    public boolean h(View view, int i, int i2) {
        return i == 2;
    }

    @Override // g.dip
    public boolean o(CoordinatorLayout coordinatorLayout, View view, int i) {
        this.s = view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).bottomMargin;
        this.u = egh.bf(view.getContext(), R.attr.motionDurationLong2, 225);
        this.w = egh.bf(view.getContext(), R.attr.motionDurationMedium4, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_PLAY_SPEED);
        this.p = egh.r(view.getContext(), R.attr.motionEasingEmphasizedInterpolator, gtk.f18726a);
        this.q = egh.r(view.getContext(), R.attr.motionEasingEmphasizedInterpolator, gtk.f18729d);
        if (this.x == null) {
            this.x = (AccessibilityManager) eyt.br(view.getContext(), AccessibilityManager.class);
        }
        AccessibilityManager accessibilityManager = this.x;
        if (accessibilityManager == null || this.f8997a != null) {
            return false;
        }
        dvd dvdVar = new dvd(this, view, 0);
        this.f8997a = dvdVar;
        accessibilityManager.addTouchExplorationStateChangeListener(dvdVar);
        view.addOnAttachStateChangeListener(new bwh(4, this));
        return false;
    }

    public final void y(View view) {
        if (this.v == 2) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f8998b;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        this.v = 2;
        Iterator it = this.r.iterator();
        if (it.hasNext()) {
            throw tn.c(it);
        }
        this.f8998b = view.animate().translationY(0).setInterpolator(this.p).setDuration(this.u).setListener(new cod(3, this));
    }
}
