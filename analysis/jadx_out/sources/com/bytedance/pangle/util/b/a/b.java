package com.bytedance.pangle.util.b.a;

import com.bytedance.pangle.util.b.b.d;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.List;

/* loaded from: classes.dex */
public final class b {
    public static void a(d dVar, ByteArrayOutputStream byteArrayOutputStream) {
        List<com.bytedance.pangle.util.b.b.c> list;
        com.bytedance.pangle.util.b.b.a aVar = dVar.f1634a;
        if (aVar == null || (list = aVar.f1624a) == null || list.size() <= 0) {
            return;
        }
        for (com.bytedance.pangle.util.b.b.c cVar : dVar.f1634a.f1624a) {
            c cVar2 = dVar.f1636c;
            if (cVar == null) {
                throw new IOException("input parameters is null, cannot write local file header");
            }
            byte[] bArr = {0, 0};
            cVar2.a((OutputStream) byteArrayOutputStream, 33639248);
            cVar2.a(byteArrayOutputStream, 0);
            cVar2.a(byteArrayOutputStream, 0);
            cVar2.a(byteArrayOutputStream, 0);
            cVar2.a(byteArrayOutputStream, cVar.f1627a);
            cVar2.a(byteArrayOutputStream, 2081);
            cVar2.a(byteArrayOutputStream, 545);
            cVar2.a((OutputStream) byteArrayOutputStream, (int) cVar.f1628b);
            cVar2.a((OutputStream) byteArrayOutputStream, (int) cVar.f1629c);
            cVar2.a((OutputStream) byteArrayOutputStream, (int) cVar.f1630d);
            byte[] bArr2 = new byte[0];
            String str = cVar.h;
            if (str != null && str.trim().length() > 0) {
                bArr2 = cVar.h.getBytes(Charset.forName("UTF-8"));
            }
            cVar2.a(byteArrayOutputStream, bArr2.length);
            int i = cVar.f1632f;
            cVar2.a(byteArrayOutputStream, i);
            cVar2.a(byteArrayOutputStream, 0);
            byteArrayOutputStream.write(bArr);
            byteArrayOutputStream.write(bArr);
            byteArrayOutputStream.write(bArr);
            byteArrayOutputStream.write(bArr);
            cVar2.a((OutputStream) byteArrayOutputStream, (int) cVar.i);
            if (bArr2.length > 0) {
                byteArrayOutputStream.write(bArr2);
            }
            if (i > 0) {
                byteArrayOutputStream.write(new byte[i]);
            }
        }
    }
}
