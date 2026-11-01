package com.bytedance.pangle.f.a;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    InputStream f1405a;

    /* renamed from: b, reason: collision with root package name */
    private int f1406b;

    public b(InputStream inputStream) {
        a(inputStream);
    }

    public final int a() {
        int i = 0;
        for (int i2 = 0; i2 != 32; i2 += 8) {
            int read = this.f1405a.read();
            if (read == -1) {
                throw new EOFException();
            }
            this.f1406b++;
            i |= read << i2;
        }
        return i;
    }

    public final void a(InputStream inputStream) {
        this.f1405a = inputStream;
        this.f1406b = 0;
    }

    public final int[] a(int i) {
        int[] iArr = new int[i];
        int i2 = 0;
        while (i > 0) {
            iArr[i2] = a();
            i--;
            i2++;
        }
        return iArr;
    }

    public final void b() {
        long skip = this.f1405a.skip(4L);
        this.f1406b = (int) (this.f1406b + skip);
        if (skip != 4) {
            throw new EOFException();
        }
    }

    public final void b(int i) {
        int a2 = a();
        if (a2 != i) {
            throw new IOException(String.format("Expected: 0x%08x got: 0x%08x", Integer.valueOf(i), Integer.valueOf(a2)));
        }
    }
}
