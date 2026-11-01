package g;

import java.io.File;
import java.io.FilenameFilter;

/* loaded from: classes.dex */
public final class foo implements FilenameFilter {
    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        return str != null && str.endsWith(".npth");
    }
}
