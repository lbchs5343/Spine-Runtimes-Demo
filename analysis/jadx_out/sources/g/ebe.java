package g;

import java.util.function.BiFunction;
import java.util.function.Function;

/* loaded from: classes.dex */
public final /* synthetic */ class ebe implements BiFunction {
    public final /* synthetic */ BiFunction andThen(Function function) {
        return j$.util.function.i.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return Integer.valueOf(((Integer) obj2).intValue() + ((Integer) obj).intValue());
    }
}
