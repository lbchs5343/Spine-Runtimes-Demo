package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgwx;
import com.google.android.gms.internal.ads.zzgwy;
import g.ahn;
import g.awf;
import g.ck;
import g.csi;
import g.fxc;
import g.tn;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public abstract class zzgwy<MessageType extends zzgwy<MessageType, BuilderType>, BuilderType extends zzgwx<MessageType, BuilderType>> implements zzhai {
    protected int zzq = 0;

    public static void bi(Iterable iterable, List list) {
        Charset charset = zzgzk.f8688a;
        iterable.getClass();
        if (iterable instanceof zzgzu) {
            List zza = ((zzgzu) iterable).zza();
            zzgzu zzgzuVar = (zzgzu) list;
            int size = list.size();
            for (Object obj : zza) {
                if (obj == null) {
                    String b2 = awf.b(zzgzuVar.size() - size, "Element at index ", " is null.");
                    int size2 = zzgzuVar.size();
                    while (true) {
                        size2--;
                        if (size2 < size) {
                            throw new NullPointerException(b2);
                        }
                        zzgzuVar.remove(size2);
                    }
                } else if (obj instanceof zzgxp) {
                    zzgzuVar.zzb();
                } else if (obj instanceof byte[]) {
                    byte[] bArr = (byte[]) obj;
                    zzgxp.zzv(bArr, 0, bArr.length);
                    zzgzuVar.zzb();
                } else {
                    zzgzuVar.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof csi) {
            list.addAll((Collection) iterable);
            return;
        }
        if (iterable instanceof Collection) {
            int size3 = ((Collection) iterable).size();
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + size3);
            }
            if (list instanceof ahn) {
                ahn ahnVar = (ahn) list;
                int i = ((ahn) list).f10233d + size3;
                int length = ahnVar.f10234e.length;
                if (i > length) {
                    while (length < i) {
                        length = ((length * 3) / 2) + 1;
                    }
                    ahnVar.f10234e = Arrays.copyOf(ahnVar.f10234e, length);
                }
            }
        }
        int size4 = list.size();
        if (!(iterable instanceof List) || !(iterable instanceof RandomAccess)) {
            for (Object obj2 : iterable) {
                if (obj2 == null) {
                    zzgwx.a(list, size4);
                    throw null;
                }
                list.add(obj2);
            }
            return;
        }
        List list2 = (List) iterable;
        int size5 = list2.size();
        for (int i2 = 0; i2 < size5; i2++) {
            Object obj3 = list2.get(i2);
            if (obj3 == null) {
                zzgwx.a(list, size4);
                throw null;
            }
            list.add(obj3);
        }
    }

    public final String bj(String str) {
        return tn.r("Serializing ", getClass().getName(), " to a ", str, " threw an IOException (should never happen).");
    }

    public int bk() {
        throw new UnsupportedOperationException();
    }

    public int bl(g.ah ahVar) {
        return bk();
    }

    @Override // com.google.android.gms.internal.ads.zzhai
    public zzgxp zzaN() {
        try {
            int zzaY = zzaY();
            zzgxp zzgxpVar = zzgxp.zzb;
            byte[] bArr = new byte[zzaY];
            fxc fxcVar = new fxc(bArr, zzaY);
            zzda(fxcVar);
            fxcVar.zzF();
            return new ah(bArr);
        } catch (IOException e2) {
            throw new RuntimeException(bj("ByteString"), e2);
        }
    }

    public zzhan zzaO() {
        throw new UnsupportedOperationException("mutableCopy() is not implemented.");
    }

    public void zzaT(OutputStream outputStream) throws IOException {
        int zzaY = zzaY();
        int zzD = zzgyc.zzD(zzaY) + zzaY;
        if (zzD > 4096) {
            zzD = 4096;
        }
        ck ckVar = new ck(outputStream, zzD);
        ckVar.zzu(zzaY);
        zzda(ckVar);
        ckVar.zzK();
    }

    public void zzaU(OutputStream outputStream) throws IOException {
        int zzaY = zzaY();
        Logger logger = zzgyc.f8673a;
        if (zzaY > 4096) {
            zzaY = 4096;
        }
        ck ckVar = new ck(outputStream, zzaY);
        zzda(ckVar);
        ckVar.zzK();
    }

    public byte[] zzaV() {
        try {
            int zzaY = zzaY();
            byte[] bArr = new byte[zzaY];
            fxc fxcVar = new fxc(bArr, zzaY);
            zzda(fxcVar);
            fxcVar.zzF();
            return bArr;
        } catch (IOException e2) {
            throw new RuntimeException(bj("byte array"), e2);
        }
    }
}
