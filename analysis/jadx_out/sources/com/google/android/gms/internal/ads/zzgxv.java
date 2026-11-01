package com.google.android.gms.internal.ads;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.aez;
import g.aoc;
import g.hj;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
public abstract class zzgxv {
    public static final /* synthetic */ int zzd = 0;

    /* renamed from: a, reason: collision with root package name */
    public int f8671a;

    /* renamed from: b, reason: collision with root package name */
    public hj f8672b;

    public static aez c(int i, byte[] bArr, int i2) {
        aez aezVar = new aez(bArr, i, i2);
        try {
            aezVar.zzd(i2);
            return aezVar;
        } catch (zzgzm e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public static int zzD(int i) {
        return (i >>> 1) ^ (-(i & 1));
    }

    public static int zzE(int i, InputStream inputStream) throws IOException {
        if ((i & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) == 0) {
            return i;
        }
        int i2 = i & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE;
        int i3 = 7;
        while (i3 < 32) {
            int read = inputStream.read();
            if (read == -1) {
                throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            i2 |= (read & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE) << i3;
            if ((read & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) == 0) {
                return i2;
            }
            i3 += 7;
        }
        while (i3 < 64) {
            int read2 = inputStream.read();
            if (read2 == -1) {
                throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            if ((read2 & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) == 0) {
                return i2;
            }
            i3 += 7;
        }
        throw new zzgzm("CodedInputStream encountered a malformed varint.");
    }

    public static long zzF(long j) {
        return (j >>> 1) ^ (-(1 & j));
    }

    public static zzgxv zzG(InputStream inputStream, int i) {
        if (inputStream != null) {
            return new aoc(inputStream);
        }
        byte[] bArr = zzgzk.zzb;
        int length = bArr.length;
        return c(0, bArr, 0);
    }

    public abstract boolean zzA() throws IOException;

    public abstract boolean zzB() throws IOException;

    public abstract double zza() throws IOException;

    public abstract float zzb() throws IOException;

    public abstract int zzc();

    public abstract int zzd(int i) throws zzgzm;

    public abstract int zze() throws IOException;

    public abstract int zzf() throws IOException;

    public abstract int zzg() throws IOException;

    public abstract int zzj() throws IOException;

    public abstract int zzk() throws IOException;

    public abstract int zzl() throws IOException;

    public abstract int zzm() throws IOException;

    public abstract long zzn() throws IOException;

    public abstract long zzo() throws IOException;

    public abstract long zzs() throws IOException;

    public abstract long zzt() throws IOException;

    public abstract long zzu() throws IOException;

    public abstract zzgxp zzv() throws IOException;

    public abstract String zzw() throws IOException;

    public abstract String zzx() throws IOException;

    public abstract void zzy(int i) throws zzgzm;

    public abstract void zzz(int i);
}
