package g;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class dde extends ao {
    @Override // g.ao
    public final List aj() {
        return Collections.singletonList(new dvi(1));
    }

    @Override // g.ao
    public final List am(Executor executor) {
        return Arrays.asList(new ehp(), new efv(executor));
    }
}
