package androidx.lifecycle;

import g.ajm;
import g.bff;
import g.dtn;
import g.euu;
import g.gzf;
import g.hbu;
import g.iz;

/* loaded from: classes.dex */
public final class SavedStateHandleController implements ajm {

    /* renamed from: a, reason: collision with root package name */
    public boolean f235a;

    /* renamed from: c, reason: collision with root package name */
    public final String f236c;

    /* renamed from: d, reason: collision with root package name */
    public final gzf f237d;

    public SavedStateHandleController(String str, gzf gzfVar) {
        this.f236c = str;
        this.f237d = gzfVar;
    }

    @Override // g.ajm
    public final void b(iz izVar, dtn dtnVar) {
        if (dtnVar == dtn.ON_DESTROY) {
            this.f235a = false;
            izVar.getLifecycle().n(this);
        }
    }

    public final void e(euu euuVar, hbu hbuVar) {
        bff.p(hbuVar, "registry");
        bff.p(euuVar, "lifecycle");
        if (this.f235a) {
            throw new IllegalStateException("Already attached to lifecycleOwner");
        }
        this.f235a = true;
        euuVar.l(this);
        hbuVar.j(this.f236c, this.f237d.f19045c);
    }
}
