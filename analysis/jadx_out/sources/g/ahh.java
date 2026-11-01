package g;

import com.tencent.bugly.BuglyStrategy;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

/* loaded from: classes.dex */
public final class ahh implements ctk {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f10221a = dsr.k(ahh.class);

    /* renamed from: b, reason: collision with root package name */
    public static final Path f10222b;

    static {
        Path path;
        Path absolutePath;
        Path normalize;
        path = Paths.get(".", new String[0]);
        absolutePath = path.toAbsolutePath();
        normalize = absolutePath.normalize();
        f10222b = normalize;
    }

    @Override // g.ctk
    public final boolean bt(String str) {
        Path resolve;
        Path normalize;
        boolean startsWith;
        boolean contains = str.contains("..");
        dba dbaVar = f10221a;
        if (contains && (str.contains("../") || str.contains("..\\"))) {
            dbaVar.m(str, "Path traversal attack detected in entry: '{}'");
            return false;
        }
        try {
            Path path = f10222b;
            resolve = path.resolve(str);
            normalize = resolve.normalize();
            startsWith = normalize.startsWith(path);
            if (startsWith) {
                return true;
            }
            dbaVar.m(str, "Invalid file name or path traversal attack detected: {}");
            return false;
        } catch (Exception e2) {
            dbaVar.b(str, "Invalid file name or path traversal attack detected: {} - error: {}", e2.getMessage());
            return false;
        }
    }

    @Override // g.ctk
    public final boolean bu(File file, File file2) {
        try {
            File canonicalFile = file.getCanonicalFile();
            for (File canonicalFile2 = file2.getCanonicalFile(); canonicalFile2 != null; canonicalFile2 = canonicalFile2.getParentFile()) {
                if (canonicalFile2.equals(canonicalFile)) {
                    return true;
                }
            }
            return false;
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // g.ctk
    public final boolean bv(ffs ffsVar) {
        if (bt(ffsVar.getName())) {
            long d2 = ffsVar.d();
            long c2 = ffsVar.c();
            boolean z = d2 < 0 || c2 < 0;
            boolean z2 = c2 >= ((long) 26214400) && ((long) 100) * d2 < c2;
            if (!z && !z2) {
                return true;
            }
            f10221a.x(Long.valueOf(d2), Long.valueOf(c2), ffsVar.getName());
        }
        return false;
    }

    @Override // g.ctk
    public final boolean bw() {
        return true;
    }

    @Override // g.ctk
    public final int bx() {
        return BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH;
    }
}
