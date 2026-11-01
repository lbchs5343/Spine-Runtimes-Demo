package androidx.fragment.app;

import g.cdh;
import g.xd;

/* loaded from: classes.dex */
public final class c implements xd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Fragment f177a;

    public c(Fragment fragment) {
        this.f177a = fragment;
    }

    @Override // g.xd
    public final Object apply() {
        Fragment fragment = this.f177a;
        Object obj = fragment.mHost;
        return obj instanceof cdh ? ((cdh) obj).getActivityResultRegistry() : fragment.requireActivity().getActivityResultRegistry();
    }
}
