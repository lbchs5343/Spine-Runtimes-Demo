package com.ss.android.socialbase.downloader.model;

import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.kk.iw;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;

/* loaded from: classes.dex */
public class s implements Closeable {

    /* renamed from: d, reason: collision with root package name */
    private FileDescriptor f9448d;
    private BufferedOutputStream dq;
    private RandomAccessFile ox;

    public s(File file, int i) throws BaseException {
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            this.ox = randomAccessFile;
            this.f9448d = randomAccessFile.getFD();
            if (i <= 0) {
                this.dq = new BufferedOutputStream(new FileOutputStream(this.ox.getFD()));
                return;
            }
            if (i < 8192) {
                i = 8192;
            } else if (i > 131072) {
                i = 131072;
            }
            this.dq = new BufferedOutputStream(new FileOutputStream(this.ox.getFD()), i);
        } catch (IOException e2) {
            throw new BaseException(1039, e2);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        iw.dq(this.ox, this.dq);
    }

    public void d() throws IOException {
        BufferedOutputStream bufferedOutputStream = this.dq;
        if (bufferedOutputStream != null) {
            bufferedOutputStream.flush();
        }
    }

    public void d(long j) throws IOException {
        this.ox.setLength(j);
    }

    public void dq() throws IOException {
        BufferedOutputStream bufferedOutputStream = this.dq;
        if (bufferedOutputStream != null) {
            bufferedOutputStream.flush();
        }
        FileDescriptor fileDescriptor = this.f9448d;
        if (fileDescriptor != null) {
            fileDescriptor.sync();
        }
    }

    public void dq(long j) throws IOException {
        this.ox.seek(j);
    }

    public void dq(byte[] bArr, int i, int i2) throws IOException {
        this.dq.write(bArr, i, i2);
    }

    public void ox() throws IOException {
        FileDescriptor fileDescriptor = this.f9448d;
        if (fileDescriptor != null) {
            fileDescriptor.sync();
        }
    }
}
