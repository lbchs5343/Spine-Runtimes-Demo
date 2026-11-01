package g;

import java.nio.file.Path;
import java.util.function.Function;

/* loaded from: classes.dex */
public final /* synthetic */ class hel implements Function {
    public final /* synthetic */ Function andThen(Function function) {
        return j$.util.function.k.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return ((Path) obj).toFile();
    }

    public final /* synthetic */ Function compose(Function function) {
        return j$.util.function.k.$default$compose(this, function);
    }
}
