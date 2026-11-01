package g;

import com.google.android.gms.internal.ads.zzadw;
import com.google.android.gms.internal.ads.zzed;
import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzhj;
import com.google.android.gms.internal.ads.zzhm;
import com.google.android.gms.internal.ads.zzyl;
import com.google.android.gms.internal.ads.zzys;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class eda {

    /* renamed from: a, reason: collision with root package name */
    public fcw f15330a;

    /* renamed from: b, reason: collision with root package name */
    public long f15331b;

    /* renamed from: c, reason: collision with root package name */
    public final zzed f15332c = new zzed(32);

    /* renamed from: d, reason: collision with root package name */
    public final zzys f15333d;

    /* renamed from: e, reason: collision with root package name */
    public fcw f15334e;

    /* renamed from: f, reason: collision with root package name */
    public fcw f15335f;

    public eda(zzys zzysVar) {
        this.f15333d = zzysVar;
        fcw fcwVar = new fcw(0L);
        this.f15334e = fcwVar;
        this.f15335f = fcwVar;
        this.f15330a = fcwVar;
    }

    public static fcw g(fcw fcwVar, long j, byte[] bArr, int i) {
        while (j >= fcwVar.f16583e) {
            fcwVar = (fcw) fcwVar.f16581b;
        }
        int i2 = i;
        while (i2 > 0) {
            int min = Math.min(i2, (int) (fcwVar.f16583e - j));
            zzyl zzylVar = (zzyl) fcwVar.f16580a;
            byte[] bArr2 = zzylVar.zza;
            long j2 = j - fcwVar.f16582d;
            int i3 = zzylVar.zzb;
            System.arraycopy(bArr2, (int) j2, bArr, i - i2, min);
            i2 -= min;
            j += min;
            if (j == fcwVar.f16583e) {
                fcwVar = (fcw) fcwVar.f16581b;
            }
        }
        return fcwVar;
    }

    public static fcw h(fcw fcwVar, zzhm zzhmVar, fks fksVar, zzed zzedVar) {
        fcw fcwVar2;
        int i;
        if (zzhmVar.zzl()) {
            long j = fksVar.f16944b;
            zzedVar.zzI(1);
            fcw g2 = g(fcwVar, j, zzedVar.zzN(), 1);
            long j2 = j + 1;
            byte b2 = zzedVar.zzN()[0];
            int i2 = b2 & 128;
            int i3 = b2 & Byte.MAX_VALUE;
            zzhj zzhjVar = zzhmVar.zzb;
            byte[] bArr = zzhjVar.zza;
            if (bArr == null) {
                zzhjVar.zza = new byte[16];
            } else {
                Arrays.fill(bArr, (byte) 0);
            }
            boolean z = i2 != 0;
            fcwVar2 = g(g2, j2, zzhjVar.zza, i3);
            long j3 = j2 + i3;
            if (z) {
                zzedVar.zzI(2);
                fcwVar2 = g(fcwVar2, j3, zzedVar.zzN(), 2);
                j3 += 2;
                i = zzedVar.zzq();
            } else {
                i = 1;
            }
            int[] iArr = zzhjVar.zzd;
            if (iArr == null || iArr.length < i) {
                iArr = new int[i];
            }
            int[] iArr2 = iArr;
            int[] iArr3 = zzhjVar.zze;
            if (iArr3 == null || iArr3.length < i) {
                iArr3 = new int[i];
            }
            int[] iArr4 = iArr3;
            if (z) {
                int i4 = i * 6;
                zzedVar.zzI(i4);
                fcwVar2 = g(fcwVar2, j3, zzedVar.zzN(), i4);
                j3 += i4;
                zzedVar.zzL(0);
                for (int i5 = 0; i5 < i; i5++) {
                    iArr2[i5] = zzedVar.zzq();
                    iArr4[i5] = zzedVar.zzp();
                }
            } else {
                iArr2[0] = 0;
                iArr4[0] = fksVar.f16943a - ((int) (j3 - fksVar.f16944b));
            }
            zzadw zzadwVar = (zzadw) fksVar.f16945c;
            int i6 = zzen.zza;
            zzhjVar.zzc(i, iArr2, iArr4, zzadwVar.zzb, zzhjVar.zza, zzadwVar.zza, zzadwVar.zzc, zzadwVar.zzd);
            long j4 = fksVar.f16944b;
            int i7 = (int) (j3 - j4);
            fksVar.f16944b = j4 + i7;
            fksVar.f16943a -= i7;
        } else {
            fcwVar2 = fcwVar;
        }
        if (!zzhmVar.zze()) {
            zzhmVar.zzj(fksVar.f16943a);
            return i(fcwVar2, fksVar.f16944b, zzhmVar.zzc, fksVar.f16943a);
        }
        zzedVar.zzI(4);
        fcw g3 = g(fcwVar2, fksVar.f16944b, zzedVar.zzN(), 4);
        int zzp = zzedVar.zzp();
        fksVar.f16944b += 4;
        fksVar.f16943a -= 4;
        zzhmVar.zzj(zzp);
        fcw i8 = i(g3, fksVar.f16944b, zzhmVar.zzc, zzp);
        fksVar.f16944b += zzp;
        int i9 = fksVar.f16943a - zzp;
        fksVar.f16943a = i9;
        ByteBuffer byteBuffer = zzhmVar.zzf;
        if (byteBuffer == null || byteBuffer.capacity() < i9) {
            zzhmVar.zzf = ByteBuffer.allocate(i9);
        } else {
            zzhmVar.zzf.clear();
        }
        return i(i8, fksVar.f16944b, zzhmVar.zzf, fksVar.f16943a);
    }

    public static fcw i(fcw fcwVar, long j, ByteBuffer byteBuffer, int i) {
        while (j >= fcwVar.f16583e) {
            fcwVar = (fcw) fcwVar.f16581b;
        }
        while (i > 0) {
            int min = Math.min(i, (int) (fcwVar.f16583e - j));
            zzyl zzylVar = (zzyl) fcwVar.f16580a;
            byte[] bArr = zzylVar.zza;
            long j2 = j - fcwVar.f16582d;
            int i2 = zzylVar.zzb;
            byteBuffer.put(bArr, (int) j2, min);
            i -= min;
            j += min;
            if (j == fcwVar.f16583e) {
                fcwVar = (fcw) fcwVar.f16581b;
            }
        }
        return fcwVar;
    }

    public final void j(long j) {
        fcw fcwVar;
        if (j != -1) {
            while (true) {
                fcwVar = this.f15334e;
                if (j < fcwVar.f16583e) {
                    break;
                }
                this.f15333d.zzc((zzyl) fcwVar.f16580a);
                fcw fcwVar2 = this.f15334e;
                fcwVar2.f16580a = null;
                fcw fcwVar3 = (fcw) fcwVar2.f16581b;
                fcwVar2.f16581b = null;
                this.f15334e = fcwVar3;
            }
            if (this.f15335f.f16582d < fcwVar.f16582d) {
                this.f15335f = fcwVar;
            }
        }
    }

    public final int k(int i) {
        fcw fcwVar = this.f15330a;
        if (((zzyl) fcwVar.f16580a) == null) {
            zzyl zzb = this.f15333d.zzb();
            fcw fcwVar2 = new fcw(this.f15330a.f16583e);
            fcwVar.f16580a = zzb;
            fcwVar.f16581b = fcwVar2;
        }
        return Math.min(i, (int) (this.f15330a.f16583e - this.f15331b));
    }
}
