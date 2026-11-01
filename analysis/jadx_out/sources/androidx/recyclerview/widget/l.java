package androidx.recyclerview.widget;

import g.goi;
import g.ul;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class l extends ul {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f302a;

    public l(RecyclerView recyclerView) {
        this.f302a = recyclerView;
    }

    public final void b() {
        RecyclerView recyclerView = this.f302a;
        if (!recyclerView.mHasFixedSize || !recyclerView.mIsAttached) {
            recyclerView.mAdapterUpdateDuringMeasure = true;
            recyclerView.requestLayout();
        } else {
            Runnable runnable = recyclerView.mUpdateChildViewsRunnable;
            WeakHashMap weakHashMap = goi.f18490c;
            recyclerView.postOnAnimation(runnable);
        }
    }
}
