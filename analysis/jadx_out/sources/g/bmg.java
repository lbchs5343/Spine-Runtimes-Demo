package g;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.nio.file.attribute.FileAttribute;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class bmg {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f11821a = dsr.k(bmg.class);

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f11822b = {-54, -2, -70, -66};

    /* renamed from: c, reason: collision with root package name */
    public static final byte[] f11823c = {80, 75, 3, 4};

    /* renamed from: d, reason: collision with root package name */
    public final eie f11824d;

    /* renamed from: e, reason: collision with root package name */
    public final Path f11825e;

    /* renamed from: f, reason: collision with root package name */
    public int f11826f = 1;

    public bmg(eie eieVar, Path path) {
        this.f11824d = eieVar;
        this.f11825e = path;
    }

    public static String g(String str, String str2) {
        if (str == null) {
            return str2;
        }
        return str + ':' + str2;
    }

    public static boolean h(byte[] bArr, byte[] bArr2) {
        int length = bArr2.length;
        if (bArr.length < length) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public final List i(InputStream inputStream, String str, File file, String str2) {
        Path createTempFile;
        OutputStream newOutputStream;
        File file2;
        byte[] bArr = new byte[4];
        if (inputStream.read(bArr) != 4) {
            return Collections.EMPTY_LIST;
        }
        if (h(bArr, f11822b) || str.endsWith(".class")) {
            dba dbaVar = exb.f16312a;
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(inputStream.available() + 4);
                try {
                    byteArrayOutputStream.write(bArr);
                    byte[] bArr2 = new byte[8192];
                    while (true) {
                        int read = inputStream.read(bArr2);
                        if (read == -1) {
                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                            byteArrayOutputStream.close();
                            String g2 = g(str2, str);
                            int i = this.f11826f;
                            this.f11826f = i + 1;
                            return Collections.singletonList(new bpt(g2, i, byteArray));
                        }
                        byteArrayOutputStream.write(bArr2, 0, read);
                    }
                } finally {
                }
            } catch (Exception e2) {
                throw new IOException("Failed to read input stream to bytes array", e2);
            }
        } else {
            if (!h(bArr, f11823c) && !exb.c(str)) {
                return Collections.EMPTY_LIST;
            }
            if (file != null) {
                return k(file, str);
            }
            dba dbaVar2 = exb.f16312a;
            createTempFile = Files.createTempFile("jadx-temp-", ".zip", new FileAttribute[0]);
            try {
                newOutputStream = Files.newOutputStream(createTempFile, new OpenOption[0]);
                try {
                    newOutputStream.write(bArr);
                    byte[] bArr3 = new byte[8192];
                    while (true) {
                        int read2 = inputStream.read(bArr3);
                        if (read2 == -1) {
                            newOutputStream.close();
                            file2 = createTempFile.toFile();
                            ArrayList k = k(file2, g(str2, str));
                            try {
                                file2.delete();
                                return k;
                            } catch (Exception e3) {
                                exb.f16312a.t(file2, "Failed to delete file: {}", e3);
                                return k;
                            }
                        }
                        newOutputStream.write(bArr3, 0, read2);
                    }
                } finally {
                }
            } catch (Exception e4) {
                throw new IOException("Failed to save temp file", e4);
            }
        }
    }

    public final List j(String str, byte[] bArr, String str2) {
        Path createTempFile;
        StandardOpenOption standardOpenOption;
        StandardOpenOption standardOpenOption2;
        StandardOpenOption standardOpenOption3;
        File file;
        Path absolutePath;
        Path parent;
        File file2;
        if (h(bArr, f11822b) || str.endsWith(".class")) {
            String g2 = g(str2, str);
            int i = this.f11826f;
            this.f11826f = i + 1;
            return Collections.singletonList(new bpt(g2, i, bArr));
        }
        if (!h(bArr, f11823c) && !exb.c(str)) {
            return Collections.EMPTY_LIST;
        }
        createTempFile = Files.createTempFile(this.f11825e, "temp", ".zip", new FileAttribute[0]);
        dba dbaVar = bqu.f12045c;
        if (createTempFile != null) {
            absolutePath = createTempFile.toAbsolutePath();
            parent = absolutePath.getParent();
            file2 = parent.toFile();
            bqu.f(file2);
        }
        standardOpenOption = StandardOpenOption.WRITE;
        standardOpenOption2 = StandardOpenOption.CREATE;
        standardOpenOption3 = StandardOpenOption.TRUNCATE_EXISTING;
        Files.write(createTempFile, bArr, standardOpenOption, standardOpenOption2, standardOpenOption3);
        file = createTempFile.toFile();
        ArrayList k = k(file, g(str2, str));
        dba dbaVar2 = exb.f16312a;
        try {
            file.delete();
            return k;
        } catch (Exception e2) {
            exb.f16312a.t(file, "Failed to delete file: {}", e2);
            return k;
        }
    }

    public final ArrayList k(File file, String str) {
        dba dbaVar = f11821a;
        ArrayList arrayList = new ArrayList();
        try {
            eqm k = this.f11824d.k(file);
            try {
                for (ffs ffsVar : k.f15999d) {
                    if (!ffsVar.isDirectory()) {
                        String name = ffsVar.getName();
                        if (!name.startsWith("META-INF/versions/")) {
                            try {
                                arrayList.addAll(ffsVar.f() ? j(name, ffsVar.e(), str) : i(ffsVar.g(), name, null, str));
                            } catch (Exception e2) {
                                dbaVar.b(ffsVar, "Failed to read zip entry: {}", e2);
                            }
                        }
                    }
                }
                k.close();
            } finally {
            }
        } catch (Exception e3) {
            dbaVar.b(str, "Failed to process zip file: {}", e3);
        }
        return arrayList;
    }
}
