package g;

import java.util.HashSet;
import java.util.function.BiFunction;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final /* synthetic */ class cve implements BiFunction {
    public final /* synthetic */ BiFunction andThen(Function function) {
        return j$.util.function.i.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        Integer num = (Integer) obj2;
        HashSet hashSet = bza.f12481b;
        return Integer.valueOf(num != null ? 1 + num.intValue() : 1);
    }
}
