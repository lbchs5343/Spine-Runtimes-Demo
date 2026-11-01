package g;

import com.bykv.vk.component.ttvideo.player.C;
import com.google.android.gms.internal.ads.zzab;
import com.google.android.gms.internal.ads.zzad;
import com.google.android.gms.internal.ads.zzadm;
import com.google.android.gms.internal.ads.zzaed;
import com.google.android.gms.internal.ads.zzbd;
import com.google.android.gms.internal.ads.zzdb;
import com.google.android.gms.internal.ads.zzed;
import com.google.android.gms.internal.ads.zzfzo;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public final class cda extends dbh {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f12671a = {79, 112, 117, 115, 72, 101, 97, 100};

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f12672b = {79, 112, 117, 115, 84, 97, 103, 115};

    /* renamed from: c, reason: collision with root package name */
    public boolean f12673c;

    public static boolean d(zzed zzedVar, byte[] bArr) {
        if (zzedVar.zzb() < 8) {
            return false;
        }
        int zzd = zzedVar.zzd();
        byte[] bArr2 = new byte[8];
        zzedVar.zzH(bArr2, 0, 8);
        zzedVar.zzL(zzd);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // g.dbh
    public final long g(zzed zzedVar) {
        return (this.r * zzadm.zzd(zzedVar.zzN())) / C.MICROS_PER_SECOND;
    }

    @Override // g.dbh
    public final void h(boolean z) {
        super.h(z);
        if (z) {
            this.f12673c = false;
        }
    }

    @Override // g.dbh
    public final boolean i(zzed zzedVar, long j, ffr ffrVar) {
        if (d(zzedVar, f12671a)) {
            byte[] copyOf = Arrays.copyOf(zzedVar.zzN(), zzedVar.zze());
            int i = copyOf[9] & 255;
            List zze = zzadm.zze(copyOf);
            if (((zzad) ffrVar.f16721f) == null) {
                zzab zzabVar = new zzab();
                zzabVar.zzZ("audio/opus");
                zzabVar.zzz(i);
                zzabVar.zzaa(48000);
                zzabVar.zzM(zze);
                ffrVar.f16721f = zzabVar.zzaf();
                return true;
            }
        } else {
            if (!d(zzedVar, f12672b)) {
                zzdb.zzb((zzad) ffrVar.f16721f);
                return false;
            }
            zzdb.zzb((zzad) ffrVar.f16721f);
            if (!this.f12673c) {
                this.f12673c = true;
                zzedVar.zzM(8);
                zzbd zzb = zzaed.zzb(zzfzo.zzm(zzaed.zzc(zzedVar, false, false).zza));
                if (zzb != null) {
                    zzab zzb2 = ((zzad) ffrVar.f16721f).zzb();
                    zzb2.zzS(zzb.zzd(((zzad) ffrVar.f16721f).zzl));
                    ffrVar.f16721f = zzb2.zzaf();
                }
            }
        }
        return true;
    }
}
