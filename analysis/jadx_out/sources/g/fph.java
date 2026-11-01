package g;

import java.util.List;

/* loaded from: classes.dex */
public final class fph implements eqn {

    /* renamed from: a, reason: collision with root package name */
    public final cnc f17199a;

    /* renamed from: b, reason: collision with root package name */
    public final cnc f17200b;

    public fph(cnc cncVar, cnc cncVar2) {
        this.f17199a = cncVar;
        this.f17200b = cncVar2;
    }

    @Override // g.eqn
    public final boolean d() {
        return this.f17199a.d() && this.f17200b.d();
    }

    @Override // g.eqn
    public final cej dq() {
        return new gch((bsb) this.f17199a.dq(), (bsb) this.f17200b.dq());
    }

    @Override // g.eqn
    public final List ox() {
        throw new UnsupportedOperationException("Cannot call getKeyframes on AnimatableSplitDimensionPathValue.");
    }
}
