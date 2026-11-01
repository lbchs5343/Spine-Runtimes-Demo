package g;

import j$.util.Collection;
import j$.util.stream.Collectors;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.zip.Adler32;

/* loaded from: classes.dex */
public final class cqv {

    /* renamed from: c, reason: collision with root package name */
    public final gez f13350c;

    /* renamed from: d, reason: collision with root package name */
    public eie f13351d = new eie(21, new fdy(new ahh(), 17, EnumSet.noneOf(evu.class)));

    /* renamed from: b, reason: collision with root package name */
    public static final dba f13349b = dsr.k(cqv.class);

    /* renamed from: a, reason: collision with root package name */
    public static int f13348a = 1;

    public cqv(gez gezVar) {
        this.f13350c = gezVar;
    }

    public static boolean e(byte[] bArr, byte[] bArr2) {
        int length = bArr2.length;
        if (bArr.length >= length) {
            for (int i = 0; i < length; i++) {
                if (bArr[i] == bArr2[i]) {
                }
            }
            return true;
        }
        return false;
    }

    public final List f(String str, byte[] bArr) {
        aot aotVar;
        if (acw.ac(36, bArr) < 120) {
            aotVar = null;
        } else {
            int ac = acw.ac(32, bArr);
            int ac2 = acw.ac(112, bArr);
            acw.ac(116, bArr);
            aotVar = new aot(ac, ac2, 1);
        }
        int i = 0;
        if (aotVar == null) {
            return Collections.singletonList(g(str, 0, bArr));
        }
        int i2 = aotVar.f10586b;
        int min = Math.min(aotVar.f10587c, bArr.length);
        ArrayList arrayList = new ArrayList();
        while (true) {
            arrayList.add(Integer.valueOf(i));
            if (i2 >= min) {
                return (List) Collection.b.stream(arrayList).map(new oe(this, str, bArr, 0)).collect(Collectors.toList());
            }
            int i3 = i2;
            i2 = acw.ac(i2 + 32, bArr) + i2;
            i = i3;
        }
    }

    public final eyc g(String str, int i, byte[] bArr) {
        int i2;
        if (this.f13350c.f18010g) {
            int i3 = i + 32;
            if (i + 36 > bArr.length) {
                throw new beo(tn.x("Dex file truncated, can't read file length, file: ", str));
            }
            int ac = acw.ac(i3, bArr);
            if (i + ac > bArr.length) {
                throw new beo("Dex file truncated, length in header: " + ac + ", file: " + str);
            }
            int ac2 = acw.ac(i + 8, bArr);
            Adler32 adler32 = new Adler32();
            adler32.update(bArr, i + 12, ac - 12);
            int value = (int) adler32.getValue();
            if (ac2 != value) {
                throw new beo(String.format("Bad dex file checksum: 0x%08x, expected: 0x%08x, file: %s", Integer.valueOf(value), Integer.valueOf(ac2), str));
            }
        }
        synchronized (cqv.class) {
            try {
                int i4 = f13348a + 1;
                f13348a = i4;
                if (i4 >= 65535) {
                    f13348a = 1;
                }
                i2 = f13348a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return new eyc(str, bArr, i2, i);
    }

    public final ArrayList h(File file) {
        List i;
        dba dbaVar = f13349b;
        ArrayList arrayList = new ArrayList();
        try {
            eqm k = this.f13351d.k(file);
            try {
                for (ffs ffsVar : k.f15999d) {
                    if (!ffsVar.isDirectory()) {
                        try {
                            if (ffsVar.f()) {
                                byte[] e2 = ffsVar.e();
                                String name = ffsVar.getName();
                                if (!e(e2, cux.s) && !name.endsWith(".dex")) {
                                    i = Collections.EMPTY_LIST;
                                }
                                i = f(name, e2);
                            } else {
                                i = i(null, ffsVar.g(), ffsVar.getName());
                            }
                            if (!i.isEmpty()) {
                                arrayList.addAll(i);
                            }
                        } catch (Exception e3) {
                            dbaVar.b(ffsVar, "Failed to read zip entry: {}", e3);
                        }
                    }
                }
                k.close();
            } finally {
            }
        } catch (Exception e4) {
            dbaVar.b(file.getAbsolutePath(), "Failed to process zip file: {}", e4);
        }
        return arrayList;
    }

    public final List i(File file, InputStream inputStream, String str) {
        if (!inputStream.markSupported()) {
            inputStream = new BufferedInputStream(inputStream);
        }
        try {
            byte[] bArr = new byte[4];
            inputStream.mark(4);
            if (inputStream.read(bArr) != 4) {
                List list = Collections.EMPTY_LIST;
                inputStream.close();
                return list;
            }
            if (!e(bArr, cux.s)) {
                if (str.endsWith(".dex")) {
                    f13349b.q("Invalid DEX magic: 0x{}(\"{}\") in file: {}", bqu.h(bArr), new String(bArr, StandardCharsets.US_ASCII), str);
                }
                if (file == null || !(e(bArr, cux.u) || exb.c(str))) {
                    List list2 = Collections.EMPTY_LIST;
                    inputStream.close();
                    return list2;
                }
                ArrayList h = h(file);
                inputStream.close();
                return h;
            }
            inputStream.reset();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[8192];
            while (true) {
                int read = inputStream.read(bArr2);
                if (read == -1) {
                    List f2 = f(str, byteArrayOutputStream.toByteArray());
                    inputStream.close();
                    return f2;
                }
                byteArrayOutputStream.write(bArr2, 0, read);
            }
        } catch (Throwable th) {
            try {
                inputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
