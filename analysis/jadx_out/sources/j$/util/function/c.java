package j$.util.function;

import j$.util.Map;
import j$.util.Objects;
import j$.util.stream.Collectors;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Function;

/* loaded from: classes2.dex */
public final /* synthetic */ class c implements Function, BiConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20796a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function f20797b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function f20798c;

    public /* synthetic */ c(Function function, Function function2, int i) {
        this.f20796a = i;
        this.f20797b = function;
        this.f20798c = function2;
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        Set set = Collectors.f20844a;
        Object apply = this.f20797b.apply(obj2);
        Object requireNonNull = Objects.requireNonNull(this.f20798c.apply(obj2));
        Object putIfAbsent = Map.b.putIfAbsent((java.util.Map) obj, apply, requireNonNull);
        if (putIfAbsent != null) {
            throw new IllegalStateException(String.format("Duplicate key %s (attempted merging values %s and %s)", apply, putIfAbsent, requireNonNull));
        }
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        return h.$default$andThen(this, biConsumer);
    }

    public /* synthetic */ Function andThen(Function function) {
        switch (this.f20796a) {
        }
        return k.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        switch (this.f20796a) {
            case 0:
                return this.f20798c.apply(this.f20797b.apply(obj));
            default:
                return this.f20797b.apply(this.f20798c.apply(obj));
        }
    }

    public /* synthetic */ Function compose(Function function) {
        switch (this.f20796a) {
        }
        return k.$default$compose(this, function);
    }
}
