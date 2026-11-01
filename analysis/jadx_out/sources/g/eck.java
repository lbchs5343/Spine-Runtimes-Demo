package g;

import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public final /* synthetic */ class eck implements Predicate {
    public final /* synthetic */ Predicate and(Predicate predicate) {
        return j$.util.function.m.$default$and(this, predicate);
    }

    public final /* synthetic */ Predicate negate() {
        return j$.util.function.m.$default$negate(this);
    }

    public final /* synthetic */ Predicate or(Predicate predicate) {
        return j$.util.function.m.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return Files.isRegularFile((Path) obj, new LinkOption[0]);
    }
}
