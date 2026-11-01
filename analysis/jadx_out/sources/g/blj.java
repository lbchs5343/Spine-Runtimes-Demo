package g;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedHashSet;

/* loaded from: classes.dex */
public abstract class blj {
    public final HashMap l = new HashMap();
    public final LinkedHashSet m = new LinkedHashSet();
    public volatile boolean n = false;

    public static void o(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    public void j() {
    }
}
