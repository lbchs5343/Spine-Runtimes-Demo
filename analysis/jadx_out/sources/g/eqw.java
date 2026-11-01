package g;

import j$.util.concurrent.ThreadLocalRandom;
import java.util.Random;

/* loaded from: classes.dex */
public final class eqw extends dtp {
    @Override // g.dtp
    public final Random a() {
        ThreadLocalRandom current = ThreadLocalRandom.current();
        bff.e(current, "current(...)");
        return current;
    }
}
