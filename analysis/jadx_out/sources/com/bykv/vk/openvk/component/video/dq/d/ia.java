package com.bykv.vk.openvk.component.video.dq.d;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* loaded from: classes.dex */
class ia {
    private final RandomAccessFile dq;

    public static class dq extends Exception {
        public dq(Throwable th) {
            super(th);
        }
    }

    public ia(File file, String str) throws dq {
        try {
            this.dq = new RandomAccessFile(file, str);
        } catch (FileNotFoundException e2) {
            throw new dq(e2);
        }
    }

    public int dq(byte[] bArr) throws dq {
        try {
            return this.dq.read(bArr);
        } catch (IOException e2) {
            throw new dq(e2);
        }
    }

    public void dq() {
        com.bykv.vk.openvk.component.video.dq.ox.dq.dq(this.dq);
    }

    public void dq(long j) throws dq {
        try {
            this.dq.seek(j);
        } catch (IOException e2) {
            throw new dq(e2);
        }
    }

    public void dq(byte[] bArr, int i, int i2) throws dq {
        try {
            this.dq.write(bArr, i, i2);
        } catch (IOException e2) {
            throw new dq(e2);
        }
    }
}
