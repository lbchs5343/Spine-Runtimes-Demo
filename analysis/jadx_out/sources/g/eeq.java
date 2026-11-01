package g;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class eeq extends aly {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f15405b;

    public eeq(AtomicReference atomicReference) {
        this.f15405b = atomicReference;
    }

    @Override // g.aly
    public final void a(Object obj) {
        aly alyVar = (aly) this.f15405b.get();
        if (alyVar == null) {
            throw new IllegalStateException("Operation cannot be started before fragment is in created state");
        }
        alyVar.a(obj);
    }
}
