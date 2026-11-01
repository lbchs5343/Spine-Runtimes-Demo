package j$.util;

import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class H implements J {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Spliterator.OfLong f20672a;

    public /* synthetic */ H(Spliterator.OfLong ofLong) {
        this.f20672a = ofLong;
    }

    public static /* synthetic */ J a(Spliterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof I ? ((I) ofLong).f20673a : new H(ofLong);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f20672a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Spliterator.OfLong ofLong = this.f20672a;
        if (obj instanceof H) {
            obj = ((H) obj).f20672a;
        }
        return ofLong.equals(obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f20672a.estimateSize();
    }

    @Override // j$.util.M
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f20672a.forEachRemaining((Spliterator.OfLong) obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f20672a.forEachRemaining((Consumer<? super Long>) consumer);
    }

    @Override // j$.util.J
    public final /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f20672a.forEachRemaining(longConsumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ java.util.Comparator getComparator() {
        return this.f20672a.getComparator();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f20672a.getExactSizeIfKnown();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f20672a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.f20672a.hashCode();
    }

    @Override // j$.util.M
    public final /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f20672a.tryAdvance((Spliterator.OfLong) obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f20672a.tryAdvance((Consumer<? super Long>) consumer);
    }

    @Override // j$.util.J
    public final /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return this.f20672a.tryAdvance(longConsumer);
    }

    @Override // j$.util.J, j$.util.M, j$.util.Spliterator
    public final /* synthetic */ J trySplit() {
        return a(this.f20672a.trySplit());
    }

    @Override // j$.util.M, j$.util.Spliterator
    public final /* synthetic */ M trySplit() {
        return K.a(this.f20672a.trySplit());
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ Spliterator trySplit() {
        return N.a(this.f20672a.trySplit());
    }
}
