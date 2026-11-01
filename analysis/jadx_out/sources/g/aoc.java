package g;

import com.google.android.gms.internal.ads.zzgxp;
import com.google.android.gms.internal.ads.zzgxv;
import com.google.android.gms.internal.ads.zzgzk;
import com.google.android.gms.internal.ads.zzgzm;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class aoc extends zzgxv {

    /* renamed from: d, reason: collision with root package name */
    public int f10550d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f10551e;

    /* renamed from: f, reason: collision with root package name */
    public int f10552f;

    /* renamed from: g, reason: collision with root package name */
    public int f10553g;
    public int h;
    public int i = he.UNDEFINED_ITEM_ID;
    public final InputStream j;
    public int k;

    public /* synthetic */ aoc(InputStream inputStream) {
        Charset charset = zzgzk.f8688a;
        this.j = inputStream;
        this.f10551e = new byte[4096];
        this.f10552f = 0;
        this.k = 0;
        this.h = 0;
    }

    public final byte[] l(int i) {
        if (i == 0) {
            return zzgzk.zzb;
        }
        int i2 = this.h;
        int i3 = this.k;
        int i4 = i2 + i3 + i;
        if ((-2147483647) + i4 > 0) {
            throw new zzgzm("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
        }
        int i5 = this.i;
        if (i4 > i5) {
            t((i5 - i2) - i3);
            throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        int i6 = this.f10552f - i3;
        int i7 = i - i6;
        InputStream inputStream = this.j;
        if (i7 >= 4096) {
            try {
                if (i7 > inputStream.available()) {
                    return null;
                }
            } catch (zzgzm e2) {
                e2.a();
                throw e2;
            }
        }
        byte[] bArr = new byte[i];
        System.arraycopy(this.f10551e, this.k, bArr, 0, i6);
        this.h += this.f10552f;
        this.k = 0;
        this.f10552f = 0;
        while (i6 < i) {
            try {
                int read = inputStream.read(bArr, i6, i - i6);
                if (read == -1) {
                    throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                }
                this.h += read;
                i6 += read;
            } catch (zzgzm e3) {
                e3.a();
                throw e3;
            }
        }
        return bArr;
    }

    public final long m() {
        int i = this.k;
        if (this.f10552f - i < 8) {
            p(8);
            i = this.k;
        }
        this.k = i + 8;
        byte[] bArr = this.f10551e;
        long j = bArr[i];
        long j2 = bArr[i + 2];
        long j3 = bArr[i + 3];
        return ((bArr[i + 6] & 255) << 48) | (j & 255) | ((bArr[i + 1] & 255) << 8) | ((j2 & 255) << 16) | ((j3 & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 7] & 255) << 56);
    }

    public final void n() {
        int i = this.f10552f + this.f10553g;
        this.f10552f = i;
        int i2 = this.h + i;
        int i3 = this.i;
        if (i2 <= i3) {
            this.f10553g = 0;
            return;
        }
        int i4 = i2 - i3;
        this.f10553g = i4;
        this.f10552f = i - i4;
    }

    public final long o() {
        long j;
        long j2;
        long j3;
        long j4;
        int i = this.k;
        int i2 = this.f10552f;
        if (i2 != i) {
            int i3 = i + 1;
            byte[] bArr = this.f10551e;
            byte b2 = bArr[i];
            if (b2 >= 0) {
                this.k = i3;
                return b2;
            }
            if (i2 - i3 >= 9) {
                int i4 = i + 2;
                int i5 = (bArr[i3] << 7) ^ b2;
                if (i5 < 0) {
                    j2 = i5 ^ (-128);
                } else {
                    int i6 = i + 3;
                    int i7 = (bArr[i4] << 14) ^ i5;
                    if (i7 >= 0) {
                        j2 = i7 ^ 16256;
                    } else {
                        int i8 = i + 4;
                        int i9 = i7 ^ (bArr[i6] << 21);
                        if (i9 < 0) {
                            long j5 = (-2080896) ^ i9;
                            i4 = i8;
                            j2 = j5;
                        } else {
                            i6 = i + 5;
                            long j6 = i9 ^ (bArr[i8] << 28);
                            if (j6 >= 0) {
                                j4 = 266354560;
                            } else {
                                int i10 = i + 6;
                                long j7 = j6 ^ (bArr[i6] << 35);
                                if (j7 < 0) {
                                    j3 = -34093383808L;
                                } else {
                                    i6 = i + 7;
                                    j6 = j7 ^ (bArr[i10] << 42);
                                    if (j6 >= 0) {
                                        j4 = 4363953127296L;
                                    } else {
                                        i10 = i + 8;
                                        j7 = j6 ^ (bArr[i6] << 49);
                                        if (j7 < 0) {
                                            j3 = -558586000294016L;
                                        } else {
                                            i6 = i + 9;
                                            j = (j7 ^ (bArr[i10] << 56)) ^ 71499008037633920L;
                                            if (j < 0) {
                                                int i11 = i + 10;
                                                if (bArr[i6] >= 0) {
                                                    j2 = j;
                                                    i4 = i11;
                                                }
                                            }
                                            j2 = j;
                                        }
                                    }
                                }
                                j2 = j7 ^ j3;
                                i4 = i10;
                            }
                            j = j6 ^ j4;
                            j2 = j;
                        }
                    }
                    i4 = i6;
                }
                this.k = i4;
                return j2;
            }
        }
        return r();
    }

    public final void p(int i) {
        if (q(i)) {
            return;
        }
        if (i <= (he.UNDEFINED_ITEM_ID - this.h) - this.k) {
            throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        throw new zzgzm("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    public final boolean q(int i) {
        InputStream inputStream = this.j;
        int i2 = this.k;
        int i3 = i2 + i;
        int i4 = this.f10552f;
        if (i3 <= i4) {
            throw new IllegalStateException(awf.b(i, "refillBuffer() called when ", " bytes were already available in buffer"));
        }
        int i5 = this.h;
        if (i > (he.UNDEFINED_ITEM_ID - i5) - i2 || i5 + i2 + i > this.i) {
            return false;
        }
        byte[] bArr = this.f10551e;
        if (i2 > 0) {
            if (i4 > i2) {
                System.arraycopy(bArr, i2, bArr, 0, i4 - i2);
            }
            i5 = this.h + i2;
            this.h = i5;
            i4 = this.f10552f - i2;
            this.f10552f = i4;
            this.k = 0;
        }
        try {
            int read = inputStream.read(bArr, i4, Math.min(4096 - i4, (he.UNDEFINED_ITEM_ID - i5) - i4));
            if (read == 0 || read < -1 || read > 4096) {
                throw new IllegalStateException(String.valueOf(inputStream.getClass()) + "#read(byte[]) returned invalid result: " + read + "\nThe InputStream implementation is buggy.");
            }
            if (read <= 0) {
                return false;
            }
            this.f10552f += read;
            n();
            if (this.f10552f >= i) {
                return true;
            }
            return q(i);
        } catch (zzgzm e2) {
            e2.a();
            throw e2;
        }
    }

    public final long r() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            if (this.k == this.f10552f) {
                p(1);
            }
            int i2 = this.k;
            this.k = i2 + 1;
            j |= (r3 & Byte.MAX_VALUE) << i;
            if ((this.f10551e[i2] & 128) == 0) {
                return j;
            }
        }
        throw new zzgzm("CodedInputStream encountered a malformed varint.");
    }

    public final int s() {
        int i = this.k;
        if (this.f10552f - i < 4) {
            p(4);
            i = this.k;
        }
        this.k = i + 4;
        byte[] bArr = this.f10551e;
        int i2 = bArr[i] & 255;
        int i3 = bArr[i + 1] & 255;
        int i4 = bArr[i + 2] & 255;
        return ((bArr[i + 3] & 255) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    public final void t(int i) {
        InputStream inputStream = this.j;
        int i2 = this.f10552f;
        int i3 = this.k;
        int i4 = i2 - i3;
        if (i <= i4 && i >= 0) {
            this.k = i3 + i;
            return;
        }
        if (i < 0) {
            throw new zzgzm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int i5 = this.h;
        int i6 = i5 + i3;
        int i7 = this.i;
        if (i6 + i > i7) {
            t((i7 - i5) - i3);
            throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.h = i6;
        this.f10552f = 0;
        this.k = 0;
        while (i4 < i) {
            long j = i - i4;
            try {
                try {
                    long skip = inputStream.skip(j);
                    if (skip < 0 || skip > j) {
                        throw new IllegalStateException(String.valueOf(inputStream.getClass()) + "#skip returned invalid result: " + skip + "\nThe InputStream implementation is buggy.");
                    }
                    if (skip == 0) {
                        break;
                    } else {
                        i4 += (int) skip;
                    }
                } catch (zzgzm e2) {
                    e2.a();
                    throw e2;
                }
            } catch (Throwable th) {
                this.h += i4;
                n();
                throw th;
            }
        }
        this.h += i4;
        n();
        if (i4 >= i) {
            return;
        }
        int i8 = this.f10552f;
        int i9 = i8 - this.k;
        this.k = i8;
        p(1);
        while (true) {
            int i10 = i - i9;
            int i11 = this.f10552f;
            if (i10 <= i11) {
                this.k = i10;
                return;
            } else {
                i9 += i11;
                this.k = i11;
                p(1);
            }
        }
    }

    public final int u() {
        int i;
        int i2 = this.k;
        int i3 = this.f10552f;
        if (i3 != i2) {
            int i4 = i2 + 1;
            byte[] bArr = this.f10551e;
            byte b2 = bArr[i2];
            if (b2 >= 0) {
                this.k = i4;
                return b2;
            }
            if (i3 - i4 >= 9) {
                int i5 = i2 + 2;
                int i6 = (bArr[i4] << 7) ^ b2;
                if (i6 < 0) {
                    i = i6 ^ (-128);
                } else {
                    int i7 = i2 + 3;
                    int i8 = (bArr[i5] << 14) ^ i6;
                    if (i8 >= 0) {
                        i = i8 ^ 16256;
                    } else {
                        int i9 = i2 + 4;
                        int i10 = i8 ^ (bArr[i7] << 21);
                        if (i10 < 0) {
                            i = (-2080896) ^ i10;
                        } else {
                            i7 = i2 + 5;
                            byte b3 = bArr[i9];
                            int i11 = (i10 ^ (b3 << 28)) ^ 266354560;
                            if (b3 < 0) {
                                i9 = i2 + 6;
                                if (bArr[i7] < 0) {
                                    i7 = i2 + 7;
                                    if (bArr[i9] < 0) {
                                        i9 = i2 + 8;
                                        if (bArr[i7] < 0) {
                                            i7 = i2 + 9;
                                            if (bArr[i9] < 0) {
                                                int i12 = i2 + 10;
                                                if (bArr[i7] >= 0) {
                                                    i5 = i12;
                                                    i = i11;
                                                }
                                            }
                                        }
                                    }
                                }
                                i = i11;
                            }
                            i = i11;
                        }
                        i5 = i9;
                    }
                    i5 = i7;
                }
                this.k = i5;
                return i;
            }
        }
        return (int) r();
    }

    public final ArrayList v(int i) {
        ArrayList arrayList = new ArrayList();
        while (i > 0) {
            int min = Math.min(i, 4096);
            byte[] bArr = new byte[min];
            int i2 = 0;
            while (i2 < min) {
                int read = this.j.read(bArr, i2, min - i2);
                if (read == -1) {
                    throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                }
                this.h += read;
                i2 += read;
            }
            i -= min;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    public final byte[] w(int i) {
        byte[] l = l(i);
        if (l != null) {
            return l;
        }
        int i2 = this.k;
        int i3 = this.f10552f;
        int i4 = i3 - i2;
        this.h += i3;
        this.k = 0;
        this.f10552f = 0;
        ArrayList v = v(i - i4);
        byte[] bArr = new byte[i];
        System.arraycopy(this.f10551e, i2, bArr, 0, i4);
        Iterator it = v.iterator();
        while (it.hasNext()) {
            byte[] bArr2 = (byte[]) it.next();
            int length = bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i4, length);
            i4 += length;
        }
        return bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final boolean zzA() {
        return this.k == this.f10552f && !q(1);
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final boolean zzB() {
        return o() != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final double zza() {
        return Double.longBitsToDouble(m());
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final float zzb() {
        return Float.intBitsToFloat(s());
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzc() {
        return this.h + this.k;
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzd(int i) {
        if (i < 0) {
            throw new zzgzm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int i2 = this.h + this.k + i;
        if (i2 < 0) {
            throw new zzgzm("Failed to parse the message.");
        }
        int i3 = this.i;
        if (i2 > i3) {
            throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.i = i2;
        n();
        return i3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zze() {
        return u();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzf() {
        return s();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzg() {
        return u();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzj() {
        return s();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzk() {
        return zzgxv.zzD(u());
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzl() {
        if (zzA()) {
            this.f10550d = 0;
            return 0;
        }
        int u = u();
        this.f10550d = u;
        if ((u >>> 3) != 0) {
            return u;
        }
        throw new zzgzm("Protocol message contained an invalid tag (zero).");
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzm() {
        return u();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final long zzn() {
        return m();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final long zzo() {
        return o();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final long zzs() {
        return m();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final long zzt() {
        return zzgxv.zzF(o());
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final long zzu() {
        return o();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final zzgxp zzv() {
        int u = u();
        int i = this.f10552f;
        int i2 = this.k;
        int i3 = i - i2;
        byte[] bArr = this.f10551e;
        if (u <= i3 && u > 0) {
            zzgxp zzv = zzgxp.zzv(bArr, i2, u);
            this.k += u;
            return zzv;
        }
        if (u == 0) {
            return zzgxp.zzb;
        }
        if (u < 0) {
            throw new zzgzm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        byte[] l = l(u);
        if (l != null) {
            return zzgxp.zzv(l, 0, l.length);
        }
        int i4 = this.k;
        int i5 = this.f10552f;
        int i6 = i5 - i4;
        this.h += i5;
        this.k = 0;
        this.f10552f = 0;
        ArrayList v = v(u - i6);
        byte[] bArr2 = new byte[u];
        System.arraycopy(bArr, i4, bArr2, 0, i6);
        Iterator it = v.iterator();
        while (it.hasNext()) {
            byte[] bArr3 = (byte[]) it.next();
            int length = bArr3.length;
            System.arraycopy(bArr3, 0, bArr2, i6, length);
            i6 += length;
        }
        return new com.google.android.gms.internal.ads.ah(bArr2);
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final String zzw() {
        int u = u();
        byte[] bArr = this.f10551e;
        if (u > 0) {
            int i = this.f10552f;
            int i2 = this.k;
            if (u <= i - i2) {
                String str = new String(bArr, i2, u, zzgzk.f8688a);
                this.k += u;
                return str;
            }
        }
        if (u == 0) {
            return "";
        }
        if (u < 0) {
            throw new zzgzm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        if (u > this.f10552f) {
            return new String(w(u), zzgzk.f8688a);
        }
        p(u);
        String str2 = new String(bArr, this.k, u, zzgzk.f8688a);
        this.k += u;
        return str2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final String zzx() {
        int u = u();
        int i = this.k;
        int i2 = this.f10552f;
        int i3 = i2 - i;
        byte[] bArr = this.f10551e;
        if (u <= i3 && u > 0) {
            this.k = i + u;
        } else {
            if (u == 0) {
                return "";
            }
            if (u < 0) {
                throw new zzgzm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            i = 0;
            if (u <= i2) {
                p(u);
                this.k = u;
            } else {
                bArr = w(u);
            }
        }
        bso.f12134a.getClass();
        return bli.t(i, bArr, u);
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final void zzy(int i) {
        if (this.f10550d != i) {
            throw new zzgzm("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final void zzz(int i) {
        this.i = i;
        n();
    }
}
