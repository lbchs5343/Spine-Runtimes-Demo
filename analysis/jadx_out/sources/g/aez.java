package g;

import com.google.android.gms.internal.ads.zzgxp;
import com.google.android.gms.internal.ads.zzgxv;
import com.google.android.gms.internal.ads.zzgzk;
import com.google.android.gms.internal.ads.zzgzm;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class aez extends zzgxv {

    /* renamed from: d, reason: collision with root package name */
    public int f10129d;

    /* renamed from: e, reason: collision with root package name */
    public int f10130e;

    /* renamed from: f, reason: collision with root package name */
    public int f10131f;

    /* renamed from: g, reason: collision with root package name */
    public int f10132g;
    public int h = he.UNDEFINED_ITEM_ID;
    public final byte[] i;
    public final int j;

    public /* synthetic */ aez(byte[] bArr, int i, int i2) {
        this.i = bArr;
        this.f10130e = i2 + i;
        this.f10132g = i;
        this.j = i;
    }

    public final int k() {
        int i;
        int i2 = this.f10132g;
        int i3 = this.f10130e;
        if (i3 != i2) {
            int i4 = i2 + 1;
            byte[] bArr = this.i;
            byte b2 = bArr[i2];
            if (b2 >= 0) {
                this.f10132g = i4;
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
                this.f10132g = i5;
                return i;
            }
        }
        return (int) p();
    }

    public final long l() {
        int i = this.f10132g;
        if (this.f10130e - i < 8) {
            throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.f10132g = i + 8;
        byte[] bArr = this.i;
        long j = bArr[i];
        long j2 = bArr[i + 2];
        long j3 = bArr[i + 3];
        return ((bArr[i + 6] & 255) << 48) | (j & 255) | ((bArr[i + 1] & 255) << 8) | ((j2 & 255) << 16) | ((j3 & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 7] & 255) << 56);
    }

    public final long m() {
        long j;
        long j2;
        long j3;
        long j4;
        int i = this.f10132g;
        int i2 = this.f10130e;
        if (i2 != i) {
            int i3 = i + 1;
            byte[] bArr = this.i;
            byte b2 = bArr[i];
            if (b2 >= 0) {
                this.f10132g = i3;
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
                this.f10132g = i4;
                return j2;
            }
        }
        return p();
    }

    public final void n() {
        int i = this.f10130e + this.f10131f;
        this.f10130e = i;
        int i2 = i - this.j;
        int i3 = this.h;
        if (i2 <= i3) {
            this.f10131f = 0;
            return;
        }
        int i4 = i2 - i3;
        this.f10131f = i4;
        this.f10130e = i - i4;
    }

    public final int o() {
        int i = this.f10132g;
        if (this.f10130e - i < 4) {
            throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.f10132g = i + 4;
        byte[] bArr = this.i;
        int i2 = bArr[i] & 255;
        int i3 = bArr[i + 1] & 255;
        int i4 = bArr[i + 2] & 255;
        return ((bArr[i + 3] & 255) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    public final long p() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            int i2 = this.f10132g;
            if (i2 == this.f10130e) {
                throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            this.f10132g = i2 + 1;
            j |= (r3 & Byte.MAX_VALUE) << i;
            if ((this.i[i2] & 128) == 0) {
                return j;
            }
        }
        throw new zzgzm("CodedInputStream encountered a malformed varint.");
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final boolean zzA() {
        return this.f10132g == this.f10130e;
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final boolean zzB() {
        return m() != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final double zza() {
        return Double.longBitsToDouble(l());
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final float zzb() {
        return Float.intBitsToFloat(o());
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzc() {
        return this.f10132g - this.j;
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzd(int i) {
        if (i < 0) {
            throw new zzgzm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int i2 = (this.f10132g - this.j) + i;
        if (i2 < 0) {
            throw new zzgzm("Failed to parse the message.");
        }
        int i3 = this.h;
        if (i2 > i3) {
            throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.h = i2;
        n();
        return i3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zze() {
        return k();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzf() {
        return o();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzg() {
        return k();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzj() {
        return o();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzk() {
        return zzgxv.zzD(k());
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzl() {
        if (zzA()) {
            this.f10129d = 0;
            return 0;
        }
        int k = k();
        this.f10129d = k;
        if ((k >>> 3) != 0) {
            return k;
        }
        throw new zzgzm("Protocol message contained an invalid tag (zero).");
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzm() {
        return k();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final long zzn() {
        return l();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final long zzo() {
        return m();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final long zzs() {
        return l();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final long zzt() {
        return zzgxv.zzF(m());
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final long zzu() {
        return m();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final zzgxp zzv() {
        int k = k();
        byte[] bArr = this.i;
        if (k > 0) {
            int i = this.f10130e;
            int i2 = this.f10132g;
            if (k <= i - i2) {
                zzgxp zzv = zzgxp.zzv(bArr, i2, k);
                this.f10132g += k;
                return zzv;
            }
        }
        if (k == 0) {
            return zzgxp.zzb;
        }
        if (k > 0) {
            int i3 = this.f10130e;
            int i4 = this.f10132g;
            if (k <= i3 - i4) {
                int i5 = k + i4;
                this.f10132g = i5;
                return new com.google.android.gms.internal.ads.ah(Arrays.copyOfRange(bArr, i4, i5));
            }
        }
        if (k <= 0) {
            throw new zzgzm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final String zzw() {
        int k = k();
        if (k > 0) {
            int i = this.f10130e;
            int i2 = this.f10132g;
            if (k <= i - i2) {
                String str = new String(this.i, i2, k, zzgzk.f8688a);
                this.f10132g += k;
                return str;
            }
        }
        if (k == 0) {
            return "";
        }
        if (k < 0) {
            throw new zzgzm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final String zzx() {
        int k = k();
        if (k > 0) {
            int i = this.f10130e;
            int i2 = this.f10132g;
            if (k <= i - i2) {
                bso.f12134a.getClass();
                String t = bli.t(i2, this.i, k);
                this.f10132g += k;
                return t;
            }
        }
        if (k == 0) {
            return "";
        }
        if (k <= 0) {
            throw new zzgzm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final void zzy(int i) {
        if (this.f10129d != i) {
            throw new zzgzm("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final void zzz(int i) {
        this.h = i;
        n();
    }
}
