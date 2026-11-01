package androidx.lifecycle;

import g.ajm;
import g.bgj;
import g.blu;
import g.dtn;
import g.iz;

/* loaded from: classes.dex */
public final class DefaultLifecycleObserverAdapter implements ajm {

    /* renamed from: a, reason: collision with root package name */
    public final blu f228a;

    /* renamed from: c, reason: collision with root package name */
    public final ajm f229c;

    public DefaultLifecycleObserverAdapter(blu bluVar, ajm ajmVar) {
        this.f228a = bluVar;
        this.f229c = ajmVar;
    }

    @Override // g.ajm
    public final void b(iz izVar, dtn dtnVar) {
        int i = bgj.f11514a[dtnVar.ordinal()];
        if (i == 3) {
            this.f228a.onResume();
            throw null;
        }
        if (i == 7) {
            throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        ajm ajmVar = this.f229c;
        if (ajmVar != null) {
            ajmVar.b(izVar, dtnVar);
        }
    }
}
