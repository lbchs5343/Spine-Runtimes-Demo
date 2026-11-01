package com.ss.android.dq;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* loaded from: classes.dex */
public class dq implements d {
    private final RandomAccessFile dq;

    public dq(File file) throws FileNotFoundException {
        this.dq = new RandomAccessFile(file, "r");
    }

    @Override // com.ss.android.dq.d
    public void d() throws IOException {
        this.dq.close();
    }

    @Override // com.ss.android.dq.d
    public int dq(byte[] bArr, int i, int i2) throws IOException {
        return this.dq.read(bArr, i, i2);
    }

    @Override // com.ss.android.dq.d
    public long dq() throws IOException {
        return this.dq.length();
    }

    @Override // com.ss.android.dq.d
    public void dq(long j, long j2) throws IOException {
        this.dq.seek(j);
    }
}
