package j$.util;

import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class B implements D {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Spliterator.OfDouble f20663a;

    public /* synthetic */ B(Spliterator.OfDouble ofDouble) {
        this.f20663a = ofDouble;
    }

    public static /* synthetic */ D a(Spliterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C ? ((C) ofDouble).f20664a : new B(ofDouble);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f20663a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Spliterator.OfDouble ofDouble = this.f20663a;
        if (obj instanceof B) {
            obj = ((B) obj).f20663a;
        }
        return ofDouble.equals(obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f20663a.estimateSize();
    }

    @Override // j$.util.M
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f20663a.forEachRemaining((Spliterator.OfDouble) obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f20663a.forEachRemaining((Consumer<? super Double>) consumer);
    }

    @Override // j$.util.D
    public final /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f20663a.forEachRemaining(doubleConsumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ java.util.Comparator getComparator() {
        return this.f20663a.getComparator();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f20663a.getExactSizeIfKnown();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f20663a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.f20663a.hashCode();
    }

    @Override // j$.util.M
    public final /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f20663a.tryAdvance((Spliterator.OfDouble) obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f20663a.tryAdvance((Consumer<? super Double>) consumer);
    }

    @Override // j$.util.D
    public final /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return this.f20663a.tryAdvance(doubleConsumer);
    }

    @Override // j$.util.D, j$.util.M, j$.util.Spliterator
    public final /* synthetic */ D trySplit() {
        return a(this.f20663a.trySplit());
    }

    @Override // j$.util.M, j$.util.Spliterator
    public final /* synthetic */ M trySplit() {
        return K.a(this.f20663a.trySplit());
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ Spliterator trySplit() {
        return N.a(this.f20663a.trySplit());
    }
}
