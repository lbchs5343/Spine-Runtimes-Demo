package g;

import java.io.Serializable;

/* loaded from: classes.dex */
public abstract class sl implements Serializable {
    public static final Throwable a(Object obj) {
        if (obj instanceof egr) {
            return ((egr) obj).exception;
        }
        return null;
    }
}
