package androidx.activity;

import g.ajm;
import g.bcn;
import g.bff;
import g.bwm;
import g.cwu;
import g.dtn;
import g.euu;
import g.gyx;
import g.iz;

/* loaded from: classes.dex */
final class OnBackPressedDispatcher$LifecycleOnBackPressedCancellable implements ajm, gyx {

    /* renamed from: a, reason: collision with root package name */
    public cwu f14a;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ b f15c;

    /* renamed from: d, reason: collision with root package name */
    public final euu f16d;

    /* renamed from: e, reason: collision with root package name */
    public final bcn f17e;

    public OnBackPressedDispatcher$LifecycleOnBackPressedCancellable(b bVar, euu euuVar, bcn bcnVar) {
        bff.p(bcnVar, "onBackPressedCallback");
        this.f15c = bVar;
        this.f16d = euuVar;
        this.f17e = bcnVar;
        euuVar.l(this);
    }

    @Override // g.ajm
    public final void b(iz izVar, dtn dtnVar) {
        if (dtnVar != dtn.ON_START) {
            if (dtnVar != dtn.ON_STOP) {
                if (dtnVar == dtn.ON_DESTROY) {
                    cancel();
                    return;
                }
                return;
            } else {
                cwu cwuVar = this.f14a;
                if (cwuVar != null) {
                    cwuVar.cancel();
                    return;
                }
                return;
            }
        }
        b bVar = this.f15c;
        bVar.getClass();
        bcn bcnVar = this.f17e;
        bff.p(bcnVar, "onBackPressedCallback");
        bVar.f26e.addLast(bcnVar);
        cwu cwuVar2 = new cwu(bVar, bcnVar);
        bcnVar.f11286d.add(cwuVar2);
        bVar.h();
        bcnVar.f11287e = new bwm(0, bVar, b.class, "updateEnabledCallbacks", "updateEnabledCallbacks()V", 0, 1);
        this.f14a = cwuVar2;
    }

    @Override // g.gyx
    public final void cancel() {
        this.f16d.n(this);
        this.f17e.f11286d.remove(this);
        cwu cwuVar = this.f14a;
        if (cwuVar != null) {
            cwuVar.cancel();
        }
        this.f14a = null;
    }
}
