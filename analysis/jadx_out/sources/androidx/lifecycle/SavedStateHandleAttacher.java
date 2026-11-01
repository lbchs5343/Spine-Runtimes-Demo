package androidx.lifecycle;

import g.ajm;
import g.dtj;
import g.dtn;
import g.iz;

/* loaded from: classes.dex */
public final class SavedStateHandleAttacher implements ajm {

    /* renamed from: a, reason: collision with root package name */
    public final dtj f234a;

    public SavedStateHandleAttacher(dtj dtjVar) {
        this.f234a = dtjVar;
    }

    @Override // g.ajm
    public final void b(iz izVar, dtn dtnVar) {
        if (dtnVar == dtn.ON_CREATE) {
            izVar.getLifecycle().n(this);
            this.f234a.f();
        } else {
            throw new IllegalStateException(("Next event must be ON_CREATE, it was " + dtnVar).toString());
        }
    }
}
