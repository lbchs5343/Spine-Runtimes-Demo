package g;

import android.view.View;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class elx {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f15782a;

    public elx(View view) {
        this.f15782a = new WeakReference(view);
    }

    public final void b(gig gigVar) {
        View view = (View) this.f15782a.get();
        if (view != null) {
            if (gigVar != null) {
                view.animate().setListener(new gno(gigVar, view, 1));
            } else {
                view.animate().setListener(null);
            }
        }
    }

    public final void c(float f2) {
        View view = (View) this.f15782a.get();
        if (view != null) {
            view.animate().translationY(f2);
        }
    }

    public final void d(float f2) {
        View view = (View) this.f15782a.get();
        if (view != null) {
            view.animate().alpha(f2);
        }
    }

    public final void e() {
        View view = (View) this.f15782a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public final void f(long j) {
        View view = (View) this.f15782a.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
    }
}
