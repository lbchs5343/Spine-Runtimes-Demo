package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.os.Process;
import java.io.BufferedInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import ms.bz.bd.c.Pgl.pblb;

/* loaded from: classes.dex */
public abstract class pblo extends pblb.pgla {
    public static void c(BufferedInputStream bufferedInputStream) {
        if (bufferedInputStream != null) {
            try {
                bufferedInputStream.close();
            } catch (IOException unused) {
                pblk.a(16777217, 0, 0L, "e8d1f5", new byte[]{121, 57, 40, 70, 80});
            }
        }
    }

    public static void d(DataOutputStream dataOutputStream) {
        if (dataOutputStream != null) {
            try {
                dataOutputStream.close();
            } catch (IOException unused) {
                pblk.a(16777217, 0, 0L, "84031b", new byte[]{36, 53, 124, 68, 1});
            }
        }
    }

    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object b(int i, int i2, long j, String str, Object obj) {
        String[] strArr = {(String) pblk.a(16777217, 0, 0L, "cdd909", new byte[]{115, 104, 19, 95, 0, 39, 100, 11, 37, 108, 96, 107, 30, 94, 28, 39, 111, 75, 123, 64, 92, 82, 50, Byte.MAX_VALUE, 33, 11, 84})};
        try {
            Context context = pgla.f21199a.f21200b;
            for (int i3 = 0; i3 <= 0; i3++) {
                if (context.checkPermission(strArr[0], Process.myPid(), Process.myUid()) != 0) {
                    return null;
                }
            }
            switch (i) {
                case 196609:
                    Object[] objArr = (Object[]) obj;
                    return g(str, (String) objArr[1], (String) objArr[2], (byte[]) objArr[0]);
                case 196610:
                    Object[] objArr2 = (Object[]) obj;
                    return e(str, (String) objArr2[0], (String) objArr2[1]);
                case 196611:
                    Object[] objArr3 = (Object[]) obj;
                    return f(str, (String) objArr3[0], (String) objArr3[1]);
                default:
                    return null;
            }
        } catch (Throwable unused) {
            return null;
        }
    }

    public abstract Object[] e(String str, String str2, String str3);

    public abstract Object[] f(String str, String str2, String str3);

    public abstract Object[] g(String str, String str2, String str3, byte[] bArr);
}
