package g;

import com.google.android.gms.internal.ads.zzfwq;
import com.google.android.gms.internal.ads.zzgbz;
import com.google.android.gms.internal.ads.zzgcb;

/* loaded from: classes3.dex */
public final class bwk extends azh {
    public final char[] l;

    public bwk(esw eswVar) {
        super(eswVar, (Character) null);
        this.l = new char[512];
        char[] cArr = eswVar.f16109g;
        zzfwq.zze(cArr.length == 16);
        for (int i = 0; i < 256; i++) {
            char[] cArr2 = this.l;
            cArr2[i] = cArr[i >>> 4];
            cArr2[i | 256] = cArr[i & 15];
        }
    }

    @Override // g.azh, com.google.android.gms.internal.ads.zzgcb
    public final int d(byte[] bArr, CharSequence charSequence) {
        if (charSequence.length() % 2 == 1) {
            throw new zzgbz(awf.ac(charSequence.length(), "Invalid input length "));
        }
        int i = 0;
        int i2 = 0;
        while (i < charSequence.length()) {
            char charAt = charSequence.charAt(i);
            esw eswVar = this.i;
            bArr[i2] = (byte) ((eswVar.j(charAt) << 4) | eswVar.j(charSequence.charAt(i + 1)));
            i += 2;
            i2++;
        }
        return i2;
    }

    @Override // g.azh, com.google.android.gms.internal.ads.zzgcb
    public final void e(StringBuilder sb, byte[] bArr, int i) {
        zzfwq.zzj(0, i, bArr.length);
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = bArr[i2] & 255;
            char[] cArr = this.l;
            sb.append(cArr[i3]);
            sb.append(cArr[i3 | 256]);
        }
    }

    @Override // g.azh
    public final zzgcb g(esw eswVar, Character ch) {
        return new bwk(eswVar);
    }
}
