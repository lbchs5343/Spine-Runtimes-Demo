package j$.util.function;

import java.util.Comparator;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements BinaryOperator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20792a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Comparator f20793b;

    public /* synthetic */ a(Comparator comparator, int i) {
        this.f20792a = i;
        this.f20793b = comparator;
    }

    public final /* synthetic */ BiFunction andThen(Function function) {
        switch (this.f20792a) {
        }
        return i.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f20792a) {
            case 0:
                if (this.f20793b.compare(obj, obj2) < 0) {
                    break;
                }
                break;
            default:
                if (this.f20793b.compare(obj, obj2) > 0) {
                    break;
                }
                break;
        }
        return obj2;
    }
}
