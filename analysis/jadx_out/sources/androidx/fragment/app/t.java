package androidx.fragment.app;

import android.view.View;
import g.egk;

/* loaded from: classes.dex */
public final class t extends egk {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Fragment f207a;

    public t(Fragment fragment) {
        this.f207a = fragment;
    }

    @Override // g.egk
    public final View c(int i) {
        Fragment fragment = this.f207a;
        View view = fragment.mView;
        if (view != null) {
            return view.findViewById(i);
        }
        throw new IllegalStateException("Fragment " + fragment + " does not have a view");
    }

    @Override // g.egk
    public final boolean d() {
        return this.f207a.mView != null;
    }
}
