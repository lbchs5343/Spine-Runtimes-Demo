package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class z implements View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x f226a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ o f227b;

    public z(o oVar, x xVar) {
        this.f227b = oVar;
        this.f226a = xVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        x xVar = this.f226a;
        Fragment fragment = xVar.f220e;
        xVar.n();
        y.f((ViewGroup) fragment.mView.getParent(), this.f227b.f203a).q();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
