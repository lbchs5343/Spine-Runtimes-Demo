package g;

import java.util.Collection;

/* loaded from: classes.dex */
public abstract class bkk extends grj {
    public static int a(Iterable iterable) {
        bff.p(iterable, "<this>");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).size();
        }
        return 10;
    }
}
