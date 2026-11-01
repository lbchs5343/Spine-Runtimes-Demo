package com.bytedance.sdk.component.ox.d;

import java.io.IOException;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public abstract class h {
    public static h dq(i iVar, String str) {
        Charset charset = com.bytedance.sdk.component.ox.d.dq.ox.s;
        if (iVar != null) {
            Charset ox = iVar.ox();
            if (ox == null) {
                iVar = i.dq(iVar + "; charset=utf-8");
            } else {
                charset = ox;
            }
        }
        return dq(iVar, str.getBytes(charset));
    }

    public static h dq(i iVar, byte[] bArr) {
        return dq(iVar, bArr, 0, bArr.length);
    }

    public static h dq(final i iVar, final byte[] bArr, final int i, final int i2) {
        if (bArr == null) {
            throw new NullPointerException("content == null");
        }
        com.bytedance.sdk.component.ox.d.dq.ox.dq(bArr.length, i, i2);
        return new h() { // from class: com.bytedance.sdk.component.ox.d.h.1
            @Override // com.bytedance.sdk.component.ox.d.h
            public long d() {
                return i2;
            }

            @Override // com.bytedance.sdk.component.ox.d.h
            public i dq() {
                return i.this;
            }

            @Override // com.bytedance.sdk.component.ox.d.h
            public void dq(com.bytedance.sdk.component.ox.dq.p pVar) throws IOException {
                pVar.ox(bArr, i, i2);
            }
        };
    }

    public long d() throws IOException {
        return -1L;
    }

    public abstract i dq();

    public abstract void dq(com.bytedance.sdk.component.ox.dq.p pVar) throws IOException;
}
