package g;

import android.view.View;
import android.view.ViewTreeObserver;

/* loaded from: classes.dex */
public final class azx implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final Runnable f11136a;

    /* renamed from: b, reason: collision with root package name */
    public final View f11137b;

    /* renamed from: c, reason: collision with root package name */
    public ViewTreeObserver f11138c;

    public azx(View view, Runnable runnable) {
        this.f11137b = view;
        this.f11138c = view.getViewTreeObserver();
        this.f11136a = runnable;
    }

    public static void d(View view, Runnable runnable) {
        if (view == null) {
            throw new NullPointerException("view == null");
        }
        azx azxVar = new azx(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(azxVar);
        view.addOnAttachStateChangeListener(azxVar);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        boolean isAlive = this.f11138c.isAlive();
        View view = this.f11137b;
        if (isAlive) {
            this.f11138c.removeOnPreDrawListener(this);
        } else {
            view.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        view.removeOnAttachStateChangeListener(this);
        this.f11136a.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f11138c = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        boolean isAlive = this.f11138c.isAlive();
        View view2 = this.f11137b;
        if (isAlive) {
            this.f11138c.removeOnPreDrawListener(this);
        } else {
            view2.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        view2.removeOnAttachStateChangeListener(this);
    }
}
