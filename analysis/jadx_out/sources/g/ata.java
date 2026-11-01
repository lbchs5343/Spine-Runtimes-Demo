package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.android.gms.internal.ads.zzfwq;
import com.google.android.gms.internal.ads.zzgbz;
import com.google.android.gms.internal.ads.zzgcb;

/* loaded from: classes3.dex */
public final class ata extends azh {
    public ata(esw eswVar, Character ch) {
        super(eswVar, ch);
        zzfwq.zze(eswVar.f16109g.length == 64);
    }

    public ata(String str, String str2) {
        this(new esw(str, str2.toCharArray()), (Character) '=');
    }

    @Override // g.azh, com.google.android.gms.internal.ads.zzgcb
    public final int d(byte[] bArr, CharSequence charSequence) {
        CharSequence c2 = c(charSequence);
        int length = c2.length();
        esw eswVar = this.i;
        if (!eswVar.f16103a[length % eswVar.f16105c]) {
            throw new zzgbz(awf.ac(c2.length(), "Invalid input length "));
        }
        int i = 0;
        int i2 = 0;
        while (i < c2.length()) {
            int i3 = i2 + 1;
            int j = (eswVar.j(c2.charAt(i + 1)) << 12) | (eswVar.j(c2.charAt(i)) << 18);
            bArr[i2] = (byte) (j >>> 16);
            int i4 = i + 2;
            if (i4 < c2.length()) {
                int i5 = i + 3;
                int j2 = j | (eswVar.j(c2.charAt(i4)) << 6);
                int i6 = i2 + 2;
                bArr[i3] = (byte) ((j2 >>> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                if (i5 < c2.length()) {
                    i += 4;
                    i2 += 3;
                    bArr[i6] = (byte) ((j2 | eswVar.j(c2.charAt(i5))) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                } else {
                    i2 = i6;
                    i = i5;
                }
            } else {
                i = i4;
                i2 = i3;
            }
        }
        return i2;
    }

    @Override // g.azh, com.google.android.gms.internal.ads.zzgcb
    public final void e(StringBuilder sb, byte[] bArr, int i) {
        int i2 = 0;
        zzfwq.zzj(0, i, bArr.length);
        for (int i3 = i; i3 >= 3; i3 -= 3) {
            int i4 = ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2] & 255) << 16) | (bArr[i2 + 2] & 255);
            esw eswVar = this.i;
            char[] cArr = eswVar.f16109g;
            char[] cArr2 = eswVar.f16109g;
            sb.append(cArr[i4 >>> 18]);
            sb.append(cArr2[(i4 >>> 12) & 63]);
            sb.append(cArr2[(i4 >>> 6) & 63]);
            sb.append(cArr2[i4 & 63]);
            i2 += 3;
        }
        if (i2 < i) {
            k(sb, bArr, i2, i - i2);
        }
    }

    @Override // g.azh
    public final zzgcb g(esw eswVar, Character ch) {
        return new ata(eswVar, ch);
    }
}
