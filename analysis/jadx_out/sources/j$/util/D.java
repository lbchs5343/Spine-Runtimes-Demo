package j$.util;

import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public interface D extends M {
    void forEachRemaining(DoubleConsumer doubleConsumer);

    boolean tryAdvance(DoubleConsumer doubleConsumer);

    @Override // j$.util.M, j$.util.Spliterator
    D trySplit();
}
