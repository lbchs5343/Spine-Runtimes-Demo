package com.bytedance.sdk.component.panglearmor.dq.dq.d.dq;

import com.bytedance.sdk.component.panglearmor.dq.dq.dq.d;
import g.awf;
import g.tn;
import java.io.IOException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public class d {
    public static ByteBuffer d(ByteBuffer byteBuffer) throws Exception {
        if (byteBuffer.remaining() < 4) {
            throw new Exception("Remaining buffer too short to contain length of length-prefixed field. Remaining: " + byteBuffer.remaining());
        }
        int i = byteBuffer.getInt();
        if (i < 0) {
            throw new IllegalArgumentException("Negative length");
        }
        if (i <= byteBuffer.remaining()) {
            return d(byteBuffer, i);
        }
        StringBuilder z = tn.z(i, "Length-prefixed field longer than remaining buffer. Field length: ", ", remaining: ");
        z.append(byteBuffer.remaining());
        throw new Exception(z.toString());
    }

    private static ByteBuffer d(ByteBuffer byteBuffer, int i) {
        if (i < 0) {
            throw new IllegalArgumentException("size: ".concat(String.valueOf(i)));
        }
        int limit = byteBuffer.limit();
        int position = byteBuffer.position();
        int i2 = i + position;
        if (i2 < position || i2 > limit) {
            throw new BufferUnderflowException();
        }
        byteBuffer.limit(i2);
        try {
            ByteBuffer slice = byteBuffer.slice();
            slice.order(byteBuffer.order());
            byteBuffer.position(i2);
            return slice;
        } finally {
            byteBuffer.limit(limit);
        }
    }

    public static ox dq(com.bytedance.sdk.component.panglearmor.dq.d.d dVar, com.bytedance.sdk.component.panglearmor.dq.dq.ox.d dVar2, int i) throws IOException, Exception {
        try {
            d.dq dq = com.bytedance.sdk.component.panglearmor.dq.dq.dq.d.dq(dVar, dVar2);
            long dq2 = dq.dq();
            com.bytedance.sdk.component.panglearmor.dq.d.d d2 = dq.d();
            ByteBuffer dq3 = d2.dq(0L, (int) d2.dq());
            dq3.order(ByteOrder.LITTLE_ENDIAN);
            return new ox(dq(dq3, i), dq2, dVar2.dq(), dVar2.p(), dVar2.s());
        } catch (Exception e2) {
            throw new Exception(e2.getMessage(), e2);
        }
    }

    public static ByteBuffer dq(ByteBuffer byteBuffer, int i) throws Exception {
        dq(byteBuffer);
        ByteBuffer dq = dq(byteBuffer, 8, byteBuffer.capacity() - 24);
        int i2 = 0;
        while (dq.hasRemaining()) {
            i2++;
            if (dq.remaining() < 8) {
                throw new Exception("Insufficient data to read size of APK Signing Block entry #".concat(String.valueOf(i2)));
            }
            long j = dq.getLong();
            if (j < 4 || j > 2147483647L) {
                throw new Exception("APK Signing Block entry #" + i2 + " size out of range: " + j);
            }
            int i3 = (int) j;
            int position = dq.position() + i3;
            if (i3 > dq.remaining()) {
                StringBuilder z = awf.z(i2, i3, "APK Signing Block entry #", " size out of range: ", ", available: ");
                z.append(dq.remaining());
                throw new Exception(z.toString());
            }
            if (dq.getInt() == i) {
                return d(dq, i3 - 4);
            }
            dq.position(position);
        }
        throw new Exception("No APK Signature Scheme block in APK Signing Block with ID: ".concat(String.valueOf(i)));
    }

    private static ByteBuffer dq(ByteBuffer byteBuffer, int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("start: ".concat(String.valueOf(i)));
        }
        if (i2 < i) {
            throw new IllegalArgumentException(tn.t(i2, i, "end < start: ", " < "));
        }
        int capacity = byteBuffer.capacity();
        if (i2 > byteBuffer.capacity()) {
            throw new IllegalArgumentException(tn.t(i2, capacity, "end > capacity: ", " > "));
        }
        int limit = byteBuffer.limit();
        int position = byteBuffer.position();
        try {
            byteBuffer.position(0);
            byteBuffer.limit(i2);
            byteBuffer.position(i);
            ByteBuffer slice = byteBuffer.slice();
            slice.order(byteBuffer.order());
            return slice;
        } finally {
            byteBuffer.position(0);
            byteBuffer.limit(limit);
            byteBuffer.position(position);
        }
    }

    public static void dq(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    public static byte[] ox(ByteBuffer byteBuffer) throws Exception {
        int i = byteBuffer.getInt();
        if (i < 0) {
            throw new Exception("Negative length");
        }
        if (i <= byteBuffer.remaining()) {
            byte[] bArr = new byte[i];
            byteBuffer.get(bArr);
            return bArr;
        }
        StringBuilder z = tn.z(i, "Underflow while reading length-prefixed value. Length: ", ", available: ");
        z.append(byteBuffer.remaining());
        throw new Exception(z.toString());
    }
}
