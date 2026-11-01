package g;

import java.io.ObjectStreamException;
import java.io.Serializable;

/* loaded from: classes.dex */
public final class fzd implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public static final fzd f17692a = new fzd();

    private Object readResolve() throws ObjectStreamException {
        return f17692a;
    }
}
