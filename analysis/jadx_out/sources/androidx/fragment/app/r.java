package androidx.fragment.app;

import g.afo;
import g.apm;

/* loaded from: classes.dex */
public final class r extends apm {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Fragment f206a;

    public r(Fragment fragment) {
        this.f206a = fragment;
    }

    @Override // g.apm
    public final void b() {
        Fragment fragment = this.f206a;
        fragment.mSavedStateRegistryController.d();
        afo.aj(fragment);
    }
}
