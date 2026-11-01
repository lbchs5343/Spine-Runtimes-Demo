package g;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class ewm implements Serializable {
    private final Object value;

    public ewm(Object obj) {
        this.value = obj;
    }

    public final String toString() {
        return String.valueOf(this.value);
    }
}
