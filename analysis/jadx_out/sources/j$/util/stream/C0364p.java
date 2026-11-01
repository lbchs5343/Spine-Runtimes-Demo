package j$.util.stream;

import j$.util.C0278h;
import j$.util.C0279i;
import j$.util.C0282l;
import j$.util.C0283m;
import j$.util.Optional;
import j$.util.OptionalInt;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleFunction;
import java.util.function.IntBinaryOperator;
import java.util.function.IntFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;

/* renamed from: j$.util.stream.p, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0364p implements ObjDoubleConsumer, BiConsumer, DoubleFunction, ToDoubleFunction, IntFunction, DoubleBinaryOperator, Supplier, Predicate, ToIntFunction, IntBinaryOperator, ObjIntConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21083a;

    @Override // java.util.function.ObjDoubleConsumer
    public void accept(Object obj, double d2) {
        switch (this.f21083a) {
            case 0:
                double[] dArr = (double[]) obj;
                dArr[2] = dArr[2] + 1.0d;
                Collectors.a(dArr, d2);
                dArr[3] = dArr[3] + d2;
                break;
            case 1:
            default:
                double[] dArr2 = (double[]) obj;
                Collectors.a(dArr2, d2);
                dArr2[2] = dArr2[2] + d2;
                break;
            case 2:
                ((C0278h) obj).accept(d2);
                break;
        }
    }

    @Override // java.util.function.ObjIntConsumer
    public void accept(Object obj, int i) {
        switch (this.f21083a) {
            case 23:
                ((C0279i) obj).accept(i);
                break;
            default:
                long[] jArr = (long[]) obj;
                jArr[0] = jArr[0] + 1;
                jArr[1] = jArr[1] + i;
                break;
        }
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f21083a) {
            case 1:
                double[] dArr = (double[]) obj;
                double[] dArr2 = (double[]) obj2;
                Collectors.a(dArr, dArr2[0]);
                Collectors.a(dArr, dArr2[1]);
                dArr[2] = dArr[2] + dArr2[2];
                dArr[3] = dArr[3] + dArr2[3];
                break;
            case 3:
                ((C0278h) obj).a((C0278h) obj2);
                break;
            case 24:
                ((C0279i) obj).a((C0279i) obj2);
                break;
            default:
                long[] jArr = (long[]) obj;
                long[] jArr2 = (long[]) obj2;
                jArr[0] = jArr[0] + jArr2[0];
                jArr[1] = jArr[1] + jArr2[1];
                break;
        }
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f21083a) {
        }
        return j$.util.function.m.$default$and(this, predicate);
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.f21083a) {
            case 1:
                break;
            case 3:
                break;
            case 24:
                break;
        }
        return j$.util.function.h.$default$andThen(this, biConsumer);
    }

    @Override // java.util.function.DoubleFunction
    public Object apply(double d2) {
        return Double.valueOf(d2);
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        switch (this.f21083a) {
            case 6:
                return new Double[i];
            case 18:
                return new Object[i];
            case 19:
                return new Integer[i];
            default:
                return Integer.valueOf(i);
        }
    }

    @Override // java.util.function.DoubleBinaryOperator
    public double applyAsDouble(double d2, double d3) {
        return Math.max(d2, d3);
    }

    @Override // java.util.function.ToDoubleFunction
    public double applyAsDouble(Object obj) {
        return ((Double) obj).doubleValue();
    }

    @Override // java.util.function.IntBinaryOperator
    public int applyAsInt(int i, int i2) {
        switch (this.f21083a) {
            case 22:
                return Math.min(i, i2);
            case 25:
                return i + i2;
            default:
                return Math.max(i, i2);
        }
    }

    @Override // java.util.function.ToIntFunction
    public int applyAsInt(Object obj) {
        return ((Integer) obj).intValue();
    }

    @Override // java.util.function.Supplier
    public Object get() {
        switch (this.f21083a) {
            case 8:
                return new double[3];
            case 11:
                return new G();
            case 13:
                return new H();
            case 15:
                return new I();
            case 17:
                return new J();
            default:
                return new long[2];
        }
    }

    public /* synthetic */ Predicate negate() {
        switch (this.f21083a) {
        }
        return j$.util.function.m.$default$negate(this);
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        switch (this.f21083a) {
        }
        return j$.util.function.m.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public boolean test(Object obj) {
        switch (this.f21083a) {
            case 10:
                return ((C0282l) obj).f20816a;
            case 11:
            case 13:
            default:
                return ((Optional) obj).isPresent();
            case 12:
                return ((OptionalInt) obj).f20683a;
            case 14:
                return ((C0283m) obj).f20819a;
        }
    }
}
