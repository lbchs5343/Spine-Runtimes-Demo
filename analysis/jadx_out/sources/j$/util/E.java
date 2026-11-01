package j$.util;

import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class E implements G {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Spliterator.OfInt f20670a;

    public /* synthetic */ E(Spliterator.OfInt ofInt) {
        this.f20670a = ofInt;
    }

    public static /* synthetic */ G a(Spliterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof F ? ((F) ofInt).f20671a : new E(ofInt);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f20670a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Spliterator.OfInt ofInt = this.f20670a;
        if (obj instanceof E) {
            obj = ((E) obj).f20670a;
        }
        return ofInt.equals(obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f20670a.estimateSize();
    }

    @Override // j$.util.M
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f20670a.forEachRemaining((Spliterator.OfInt) obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f20670a.forEachRemaining((Consumer<? super Integer>) consumer);
    }

    @Override // j$.util.G
    public final /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.f20670a.forEachRemaining(intConsumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ java.util.Comparator getComparator() {
        return this.f20670a.getComparator();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f20670a.getExactSizeIfKnown();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f20670a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.f20670a.hashCode();
    }

    @Override // j$.util.M
    public final /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f20670a.tryAdvance((Spliterator.OfInt) obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f20670a.tryAdvance((Consumer<? super Integer>) consumer);
    }

    @Override // j$.util.G
    public final /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
        return this.f20670a.tryAdvance(intConsumer);
    }

    @Override // j$.util.G, j$.util.M, j$.util.Spliterator
    public final /* synthetic */ G trySplit() {
        return a(this.f20670a.trySplit());
    }

    @Override // j$.util.M, j$.util.Spliterator
    public final /* synthetic */ M trySplit() {
        return K.a(this.f20670a.trySplit());
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ Spliterator trySplit() {
        return N.a(this.f20670a.trySplit());
    }
}
