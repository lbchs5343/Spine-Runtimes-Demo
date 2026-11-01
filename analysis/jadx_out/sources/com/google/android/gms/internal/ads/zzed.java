package com.google.android.gms.internal.ads;

import g.awf;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzed {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f6832a = {'\r', '\n'};

    /* renamed from: b, reason: collision with root package name */
    public static final char[] f6833b = {'\n'};

    /* renamed from: c, reason: collision with root package name */
    public static final zzfzt f6834c = zzfzt.zzr(StandardCharsets.US_ASCII, StandardCharsets.UTF_8, StandardCharsets.UTF_16, StandardCharsets.UTF_16BE, StandardCharsets.UTF_16LE);

    /* renamed from: d, reason: collision with root package name */
    public byte[] f6835d;

    /* renamed from: e, reason: collision with root package name */
    public int f6836e;

    /* renamed from: f, reason: collision with root package name */
    public int f6837f;

    public zzed() {
        this.f6835d = zzen.zzf;
    }

    public zzed(int i) {
        this.f6835d = new byte[i];
        this.f6837f = i;
    }

    public zzed(byte[] bArr) {
        this.f6835d = bArr;
        this.f6837f = bArr.length;
    }

    public zzed(byte[] bArr, int i) {
        this.f6835d = bArr;
        this.f6837f = i;
    }

    public final char g(Charset charset, char[] cArr) {
        int h = h(charset);
        if (h != 0) {
            int i = h >> 16;
            for (char c2 : cArr) {
                char c3 = (char) i;
                if (c2 == c3) {
                    this.f6836e += (char) h;
                    return c3;
                }
            }
        }
        return (char) 0;
    }

    public final int h(Charset charset) {
        byte zza;
        char zzb;
        int i = 1;
        if (charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) {
            if (this.f6837f - this.f6836e > 0) {
                zza = (byte) zzgco.zza(this.f6835d[r2] & 255);
                return (zzgco.zza(zza) << 16) + i;
            }
        }
        if (charset.equals(StandardCharsets.UTF_16) || charset.equals(StandardCharsets.UTF_16BE)) {
            int i2 = this.f6837f;
            int i3 = this.f6836e;
            if (i2 - i3 >= 2) {
                byte[] bArr = this.f6835d;
                zzb = zzgco.zzb(bArr[i3], bArr[i3 + 1]);
                zza = (byte) zzb;
                i = 2;
                return (zzgco.zza(zza) << 16) + i;
            }
        }
        if (!charset.equals(StandardCharsets.UTF_16LE)) {
            return 0;
        }
        int i4 = this.f6837f;
        int i5 = this.f6836e;
        if (i4 - i5 < 2) {
            return 0;
        }
        byte[] bArr2 = this.f6835d;
        zzb = zzgco.zzb(bArr2[i5 + 1], bArr2[i5]);
        zza = (byte) zzb;
        i = 2;
        return (zzgco.zza(zza) << 16) + i;
    }

    public final String zzA(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = this.f6836e;
        int i3 = (i2 + i) - 1;
        String zzC = zzen.zzC(this.f6835d, i2, (i3 >= this.f6837f || this.f6835d[i3] != 0) ? i : i - 1);
        this.f6836e += i;
        return zzC;
    }

    public final String zzB(int i, Charset charset) {
        byte[] bArr = this.f6835d;
        int i2 = this.f6836e;
        String str = new String(bArr, i2, i, charset);
        this.f6836e = i2 + i;
        return str;
    }

    public final Charset zzC() {
        int i = this.f6837f;
        int i2 = this.f6836e;
        int i3 = i - i2;
        if (i3 >= 3) {
            byte[] bArr = this.f6835d;
            if (bArr[i2] == -17 && bArr[i2 + 1] == -69 && bArr[i2 + 2] == -65) {
                this.f6836e = i2 + 3;
                return StandardCharsets.UTF_8;
            }
        }
        if (i3 < 2) {
            return null;
        }
        byte[] bArr2 = this.f6835d;
        byte b2 = bArr2[i2];
        if (b2 == -2) {
            if (bArr2[i2 + 1] != -1) {
                return null;
            }
            this.f6836e = i2 + 2;
            return StandardCharsets.UTF_16BE;
        }
        if (b2 != -1 || bArr2[i2 + 1] != -2) {
            return null;
        }
        this.f6836e = i2 + 2;
        return StandardCharsets.UTF_16LE;
    }

    public final short zzD() {
        byte[] bArr = this.f6835d;
        int i = this.f6836e;
        int i2 = i + 1;
        this.f6836e = i2;
        int i3 = bArr[i] & 255;
        this.f6836e = i + 2;
        return (short) (((bArr[i2] & 255) << 8) | i3);
    }

    public final short zzE() {
        byte[] bArr = this.f6835d;
        int i = this.f6836e;
        int i2 = i + 1;
        this.f6836e = i2;
        int i3 = bArr[i] & 255;
        this.f6836e = i + 2;
        return (short) ((bArr[i2] & 255) | (i3 << 8));
    }

    public final void zzF(int i) {
        byte[] bArr = this.f6835d;
        if (i > bArr.length) {
            this.f6835d = Arrays.copyOf(bArr, i);
        }
    }

    public final void zzG(zzec zzecVar, int i) {
        zzH(zzecVar.zza, 0, i);
        zzecVar.zzl(0);
    }

    public final void zzH(byte[] bArr, int i, int i2) {
        System.arraycopy(this.f6835d, this.f6836e, bArr, i, i2);
        this.f6836e += i2;
    }

    public final void zzI(int i) {
        byte[] bArr = this.f6835d;
        if (bArr.length < i) {
            bArr = new byte[i];
        }
        zzJ(bArr, i);
    }

    public final void zzJ(byte[] bArr, int i) {
        this.f6835d = bArr;
        this.f6837f = i;
        this.f6836e = 0;
    }

    public final void zzK(int i) {
        boolean z = false;
        if (i >= 0 && i <= this.f6835d.length) {
            z = true;
        }
        zzdb.zzd(z);
        this.f6837f = i;
    }

    public final void zzL(int i) {
        boolean z = false;
        if (i >= 0 && i <= this.f6837f) {
            z = true;
        }
        zzdb.zzd(z);
        this.f6836e = i;
    }

    public final void zzM(int i) {
        zzL(this.f6836e + i);
    }

    public final byte[] zzN() {
        return this.f6835d;
    }

    public final char zza(Charset charset) {
        zzdb.zze(f6834c.contains(charset), "Unsupported charset: ".concat(String.valueOf(charset)));
        return (char) (h(charset) >> 16);
    }

    public final int zzb() {
        return this.f6837f - this.f6836e;
    }

    public final int zzc() {
        return this.f6835d.length;
    }

    public final int zzd() {
        return this.f6836e;
    }

    public final int zze() {
        return this.f6837f;
    }

    public final int zzf() {
        return this.f6835d[this.f6836e] & 255;
    }

    public final int zzg() {
        byte[] bArr = this.f6835d;
        int i = this.f6836e;
        int i2 = i + 1;
        this.f6836e = i2;
        int i3 = bArr[i] & 255;
        int i4 = i + 2;
        this.f6836e = i4;
        int i5 = bArr[i2] & 255;
        int i6 = i + 3;
        this.f6836e = i6;
        int i7 = bArr[i4] & 255;
        this.f6836e = i + 4;
        return (bArr[i6] & 255) | (i3 << 24) | (i5 << 16) | (i7 << 8);
    }

    public final int zzh() {
        byte[] bArr = this.f6835d;
        int i = this.f6836e;
        int i2 = i + 1;
        this.f6836e = i2;
        int i3 = bArr[i] & 255;
        int i4 = i + 2;
        this.f6836e = i4;
        int i5 = bArr[i2] & 255;
        this.f6836e = i + 3;
        return (bArr[i4] & 255) | ((i3 << 24) >> 8) | (i5 << 8);
    }

    public final int zzi() {
        byte[] bArr = this.f6835d;
        int i = this.f6836e;
        int i2 = i + 1;
        this.f6836e = i2;
        int i3 = bArr[i] & 255;
        int i4 = i + 2;
        this.f6836e = i4;
        int i5 = bArr[i2] & 255;
        int i6 = i + 3;
        this.f6836e = i6;
        int i7 = bArr[i4] & 255;
        this.f6836e = i + 4;
        return ((bArr[i6] & 255) << 24) | (i5 << 8) | i3 | (i7 << 16);
    }

    public final int zzj() {
        int zzi = zzi();
        if (zzi >= 0) {
            return zzi;
        }
        throw new IllegalStateException(awf.ac(zzi, "Top bit not zero: "));
    }

    public final int zzk() {
        byte[] bArr = this.f6835d;
        int i = this.f6836e;
        int i2 = i + 1;
        this.f6836e = i2;
        int i3 = bArr[i] & 255;
        this.f6836e = i + 2;
        return ((bArr[i2] & 255) << 8) | i3;
    }

    public final int zzl() {
        return (zzm() << 21) | (zzm() << 14) | (zzm() << 7) | zzm();
    }

    public final int zzm() {
        byte[] bArr = this.f6835d;
        int i = this.f6836e;
        this.f6836e = i + 1;
        return bArr[i] & 255;
    }

    public final int zzn() {
        byte[] bArr = this.f6835d;
        int i = this.f6836e;
        int i2 = i + 1;
        this.f6836e = i2;
        int i3 = bArr[i] & 255;
        this.f6836e = i + 2;
        int i4 = bArr[i2] & 255;
        this.f6836e = i + 4;
        return i4 | (i3 << 8);
    }

    public final int zzo() {
        byte[] bArr = this.f6835d;
        int i = this.f6836e;
        int i2 = i + 1;
        this.f6836e = i2;
        int i3 = bArr[i] & 255;
        int i4 = i + 2;
        this.f6836e = i4;
        int i5 = bArr[i2] & 255;
        this.f6836e = i + 3;
        return (bArr[i4] & 255) | (i3 << 16) | (i5 << 8);
    }

    public final int zzp() {
        int zzg = zzg();
        if (zzg >= 0) {
            return zzg;
        }
        throw new IllegalStateException(awf.ac(zzg, "Top bit not zero: "));
    }

    public final int zzq() {
        byte[] bArr = this.f6835d;
        int i = this.f6836e;
        int i2 = i + 1;
        this.f6836e = i2;
        int i3 = bArr[i] & 255;
        this.f6836e = i + 2;
        return (bArr[i2] & 255) | (i3 << 8);
    }

    public final long zzr() {
        byte[] bArr = this.f6835d;
        int i = this.f6836e;
        int i2 = i + 1;
        this.f6836e = i2;
        long j = bArr[i];
        int i3 = i + 2;
        this.f6836e = i3;
        long j2 = bArr[i2];
        int i4 = i + 3;
        this.f6836e = i4;
        long j3 = bArr[i3];
        int i5 = i + 4;
        this.f6836e = i5;
        long j4 = bArr[i4];
        int i6 = i + 5;
        this.f6836e = i6;
        long j5 = bArr[i5];
        int i7 = i + 6;
        this.f6836e = i7;
        long j6 = bArr[i6];
        this.f6836e = i + 7;
        long j7 = bArr[i7];
        this.f6836e = i + 8;
        return ((bArr[r3] & 255) << 56) | (255 & j) | ((j2 & 255) << 8) | ((j3 & 255) << 16) | ((j4 & 255) << 24) | ((j5 & 255) << 32) | ((j6 & 255) << 40) | ((j7 & 255) << 48);
    }

    public final long zzs() {
        byte[] bArr = this.f6835d;
        int i = this.f6836e;
        int i2 = i + 1;
        this.f6836e = i2;
        long j = bArr[i];
        int i3 = i + 2;
        this.f6836e = i3;
        long j2 = bArr[i2];
        this.f6836e = i + 3;
        long j3 = bArr[i3];
        this.f6836e = i + 4;
        return ((bArr[r2] & 255) << 24) | (j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16);
    }

    public final long zzt() {
        byte[] bArr = this.f6835d;
        int i = this.f6836e;
        int i2 = i + 1;
        this.f6836e = i2;
        long j = bArr[i];
        int i3 = i + 2;
        this.f6836e = i3;
        long j2 = bArr[i2];
        int i4 = i + 3;
        this.f6836e = i4;
        long j3 = bArr[i3];
        int i5 = i + 4;
        this.f6836e = i5;
        long j4 = bArr[i4];
        int i6 = i + 5;
        this.f6836e = i6;
        long j5 = bArr[i5];
        int i7 = i + 6;
        this.f6836e = i7;
        long j6 = bArr[i6];
        this.f6836e = i + 7;
        long j7 = bArr[i7];
        this.f6836e = i + 8;
        return (bArr[r3] & 255) | ((j & 255) << 56) | ((j2 & 255) << 48) | ((j3 & 255) << 40) | ((j4 & 255) << 32) | ((j5 & 255) << 24) | ((j6 & 255) << 16) | ((j7 & 255) << 8);
    }

    public final long zzu() {
        byte[] bArr = this.f6835d;
        int i = this.f6836e;
        int i2 = i + 1;
        this.f6836e = i2;
        long j = bArr[i];
        int i3 = i + 2;
        this.f6836e = i3;
        long j2 = bArr[i2];
        this.f6836e = i + 3;
        long j3 = bArr[i3];
        this.f6836e = i + 4;
        return (bArr[r2] & 255) | ((j & 255) << 24) | ((j2 & 255) << 16) | ((j3 & 255) << 8);
    }

    public final long zzv() {
        long j = 0;
        for (int i = 0; i < 9; i++) {
            if (this.f6836e == this.f6837f) {
                throw new IllegalStateException("Attempting to read a byte over the limit.");
            }
            long zzm = zzm();
            j |= (127 & zzm) << (i * 7);
            if ((zzm & 128) == 0) {
                return j;
            }
        }
        return j;
    }

    public final long zzw() {
        long zzt = zzt();
        if (zzt >= 0) {
            return zzt;
        }
        throw new IllegalStateException("Top bit not zero: " + zzt);
    }

    public final long zzx() {
        int i;
        int i2;
        long j = this.f6835d[this.f6836e];
        int i3 = 7;
        while (true) {
            i = 0;
            if (i3 < 0) {
                break;
            }
            if (((1 << i3) & j) != 0) {
                i3--;
            } else if (i3 < 6) {
                j &= r7 - 1;
                i = 7 - i3;
            } else if (i3 == 7) {
                i = 1;
            }
        }
        if (i == 0) {
            throw new NumberFormatException("Invalid UTF-8 sequence first byte: " + j);
        }
        for (i2 = 1; i2 < i; i2++) {
            if ((this.f6835d[this.f6836e + i2] & 192) != 128) {
                throw new NumberFormatException("Invalid UTF-8 sequence continuation byte: " + j);
            }
            j = (j << 6) | (r2 & 63);
        }
        this.f6836e += i;
        return j;
    }

    public final String zzy(char c2) {
        int i = this.f6837f;
        int i2 = this.f6836e;
        if (i - i2 == 0) {
            return null;
        }
        while (i2 < this.f6837f && this.f6835d[i2] != 0) {
            i2++;
        }
        byte[] bArr = this.f6835d;
        int i3 = this.f6836e;
        String zzC = zzen.zzC(bArr, i3, i2 - i3);
        this.f6836e = i2;
        if (i2 < this.f6837f) {
            this.f6836e = i2 + 1;
        }
        return zzC;
    }

    public final String zzz(Charset charset) {
        zzdb.zze(f6834c.contains(charset), "Unsupported charset: ".concat(String.valueOf(charset)));
        if (this.f6837f - this.f6836e == 0) {
            return null;
        }
        Charset charset2 = StandardCharsets.US_ASCII;
        if (!charset.equals(charset2)) {
            zzC();
        }
        int i = 1;
        if (!charset.equals(StandardCharsets.UTF_8) && !charset.equals(charset2)) {
            i = 2;
            if (!charset.equals(StandardCharsets.UTF_16) && !charset.equals(StandardCharsets.UTF_16LE) && !charset.equals(StandardCharsets.UTF_16BE)) {
                throw new IllegalArgumentException("Unsupported charset: ".concat(String.valueOf(charset)));
            }
        }
        int i2 = this.f6836e;
        while (true) {
            int i3 = this.f6837f;
            if (i2 >= i3 - (i - 1)) {
                i2 = i3;
                break;
            }
            if ((charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) && zzen.zzL(this.f6835d[i2])) {
                break;
            }
            if (charset.equals(StandardCharsets.UTF_16) || charset.equals(StandardCharsets.UTF_16BE)) {
                byte[] bArr = this.f6835d;
                if (bArr[i2] == 0 && zzen.zzL(bArr[i2 + 1])) {
                    break;
                }
            }
            if (charset.equals(StandardCharsets.UTF_16LE)) {
                byte[] bArr2 = this.f6835d;
                if (bArr2[i2 + 1] == 0 && zzen.zzL(bArr2[i2])) {
                    break;
                }
            }
            i2 += i;
        }
        String zzB = zzB(i2 - this.f6836e, charset);
        if (this.f6836e != this.f6837f && g(charset, f6832a) == '\r') {
            g(charset, f6833b);
        }
        return zzB;
    }
}
