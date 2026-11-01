package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* loaded from: classes2.dex */
public final class d4 extends e4 implements Consumer {

    /* renamed from: e, reason: collision with root package name */
    public final Predicate f21019e;

    /* renamed from: f, reason: collision with root package name */
    public Object f21020f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f21021g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d4(Spliterator spliterator, d4 d4Var, int i) {
        super(spliterator, d4Var);
        this.f21021g = i;
        this.f21019e = d4Var.f21019e;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d4(Spliterator spliterator, Predicate predicate, int i) {
        super(spliterator);
        this.f21021g = i;
        this.f21019e = predicate;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f21028d = (this.f21028d + 1) & 63;
        this.f21020f = obj;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.j.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.e4
    public final Spliterator b(Spliterator spliterator) {
        switch (this.f21021g) {
            case 0:
                return new d4(spliterator, this, 0);
            default:
                return new d4(spliterator, this, 1);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0059, code lost:
    
        if (r0 == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x005b, code lost:
    
        r6.f21026b.set(true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0060, code lost:
    
        r7.accept(r6.f21020f);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:?, code lost:
    
        return r2;
     */
    @Override // j$.util.Spliterator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean tryAdvance(Consumer consumer) {
        boolean tryAdvance;
        boolean z;
        switch (this.f21021g) {
            case 0:
                boolean z2 = this.f21027c;
                Spliterator spliterator = this.f21025a;
                if (!z2) {
                    return spliterator.tryAdvance(consumer);
                }
                boolean z3 = false;
                this.f21027c = false;
                while (true) {
                    tryAdvance = spliterator.tryAdvance(this);
                    if (tryAdvance && a() && this.f21019e.test(this.f21020f)) {
                        z3 = true;
                    }
                }
                return tryAdvance;
            default:
                if (this.f21027c && a() && this.f21025a.tryAdvance(this)) {
                    z = this.f21019e.test(this.f21020f);
                    if (z) {
                        consumer.accept(this.f21020f);
                        return true;
                    }
                } else {
                    z = true;
                }
                this.f21027c = false;
                if (!z) {
                    this.f21026b.set(true);
                }
                return false;
        }
    }

    @Override // j$.util.stream.e4, j$.util.Spliterator
    public Spliterator trySplit() {
        switch (this.f21021g) {
            case 1:
                if (!this.f21026b.get()) {
                    break;
                }
                break;
        }
        return super.trySplit();
    }
}
