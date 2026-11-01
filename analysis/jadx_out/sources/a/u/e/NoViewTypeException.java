package a.u.e;

import g.tn;

/* loaded from: classes.dex */
public class NoViewTypeException extends RuntimeException {
    public NoViewTypeException() {
        super("No corresponding viewType exception.");
    }

    public NoViewTypeException(String str) {
        super(tn.x("No corresponding viewType exception, ", str));
    }
}
