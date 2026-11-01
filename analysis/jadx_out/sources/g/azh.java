package g;

import com.google.android.gms.internal.ads.zzfwa;
import com.google.android.gms.internal.ads.zzfwq;
import com.google.android.gms.internal.ads.zzfxf;
import com.google.android.gms.internal.ads.zzgbz;
import com.google.android.gms.internal.ads.zzgcb;
import com.google.android.gms.internal.ads.zzgck;
import j$.util.Objects;
import java.math.RoundingMode;
import java.util.Arrays;

/* loaded from: classes3.dex */
public class azh extends zzgcb {
    public volatile zzgcb h;
    public final esw i;
    public final Character j;

    public azh(esw eswVar, Character ch) {
        this.i = eswVar;
        if (ch != null) {
            byte[] bArr = eswVar.i;
            if (bArr.length > 61 && bArr[61] != -1) {
                throw new IllegalArgumentException(zzfxf.zzb("Padding character %s was already in alphabet", ch));
            }
        }
        this.j = ch;
    }

    public azh(String str, String str2) {
        this(new esw(str, str2.toCharArray()), (Character) '=');
    }

    @Override // com.google.android.gms.internal.ads.zzgcb
    public final int b(int i) {
        esw eswVar = this.i;
        return eswVar.f16105c * zzgck.zzb(i, eswVar.f16107e, RoundingMode.CEILING);
    }

    @Override // com.google.android.gms.internal.ads.zzgcb
    public final CharSequence c(CharSequence charSequence) {
        charSequence.getClass();
        if (this.j == null) {
            return charSequence;
        }
        int length = charSequence.length();
        do {
            length--;
            if (length < 0) {
                break;
            }
        } while (charSequence.charAt(length) == '=');
        return charSequence.subSequence(0, length + 1);
    }

    @Override // com.google.android.gms.internal.ads.zzgcb
    public int d(byte[] bArr, CharSequence charSequence) {
        int i;
        CharSequence c2 = c(charSequence);
        int length = c2.length();
        esw eswVar = this.i;
        int i2 = eswVar.f16105c;
        int i3 = eswVar.f16105c;
        if (!eswVar.f16103a[length % i2]) {
            throw new zzgbz(awf.ac(c2.length(), "Invalid input length "));
        }
        int i4 = 0;
        for (int i5 = 0; i5 < c2.length(); i5 += i3) {
            long j = 0;
            int i6 = 0;
            int i7 = 0;
            while (true) {
                i = eswVar.f16104b;
                if (i6 >= i3) {
                    break;
                }
                j <<= i;
                if (i5 + i6 < c2.length()) {
                    j |= eswVar.j(c2.charAt(i7 + i5));
                    i7++;
                }
                i6++;
            }
            int i8 = eswVar.f16107e;
            int i9 = i7 * i;
            int i10 = (i8 - 1) * 8;
            while (i10 >= (i8 * 8) - i9) {
                bArr[i4] = (byte) ((j >>> i10) & 255);
                i10 -= 8;
                i4++;
            }
        }
        return i4;
    }

    @Override // com.google.android.gms.internal.ads.zzgcb
    public void e(StringBuilder sb, byte[] bArr, int i) {
        int i2 = 0;
        zzfwq.zzj(0, i, bArr.length);
        while (i2 < i) {
            esw eswVar = this.i;
            k(sb, bArr, i2, Math.min(eswVar.f16107e, i - i2));
            i2 += eswVar.f16107e;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof azh) {
            azh azhVar = (azh) obj;
            if (this.i.equals(azhVar.i) && Objects.equals(this.j, azhVar.j)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgcb
    public final int f(int i) {
        return (int) (((this.i.f16104b * i) + 7) / 8);
    }

    public zzgcb g(esw eswVar, Character ch) {
        return new azh(eswVar, ch);
    }

    public final int hashCode() {
        return this.i.hashCode() ^ Objects.hashCode(this.j);
    }

    public final void k(StringBuilder sb, byte[] bArr, int i, int i2) {
        zzfwq.zzj(i, i + i2, bArr.length);
        esw eswVar = this.i;
        int i3 = eswVar.f16107e;
        int i4 = eswVar.f16104b;
        int i5 = 0;
        zzfwq.zze(i2 <= i3);
        long j = 0;
        for (int i6 = 0; i6 < i2; i6++) {
            j = (j | (bArr[i + i6] & 255)) << 8;
        }
        int i7 = (i2 + 1) * 8;
        while (i5 < i2 * 8) {
            sb.append(eswVar.f16109g[((int) (j >>> ((i7 - i4) - i5))) & eswVar.h]);
            i5 += i4;
        }
        if (this.j != null) {
            while (i5 < eswVar.f16107e * 8) {
                sb.append('=');
                i5 += i4;
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BaseEncoding.");
        esw eswVar = this.i;
        sb.append(eswVar);
        if (8 % eswVar.f16104b != 0) {
            Character ch = this.j;
            if (ch == null) {
                sb.append(".omitPadding()");
            } else {
                sb.append(".withPadChar('");
                sb.append(ch);
                sb.append("')");
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v9 */
    @Override // com.google.android.gms.internal.ads.zzgcb
    public final zzgcb zzf() {
        esw eswVar;
        boolean z;
        zzgcb zzgcbVar = this.h;
        if (zzgcbVar == null) {
            esw eswVar2 = this.i;
            char[] cArr = eswVar2.f16109g;
            int i = 0;
            while (true) {
                if (i >= cArr.length) {
                    eswVar = eswVar2;
                    break;
                }
                if (zzfwa.zze(cArr[i])) {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= cArr.length) {
                            z = false;
                            break;
                        }
                        if (zzfwa.zzd(cArr[i2])) {
                            z = true;
                            break;
                        }
                        i2++;
                    }
                    zzfwq.zzl(!z, "Cannot call lowerCase() on a mixed-case alphabet");
                    char[] cArr2 = new char[cArr.length];
                    for (int i3 = 0; i3 < cArr.length; i3++) {
                        char c2 = cArr[i3];
                        if (zzfwa.zze(c2)) {
                            c2 ^= 32;
                        }
                        cArr2[i3] = (char) c2;
                    }
                    eswVar = new esw(eswVar2.f16106d.concat(".lowerCase()"), cArr2);
                    byte[] bArr = eswVar.i;
                    if (eswVar2.f16108f && !eswVar.f16108f) {
                        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
                        for (int i4 = 65; i4 <= 90; i4++) {
                            int i5 = i4 | 32;
                            byte b2 = bArr[i4];
                            byte b3 = bArr[i5];
                            if (b2 == -1) {
                                copyOf[i4] = b3;
                            } else {
                                char c3 = (char) i4;
                                char c4 = (char) i5;
                                if (b3 != -1) {
                                    throw new IllegalStateException(zzfxf.zzb("Can't ignoreCase() since '%s' and '%s' encode different values", Character.valueOf(c3), Character.valueOf(c4)));
                                }
                                copyOf[i5] = b2;
                            }
                        }
                        eswVar = new esw(eswVar.f16106d.concat(".ignoreCase()"), eswVar.f16109g, copyOf, true);
                    }
                } else {
                    i++;
                }
            }
            zzgcbVar = eswVar == eswVar2 ? this : g(eswVar, this.j);
            this.h = zzgcbVar;
        }
        return zzgcbVar;
    }
}
