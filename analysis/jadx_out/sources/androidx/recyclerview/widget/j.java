package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import g.amk;
import g.fnz;

/* loaded from: classes.dex */
public final class j extends amk {

    /* renamed from: a, reason: collision with root package name */
    public final RecyclerView f293a;

    /* renamed from: b, reason: collision with root package name */
    public final t f294b;

    public j(RecyclerView recyclerView) {
        this.f293a = recyclerView;
        t tVar = this.f294b;
        if (tVar != null) {
            this.f294b = tVar;
        } else {
            this.f294b = new t(this);
        }
    }

    @Override // g.amk
    public final void c(View view, fnz fnzVar) {
        this.m.onInitializeAccessibilityNodeInfo(view, fnzVar.f17119b);
        RecyclerView recyclerView = this.f293a;
        if (recyclerView.hasPendingAdapterUpdates() || recyclerView.getLayoutManager() == null) {
            return;
        }
        b layoutManager = recyclerView.getLayoutManager();
        RecyclerView recyclerView2 = layoutManager.dw;
        layoutManager.v(recyclerView2.mRecycler, recyclerView2.mState, fnzVar);
    }

    @Override // g.amk
    public final void d(View view, AccessibilityEvent accessibilityEvent) {
        super.d(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || this.f293a.hasPendingAdapterUpdates()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().ce(accessibilityEvent);
        }
    }

    @Override // g.amk
    public final boolean e(View view, int i, Bundle bundle) {
        if (super.e(view, i, bundle)) {
            return true;
        }
        RecyclerView recyclerView = this.f293a;
        if (recyclerView.hasPendingAdapterUpdates() || recyclerView.getLayoutManager() == null) {
            return false;
        }
        return recyclerView.getLayoutManager().n(i, bundle);
    }
}
