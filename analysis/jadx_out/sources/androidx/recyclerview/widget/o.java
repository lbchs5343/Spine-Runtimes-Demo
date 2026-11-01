package androidx.recyclerview.widget;

import android.database.Observable;
import g.ul;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class o extends Observable {
    public final void a(int i, int i2, Object obj) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            l lVar = (l) ((ul) ((Observable) this).mObservers.get(size));
            RecyclerView recyclerView = lVar.f302a;
            recyclerView.assertNotInLayoutOrScroll(null);
            h hVar = recyclerView.mAdapterHelper;
            ArrayList arrayList = hVar.f284e;
            if (i2 >= 1) {
                arrayList.add(hVar.g(4, i, i2, obj));
                hVar.f283d = 4 | hVar.f283d;
                if (arrayList.size() == 1) {
                    lVar.b();
                }
            }
        }
    }

    public final void b(int i, int i2) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            l lVar = (l) ((ul) ((Observable) this).mObservers.get(size));
            RecyclerView recyclerView = lVar.f302a;
            recyclerView.assertNotInLayoutOrScroll(null);
            h hVar = recyclerView.mAdapterHelper;
            ArrayList arrayList = hVar.f284e;
            if (i2 >= 1) {
                arrayList.add(hVar.g(1, i, i2, null));
                hVar.f283d |= 1;
                if (arrayList.size() == 1) {
                    lVar.b();
                }
            }
        }
    }

    public final boolean c() {
        return !((Observable) this).mObservers.isEmpty();
    }

    public final void d(int i, int i2) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            l lVar = (l) ((ul) ((Observable) this).mObservers.get(size));
            RecyclerView recyclerView = lVar.f302a;
            recyclerView.assertNotInLayoutOrScroll(null);
            h hVar = recyclerView.mAdapterHelper;
            ArrayList arrayList = hVar.f284e;
            if (i2 >= 1) {
                arrayList.add(hVar.g(2, i, i2, null));
                hVar.f283d |= 2;
                if (arrayList.size() == 1) {
                    lVar.b();
                }
            }
        }
    }

    public final void e() {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            RecyclerView recyclerView = ((l) ((ul) ((Observable) this).mObservers.get(size))).f302a;
            recyclerView.assertNotInLayoutOrScroll(null);
            recyclerView.mState.h = true;
            recyclerView.processDataSetCompletelyChanged(true);
            if (!recyclerView.mAdapterHelper.r()) {
                recyclerView.requestLayout();
            }
        }
    }

    public final void f(int i, int i2) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            l lVar = (l) ((ul) ((Observable) this).mObservers.get(size));
            RecyclerView recyclerView = lVar.f302a;
            recyclerView.assertNotInLayoutOrScroll(null);
            h hVar = recyclerView.mAdapterHelper;
            ArrayList arrayList = hVar.f284e;
            if (i != i2) {
                arrayList.add(hVar.g(8, i, i2, null));
                hVar.f283d |= 8;
                if (arrayList.size() == 1) {
                    lVar.b();
                }
            }
        }
    }

    public final void g() {
        m mVar;
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            RecyclerView recyclerView = ((l) ((ul) ((Observable) this).mObservers.get(size))).f302a;
            if (recyclerView.mPendingSavedState != null && (mVar = recyclerView.mAdapter) != null && mVar.canRestoreState()) {
                recyclerView.requestLayout();
            }
        }
    }
}
