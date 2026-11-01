package j$.time.format;

import j$.time.LocalDate;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.util.C0278h;
import j$.util.C0279i;
import j$.util.C0281k;
import j$.util.Map;
import j$.util.Objects;
import j$.util.StringJoiner;
import j$.util.stream.Collectors;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.DoubleBinaryOperator;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements IntFunction, BinaryOperator, Supplier, BiConsumer, Function, DoubleBinaryOperator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20524a;

    public /* synthetic */ a(int i) {
        this.f20524a = i;
    }

    public Object a(j$.time.temporal.n nVar) {
        switch (this.f20524a) {
            case 0:
                ZoneId zoneId = (ZoneId) nVar.l(j$.time.temporal.r.f20620a);
                if (zoneId == null || (zoneId instanceof ZoneOffset)) {
                    return null;
                }
                return zoneId;
            case 1:
                return (ZoneId) nVar.l(j$.time.temporal.r.f20620a);
            case 2:
                return (j$.time.chrono.m) nVar.l(j$.time.temporal.r.f20621b);
            case 3:
                return (j$.time.temporal.s) nVar.l(j$.time.temporal.r.f20622c);
            case 4:
                j$.time.temporal.a aVar = j$.time.temporal.a.OFFSET_SECONDS;
                if (nVar.e(aVar)) {
                    return ZoneOffset.J(nVar.i(aVar));
                }
                return null;
            case 5:
                ZoneId zoneId2 = (ZoneId) nVar.l(j$.time.temporal.r.f20620a);
                return zoneId2 != null ? zoneId2 : (ZoneId) nVar.l(j$.time.temporal.r.f20623d);
            case 6:
                j$.time.temporal.a aVar2 = j$.time.temporal.a.EPOCH_DAY;
                if (nVar.e(aVar2)) {
                    return LocalDate.M(nVar.w(aVar2));
                }
                return null;
            default:
                j$.time.temporal.a aVar3 = j$.time.temporal.a.NANO_OF_DAY;
                if (nVar.e(aVar3)) {
                    return j$.time.i.G(nVar.w(aVar3));
                }
                return null;
        }
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f20524a) {
            case 12:
                ((List) obj).add(obj2);
                break;
            case 15:
                ((Set) obj).add(obj2);
                break;
            case 19:
                ((StringJoiner) obj).add((CharSequence) obj2);
                break;
            case 25:
                ((LinkedHashSet) obj).add(obj2);
                break;
            case 26:
                ((LinkedHashSet) obj).addAll((LinkedHashSet) obj2);
                break;
            default:
                double[] dArr = (double[]) obj;
                double[] dArr2 = (double[]) obj2;
                Collectors.a(dArr, dArr2[0]);
                Collectors.a(dArr, dArr2[1]);
                dArr[2] = dArr[2] + dArr2[2];
                break;
        }
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.f20524a) {
            case 12:
                break;
            case 15:
                break;
            case 19:
                break;
            case 25:
                break;
            case 26:
                break;
        }
        return j$.util.function.h.$default$andThen(this, biConsumer);
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        switch (this.f20524a) {
            case 9:
                break;
            case 17:
                break;
            case 20:
                break;
        }
        return j$.util.function.i.$default$andThen(this, function);
    }

    /* renamed from: andThen, reason: collision with other method in class */
    public /* synthetic */ Function m20andThen(Function function) {
        switch (this.f20524a) {
        }
        return j$.util.function.k.$default$andThen(this, function);
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        return new Object[i];
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        switch (this.f20524a) {
            case 18:
                Set set = Collectors.f20844a;
                return obj;
            default:
                return ((StringJoiner) obj).toString();
        }
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        switch (this.f20524a) {
            case 9:
                Map map = (Map) obj;
                Set set = Collectors.f20844a;
                for (Map.Entry entry : ((Map) obj2).entrySet()) {
                    Object key = entry.getKey();
                    Object requireNonNull = Objects.requireNonNull(entry.getValue());
                    Object putIfAbsent = Map.b.putIfAbsent(map, key, requireNonNull);
                    if (putIfAbsent != null) {
                        throw new IllegalStateException(String.format("Duplicate key %s (attempted merging values %s and %s)", key, putIfAbsent, requireNonNull));
                    }
                }
                return map;
            case 17:
                List list = (List) obj;
                Set set2 = Collectors.f20844a;
                list.addAll((List) obj2);
                return list;
            case 20:
                StringJoiner stringJoiner = (StringJoiner) obj;
                StringJoiner stringJoiner2 = (StringJoiner) obj2;
                stringJoiner.getClass();
                Objects.requireNonNull(stringJoiner2);
                if (stringJoiner2.f20702d == null) {
                    return stringJoiner;
                }
                stringJoiner2.a();
                return stringJoiner.add(stringJoiner2.f20702d[0]);
            default:
                Set set3 = (Set) obj;
                Set set4 = (Set) obj2;
                Set set5 = Collectors.f20844a;
                if (set3.size() < set4.size()) {
                    set4.addAll(set3);
                    return set4;
                }
                set3.addAll(set4);
                return set3;
        }
    }

    @Override // java.util.function.DoubleBinaryOperator
    public double applyAsDouble(double d2, double d3) {
        return Math.min(d2, d3);
    }

    public /* synthetic */ Function compose(Function function) {
        switch (this.f20524a) {
        }
        return j$.util.function.k.$default$compose(this, function);
    }

    @Override // java.util.function.Supplier
    public Object get() {
        switch (this.f20524a) {
            case 10:
                return new C0278h();
            case 11:
                return new ArrayList();
            case 13:
                return new C0279i();
            case 14:
                return new HashSet();
            case 16:
                return new C0281k();
            case 23:
                return new HashMap();
            case 24:
                return new LinkedHashSet();
            default:
                return new double[4];
        }
    }

    public String toString() {
        switch (this.f20524a) {
            case 1:
                return "ZoneId";
            case 2:
                return "Chronology";
            case 3:
                return "Precision";
            case 4:
                return "ZoneOffset";
            case 5:
                return "Zone";
            case 6:
                return "LocalDate";
            case 7:
                return "LocalTime";
            default:
                return super.toString();
        }
    }
}
