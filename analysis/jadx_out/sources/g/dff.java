package g;

import com.google.android.gms.internal.ads.zzgxp;
import com.google.android.gms.internal.ads.zzgxv;
import com.google.android.gms.internal.ads.zzgzk;
import com.google.android.gms.internal.ads.zzgzm;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public final class dff extends zzgxv {

    /* renamed from: d, reason: collision with root package name */
    public int f14085d;

    /* renamed from: e, reason: collision with root package name */
    public final long f14086e;

    /* renamed from: f, reason: collision with root package name */
    public long f14087f;

    /* renamed from: g, reason: collision with root package name */
    public long f14088g;
    public int h;
    public int i = he.UNDEFINED_ITEM_ID;
    public final ByteBuffer j;
    public final long k;

    public /* synthetic */ dff(ByteBuffer byteBuffer) {
        this.j = byteBuffer;
        long y = gbc.y(byteBuffer);
        this.f14086e = y;
        this.f14087f = byteBuffer.limit() + y;
        long position = y + byteBuffer.position();
        this.f14088g = position;
        this.k = position;
    }

    public final int l() {
        int i;
        long j = this.f14088g;
        if (this.f14087f != j) {
            long j2 = 1 + j;
            aul aulVar = gbc.f17849g;
            byte l = aulVar.l(j);
            if (l >= 0) {
                this.f14088g = j2;
                return l;
            }
            if (this.f14087f - j2 >= 9) {
                long j3 = 2 + j;
                int l2 = (aulVar.l(j2) << 7) ^ l;
                if (l2 < 0) {
                    i = l2 ^ (-128);
                } else {
                    long j4 = 3 + j;
                    int l3 = l2 ^ (aulVar.l(j3) << 14);
                    if (l3 >= 0) {
                        i = l3 ^ 16256;
                    } else {
                        long j5 = 4 + j;
                        int l4 = l3 ^ (aulVar.l(j4) << 21);
                        if (l4 < 0) {
                            i = (-2080896) ^ l4;
                        } else {
                            j4 = 5 + j;
                            byte l5 = aulVar.l(j5);
                            int i2 = (l4 ^ (l5 << 28)) ^ 266354560;
                            if (l5 < 0) {
                                j5 = 6 + j;
                                if (aulVar.l(j4) < 0) {
                                    j4 = 7 + j;
                                    if (aulVar.l(j5) < 0) {
                                        j5 = 8 + j;
                                        if (aulVar.l(j4) < 0) {
                                            long j6 = 9 + j;
                                            if (aulVar.l(j5) < 0) {
                                                long j7 = j + 10;
                                                if (aulVar.l(j6) >= 0) {
                                                    j3 = j7;
                                                    i = i2;
                                                }
                                            } else {
                                                i = i2;
                                                j3 = j6;
                                            }
                                        }
                                    }
                                }
                                i = i2;
                            }
                            i = i2;
                        }
                        j3 = j5;
                    }
                    j3 = j4;
                }
                this.f14088g = j3;
                return i;
            }
        }
        return (int) q();
    }

    public final long m() {
        long j = this.f14088g;
        if (this.f14087f - j < 8) {
            throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.f14088g = 8 + j;
        aul aulVar = gbc.f17849g;
        long l = aulVar.l(j);
        long l2 = aulVar.l(1 + j);
        long l3 = aulVar.l(2 + j);
        long l4 = aulVar.l(3 + j);
        long l5 = aulVar.l(4 + j);
        return ((aulVar.l(j + 7) & 255) << 56) | ((aulVar.l(j + 6) & 255) << 48) | (l & 255) | ((l2 & 255) << 8) | ((l3 & 255) << 16) | ((l4 & 255) << 24) | ((l5 & 255) << 32) | ((aulVar.l(5 + j) & 255) << 40);
    }

    public final long n() {
        long j;
        long j2;
        long j3;
        long j4 = this.f14088g;
        if (this.f14087f != j4) {
            long j5 = 1 + j4;
            aul aulVar = gbc.f17849g;
            byte l = aulVar.l(j4);
            if (l >= 0) {
                this.f14088g = j5;
                return l;
            }
            if (this.f14087f - j5 >= 9) {
                long j6 = 2 + j4;
                int l2 = (aulVar.l(j5) << 7) ^ l;
                if (l2 < 0) {
                    j = l2 ^ (-128);
                } else {
                    long j7 = 3 + j4;
                    int l3 = l2 ^ (aulVar.l(j6) << 14);
                    if (l3 >= 0) {
                        j = l3 ^ 16256;
                    } else {
                        long j8 = 4 + j4;
                        int l4 = l3 ^ (aulVar.l(j7) << 21);
                        if (l4 < 0) {
                            j = (-2080896) ^ l4;
                            j6 = j8;
                        } else {
                            j7 = 5 + j4;
                            long l5 = l4 ^ (aulVar.l(j8) << 28);
                            if (l5 >= 0) {
                                j3 = 266354560;
                            } else {
                                long j9 = 6 + j4;
                                long l6 = l5 ^ (aulVar.l(j7) << 35);
                                if (l6 < 0) {
                                    j2 = -34093383808L;
                                } else {
                                    j7 = 7 + j4;
                                    l5 = l6 ^ (aulVar.l(j9) << 42);
                                    if (l5 >= 0) {
                                        j3 = 4363953127296L;
                                    } else {
                                        j9 = 8 + j4;
                                        l6 = l5 ^ (aulVar.l(j7) << 49);
                                        if (l6 < 0) {
                                            j2 = -558586000294016L;
                                        } else {
                                            long j10 = 9 + j4;
                                            long l7 = (l6 ^ (aulVar.l(j9) << 56)) ^ 71499008037633920L;
                                            if (l7 < 0) {
                                                long j11 = j4 + 10;
                                                if (aulVar.l(j10) >= 0) {
                                                    j6 = j11;
                                                    j = l7;
                                                }
                                            } else {
                                                j = l7;
                                                j6 = j10;
                                            }
                                        }
                                    }
                                }
                                j = j2 ^ l6;
                                j6 = j9;
                            }
                            j = j3 ^ l5;
                        }
                    }
                    j6 = j7;
                }
                this.f14088g = j6;
                return j;
            }
        }
        return q();
    }

    public final void o() {
        long j = this.f14087f + this.f14085d;
        this.f14087f = j;
        int i = (int) (j - this.k);
        int i2 = this.i;
        if (i <= i2) {
            this.f14085d = 0;
            return;
        }
        int i3 = i - i2;
        this.f14085d = i3;
        this.f14087f = j - i3;
    }

    public final int p() {
        long j = this.f14088g;
        if (this.f14087f - j < 4) {
            throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.f14088g = 4 + j;
        aul aulVar = gbc.f17849g;
        int l = aulVar.l(j) & 255;
        int l2 = aulVar.l(1 + j) & 255;
        int l3 = aulVar.l(2 + j) & 255;
        return ((aulVar.l(j + 3) & 255) << 24) | (l2 << 8) | l | (l3 << 16);
    }

    public final long q() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            long j2 = this.f14088g;
            if (j2 == this.f14087f) {
                throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            this.f14088g = 1 + j2;
            j |= (r3 & Byte.MAX_VALUE) << i;
            if ((gbc.f17849g.l(j2) & 128) == 0) {
                return j;
            }
        }
        throw new zzgzm("CodedInputStream encountered a malformed varint.");
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final boolean zzA() {
        return this.f14088g == this.f14087f;
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final boolean zzB() {
        return n() != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final double zza() {
        return Double.longBitsToDouble(m());
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final float zzb() {
        return Float.intBitsToFloat(p());
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzc() {
        return (int) (this.f14088g - this.k);
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzd(int i) {
        if (i < 0) {
            throw new zzgzm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int zzc = zzc() + i;
        int i2 = this.i;
        if (zzc > i2) {
            throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.i = zzc;
        o();
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zze() {
        return l();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzf() {
        return p();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzg() {
        return l();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzj() {
        return p();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzk() {
        return zzgxv.zzD(l());
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzl() {
        if (zzA()) {
            this.h = 0;
            return 0;
        }
        int l = l();
        this.h = l;
        if ((l >>> 3) != 0) {
            return l;
        }
        throw new zzgzm("Protocol message contained an invalid tag (zero).");
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzm() {
        return l();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final long zzn() {
        return m();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final long zzo() {
        return n();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final long zzs() {
        return m();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final long zzt() {
        return zzgxv.zzF(n());
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final long zzu() {
        return n();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final zzgxp zzv() {
        int l = l();
        if (l > 0) {
            long j = this.f14087f;
            long j2 = this.f14088g;
            if (l <= ((int) (j - j2))) {
                byte[] bArr = new byte[l];
                long j3 = l;
                gbc.f17849g.q(j2, bArr, 0L, j3);
                this.f14088g += j3;
                return new com.google.android.gms.internal.ads.ah(bArr);
            }
        }
        if (l == 0) {
            return zzgxp.zzb;
        }
        if (l < 0) {
            throw new zzgzm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final String zzw() {
        int l = l();
        if (l > 0) {
            long j = this.f14087f;
            long j2 = this.f14088g;
            if (l <= ((int) (j - j2))) {
                byte[] bArr = new byte[l];
                long j3 = l;
                gbc.f17849g.q(j2, bArr, 0L, j3);
                String str = new String(bArr, zzgzk.f8688a);
                this.f14088g += j3;
                return str;
            }
        }
        if (l == 0) {
            return "";
        }
        if (l < 0) {
            throw new zzgzm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final String zzx() {
        int l = l();
        if (l > 0) {
            long j = this.f14087f;
            long j2 = this.f14088g;
            if (l <= ((int) (j - j2))) {
                String b2 = bso.b(this.j, (int) (j2 - this.f14086e), l);
                this.f14088g += l;
                return b2;
            }
        }
        if (l == 0) {
            return "";
        }
        if (l <= 0) {
            throw new zzgzm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final void zzy(int i) {
        if (this.h != i) {
            throw new zzgzm("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final void zzz(int i) {
        this.i = i;
        o();
    }
}
