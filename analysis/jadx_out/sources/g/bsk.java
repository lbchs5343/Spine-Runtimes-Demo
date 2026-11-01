package g;

import com.google.android.gms.internal.ads.zzacs;
import com.google.android.gms.internal.ads.zzed;
import com.google.android.gms.internal.ads.zzek;
import com.google.android.gms.internal.ads.zzen;

/* loaded from: classes3.dex */
public final class bsk {

    /* renamed from: a, reason: collision with root package name */
    public long f12119a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f12120b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f12121c;

    /* renamed from: d, reason: collision with root package name */
    public final zzek f12122d;

    /* renamed from: e, reason: collision with root package name */
    public long f12123e;

    /* renamed from: f, reason: collision with root package name */
    public final zzed f12124f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f12125g;
    public long h;

    public bsk(int i) {
        switch (i) {
            case 1:
                this.f12122d = new zzek(0L);
                this.f12123e = -9223372036854775807L;
                this.h = -9223372036854775807L;
                this.f12119a = -9223372036854775807L;
                this.f12124f = new zzed();
                break;
            default:
                this.f12122d = new zzek(0L);
                this.f12123e = -9223372036854775807L;
                this.h = -9223372036854775807L;
                this.f12119a = -9223372036854775807L;
                this.f12124f = new zzed();
                break;
        }
    }

    public static long i(zzed zzedVar) {
        int zzd = zzedVar.zzd();
        if (zzedVar.zzb() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        zzedVar.zzH(bArr, 0, 9);
        zzedVar.zzL(zzd);
        byte b2 = bArr[0];
        if ((b2 & 196) != 68) {
            return -9223372036854775807L;
        }
        byte b3 = bArr[2];
        if ((b3 & 4) != 4) {
            return -9223372036854775807L;
        }
        byte b4 = bArr[4];
        if ((b4 & 4) != 4 || (bArr[5] & 1) != 1 || (bArr[8] & 3) != 3) {
            return -9223372036854775807L;
        }
        long j = b2;
        long j2 = b3;
        long j3 = (248 & j2) >> 3;
        long j4 = (bArr[1] & 255) << 20;
        long j5 = (j2 & 3) << 13;
        return j5 | j4 | ((j & 3) << 28) | (((j & 56) >> 3) << 30) | (j3 << 15) | ((bArr[3] & 255) << 5) | ((b4 & 248) >> 3);
    }

    public static final int j(int i, byte[] bArr) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    public void k(zzacs zzacsVar) {
        byte[] bArr = zzen.zzf;
        int length = bArr.length;
        this.f12124f.zzJ(bArr, 0);
        this.f12125g = true;
        zzacsVar.zzj();
    }
}
