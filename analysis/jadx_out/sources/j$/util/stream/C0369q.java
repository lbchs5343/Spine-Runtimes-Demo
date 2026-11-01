package j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;

/* renamed from: j$.util.stream.q, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0369q implements BinaryOperator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21089a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BiConsumer f21090b;

    public /* synthetic */ C0369q(BiConsumer biConsumer, int i) {
        this.f21089a = i;
        this.f21090b = biConsumer;
    }

    public final /* synthetic */ BiFunction andThen(Function function) {
        switch (this.f21089a) {
        }
        return j$.util.function.i.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f21089a) {
            case 0:
                this.f21090b.accept(obj, obj2);
                break;
            case 1:
                this.f21090b.accept(obj, obj2);
                break;
            default:
                this.f21090b.accept(obj, obj2);
                break;
        }
        return obj;
    }
}
