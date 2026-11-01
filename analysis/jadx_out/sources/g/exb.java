package g;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class exb {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f16312a = dsr.k(exb.class);

    /* renamed from: b, reason: collision with root package name */
    public static final Set f16313b;

    static {
        try {
            new File(".").getCanonicalFile().toPath();
            f16313b = Collections.unmodifiableSet(new HashSet(Arrays.asList("zip", "jar", "apk")));
        } catch (IOException e2) {
            throw new RuntimeException("Failed to init current working dir constant", e2);
        }
    }

    public static boolean c(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        String substring = lastIndexOf == -1 ? null : str.substring(lastIndexOf + 1);
        if (substring == null) {
            return false;
        }
        return f16313b.contains(substring);
    }
}
