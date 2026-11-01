package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import java.util.function.LongPredicate;

/* loaded from: classes2.dex */
public final class c4 extends e4 implements LongConsumer, j$.util.J {

    /* renamed from: e, reason: collision with root package name */
    public long f21006e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f21007f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c4(Spliterator spliterator, int i) {
        super(spliterator);
        this.f21007f = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c4(Spliterator spliterator, e4 e4Var, int i) {
        super(spliterator, e4Var);
        this.f21007f = i;
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        this.f21028d = (this.f21028d + 1) & 63;
        this.f21006e = j;
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.c(this, longConsumer);
    }

    @Override // j$.util.stream.e4
    public final Spliterator b(Spliterator spliterator) {
        switch (this.f21007f) {
            case 0:
                return new c4((j$.util.J) spliterator, this, 0);
            default:
                return new c4((j$.util.J) spliterator, this, 1);
        }
    }

    @Override // j$.util.stream.e4, j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.j(this, consumer);
    }

    @Override // j$.util.M
    public final void forEachRemaining(LongConsumer longConsumer) {
        while (tryAdvance(longConsumer)) {
        }
    }

    @Override // j$.util.M
    public /* bridge */ /* synthetic */ boolean tryAdvance(Object obj) {
        switch (this.f21007f) {
            case 1:
                tryAdvance((LongConsumer) obj);
                return false;
            default:
                return tryAdvance((LongConsumer) obj);
        }
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.z(this, consumer);
    }

    @Override // j$.util.J
    public final boolean tryAdvance(LongConsumer longConsumer) {
        switch (this.f21007f) {
            case 0:
                boolean z = this.f21027c;
                Spliterator spliterator = this.f21025a;
                if (!z) {
                    return ((j$.util.J) spliterator).tryAdvance(longConsumer);
                }
                this.f21027c = false;
                boolean tryAdvance = ((j$.util.J) spliterator).tryAdvance((LongConsumer) this);
                if (tryAdvance && a()) {
                    LongPredicate longPredicate = null;
                    longPredicate.test(this.f21006e);
                    throw null;
                }
                if (!tryAdvance) {
                    return tryAdvance;
                }
                longConsumer.accept(this.f21006e);
                return tryAdvance;
            default:
                if (!this.f21027c || !a() || !((j$.util.J) this.f21025a).tryAdvance((LongConsumer) this)) {
                    this.f21027c = false;
                    return false;
                }
                LongPredicate longPredicate2 = null;
                longPredicate2.test(this.f21006e);
                throw null;
        }
    }

    @Override // j$.util.stream.e4, j$.util.Spliterator
    public j$.util.J trySplit() {
        switch (this.f21007f) {
            case 1:
                if (this.f21026b.get()) {
                    return null;
                }
                return (j$.util.J) super.trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.stream.e4, j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.M trySplit() {
        switch (this.f21007f) {
            case 1:
                return trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.stream.e4, j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator trySplit() {
        switch (this.f21007f) {
            case 1:
                return trySplit();
            default:
                return super.trySplit();
        }
    }
}
