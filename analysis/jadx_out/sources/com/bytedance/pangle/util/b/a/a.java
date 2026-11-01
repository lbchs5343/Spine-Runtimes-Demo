package com.bytedance.pangle.util.b.a;

import com.bytedance.pangle.util.b.b.d;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class a {
    public static d a(String str) {
        RandomAccessFile randomAccessFile = null;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(str, "r");
            try {
                if (randomAccessFile2.length() < 22) {
                    throw new IOException("Zip file size less than minimum expected zip file size. Probably not a zip file or a corrupted zip file");
                }
                d dVar = new d(str);
                long length = randomAccessFile2.length();
                if (length < 22) {
                    throw new IOException("Zip file size less than size of zip headers. Probably not a zip file.");
                }
                long j = length - 22;
                randomAccessFile2.seek(j);
                if (dVar.f1636c.a(randomAccessFile2) != 101010256) {
                    j = b(randomAccessFile2, dVar);
                }
                randomAccessFile2.seek(j + 4);
                com.bytedance.pangle.util.b.b.b bVar = new com.bytedance.pangle.util.b.b.b();
                randomAccessFile2.skipBytes(6);
                bVar.f1625a = dVar.f1636c.b(randomAccessFile2);
                randomAccessFile2.skipBytes(4);
                bVar.f1626b = dVar.f1636c.a(randomAccessFile2);
                dVar.f1635b = bVar;
                if (bVar.f1625a == 0) {
                    try {
                        randomAccessFile2.close();
                    } catch (IOException unused) {
                    }
                    return dVar;
                }
                a(randomAccessFile2, dVar);
                try {
                    randomAccessFile2.close();
                } catch (IOException unused2) {
                }
                return dVar;
            } catch (Throwable th) {
                th = th;
                randomAccessFile = randomAccessFile2;
                if (randomAccessFile != null) {
                    try {
                        randomAccessFile.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static void a(RandomAccessFile randomAccessFile, d dVar) {
        com.bytedance.pangle.util.b.b.a aVar = new com.bytedance.pangle.util.b.b.a();
        ArrayList arrayList = new ArrayList();
        com.bytedance.pangle.util.b.b.b bVar = dVar.f1635b;
        long j = bVar.f1626b;
        long j2 = bVar.f1625a;
        randomAccessFile.seek(j);
        for (int i = 0; i < j2; i++) {
            com.bytedance.pangle.util.b.b.c cVar = new com.bytedance.pangle.util.b.b.c();
            if (dVar.f1636c.a(randomAccessFile) != 33639248) {
                throw new IOException("Expected central directory entry not found (#" + (i + 1) + ")");
            }
            randomAccessFile.skipBytes(6);
            cVar.f1627a = dVar.f1636c.b(randomAccessFile);
            randomAccessFile.skipBytes(4);
            cVar.f1628b = dVar.f1636c.a(randomAccessFile);
            cVar.f1629c = dVar.f1636c.a(randomAccessFile);
            cVar.f1630d = dVar.f1636c.a(randomAccessFile);
            int b2 = dVar.f1636c.b(randomAccessFile);
            cVar.f1631e = b2;
            cVar.f1632f = dVar.f1636c.b(randomAccessFile);
            int b3 = dVar.f1636c.b(randomAccessFile);
            randomAccessFile.skipBytes(8);
            cVar.i = dVar.f1636c.a(randomAccessFile);
            if (b2 <= 0) {
                throw new IOException("Invalid entry name in file header");
            }
            byte[] bArr = new byte[b2];
            randomAccessFile.readFully(bArr);
            cVar.h = new String(bArr, Charset.forName("UTF-8"));
            randomAccessFile.skipBytes(cVar.f1632f);
            if (b3 > 0) {
                randomAccessFile.skipBytes(b3);
            }
            long filePointer = randomAccessFile.getFilePointer();
            randomAccessFile.seek(cVar.i + 28);
            cVar.f1633g = dVar.f1636c.b(randomAccessFile);
            randomAccessFile.seek(filePointer);
            arrayList.add(cVar);
        }
        aVar.f1624a = arrayList;
        dVar.f1634a = aVar;
    }

    private static long b(RandomAccessFile randomAccessFile, d dVar) {
        long length = randomAccessFile.length() - 22;
        for (long length2 = randomAccessFile.length() < 65536 ? randomAccessFile.length() : 65536L; length2 > 0 && length > 0; length2--) {
            length--;
            randomAccessFile.seek(length);
            if (dVar.f1636c.a(randomAccessFile) == 101010256) {
                return length;
            }
        }
        throw new IOException("Zip headers not found. Probably not a zip file");
    }
}
