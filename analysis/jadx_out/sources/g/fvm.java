package g;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;

/* loaded from: classes.dex */
public abstract class fvm {

    /* renamed from: a, reason: collision with root package name */
    public static final Path f17482a;

    static {
        Path createTempDirectory;
        File file;
        try {
            createTempDirectory = Files.createTempDirectory("jadx-temp-", new FileAttribute[0]);
            f17482a = createTempDirectory;
            file = createTempDirectory.toFile();
            file.deleteOnExit();
        } catch (Exception e2) {
            throw new RuntimeException("Failed to create temp directory", e2);
        }
    }
}
