package j$.util.stream;

import j$.util.Spliterator;
import java.util.Comparator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public abstract class e4 implements Spliterator {

    /* renamed from: a, reason: collision with root package name */
    public final Spliterator f21025a;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f21026b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f21027c;

    /* renamed from: d, reason: collision with root package name */
    public int f21028d;

    public e4(Spliterator spliterator) {
        this.f21027c = true;
        this.f21025a = spliterator;
        this.f21026b = new AtomicBoolean();
    }

    public e4(Spliterator spliterator, e4 e4Var) {
        this.f21027c = true;
        this.f21025a = spliterator;
        e4Var.getClass();
        this.f21026b = e4Var.f21026b;
    }

    public final boolean a() {
        return (this.f21028d == 0 && this.f21026b.get()) ? false : true;
    }

    public abstract Spliterator b(Spliterator spliterator);

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.f21025a.characteristics() & (-16449);
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f21025a.estimateSize();
    }

    @Override // j$.util.Spliterator
    public void forEachRemaining(Consumer consumer) {
        while (tryAdvance(consumer)) {
        }
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        return this.f21025a.getComparator();
    }

    @Override // j$.util.Spliterator
    public final long getExactSizeIfKnown() {
        return -1L;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return j$.com.android.tools.r8.a.o(this, i);
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.D trySplit() {
        return (j$.util.D) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.G trySplit() {
        return (j$.util.G) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.J trySplit() {
        return (j$.util.J) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.M trySplit() {
        return (j$.util.M) trySplit();
    }

    @Override // j$.util.Spliterator
    public Spliterator trySplit() {
        Spliterator trySplit = this.f21025a.trySplit();
        if (trySplit != null) {
            return b(trySplit);
        }
        return null;
    }
}
