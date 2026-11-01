package com.google.android.material.behavior;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityManager;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import g.awf;
import g.bwh;
import g.cod;
import g.dip;
import g.dvd;
import g.edy;
import g.egh;
import g.eu;
import g.eyt;
import g.gtk;
import g.tn;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes3.dex */
public class HideViewOnScrollBehavior<V extends View> extends dip {

    /* renamed from: a, reason: collision with root package name */
    public TimeInterpolator f8999a;

    /* renamed from: b, reason: collision with root package name */
    public ViewPropertyAnimator f9000b;
    public int q;
    public egh r;
    public int s;
    public AccessibilityManager u;
    public dvd w;
    public TimeInterpolator x;
    public final LinkedHashSet p = new LinkedHashSet();
    public int t = 0;
    public int v = 2;

    public HideViewOnScrollBehavior() {
    }

    public HideViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
    }

    @Override // g.dip
    public final void g(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
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
        AccessibilityManager accessibilityManager = this.u;
        if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
            ViewPropertyAnimator viewPropertyAnimator = this.f9000b;
            if (viewPropertyAnimator != null) {
                viewPropertyAnimator.cancel();
                view.clearAnimation();
            }
            this.v = 1;
            Iterator it = this.p.iterator();
            if (it.hasNext()) {
                throw tn.c(it);
            }
            this.f9000b = this.r.d(this.t, view).setInterpolator(this.f8999a).setDuration(this.s).setListener(new cod(4, this));
        }
    }

    @Override // g.dip
    public final boolean h(View view, int i, int i2) {
        return i == 2;
    }

    @Override // g.dip
    public final boolean o(CoordinatorLayout coordinatorLayout, View view, int i) {
        if (this.u == null) {
            this.u = (AccessibilityManager) eyt.br(view.getContext(), AccessibilityManager.class);
        }
        AccessibilityManager accessibilityManager = this.u;
        if (accessibilityManager != null && this.w == null) {
            dvd dvdVar = new dvd(this, view, 1);
            this.w = dvdVar;
            accessibilityManager.addTouchExplorationStateChangeListener(dvdVar);
            view.addOnAttachStateChangeListener(new bwh(5, this));
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i2 = ((eu) view.getLayoutParams()).n;
        if (i2 == 80 || i2 == 81) {
            z(1);
        } else {
            int absoluteGravity = Gravity.getAbsoluteGravity(i2, i);
            z((absoluteGravity == 3 || absoluteGravity == 19) ? 2 : 0);
        }
        this.t = this.r.c(view, marginLayoutParams);
        this.q = egh.bf(view.getContext(), R.attr.motionDurationLong2, 225);
        this.s = egh.bf(view.getContext(), R.attr.motionDurationMedium4, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_PLAY_SPEED);
        this.x = egh.r(view.getContext(), R.attr.motionEasingEmphasizedInterpolator, gtk.f18726a);
        this.f8999a = egh.r(view.getContext(), R.attr.motionEasingEmphasizedInterpolator, gtk.f18729d);
        return false;
    }

    public final void y(View view) {
        if (this.v == 2) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f9000b;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        this.v = 2;
        Iterator it = this.p.iterator();
        if (it.hasNext()) {
            throw tn.c(it);
        }
        this.r.getClass();
        this.f9000b = this.r.d(0, view).setInterpolator(this.x).setDuration(this.q).setListener(new cod(4, this));
    }

    public final void z(int i) {
        egh eghVar = this.r;
        if (eghVar == null || eghVar.b() != i) {
            if (i == 0) {
                this.r = new edy(2);
            } else if (i == 1) {
                this.r = new edy(0);
            } else {
                if (i != 2) {
                    throw new IllegalArgumentException(awf.b(i, "Invalid view edge position value: ", ". Must be 0, 1 or 2."));
                }
                this.r = new edy(1);
            }
        }
    }
}
