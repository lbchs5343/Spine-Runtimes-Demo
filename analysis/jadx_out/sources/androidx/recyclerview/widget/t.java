package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import g.amk;
import g.evf;
import g.fnz;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class t extends amk {

    /* renamed from: a, reason: collision with root package name */
    public final j f321a;

    /* renamed from: b, reason: collision with root package name */
    public final WeakHashMap f322b = new WeakHashMap();

    public t(j jVar) {
        this.f321a = jVar;
    }

    @Override // g.amk
    public final void c(View view, fnz fnzVar) {
        AccessibilityNodeInfo accessibilityNodeInfo = fnzVar.f17119b;
        j jVar = this.f321a;
        RecyclerView recyclerView = jVar.f293a;
        RecyclerView recyclerView2 = jVar.f293a;
        boolean hasPendingAdapterUpdates = recyclerView.hasPendingAdapterUpdates();
        View.AccessibilityDelegate accessibilityDelegate = this.m;
        if (hasPendingAdapterUpdates || recyclerView2.getLayoutManager() == null) {
            accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            return;
        }
        recyclerView2.getLayoutManager().eu(view, fnzVar);
        amk amkVar = (amk) this.f322b.get(view);
        if (amkVar != null) {
            amkVar.c(view, fnzVar);
        } else {
            accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        }
    }

    @Override // g.amk
    public final void d(View view, AccessibilityEvent accessibilityEvent) {
        amk amkVar = (amk) this.f322b.get(view);
        if (amkVar != null) {
            amkVar.d(view, accessibilityEvent);
        } else {
            super.d(view, accessibilityEvent);
        }
    }

    @Override // g.amk
    public final boolean e(View view, int i, Bundle bundle) {
        j jVar = this.f321a;
        RecyclerView recyclerView = jVar.f293a;
        RecyclerView recyclerView2 = jVar.f293a;
        if (recyclerView.hasPendingAdapterUpdates() || recyclerView2.getLayoutManager() == null) {
            return super.e(view, i, bundle);
        }
        amk amkVar = (amk) this.f322b.get(view);
        if (amkVar != null) {
            if (amkVar.e(view, i, bundle)) {
                return true;
            }
        } else if (super.e(view, i, bundle)) {
            return true;
        }
        f fVar = recyclerView2.getLayoutManager().dw.mRecycler;
        return false;
    }

    @Override // g.amk
    public final void f(View view, int i) {
        amk amkVar = (amk) this.f322b.get(view);
        if (amkVar != null) {
            amkVar.f(view, i);
        } else {
            super.f(view, i);
        }
    }

    @Override // g.amk
    public final void g(View view, AccessibilityEvent accessibilityEvent) {
        amk amkVar = (amk) this.f322b.get(view);
        if (amkVar != null) {
            amkVar.g(view, accessibilityEvent);
        } else {
            super.g(view, accessibilityEvent);
        }
    }

    @Override // g.amk
    public final boolean h(View view, AccessibilityEvent accessibilityEvent) {
        amk amkVar = (amk) this.f322b.get(view);
        return amkVar != null ? amkVar.h(view, accessibilityEvent) : this.m.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // g.amk
    public final boolean i(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        amk amkVar = (amk) this.f322b.get(viewGroup);
        return amkVar != null ? amkVar.i(viewGroup, view, accessibilityEvent) : this.m.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    @Override // g.amk
    public final void j(View view, AccessibilityEvent accessibilityEvent) {
        amk amkVar = (amk) this.f322b.get(view);
        if (amkVar != null) {
            amkVar.j(view, accessibilityEvent);
        } else {
            super.j(view, accessibilityEvent);
        }
    }

    @Override // g.amk
    public final evf k(View view) {
        amk amkVar = (amk) this.f322b.get(view);
        return amkVar != null ? amkVar.k(view) : super.k(view);
    }
}
