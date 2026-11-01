package com.bytedance.sdk.component.panglearmor.dq.dq.d.dq.dq;

import com.bytedance.component.sdk.annotation.DungeonFlag;
import com.bytedance.sdk.component.panglearmor.dq.d.d;
import java.io.ByteArrayInputStream;
import java.nio.ByteBuffer;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class dq {
    @DungeonFlag
    private static com.bytedance.sdk.component.panglearmor.dq.d.dq d(ByteBuffer byteBuffer) throws Exception {
        ByteBuffer dq = com.bytedance.sdk.component.panglearmor.dq.dq.d.dq.dq.dq(byteBuffer);
        dq.get(new byte[dq.remaining()]);
        dq.flip();
        dq.position(0);
        com.bytedance.sdk.component.panglearmor.dq.dq.d.dq.dq.dq(dq);
        byte[] d2 = com.bytedance.sdk.component.panglearmor.dq.dq.d.dq.dq.d(com.bytedance.sdk.component.panglearmor.dq.dq.d.dq.dq.dq(dq));
        try {
            return new com.bytedance.sdk.component.panglearmor.dq.d.dq(String.valueOf(((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(d2))).getSubjectDN()), d2);
        } catch (Exception unused) {
            return null;
        }
    }

    public static List<com.bytedance.sdk.component.panglearmor.dq.d.dq> dq(d dVar, com.bytedance.sdk.component.panglearmor.dq.dq.ox.d dVar2) throws Exception {
        return dq(com.bytedance.sdk.component.panglearmor.dq.dq.d.dq.dq.dq(dVar, dVar2, 1896449818).dq);
    }

    public static List<com.bytedance.sdk.component.panglearmor.dq.d.dq> dq(ByteBuffer byteBuffer) {
        try {
            ByteBuffer dq = com.bytedance.sdk.component.panglearmor.dq.dq.d.dq.dq.dq(byteBuffer);
            if (!dq.hasRemaining()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            while (dq.hasRemaining()) {
                try {
                    arrayList.add(d(com.bytedance.sdk.component.panglearmor.dq.dq.d.dq.dq.dq(dq)));
                } catch (Exception unused) {
                    return null;
                }
            }
            return arrayList;
        } catch (Exception unused2) {
            return null;
        }
    }
}
