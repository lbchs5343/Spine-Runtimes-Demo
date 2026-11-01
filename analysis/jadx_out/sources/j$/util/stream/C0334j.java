package j$.util.stream;

import j$.util.Map;
import j$.util.Objects;
import j$.util.StringJoiner;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.j, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0334j implements BiConsumer, Supplier {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21046a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f21047b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f21048c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f21049d;

    public /* synthetic */ C0334j(Object obj, Object obj2, Object obj3, int i) {
        this.f21046a = i;
        this.f21047b = obj;
        this.f21048c = obj2;
        this.f21049d = obj3;
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        int i = this.f21046a;
        Object obj3 = this.f21049d;
        Object obj4 = this.f21048c;
        Function function = (Function) this.f21047b;
        switch (i) {
            case 0:
                Set set = Collectors.f20844a;
                Map.b.merge((java.util.Map) obj, function.apply(obj2), ((Function) obj4).apply(obj2), (BinaryOperator) obj3);
                break;
            default:
                Set set2 = Collectors.f20844a;
                ((BiConsumer) obj3).accept(Map.b.computeIfAbsent((java.util.Map) obj, Objects.requireNonNull(function.apply(obj2), "element cannot be mapped to a null key"), new j$.util.function.g((Supplier) obj4, 3)), obj2);
                break;
        }
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.f21046a) {
        }
        return j$.util.function.h.$default$andThen(this, biConsumer);
    }

    @Override // java.util.function.Supplier
    public Object get() {
        CharSequence charSequence = (CharSequence) this.f21047b;
        CharSequence charSequence2 = (CharSequence) this.f21048c;
        CharSequence charSequence3 = (CharSequence) this.f21049d;
        Set set = Collectors.f20844a;
        return new StringJoiner(charSequence, charSequence2, charSequence3);
    }
}
