package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.w0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0399w0 extends AbstractC0294b {
    public final j$.util.concurrent.t j;

    public C0399w0(j$.util.concurrent.t tVar, AbstractC0289a abstractC0289a, Spliterator spliterator) {
        super(abstractC0289a, spliterator);
        this.j = tVar;
    }

    public C0399w0(C0399w0 c0399w0, Spliterator spliterator) {
        super(c0399w0, spliterator);
        this.j = c0399w0.j;
    }

    @Override // j$.util.stream.AbstractC0304d
    public final Object a() {
        AbstractC0405x1 abstractC0405x1 = this.f21009a;
        AbstractC0389u0 abstractC0389u0 = (AbstractC0389u0) ((Supplier) this.j.f20774c).get();
        abstractC0405x1.E0(this.f21010b, abstractC0389u0);
        boolean z = abstractC0389u0.f21109b;
        if (z == ((EnumC0394v0) this.j.f20773b).f21112b) {
            Boolean valueOf = Boolean.valueOf(z);
            AtomicReference atomicReference = this.h;
            while (!atomicReference.compareAndSet(null, valueOf) && atomicReference.get() == null) {
            }
        }
        return null;
    }

    @Override // j$.util.stream.AbstractC0304d
    public final AbstractC0304d c(Spliterator spliterator) {
        return new C0399w0(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC0294b
    public final Object h() {
        return Boolean.valueOf(!((EnumC0394v0) this.j.f20773b).f21112b);
    }
}
