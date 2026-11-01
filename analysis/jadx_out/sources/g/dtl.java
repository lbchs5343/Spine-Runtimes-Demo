package g;

import android.net.Uri;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.android.gms.internal.ads.zzdb;
import com.google.android.gms.internal.ads.zzed;
import com.google.android.gms.internal.ads.zzgd;
import com.google.android.gms.internal.ads.zzgi;
import com.google.android.gms.internal.ads.zzhd;
import java.util.Map;

/* loaded from: classes3.dex */
public final class dtl implements zzgd {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f14777a;

    /* renamed from: b, reason: collision with root package name */
    public int f14778b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgd f14779c;

    /* renamed from: d, reason: collision with root package name */
    public final int f14780d;

    /* renamed from: e, reason: collision with root package name */
    public final gww f14781e;

    public dtl(zzgd zzgdVar, int i, gww gwwVar) {
        zzdb.zzd(i > 0);
        this.f14779c = zzgdVar;
        this.f14780d = i;
        this.f14781e = gwwVar;
        this.f14777a = new byte[1];
        this.f14778b = i;
    }

    @Override // com.google.android.gms.internal.ads.zzn
    public final int zza(byte[] bArr, int i, int i2) {
        int i3 = this.f14778b;
        zzgd zzgdVar = this.f14779c;
        if (i3 == 0) {
            byte[] bArr2 = this.f14777a;
            int i4 = 0;
            if (zzgdVar.zza(bArr2, 0, 1) != -1) {
                int i5 = (bArr2[0] & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) << 4;
                if (i5 != 0) {
                    byte[] bArr3 = new byte[i5];
                    int i6 = i5;
                    while (i6 > 0) {
                        int zza = zzgdVar.zza(bArr3, i4, i6);
                        if (zza != -1) {
                            i4 += zza;
                            i6 -= zza;
                        }
                    }
                    while (i5 > 0) {
                        int i7 = i5 - 1;
                        if (bArr3[i7] != 0) {
                            break;
                        }
                        i5 = i7;
                    }
                    if (i5 > 0) {
                        this.f14781e.zza(new zzed(bArr3, i5));
                    }
                }
                i3 = this.f14780d;
                this.f14778b = i3;
            }
            return -1;
        }
        int zza2 = zzgdVar.zza(bArr, i, Math.min(i3, i2));
        if (zza2 != -1) {
            this.f14778b -= zza2;
        }
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final long zzb(zzgi zzgiVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final Uri zzc() {
        return this.f14779c.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final void zzd() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final Map zze() {
        return this.f14779c.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final void zzf(zzhd zzhdVar) {
        zzhdVar.getClass();
        this.f14779c.zzf(zzhdVar);
    }
}
