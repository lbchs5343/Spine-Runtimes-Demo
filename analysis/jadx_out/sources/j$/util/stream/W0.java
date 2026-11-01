package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class W0 extends R2 implements C0, InterfaceC0404x0 {
    @Override // j$.util.stream.H0, j$.util.stream.I0
    public final H0 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.I0
    public final /* bridge */ /* synthetic */ I0 a(int i) {
        a(i);
        throw null;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void accept(int i) {
        AbstractC0405x1.J();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void accept(long j) {
        AbstractC0405x1.K();
        throw null;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        n((Double) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.j.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.X2, j$.util.stream.H0
    public final Object b() {
        return (double[]) super.b();
    }

    @Override // j$.util.stream.InterfaceC0404x0, j$.util.stream.A0
    public final C0 build() {
        return this;
    }

    @Override // j$.util.stream.A0
    public final I0 build() {
        return this;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        clear();
        s(j);
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final void end() {
    }

    @Override // j$.util.stream.X2, j$.util.stream.H0
    public final void f(Object obj, int i) {
        super.f((double[]) obj, i);
    }

    @Override // j$.util.stream.X2, j$.util.stream.H0
    public final void g(Object obj) {
        super.g((DoubleConsumer) obj);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ I0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC0405x1.S(this, j, j2);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void k(Object[] objArr, int i) {
        AbstractC0405x1.M(this, (Double[]) objArr, i);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ Object[] m(IntFunction intFunction) {
        return AbstractC0405x1.L(this, intFunction);
    }

    @Override // j$.util.stream.InterfaceC0347l2
    public final /* synthetic */ void n(Double d2) {
        AbstractC0405x1.D(this, d2);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ int o() {
        return 0;
    }

    @Override // j$.util.stream.R2, j$.util.stream.X2, java.lang.Iterable, j$.lang.Iterable, j$.util.Collection
    public final j$.util.M spliterator() {
        return super.spliterator();
    }

    @Override // j$.util.stream.R2, j$.util.stream.X2, java.lang.Iterable, j$.lang.Iterable, j$.util.Collection
    public final Spliterator spliterator() {
        return super.spliterator();
    }
}
