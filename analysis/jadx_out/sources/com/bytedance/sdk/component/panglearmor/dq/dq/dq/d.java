package com.bytedance.sdk.component.panglearmor.dq.dq.dq;

import android.util.Pair;
import g.awf;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public class d {

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        private final com.bytedance.sdk.component.panglearmor.dq.d.d f2178d;
        private final long dq;

        public dq(long j, com.bytedance.sdk.component.panglearmor.dq.d.d dVar) {
            this.dq = j;
            this.f2178d = dVar;
        }

        public com.bytedance.sdk.component.panglearmor.dq.d.d d() {
            return this.f2178d;
        }

        public long dq() {
            return this.dq;
        }
    }

    public static dq dq(com.bytedance.sdk.component.panglearmor.dq.d.d dVar, com.bytedance.sdk.component.panglearmor.dq.dq.ox.d dVar2) throws IOException, Exception {
        long dq2 = dVar2.dq();
        long d2 = dVar2.d() + dq2;
        long p = dVar2.p();
        if (d2 != p) {
            StringBuilder l = awf.l(d2, "ZIP Central Directory is not immediately followed by End of Central Directory. CD end: ", ", EoCD start: ");
            l.append(p);
            throw new Exception(l.toString());
        }
        if (dq2 < 32) {
            throw new Exception("APK too small for APK Signing Block. ZIP Central Directory offset: ".concat(String.valueOf(dq2)));
        }
        ByteBuffer dq3 = dVar.dq(dq2 - 24, 24);
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        dq3.order(byteOrder);
        if (dq3.getLong(8) != 2334950737559900225L || dq3.getLong(16) != 3617552046287187010L) {
            throw new Exception("No APK Signing Block before ZIP Central Directory");
        }
        long j = dq3.getLong(0);
        if (j < dq3.capacity() || j > 2147483639) {
            throw new Exception("APK Signing Block size out of range: ".concat(String.valueOf(j)));
        }
        long j2 = (int) (8 + j);
        long j3 = dq2 - j2;
        if (j3 < 0) {
            throw new Exception("APK Signing Block offset out of range: ".concat(String.valueOf(j3)));
        }
        ByteBuffer dq4 = dVar.dq(j3, 8);
        dq4.order(byteOrder);
        long j4 = dq4.getLong(0);
        if (j4 == j) {
            return new dq(j3, dVar.dq(j3, j2));
        }
        StringBuilder l2 = awf.l(j4, "APK Signing Block sizes in header and footer do not match: ", " vs ");
        l2.append(j);
        throw new Exception(l2.toString());
    }

    public static com.bytedance.sdk.component.panglearmor.dq.dq.ox.d dq(com.bytedance.sdk.component.panglearmor.dq.d.d dVar) throws IOException, com.bytedance.sdk.component.panglearmor.dq.dq.ox.dq {
        Pair<ByteBuffer, Long> dq2 = com.bytedance.sdk.component.panglearmor.dq.dq.d.d.dq.dq(dVar);
        if (dq2 == null) {
            throw new com.bytedance.sdk.component.panglearmor.dq.dq.ox.dq("ZIP End of Central Directory record not found");
        }
        ByteBuffer byteBuffer = (ByteBuffer) dq2.first;
        long longValue = ((Long) dq2.second).longValue();
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        long dq3 = com.bytedance.sdk.component.panglearmor.dq.dq.d.d.dq.dq(byteBuffer);
        if (dq3 > longValue) {
            StringBuilder l = awf.l(dq3, "ZIP Central Directory start offset out of range: ", ". ZIP End of Central Directory offset: ");
            l.append(longValue);
            throw new com.bytedance.sdk.component.panglearmor.dq.dq.ox.dq(l.toString());
        }
        long d2 = com.bytedance.sdk.component.panglearmor.dq.dq.d.d.dq.d(byteBuffer);
        long j = dq3 + d2;
        if (j <= longValue) {
            return new com.bytedance.sdk.component.panglearmor.dq.dq.ox.d(dq3, d2, com.bytedance.sdk.component.panglearmor.dq.dq.d.d.dq.ox(byteBuffer), longValue, byteBuffer);
        }
        StringBuilder l2 = awf.l(j, "ZIP Central Directory overlaps with End of Central Directory. CD end: ", ", EoCD start: ");
        l2.append(longValue);
        throw new com.bytedance.sdk.component.panglearmor.dq.dq.ox.dq(l2.toString());
    }
}
