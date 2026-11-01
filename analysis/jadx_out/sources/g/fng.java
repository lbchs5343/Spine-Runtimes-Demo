package g;

import com.google.android.gms.internal.ads.zzgxp;
import com.google.android.gms.internal.ads.zzgxv;
import com.google.android.gms.internal.ads.zzgzk;
import com.google.android.gms.internal.ads.zzgzm;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class fng extends zzgxv {

    /* renamed from: d, reason: collision with root package name */
    public int f17076d;

    /* renamed from: e, reason: collision with root package name */
    public long f17077e;

    /* renamed from: f, reason: collision with root package name */
    public ByteBuffer f17078f;

    /* renamed from: g, reason: collision with root package name */
    public long f17079g;
    public int h;
    public int i;
    public long k;
    public final Iterator l;
    public int m = he.UNDEFINED_ITEM_ID;
    public int j = 0;

    public /* synthetic */ fng(int i, ArrayList arrayList) {
        this.h = i;
        this.l = arrayList.iterator();
        if (i != 0) {
            p();
            return;
        }
        this.f17078f = zzgzk.zzc;
        this.k = 0L;
        this.f17077e = 0L;
        this.f17079g = 0L;
    }

    public final int n() {
        int i;
        long j = this.k;
        if (this.f17079g != j) {
            long j2 = j + 1;
            aul aulVar = gbc.f17849g;
            byte l = aulVar.l(j);
            if (l >= 0) {
                this.k++;
                return l;
            }
            if (this.f17079g - this.k >= 10) {
                long j3 = 2 + j;
                int l2 = (aulVar.l(j2) << 7) ^ l;
                if (l2 < 0) {
                    i = l2 ^ (-128);
                } else {
                    long j4 = 3 + j;
                    int l3 = (aulVar.l(j3) << 14) ^ l2;
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
                                            j4 = 9 + j;
                                            if (aulVar.l(j5) < 0) {
                                                long j6 = j + 10;
                                                if (aulVar.l(j4) >= 0) {
                                                    i = i2;
                                                    j3 = j6;
                                                }
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
                this.k = j3;
                return i;
            }
        }
        return (int) s();
    }

    public final void o(int i, byte[] bArr) {
        if (i > u()) {
            if (i > 0) {
                throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            return;
        }
        int i2 = i;
        while (i2 > 0) {
            if (this.f17079g - this.k == 0) {
                if (!this.l.hasNext()) {
                    throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                }
                p();
            }
            int min = Math.min(i2, (int) (this.f17079g - this.k));
            long j = min;
            gbc.f17849g.q(this.k, bArr, i - i2, j);
            i2 -= min;
            this.k += j;
        }
    }

    public final void p() {
        ByteBuffer byteBuffer = (ByteBuffer) this.l.next();
        this.f17078f = byteBuffer;
        this.j += (int) (this.k - this.f17077e);
        long position = byteBuffer.position();
        this.k = position;
        this.f17077e = position;
        this.f17079g = this.f17078f.limit();
        long y = gbc.y(this.f17078f);
        this.k += y;
        this.f17077e += y;
        this.f17079g += y;
    }

    public final byte q() {
        if (this.f17079g - this.k == 0) {
            if (!this.l.hasNext()) {
                throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            p();
        }
        long j = this.k;
        this.k = 1 + j;
        return gbc.f17849g.l(j);
    }

    public final long r() {
        long j = this.f17079g;
        long j2 = this.k;
        if (j - j2 < 8) {
            return (q() & 255) | ((q() & 255) << 8) | ((q() & 255) << 16) | ((q() & 255) << 24) | ((q() & 255) << 32) | ((q() & 255) << 40) | ((q() & 255) << 48) | ((q() & 255) << 56);
        }
        this.k = 8 + j2;
        aul aulVar = gbc.f17849g;
        long l = aulVar.l(j2) & 255;
        long l2 = (aulVar.l(j2 + 1) & 255) << 8;
        long l3 = (aulVar.l(j2 + 2) & 255) << 16;
        long l4 = (aulVar.l(3 + j2) & 255) << 24;
        long l5 = (aulVar.l(j2 + 4) & 255) << 32;
        return ((aulVar.l(j2 + 6) & 255) << 48) | l | l2 | l3 | l4 | l5 | ((aulVar.l(j2 + 5) & 255) << 40) | ((aulVar.l(j2 + 7) & 255) << 56);
    }

    public final long s() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            j |= (r3 & Byte.MAX_VALUE) << i;
            if ((q() & 128) == 0) {
                return j;
            }
        }
        throw new zzgzm("CodedInputStream encountered a malformed varint.");
    }

    public final long t() {
        long j;
        long j2;
        long j3;
        long j4 = this.k;
        if (this.f17079g != j4) {
            long j5 = j4 + 1;
            aul aulVar = gbc.f17849g;
            byte l = aulVar.l(j4);
            if (l >= 0) {
                this.k++;
                return l;
            }
            if (this.f17079g - this.k >= 10) {
                long j6 = 2 + j4;
                int l2 = (aulVar.l(j5) << 7) ^ l;
                if (l2 < 0) {
                    j = l2 ^ (-128);
                } else {
                    long j7 = 3 + j4;
                    int l3 = (aulVar.l(j6) << 14) ^ l2;
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
                            long l5 = (aulVar.l(j8) << 28) ^ l4;
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
                                            j7 = 9 + j4;
                                            long l7 = (l6 ^ (aulVar.l(j9) << 56)) ^ 71499008037633920L;
                                            if (l7 < 0) {
                                                long j10 = j4 + 10;
                                                if (aulVar.l(j7) >= 0) {
                                                    j6 = j10;
                                                    j = l7;
                                                }
                                            } else {
                                                j = l7;
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
                this.k = j6;
                return j;
            }
        }
        return s();
    }

    public final int u() {
        return (int) (((this.h - this.j) - this.k) + this.f17077e);
    }

    public final int v() {
        long j = this.f17079g;
        long j2 = this.k;
        if (j - j2 < 4) {
            int q = q() & 255;
            int q2 = (q() & 255) << 8;
            return q | q2 | ((q() & 255) << 16) | ((q() & 255) << 24);
        }
        this.k = 4 + j2;
        aul aulVar = gbc.f17849g;
        int l = aulVar.l(j2) & 255;
        int l2 = (aulVar.l(1 + j2) & 255) << 8;
        return ((aulVar.l(j2 + 3) & 255) << 24) | l | l2 | ((aulVar.l(2 + j2) & 255) << 16);
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final boolean zzA() {
        return (((long) this.j) + this.k) - this.f17077e == ((long) this.h);
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final boolean zzB() {
        return t() != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final double zza() {
        return Double.longBitsToDouble(r());
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final float zzb() {
        return Float.intBitsToFloat(v());
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzc() {
        return (int) ((this.j + this.k) - this.f17077e);
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzd(int i) {
        if (i < 0) {
            throw new zzgzm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int zzc = zzc() + i;
        int i2 = this.m;
        if (zzc > i2) {
            throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.m = zzc;
        int i3 = this.h + this.i;
        this.h = i3;
        if (i3 <= zzc) {
            this.i = 0;
            return i2;
        }
        int i4 = i3 - zzc;
        this.i = i4;
        this.h = i3 - i4;
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zze() {
        return n();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzf() {
        return v();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzg() {
        return n();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzj() {
        return v();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzk() {
        return zzgxv.zzD(n());
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzl() {
        if (zzA()) {
            this.f17076d = 0;
            return 0;
        }
        int n = n();
        this.f17076d = n;
        if ((n >>> 3) != 0) {
            return n;
        }
        throw new zzgzm("Protocol message contained an invalid tag (zero).");
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final int zzm() {
        return n();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final long zzn() {
        return r();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final long zzo() {
        return t();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final long zzs() {
        return r();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final long zzt() {
        return zzgxv.zzF(t());
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final long zzu() {
        return t();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final zzgxp zzv() {
        int n = n();
        if (n > 0) {
            long j = this.f17079g;
            long j2 = this.k;
            long j3 = n;
            if (j3 <= j - j2) {
                byte[] bArr = new byte[n];
                gbc.f17849g.q(j2, bArr, 0L, j3);
                this.k += j3;
                return new com.google.android.gms.internal.ads.ah(bArr);
            }
        }
        if (n > 0 && n <= u()) {
            byte[] bArr2 = new byte[n];
            o(n, bArr2);
            return new com.google.android.gms.internal.ads.ah(bArr2);
        }
        if (n == 0) {
            return zzgxp.zzb;
        }
        if (n < 0) {
            throw new zzgzm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final String zzw() {
        int n = n();
        if (n > 0) {
            long j = this.f17079g;
            long j2 = this.k;
            long j3 = n;
            if (j3 <= j - j2) {
                byte[] bArr = new byte[n];
                gbc.f17849g.q(j2, bArr, 0L, j3);
                String str = new String(bArr, zzgzk.f8688a);
                this.k += j3;
                return str;
            }
        }
        if (n > 0 && n <= u()) {
            byte[] bArr2 = new byte[n];
            o(n, bArr2);
            return new String(bArr2, zzgzk.f8688a);
        }
        if (n == 0) {
            return "";
        }
        if (n < 0) {
            throw new zzgzm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final String zzx() {
        int n = n();
        if (n > 0) {
            long j = this.f17079g;
            long j2 = this.k;
            long j3 = n;
            if (j3 <= j - j2) {
                String b2 = bso.b(this.f17078f, (int) (j2 - this.f17077e), n);
                this.k += j3;
                return b2;
            }
        }
        if (n >= 0 && n <= u()) {
            byte[] bArr = new byte[n];
            o(n, bArr);
            bso.f12134a.getClass();
            return bli.t(0, bArr, n);
        }
        if (n == 0) {
            return "";
        }
        if (n <= 0) {
            throw new zzgzm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final void zzy(int i) {
        if (this.f17076d != i) {
            throw new zzgzm("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    public final void zzz(int i) {
        this.m = i;
        int i2 = this.h + this.i;
        this.h = i2;
        if (i2 <= i) {
            this.i = 0;
            return;
        }
        int i3 = i2 - i;
        this.i = i3;
        this.h = i2 - i3;
    }
}
