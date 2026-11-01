package j$.util.stream;

import j$.util.C0281k;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.LongBinaryOperator;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;
import java.util.function.ToLongFunction;

/* renamed from: j$.util.stream.e0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0310e0 implements ObjLongConsumer, LongBinaryOperator, ToLongFunction, BiConsumer, IntFunction, LongFunction, Supplier, Consumer, BinaryOperator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21023a;

    public /* synthetic */ C0310e0(int i) {
        this.f21023a = i;
    }

    private final void accept$j$$util$stream$Node$$ExternalSyntheticLambda0(Object obj) {
    }

    private final void accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda0(Object obj) {
    }

    private final void accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda1(Object obj) {
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public void n(Object obj) {
        int i = this.f21023a;
    }

    @Override // java.util.function.ObjLongConsumer
    public void accept(Object obj, long j) {
        switch (this.f21023a) {
            case 0:
                ((C0281k) obj).accept(j);
                break;
            default:
                long[] jArr = (long[]) obj;
                jArr[0] = jArr[0] + 1;
                jArr[1] = jArr[1] + j;
                break;
        }
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f21023a) {
            case 3:
                ((C0281k) obj).a((C0281k) obj2);
                break;
            default:
                long[] jArr = (long[]) obj;
                long[] jArr2 = (long[]) obj2;
                jArr[0] = jArr[0] + jArr2[0];
                jArr[1] = jArr[1] + jArr2[1];
                break;
        }
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.f21023a) {
        }
        return j$.util.function.h.$default$andThen(this, biConsumer);
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        switch (this.f21023a) {
        }
        return j$.util.function.i.$default$andThen(this, function);
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f21023a) {
            case 11:
                break;
            case 24:
                break;
        }
        return j$.util.function.j.$default$andThen(this, consumer);
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        switch (this.f21023a) {
            case 4:
                return new Long[i];
            case 12:
                return new Object[i];
            case 20:
                return new Object[i];
            case 21:
                return new Integer[i];
            case 22:
                return new Long[i];
            case 23:
                return new Double[i];
            case 26:
                return new Integer[i];
            case 27:
                return new Integer[i];
            case 28:
                return new Long[i];
            default:
                return new Long[i];
        }
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j) {
        switch (this.f21023a) {
            case 5:
                return Long.valueOf(j);
            case 13:
                return AbstractC0405x1.h0(j);
            case 15:
                return AbstractC0405x1.s0(j);
            default:
                return AbstractC0405x1.t0(j);
        }
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        switch (this.f21023a) {
            case 14:
                return new P0((C0) obj, (C0) obj2);
            case 15:
            case 17:
            default:
                return new T0((I0) obj, (I0) obj2);
            case 16:
                return new Q0((E0) obj, (E0) obj2);
            case 18:
                return new R0((G0) obj, (G0) obj2);
        }
    }

    @Override // java.util.function.LongBinaryOperator
    public long applyAsLong(long j, long j2) {
        switch (this.f21023a) {
            case 1:
                return Math.min(j, j2);
            case 9:
                return Math.max(j, j2);
            default:
                return j + j2;
        }
    }

    @Override // java.util.function.ToLongFunction
    public long applyAsLong(Object obj) {
        return ((Long) obj).longValue();
    }

    @Override // java.util.function.Supplier
    public Object get() {
        return new long[2];
    }
}
