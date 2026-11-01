package com.google.android.gms.internal.ads;

import g.bso;
import g.eub;
import g.gbc;
import g.tb;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public abstract class zzgyc extends zzgxg {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f8673a = Logger.getLogger(zzgyc.class.getName());

    /* renamed from: b, reason: collision with root package name */
    public static final boolean f8674b = gbc.f17845c;
    public static final /* synthetic */ int zzf = 0;

    /* renamed from: c, reason: collision with root package name */
    public eub f8675c;

    public static int zzC(String str) {
        int length;
        try {
            length = bso.f(str);
        } catch (tb unused) {
            length = str.getBytes(zzgzk.f8688a).length;
        }
        return zzD(length) + length;
    }

    public static int zzD(int i) {
        return (352 - (Integer.numberOfLeadingZeros(i) * 9)) >>> 6;
    }

    public static int zzE(long j) {
        return (640 - (Long.numberOfLeadingZeros(j) * 9)) >>> 6;
    }

    public static int zzz(zzhai zzhaiVar) {
        int zzaY = zzhaiVar.zzaY();
        return zzD(zzaY) + zzaY;
    }

    public final void d(String str, tb tbVar) {
        f8673a.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) tbVar);
        byte[] bytes = str.getBytes(zzgzk.f8688a);
        try {
            int length = bytes.length;
            zzu(length);
            zza(bytes, 0, length);
        } catch (IndexOutOfBoundsException e2) {
            throw new zzgxz(e2);
        }
    }

    public abstract void e(int i, zzhai zzhaiVar, g.ah ahVar);

    public final void zzF() {
        if (zzb() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public abstract void zzK() throws IOException;

    public abstract void zzL(byte b2) throws IOException;

    public abstract void zzM(int i, boolean z) throws IOException;

    public abstract void zzN(int i, zzgxp zzgxpVar) throws IOException;

    @Override // com.google.android.gms.internal.ads.zzgxg
    public abstract void zza(byte[] bArr, int i, int i2) throws IOException;

    public abstract int zzb();

    public abstract void zzh(int i, int i2) throws IOException;

    public abstract void zzi(int i) throws IOException;

    public abstract void zzj(int i, long j) throws IOException;

    public abstract void zzk(long j) throws IOException;

    public abstract void zzl(int i, int i2) throws IOException;

    public abstract void zzm(int i) throws IOException;

    public abstract void zzo(int i, zzhai zzhaiVar) throws IOException;

    public abstract void zzp(int i, zzgxp zzgxpVar) throws IOException;

    public abstract void zzq(int i, String str) throws IOException;

    public abstract void zzs(int i, int i2) throws IOException;

    public abstract void zzt(int i, int i2) throws IOException;

    public abstract void zzu(int i) throws IOException;

    public abstract void zzv(int i, long j) throws IOException;

    public abstract void zzw(long j) throws IOException;
}
