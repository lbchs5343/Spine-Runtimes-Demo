package com.bytedance.sdk.component.panglearmor.dq.dq.d.d;

import android.util.Pair;
import com.bytedance.sdk.component.panglearmor.dq.d.d;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public abstract class dq {
    public static long d(ByteBuffer byteBuffer) {
        p(byteBuffer);
        return d(byteBuffer, byteBuffer.position() + 12);
    }

    public static long d(ByteBuffer byteBuffer, int i) {
        return byteBuffer.getInt(i) & 4294967295L;
    }

    public static int dq(ByteBuffer byteBuffer, int i) {
        return byteBuffer.getShort(i) & 65535;
    }

    public static long dq(ByteBuffer byteBuffer) {
        p(byteBuffer);
        return d(byteBuffer, byteBuffer.position() + 16);
    }

    public static Pair<ByteBuffer, Long> dq(d dVar) throws IOException {
        if (dVar.dq() < 22) {
            return null;
        }
        Pair<ByteBuffer, Long> dq = dq(dVar, 0);
        return dq != null ? dq : dq(dVar, 65535);
    }

    private static Pair<ByteBuffer, Long> dq(d dVar, int i) throws IOException {
        if (i < 0 || i > 65535) {
            throw new IllegalArgumentException("maxCommentSize: ".concat(String.valueOf(i)));
        }
        long dq = dVar.dq();
        if (dq < 22) {
            return null;
        }
        int min = ((int) Math.min(i, dq - 22)) + 22;
        long j = dq - min;
        ByteBuffer dq2 = dVar.dq(j, min);
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        dq2.order(byteOrder);
        int s = s(dq2);
        if (s == -1) {
            return null;
        }
        dq2.position(s);
        ByteBuffer slice = dq2.slice();
        slice.order(byteOrder);
        return new Pair<>(slice, Long.valueOf(j + s));
    }

    public static int ox(ByteBuffer byteBuffer) {
        p(byteBuffer);
        return dq(byteBuffer, byteBuffer.position() + 10);
    }

    public static void p(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    private static int s(ByteBuffer byteBuffer) {
        p(byteBuffer);
        int capacity = byteBuffer.capacity();
        if (capacity < 22) {
            return -1;
        }
        int i = capacity - 22;
        int min = Math.min(i, 65535);
        for (int i2 = 0; i2 <= min; i2++) {
            int i3 = i - i2;
            if (byteBuffer.getInt(i3) == 101010256 && dq(byteBuffer, i3 + 20) == i2) {
                return i3;
            }
        }
        return -1;
    }
}
