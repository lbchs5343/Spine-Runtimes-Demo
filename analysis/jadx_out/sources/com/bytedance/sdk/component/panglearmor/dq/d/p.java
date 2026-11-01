package com.bytedance.sdk.component.panglearmor.dq.d;

import g.awf;
import g.tn;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

/* loaded from: classes.dex */
public class p implements d {

    /* renamed from: d, reason: collision with root package name */
    private final long f2175d;
    private final FileChannel dq;
    private final long ox;

    public p(FileChannel fileChannel, long j, long j2) {
        if (j < 0) {
            throw new IndexOutOfBoundsException("offset: ".concat(String.valueOf(j2)));
        }
        if (j2 < 0) {
            throw new IndexOutOfBoundsException("size: ".concat(String.valueOf(j2)));
        }
        this.dq = fileChannel;
        this.f2175d = j;
        this.ox = j2;
    }

    private static void dq(long j, long j2, long j3) {
        if (j < 0) {
            throw new IndexOutOfBoundsException("offset: ".concat(String.valueOf(j)));
        }
        if (j2 < 0) {
            throw new IndexOutOfBoundsException("size: ".concat(String.valueOf(j2)));
        }
        if (j > j3) {
            throw new IndexOutOfBoundsException(tn.f(j3, ")", awf.l(j, "offset (", ") > source size (")));
        }
        long j4 = j + j2;
        if (j4 < j) {
            throw new IndexOutOfBoundsException(tn.f(j2, ") overflow", awf.l(j, "offset (", ") + size (")));
        }
        if (j4 <= j3) {
            return;
        }
        StringBuilder l = awf.l(j, "offset (", ") + size (");
        l.append(j2);
        l.append(") > source size (");
        l.append(j3);
        l.append(")");
        throw new IndexOutOfBoundsException(l.toString());
    }

    @Override // com.bytedance.sdk.component.panglearmor.dq.d.d
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public p dq(long j, long j2) {
        long dq = dq();
        dq(j, j2, dq);
        return (j == 0 && j2 == dq) ? this : new p(this.dq, this.f2175d + j, j2);
    }

    @Override // com.bytedance.sdk.component.panglearmor.dq.d.d
    public long dq() {
        long j = this.ox;
        if (j != -1) {
            return j;
        }
        try {
            return this.dq.size();
        } catch (IOException unused) {
            return 0L;
        }
    }

    @Override // com.bytedance.sdk.component.panglearmor.dq.d.d
    public ByteBuffer dq(long j, int i) throws IOException {
        if (i < 0) {
            throw new IndexOutOfBoundsException("size: ".concat(String.valueOf(i)));
        }
        ByteBuffer allocate = ByteBuffer.allocate(i);
        dq(j, i, allocate);
        allocate.flip();
        return allocate;
    }

    public void dq(long j, int i, ByteBuffer byteBuffer) throws IOException {
        int read;
        dq(j, i, dq());
        if (i == 0) {
            return;
        }
        if (i > byteBuffer.remaining()) {
            throw new BufferOverflowException();
        }
        long j2 = this.f2175d + j;
        int limit = byteBuffer.limit();
        try {
            byteBuffer.limit(byteBuffer.position() + i);
            while (i > 0) {
                synchronized (this.dq) {
                    this.dq.position(j2);
                    read = this.dq.read(byteBuffer);
                }
                j2 += read;
                i -= read;
            }
        } finally {
            byteBuffer.limit(limit);
        }
    }
}
