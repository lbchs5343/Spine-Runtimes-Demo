package com.bytedance.pangle.res.a;

import g.awf;
import java.io.EOFException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class d {
    private static <T> T a(T t) {
        t.getClass();
        return t;
    }

    public static void a(InputStream inputStream, byte[] bArr, int i, int i2) {
        a(inputStream);
        a(bArr);
        if (i2 < 0) {
            throw new IndexOutOfBoundsException(awf.b(i2, "len (", ") cannot be negative"));
        }
        int i3 = i + i2;
        int length = bArr.length;
        if (i < 0 || i3 < i || i3 > length) {
            StringBuilder sb = new StringBuilder();
            sb.append(i);
            sb.append(i3);
            sb.append(length);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        int i4 = 0;
        while (i4 < i2) {
            int read = inputStream.read(bArr, i + i4, i2 - i4);
            if (read == -1) {
                break;
            } else {
                i4 += read;
            }
        }
        if (i4 == i2) {
            return;
        }
        throw new EOFException("reached end of stream after reading " + i4 + " bytes; " + i2 + " bytes expected");
    }
}
