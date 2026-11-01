package androidx.lifecycle;

import g.ajm;
import g.dtn;
import g.euu;
import g.hbu;
import g.iz;

/* loaded from: classes.dex */
public final class LegacySavedStateHandleController$tryToAddRecreator$1 implements ajm {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ euu f230a;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ hbu f231c;

    public LegacySavedStateHandleController$tryToAddRecreator$1(euu euuVar, hbu hbuVar) {
        this.f230a = euuVar;
        this.f231c = hbuVar;
    }

    @Override // g.ajm
    public final void b(iz izVar, dtn dtnVar) {
        if (dtnVar == dtn.ON_START) {
            this.f230a.n(this);
            this.f231c.g();
        }
    }
}
