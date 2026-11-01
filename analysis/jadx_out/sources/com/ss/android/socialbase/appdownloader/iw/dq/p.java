package com.ss.android.socialbase.appdownloader.iw.dq;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class p {

    /* renamed from: d, reason: collision with root package name */
    private boolean f9286d;
    private InputStream dq;
    private int ox;

    public p() {
    }

    public p(InputStream inputStream, boolean z) {
        dq(inputStream, z);
    }

    public final int d() throws IOException {
        return dq(4);
    }

    public final int[] d(int i) throws IOException {
        int[] iArr = new int[i];
        dq(iArr, 0, i);
        return iArr;
    }

    public final int dq(int i) throws IOException {
        if (i < 0 || i > 4) {
            throw new IllegalArgumentException();
        }
        int i2 = 0;
        if (this.f9286d) {
            for (int i3 = (i - 1) * 8; i3 >= 0; i3 -= 8) {
                int read = this.dq.read();
                if (read == -1) {
                    throw new EOFException();
                }
                this.ox++;
                i2 |= read << i3;
            }
            return i2;
        }
        int i4 = i * 8;
        int i5 = 0;
        while (i2 != i4) {
            int read2 = this.dq.read();
            if (read2 == -1) {
                throw new EOFException();
            }
            this.ox++;
            i5 |= read2 << i2;
            i2 += 8;
        }
        return i5;
    }

    public final void dq() {
        InputStream inputStream = this.dq;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
            dq(null, false);
        }
    }

    public final void dq(InputStream inputStream, boolean z) {
        this.dq = inputStream;
        this.f9286d = z;
        this.ox = 0;
    }

    public final void dq(int[] iArr, int i, int i2) throws IOException {
        while (i2 > 0) {
            iArr[i] = d();
            i2--;
            i++;
        }
    }

    public final void ox() throws IOException {
        ox(4);
    }

    public final void ox(int i) throws IOException {
        if (i > 0) {
            long j = i;
            long skip = this.dq.skip(j);
            this.ox = (int) (this.ox + skip);
            if (skip != j) {
                throw new EOFException();
            }
        }
    }
}
