package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import j$.util.Collection;
import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class bqu {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f12043a;

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f12044b;

    /* renamed from: c, reason: collision with root package name */
    public static final dba f12045c = dsr.k(bqu.class);

    /* renamed from: d, reason: collision with root package name */
    public static Path f12046d;

    /* renamed from: e, reason: collision with root package name */
    public static final Object f12047e;

    static {
        Path createTempDirectory;
        File file;
        try {
            createTempDirectory = Files.createTempDirectory("jadx-instance-", new FileAttribute[0]);
            file = createTempDirectory.toFile();
            file.deleteOnExit();
            f12046d = createTempDirectory;
            f12047e = new Object();
            f12043a = "0123456789abcdef".getBytes(StandardCharsets.US_ASCII);
            f12044b = new byte[]{80, 75, 3, 4};
        } catch (Exception e2) {
            throw new gck("Failed to create temp root directory", e2);
        }
    }

    public static void f(File file) {
        if (file != null) {
            synchronized (f12047e) {
                try {
                    if (!file.mkdirs() && !file.isDirectory()) {
                        throw new gck("Can't create directory " + file);
                    }
                } finally {
                }
            }
        }
    }

    public static synchronized void g(Path path) {
        File file;
        Path createTempDirectory;
        File file2;
        synchronized (bqu.class) {
            if (path != null) {
                try {
                    file = path.toFile();
                    f(file);
                } catch (Exception e2) {
                    throw new gck("Failed to update temp root directory", e2);
                }
            }
            createTempDirectory = Files.createTempDirectory(path, "jadx-instance-", new FileAttribute[0]);
            f12046d = createTempDirectory;
            file2 = createTempDirectory.toFile();
            file2.deleteOnExit();
        }
    }

    public static String h(byte[] bArr) {
        if (bArr.length == 0) {
            return "";
        }
        byte[] bArr2 = new byte[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            byte b2 = bArr[i];
            int i2 = i * 2;
            byte[] bArr3 = f12043a;
            bArr2[i2] = bArr3[(b2 & 255) >>> 4];
            bArr2[i2 + 1] = bArr3[b2 & 15];
        }
        return new String(bArr2, StandardCharsets.UTF_8);
    }

    public static File i(File file) {
        String str;
        String name = file.getName();
        if (name.length() <= 128) {
            return file;
        }
        String valueOf = String.valueOf(name.hashCode());
        if (valueOf.length() > 3) {
            valueOf = valueOf.substring(0, 3);
        }
        int indexOf = name.indexOf(46);
        int length = ((TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME - (name.length() - indexOf)) - valueOf.length()) - 1;
        if (length <= 0) {
            str = name.substring(0, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE);
        } else {
            str = name.substring(0, length) + valueOf + name.substring(indexOf);
        }
        return new File(file.getParentFile(), str);
    }

    public static void j(Path path, boolean z) {
        Path absolutePath;
        try {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            Set set = Collections.EMPTY_SET;
            Files.walkFileTree(path, Collections.EMPTY_SET, he.UNDEFINED_ITEM_ID, new xp(arrayList, arrayList2));
            if (!arrayList.isEmpty()) {
                Collection.b.parallelStream(arrayList).forEach(new bxq());
            }
            if (z) {
                acw.am(arrayList2);
            }
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                Path i = cnf.i(it.next());
                try {
                    Files.delete(i);
                } catch (IOException e2) {
                    dba dbaVar = f12045c;
                    absolutePath = i.toAbsolutePath();
                    dbaVar.t(absolutePath, "Failed to delete directory {}", e2);
                }
            }
        } catch (Exception e3) {
            throw new gck("Failed to delete directory " + path, e3);
        }
    }
}
