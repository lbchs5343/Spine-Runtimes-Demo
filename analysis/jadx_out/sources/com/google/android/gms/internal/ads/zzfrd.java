package com.google.android.gms.internal.ads;

import g.cro;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzfrd {

    /* renamed from: a, reason: collision with root package name */
    public final File f8159a;

    /* renamed from: b, reason: collision with root package name */
    public byte[] f8160b;

    /* renamed from: c, reason: collision with root package name */
    public final zzayb f8161c;

    /* renamed from: d, reason: collision with root package name */
    public final File f8162d;

    /* renamed from: e, reason: collision with root package name */
    public final File f8163e;

    public zzfrd(zzayb zzaybVar, File file, File file2, File file3) {
        this.f8161c = zzaybVar;
        this.f8162d = file;
        this.f8163e = file3;
        this.f8159a = file2;
    }

    public final zzayb zza() {
        return this.f8161c;
    }

    public final File zzb() {
        return this.f8163e;
    }

    public final File zzc() {
        return this.f8162d;
    }

    public final boolean zzd(long j) {
        return this.f8161c.zzb() - (System.currentTimeMillis() / 1000) < 3600;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x005a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final byte[] zze() {
        byte[] bArr;
        FileInputStream fileInputStream;
        byte[] bArr2;
        FileInputStream fileInputStream2 = null;
        if (this.f8160b == null) {
            try {
                fileInputStream = new FileInputStream(this.f8159a);
                try {
                    ArrayList arrayList = new ArrayList();
                    int i = 256;
                    while (true) {
                        byte[] bArr3 = new byte[i];
                        int i2 = 0;
                        while (i2 < i) {
                            int read = fileInputStream.read(bArr3, i2, i - i2);
                            if (read == -1) {
                                break;
                            }
                            i2 += read;
                        }
                        zzgxp zzv = i2 == 0 ? null : zzgxp.zzv(bArr3, 0, i2);
                        if (zzv == null) {
                            break;
                        }
                        arrayList.add(zzv);
                        i = Math.min(i + i, 8192);
                    }
                    bArr2 = zzgxp.zzu(arrayList).zzA();
                    cro.al(fileInputStream);
                } catch (IOException unused) {
                    cro.al(fileInputStream);
                    bArr2 = null;
                    this.f8160b = bArr2;
                    bArr = this.f8160b;
                    if (bArr != null) {
                    }
                } catch (Throwable th) {
                    th = th;
                    fileInputStream2 = fileInputStream;
                    cro.al(fileInputStream2);
                    throw th;
                }
            } catch (IOException unused2) {
                fileInputStream = null;
            } catch (Throwable th2) {
                th = th2;
            }
            this.f8160b = bArr2;
        }
        bArr = this.f8160b;
        if (bArr != null) {
            return null;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }
}
