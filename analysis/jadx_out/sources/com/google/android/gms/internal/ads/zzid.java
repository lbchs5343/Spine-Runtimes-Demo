package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import g.awf;
import g.fua;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class zzid implements zzkl {

    /* renamed from: a, reason: collision with root package name */
    public long f8760a;

    /* renamed from: b, reason: collision with root package name */
    public final long f8761b;

    /* renamed from: c, reason: collision with root package name */
    public final long f8762c;

    /* renamed from: d, reason: collision with root package name */
    public final zzys f8763d;

    /* renamed from: e, reason: collision with root package name */
    public final long f8764e;

    /* renamed from: f, reason: collision with root package name */
    public final long f8765f;

    /* renamed from: g, reason: collision with root package name */
    public final long f8766g;
    public final HashMap h;

    public zzid() {
        zzys zzysVar = new zzys(true, 65536);
        i(2500, 0, "bufferForPlaybackMs", "0");
        i(MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE, 0, "bufferForPlaybackAfterRebufferMs", "0");
        i(50000, 2500, "minBufferMs", "bufferForPlaybackMs");
        i(50000, MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        i(50000, 50000, "maxBufferMs", "minBufferMs");
        i(0, 0, "backBufferDurationMs", "0");
        this.f8763d = zzysVar;
        this.f8765f = zzen.zzs(50000L);
        this.f8766g = zzen.zzs(50000L);
        this.f8761b = zzen.zzs(2500L);
        this.f8762c = zzen.zzs(PushUIConfig.dismissTime);
        this.f8764e = zzen.zzs(0L);
        this.h = new HashMap();
        this.f8760a = -1L;
    }

    public static void i(int i, int i2, String str, String str2) {
        zzdb.zze(i >= i2, awf.i(str, " cannot be less than ", str2));
    }

    public final int j() {
        Iterator it = this.h.values().iterator();
        int i = 0;
        while (it.hasNext()) {
            i += ((fua) it.next()).f17420b;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    public final long zzb(zzoj zzojVar) {
        return this.f8764e;
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    public final void zzc(zzoj zzojVar) {
        long id = Thread.currentThread().getId();
        long j = this.f8760a;
        boolean z = true;
        if (j != -1 && j != id) {
            z = false;
        }
        zzdb.zzg(z, "Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper).");
        this.f8760a = id;
        HashMap hashMap = this.h;
        if (!hashMap.containsKey(zzojVar)) {
            hashMap.put(zzojVar, new fua());
        }
        fua fuaVar = (fua) hashMap.get(zzojVar);
        fuaVar.getClass();
        fuaVar.f17420b = 13107200;
        fuaVar.f17419a = false;
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    public final void zzd(zzoj zzojVar) {
        HashMap hashMap = this.h;
        if (hashMap.remove(zzojVar) != null) {
            boolean isEmpty = hashMap.isEmpty();
            zzys zzysVar = this.f8763d;
            if (isEmpty) {
                zzysVar.zze();
            } else {
                zzysVar.zzf(j());
            }
        }
        if (hashMap.isEmpty()) {
            this.f8760a = -1L;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    public final void zze(zzoj zzojVar) {
        HashMap hashMap = this.h;
        if (hashMap.remove(zzojVar) != null) {
            boolean isEmpty = hashMap.isEmpty();
            zzys zzysVar = this.f8763d;
            if (isEmpty) {
                zzysVar.zze();
            } else {
                zzysVar.zzf(j());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    public final void zzf(zzoj zzojVar, zzbv zzbvVar, zzur zzurVar, zzln[] zzlnVarArr, zzwr zzwrVar, zzyd[] zzydVarArr) {
        HashMap hashMap = this.h;
        fua fuaVar = (fua) hashMap.get(zzojVar);
        fuaVar.getClass();
        int i = 0;
        int i2 = 0;
        while (true) {
            int length = zzlnVarArr.length;
            if (i >= 2) {
                break;
            }
            if (zzydVarArr[i] != null) {
                i2 += zzlnVarArr[i].zzb() != 1 ? 131072000 : 13107200;
            }
            i++;
        }
        fuaVar.f17420b = Math.max(13107200, i2);
        boolean isEmpty = hashMap.isEmpty();
        zzys zzysVar = this.f8763d;
        if (isEmpty) {
            zzysVar.zze();
        } else {
            zzysVar.zzf(j());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    public final boolean zzg(zzoj zzojVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    public final boolean zzh(zzkk zzkkVar) {
        fua fuaVar = (fua) this.h.get(zzkkVar.zza);
        fuaVar.getClass();
        int zza = this.f8763d.zza();
        int j = j();
        float f2 = zzkkVar.zzc;
        long j2 = this.f8766g;
        long j3 = this.f8765f;
        if (f2 > 1.0f) {
            j3 = Math.min(zzen.zzq(j3, f2), j2);
        }
        long j4 = zzkkVar.zzb;
        if (j4 < Math.max(j3, 500000L)) {
            boolean z = zza < j;
            fuaVar.f17419a = z;
            if (!z && j4 < 500000) {
                zzdt.zzf("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j4 >= j2 || zza >= j) {
            fuaVar.f17419a = false;
        }
        return fuaVar.f17419a;
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    public final boolean zzi(zzkk zzkkVar) {
        boolean z = zzkkVar.zzd;
        long zzr = zzen.zzr(zzkkVar.zzb, zzkkVar.zzc);
        long j = z ? this.f8762c : this.f8761b;
        long j2 = zzkkVar.zze;
        if (j2 != -9223372036854775807L) {
            j = Math.min(j2 / 2, j);
        }
        return j <= 0 || zzr >= j || this.f8763d.zza() >= j();
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    public final zzys zzj() {
        return this.f8763d;
    }
}
