package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.android.gms.internal.ads.zzacs;
import com.google.android.gms.internal.ads.zzacv;
import com.google.android.gms.internal.ads.zzbh;
import com.google.android.gms.internal.ads.zzdb;
import com.google.android.gms.internal.ads.zzed;

/* loaded from: classes3.dex */
public final class cxs {

    /* renamed from: a, reason: collision with root package name */
    public int f13705a;

    /* renamed from: b, reason: collision with root package name */
    public int f13706b;

    /* renamed from: c, reason: collision with root package name */
    public int f13707c;

    /* renamed from: e, reason: collision with root package name */
    public long f13709e;

    /* renamed from: f, reason: collision with root package name */
    public int f13710f;

    /* renamed from: d, reason: collision with root package name */
    public final int[] f13708d = new int[MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE];

    /* renamed from: g, reason: collision with root package name */
    public final zzed f13711g = new zzed(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);

    public final boolean h(zzacs zzacsVar, boolean z) {
        this.f13707c = 0;
        this.f13709e = 0L;
        this.f13710f = 0;
        this.f13705a = 0;
        this.f13706b = 0;
        zzed zzedVar = this.f13711g;
        zzedVar.zzI(27);
        if (zzacv.zzc(zzacsVar, zzedVar.zzN(), 0, 27, z) && zzedVar.zzu() == 1332176723) {
            if (zzedVar.zzm() == 0) {
                this.f13707c = zzedVar.zzm();
                this.f13709e = zzedVar.zzr();
                zzedVar.zzs();
                zzedVar.zzs();
                zzedVar.zzs();
                int zzm = zzedVar.zzm();
                this.f13710f = zzm;
                this.f13705a = zzm + 27;
                zzedVar.zzI(zzm);
                if (zzacv.zzc(zzacsVar, zzedVar.zzN(), 0, this.f13710f, z)) {
                    for (int i = 0; i < this.f13710f; i++) {
                        int zzm2 = zzedVar.zzm();
                        this.f13708d[i] = zzm2;
                        this.f13706b += zzm2;
                    }
                    return true;
                }
            } else if (!z) {
                throw zzbh.zzc("unsupported bit stream revision");
            }
        }
        return false;
    }

    public final boolean i(zzacs zzacsVar, long j) {
        zzdb.zzd(zzacsVar.zzf() == zzacsVar.zze());
        zzed zzedVar = this.f13711g;
        zzedVar.zzI(4);
        while (true) {
            if ((j == -1 || zzacsVar.zzf() + 4 < j) && zzacv.zzc(zzacsVar, zzedVar.zzN(), 0, 4, true)) {
                zzedVar.zzL(0);
                if (zzedVar.zzu() == 1332176723) {
                    zzacsVar.zzj();
                    return true;
                }
                zzacsVar.zzk(1);
            }
        }
        do {
            if (j != -1 && zzacsVar.zzf() >= j) {
                break;
            }
        } while (zzacsVar.zzc(1) != -1);
        return false;
    }
}
