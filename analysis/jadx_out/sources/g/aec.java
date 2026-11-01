package g;

import java.io.Serializable;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class aec implements Serializable {
    private static final long serialVersionUID = 0;
    private final int flags;
    private final String pattern;

    public aec(String str, int i) {
        this.pattern = str;
        this.flags = i;
    }

    private final Object readResolve() {
        Pattern compile = Pattern.compile(this.pattern, this.flags);
        bff.e(compile, "compile(...)");
        return new hu(compile);
    }
}
