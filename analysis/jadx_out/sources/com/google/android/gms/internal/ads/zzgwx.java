package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgwx;
import com.google.android.gms.internal.ads.zzgwy;
import g.aez;
import g.awf;
import g.bfo;
import g.gxd;
import g.tn;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class zzgwx<MessageType extends zzgwy<MessageType, BuilderType>, BuilderType extends zzgwx<MessageType, BuilderType>> implements zzhah {
    public static void a(List list, int i) {
        String b2 = awf.b(list.size() - i, "Element at index ", " is null.");
        int size = list.size();
        while (true) {
            size--;
            if (size < i) {
                throw new NullPointerException(b2);
            }
            list.remove(size);
        }
    }

    public abstract zzgyr b(zzgwy zzgwyVar);

    public final String c(String str) {
        return tn.r("Reading ", getClass().getName(), " from a ", str, " threw an IOException (should never happen).");
    }

    @Override // 
    /* renamed from: zzaC, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public abstract BuilderType clone();

    public BuilderType zzaE(zzgxp zzgxpVar) throws zzgzm {
        try {
            zzgxv zzl = zzgxpVar.zzl();
            zzaR(zzl);
            zzl.zzy(0);
            return this;
        } catch (zzgzm e2) {
            throw e2;
        } catch (IOException e3) {
            throw new RuntimeException(c("ByteString"), e3);
        }
    }

    /* renamed from: zzaF, reason: merged with bridge method [inline-methods] */
    public BuilderType zzaR(zzgxv zzgxvVar) throws IOException {
        zzgyh zzgyhVar = zzgyh.f8676a;
        gxd gxdVar = gxd.f18927a;
        return zzaW(zzgxvVar, zzgyh.f8677b);
    }

    /* renamed from: zzaG, reason: merged with bridge method [inline-methods] */
    public BuilderType zzaS(zzhai zzhaiVar) {
        if (zzbt().getClass().isInstance(zzhaiVar)) {
            return b((zzgwy) zzhaiVar);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    public BuilderType zzaH(InputStream inputStream) throws IOException {
        zzgxv zzG = zzgxv.zzG(inputStream, 4096);
        zzaR(zzG);
        zzG.zzy(0);
        return this;
    }

    /* renamed from: zzaI, reason: merged with bridge method [inline-methods] */
    public BuilderType zzaU(byte[] bArr) throws zzgzm {
        return zzaZ(bArr, 0, bArr.length);
    }

    public BuilderType zzaJ(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
        try {
            zzgxv zzl = zzgxpVar.zzl();
            zzaW(zzl, zzgyhVar);
            zzl.zzy(0);
            return this;
        } catch (zzgzm e2) {
            throw e2;
        } catch (IOException e3) {
            throw new RuntimeException(c("ByteString"), e3);
        }
    }

    @Override // 
    /* renamed from: zzaK, reason: merged with bridge method [inline-methods] */
    public abstract BuilderType zzaW(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException;

    public BuilderType zzaL(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
        zzgxv zzG = zzgxv.zzG(inputStream, 4096);
        zzaW(zzG, zzgyhVar);
        zzG.zzy(0);
        return this;
    }

    /* renamed from: zzaM, reason: merged with bridge method [inline-methods] */
    public BuilderType zzaY(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
        return zzba(bArr, 0, bArr.length, zzgyhVar);
    }

    @Override // 
    /* renamed from: zzaN, reason: merged with bridge method [inline-methods] */
    public BuilderType zzaZ(byte[] bArr, int i, int i2) throws zzgzm {
        try {
            aez c2 = zzgxv.c(i, bArr, i2);
            zzaR(c2);
            c2.zzy(0);
            return this;
        } catch (zzgzm e2) {
            throw e2;
        } catch (IOException e3) {
            throw new RuntimeException(c("byte array"), e3);
        }
    }

    @Override // 
    /* renamed from: zzaO, reason: merged with bridge method [inline-methods] */
    public BuilderType zzba(byte[] bArr, int i, int i2, zzgyh zzgyhVar) throws zzgzm {
        try {
            aez c2 = zzgxv.c(i, bArr, i2);
            zzaW(c2, zzgyhVar);
            c2.zzy(0);
            return this;
        } catch (zzgzm e2) {
            throw e2;
        } catch (IOException e3) {
            throw new RuntimeException(c("byte array"), e3);
        }
    }

    public /* bridge */ /* synthetic */ zzhah zzaQ(zzgxp zzgxpVar) throws zzgzm {
        zzaE(zzgxpVar);
        return this;
    }

    public /* bridge */ /* synthetic */ zzhah zzaT(InputStream inputStream) throws IOException {
        zzaH(inputStream);
        return this;
    }

    public /* bridge */ /* synthetic */ zzhah zzaV(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
        zzaJ(zzgxpVar, zzgyhVar);
        return this;
    }

    public /* bridge */ /* synthetic */ zzhah zzaX(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
        zzaL(inputStream, zzgyhVar);
        return this;
    }

    public boolean zzbe(InputStream inputStream) throws IOException {
        zzgyh zzgyhVar = zzgyh.f8676a;
        gxd gxdVar = gxd.f18927a;
        return zzbf(inputStream, zzgyh.f8677b);
    }

    public boolean zzbf(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
        int read = inputStream.read();
        if (read == -1) {
            return false;
        }
        zzaL(new bfo(inputStream, zzgxv.zzE(read, inputStream)), zzgyhVar);
        return true;
    }
}
