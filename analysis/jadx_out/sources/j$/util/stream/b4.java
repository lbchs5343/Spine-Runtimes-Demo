package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntPredicate;

/* loaded from: classes2.dex */
public final class b4 extends e4 implements IntConsumer, j$.util.G {

    /* renamed from: e, reason: collision with root package name */
    public int f20993e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f20994f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b4(Spliterator spliterator, int i) {
        super(spliterator);
        this.f20994f = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b4(Spliterator spliterator, e4 e4Var, int i) {
        super(spliterator, e4Var);
        this.f20994f = i;
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        this.f21028d = (this.f21028d + 1) & 63;
        this.f20993e = i;
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.util.function.l.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.stream.e4
    public final Spliterator b(Spliterator spliterator) {
        switch (this.f20994f) {
            case 0:
                return new b4((j$.util.G) spliterator, this, 0);
            default:
                return new b4((j$.util.G) spliterator, this, 1);
        }
    }

    @Override // j$.util.stream.e4, j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.i(this, consumer);
    }

    @Override // j$.util.M
    public final void forEachRemaining(IntConsumer intConsumer) {
        while (tryAdvance(intConsumer)) {
        }
    }

    @Override // j$.util.M
    public /* bridge */ /* synthetic */ boolean tryAdvance(Object obj) {
        switch (this.f20994f) {
            case 1:
                tryAdvance((IntConsumer) obj);
                return false;
            default:
                return tryAdvance((IntConsumer) obj);
        }
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.y(this, consumer);
    }

    @Override // j$.util.G
    public final boolean tryAdvance(IntConsumer intConsumer) {
        switch (this.f20994f) {
            case 0:
                boolean z = this.f21027c;
                Spliterator spliterator = this.f21025a;
                if (!z) {
                    return ((j$.util.G) spliterator).tryAdvance(intConsumer);
                }
                this.f21027c = false;
                boolean tryAdvance = ((j$.util.G) spliterator).tryAdvance((IntConsumer) this);
                if (tryAdvance && a()) {
                    IntPredicate intPredicate = null;
                    intPredicate.test(this.f20993e);
                    throw null;
                }
                if (!tryAdvance) {
                    return tryAdvance;
                }
                intConsumer.accept(this.f20993e);
                return tryAdvance;
            default:
                if (!this.f21027c || !a() || !((j$.util.G) this.f21025a).tryAdvance((IntConsumer) this)) {
                    this.f21027c = false;
                    return false;
                }
                IntPredicate intPredicate2 = null;
                intPredicate2.test(this.f20993e);
                throw null;
        }
    }

    @Override // j$.util.stream.e4, j$.util.Spliterator
    public j$.util.G trySplit() {
        switch (this.f20994f) {
            case 1:
                if (this.f21026b.get()) {
                    return null;
                }
                return (j$.util.G) super.trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.stream.e4, j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.M trySplit() {
        switch (this.f20994f) {
            case 1:
                return trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.stream.e4, j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator trySplit() {
        switch (this.f20994f) {
            case 1:
                return trySplit();
            default:
                return super.trySplit();
        }
    }
}
