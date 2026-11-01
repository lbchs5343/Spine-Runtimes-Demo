package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.DoublePredicate;

/* loaded from: classes2.dex */
public final class a4 extends e4 implements DoubleConsumer, j$.util.D {

    /* renamed from: e, reason: collision with root package name */
    public double f20990e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f20991f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ a4(Spliterator spliterator, int i) {
        super(spliterator);
        this.f20991f = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ a4(Spliterator spliterator, e4 e4Var, int i) {
        super(spliterator, e4Var);
        this.f20991f = i;
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d2) {
        this.f21028d = (this.f21028d + 1) & 63;
        this.f20990e = d2;
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    @Override // j$.util.stream.e4
    public final Spliterator b(Spliterator spliterator) {
        switch (this.f20991f) {
            case 0:
                return new a4((j$.util.D) spliterator, this, 0);
            default:
                return new a4((j$.util.D) spliterator, this, 1);
        }
    }

    @Override // j$.util.stream.e4, j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.h(this, consumer);
    }

    @Override // j$.util.M
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        while (tryAdvance(doubleConsumer)) {
        }
    }

    @Override // j$.util.M
    public /* bridge */ /* synthetic */ boolean tryAdvance(Object obj) {
        switch (this.f20991f) {
            case 1:
                tryAdvance((DoubleConsumer) obj);
                return false;
            default:
                return tryAdvance((DoubleConsumer) obj);
        }
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.x(this, consumer);
    }

    @Override // j$.util.D
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        switch (this.f20991f) {
            case 0:
                boolean z = this.f21027c;
                Spliterator spliterator = this.f21025a;
                if (!z) {
                    return ((j$.util.D) spliterator).tryAdvance(doubleConsumer);
                }
                this.f21027c = false;
                boolean tryAdvance = ((j$.util.D) spliterator).tryAdvance((DoubleConsumer) this);
                if (tryAdvance && a()) {
                    DoublePredicate doublePredicate = null;
                    doublePredicate.test(this.f20990e);
                    throw null;
                }
                if (!tryAdvance) {
                    return tryAdvance;
                }
                doubleConsumer.accept(this.f20990e);
                return tryAdvance;
            default:
                if (!this.f21027c || !a() || !((j$.util.D) this.f21025a).tryAdvance((DoubleConsumer) this)) {
                    this.f21027c = false;
                    return false;
                }
                DoublePredicate doublePredicate2 = null;
                doublePredicate2.test(this.f20990e);
                throw null;
        }
    }

    @Override // j$.util.stream.e4, j$.util.Spliterator
    public j$.util.D trySplit() {
        switch (this.f20991f) {
            case 1:
                if (this.f21026b.get()) {
                    return null;
                }
                return (j$.util.D) super.trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.stream.e4, j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.M trySplit() {
        switch (this.f20991f) {
            case 1:
                return trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.stream.e4, j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator trySplit() {
        switch (this.f20991f) {
            case 1:
                return trySplit();
            default:
                return super.trySplit();
        }
    }
}
