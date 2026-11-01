package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.agv;
import g.fge;
import j$.util.Objects;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzrc extends zzsy implements zzkp {

    /* renamed from: a, reason: collision with root package name */
    public boolean f8859a;

    /* renamed from: b, reason: collision with root package name */
    public final zzsj f8860b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f8861c;

    /* renamed from: d, reason: collision with root package name */
    public zzad f8862d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f8863e;

    /* renamed from: f, reason: collision with root package name */
    public final zzpm f8864f;

    /* renamed from: g, reason: collision with root package name */
    public final Context f8865g;
    public final zzpu h;
    public zzad i;
    public boolean j;
    public boolean k;
    public long l;
    public int m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzrc(Context context, zzsl zzslVar, zzta zztaVar, boolean z, Handler handler, zzpn zzpnVar, zzpu zzpuVar) {
        super(1, zzslVar, zztaVar, false, 44100.0f);
        zzsj zzsjVar = zzen.zza >= 35 ? new zzsj(zzsi.zza) : null;
        this.f8865g = context.getApplicationContext();
        this.h = zzpuVar;
        this.f8860b = zzsjVar;
        this.m = AVMDLDataLoader.AVMDLErrorIsCreateTask;
        this.f8864f = new zzpm(handler, zzpnVar);
        zzpuVar.zzq(new fge(this));
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final void _b() {
        try {
            this.h.zzj();
        } catch (zzpt e2) {
            throw cp(e2, e2.zzc, e2.zzb, true != this.dm ? MediaPlayer.MEDIA_PLAYER_OPTION_PLAY_LOG_INFO : MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_PLAYER_STAYAWAKE);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final boolean _c(zzad zzadVar) {
        cn();
        return this.h.zzA(zzadVar);
    }

    @Override // com.google.android.gms.internal.ads.zzsy, com.google.android.gms.internal.ads.zzhw
    public final void an(long j, boolean z) {
        super.an(j, z);
        this.h.zzf();
        this.l = j;
        this.f8859a = false;
        this.f8863e = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00d0, code lost:
    
        if ("AXON 7 mini".equals(r0) == false) goto L44;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0112  */
    @Override // com.google.android.gms.internal.ads.zzsy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzsk ao(zzsq zzsqVar, zzad zzadVar, float f2) {
        boolean z;
        MediaFormat mediaFormat;
        zzad[] zzadVarArr = this.ca;
        zzadVarArr.getClass();
        int length = zzadVarArr.length;
        int o = o(zzsqVar, zzadVar);
        if (length != 1) {
            for (zzad zzadVar2 : zzadVarArr) {
                if (zzsqVar.zzb(zzadVar, zzadVar2).zzd != 0) {
                    o = Math.max(o, o(zzsqVar, zzadVar2));
                }
            }
        }
        this.n = o;
        String str = zzsqVar.zza;
        int i = zzen.zza;
        if (i < 24 && "OMX.SEC.aac.dec".equals(str) && "samsung".equals(zzen.zzc)) {
            String str2 = zzen.zzb;
            if (str2.startsWith("zeroflte") || str2.startsWith("herolte") || str2.startsWith("heroqlte")) {
                z = true;
                this.f8861c = z;
                String str3 = zzsqVar.zza;
                this.j = !str3.equals("OMX.google.opus.decoder") || str3.equals("c2.android.opus.decoder") || str3.equals("OMX.google.vorbis.decoder") || str3.equals("c2.android.vorbis.decoder");
                String str4 = zzsqVar.zzc;
                int i2 = this.n;
                mediaFormat = new MediaFormat();
                mediaFormat.setString("mime", str4);
                mediaFormat.setInteger(com.bykv.vk.component.ttvideo.player.MediaFormat.KEY_CHANNEL_COUNT, zzadVar.zzC);
                mediaFormat.setInteger(com.bykv.vk.component.ttvideo.player.MediaFormat.KEY_SAMPLE_RATE, zzadVar.zzD);
                zzdw.zzb(mediaFormat, zzadVar.zzr);
                zzdw.zza(mediaFormat, "max-input-size", i2);
                if (i >= 23) {
                    mediaFormat.setInteger("priority", 0);
                    if (f2 != -1.0f) {
                        if (i == 23) {
                            String str5 = zzen.zzd;
                            if (!"ZTE B2017G".equals(str5)) {
                            }
                        }
                        mediaFormat.setFloat("operating-rate", f2);
                    }
                }
                if (i <= 28 && "audio/ac4".equals(zzadVar.zzo)) {
                    mediaFormat.setInteger("ac4-is-sync", 1);
                }
                if (i >= 24) {
                    if (this.h.zza(zzen.zzA(4, zzadVar.zzC, zzadVar.zzD)) == 2) {
                        mediaFormat.setInteger("pcm-encoding", 4);
                    }
                }
                if (i >= 32) {
                    mediaFormat.setInteger("max-output-channel-count", 99);
                }
                if (i >= 35) {
                    mediaFormat.setInteger("importance", Math.max(0, -this.m));
                }
                this.i = ("audio/raw".equals(zzsqVar.zzb) || "audio/raw".equals(zzadVar.zzo)) ? null : zzadVar;
                return zzsk.zza(zzsqVar, mediaFormat, zzadVar, null, this.f8860b);
            }
        }
        z = false;
        this.f8861c = z;
        String str32 = zzsqVar.zza;
        this.j = !str32.equals("OMX.google.opus.decoder") || str32.equals("c2.android.opus.decoder") || str32.equals("OMX.google.vorbis.decoder") || str32.equals("c2.android.vorbis.decoder");
        String str42 = zzsqVar.zzc;
        int i22 = this.n;
        mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str42);
        mediaFormat.setInteger(com.bykv.vk.component.ttvideo.player.MediaFormat.KEY_CHANNEL_COUNT, zzadVar.zzC);
        mediaFormat.setInteger(com.bykv.vk.component.ttvideo.player.MediaFormat.KEY_SAMPLE_RATE, zzadVar.zzD);
        zzdw.zzb(mediaFormat, zzadVar.zzr);
        zzdw.zza(mediaFormat, "max-input-size", i22);
        if (i >= 23) {
        }
        if (i <= 28) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        if (i >= 24) {
        }
        if (i >= 32) {
        }
        if (i >= 35) {
        }
        this.i = ("audio/raw".equals(zzsqVar.zzb) || "audio/raw".equals(zzadVar.zzo)) ? null : zzadVar;
        return zzsk.zza(zzsqVar, mediaFormat, zzadVar, null, this.f8860b);
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final void ap(zzhm zzhmVar) {
        zzad zzadVar;
        if (zzen.zza < 29 || (zzadVar = zzhmVar.zza) == null || !Objects.equals(zzadVar.zzo, "audio/opus") || !this.dm) {
            return;
        }
        ByteBuffer byteBuffer = zzhmVar.zzf;
        byteBuffer.getClass();
        zzad zzadVar2 = zzhmVar.zza;
        zzadVar2.getClass();
        int i = zzadVar2.zzF;
        if (byteBuffer.remaining() == 8) {
            this.h.zzr(i, (int) ((byteBuffer.order(ByteOrder.LITTLE_ENDIAN).getLong() * 48000) / C.NANOS_PER_SECOND));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final void as() {
        this.h.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final void at(long j, long j2, String str) {
        this.f8864f.zze(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzhw
    public final void aw() {
        p();
        this.h.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final float ax(float f2, zzad[] zzadVarArr) {
        int i = -1;
        for (zzad zzadVar : zzadVarArr) {
            int i2 = zzadVar.zzD;
            if (i2 != -1) {
                i = Math.max(i, i2);
            }
        }
        if (i == -1) {
            return -1.0f;
        }
        return i * f2;
    }

    @Override // com.google.android.gms.internal.ads.zzhw
    public final void ba() {
        zzsj zzsjVar;
        this.h.zzk();
        if (zzen.zza < 35 || (zzsjVar = this.f8860b) == null) {
            return;
        }
        zzsjVar.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final zzhy bb(zzsq zzsqVar, zzad zzadVar, zzad zzadVar2) {
        int i;
        int i2;
        zzhy zzb = zzsqVar.zzb(zzadVar, zzadVar2);
        int i3 = zzb.zze;
        if (this.cu == null && _c(zzadVar2)) {
            i3 |= 32768;
        }
        if (o(zzsqVar, zzadVar2) > this.n) {
            i3 |= 64;
        }
        String str = zzsqVar.zza;
        if (i3 != 0) {
            i2 = i3;
            i = 0;
        } else {
            i = zzb.zzd;
            i2 = 0;
        }
        return new zzhy(str, zzadVar, zzadVar2, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final int bc(zzta zztaVar, zzad zzadVar) {
        int i;
        zzsq zza;
        boolean z;
        boolean zzg = zzbg.zzg(zzadVar.zzo);
        int i2 = TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
        if (!zzg) {
            return TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
        }
        int i3 = zzadVar.zzJ;
        int i4 = 1;
        boolean z2 = i3 == 0;
        zzpu zzpuVar = this.h;
        if (!z2 || (i3 != 0 && zztl.zza() == null)) {
            i = 0;
        } else {
            zzoz zzd = zzpuVar.zzd(zzadVar);
            if (zzd.zzb) {
                i = true != zzd.zzc ? 512 : 1536;
                if (zzd.zzd) {
                    i |= 2048;
                }
            } else {
                i = 0;
            }
            if (zzpuVar.zzA(zzadVar)) {
                return i | MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DASH_ABR;
            }
        }
        if ((!"audio/raw".equals(zzadVar.zzo) || zzpuVar.zzA(zzadVar)) && zzpuVar.zzA(zzen.zzA(2, zzadVar.zzC, zzadVar.zzD))) {
            List zzn = zzadVar.zzo == null ? zzfzo.zzn() : (!zzpuVar.zzA(zzadVar) || (zza = zztl.zza()) == null) ? zztl.zze(zztaVar, zzadVar, false, false) : zzfzo.zzo(zza);
            if (!zzn.isEmpty()) {
                if (z2) {
                    zzsq zzsqVar = (zzsq) zzn.get(0);
                    boolean zze = zzsqVar.zze(zzadVar);
                    if (!zze) {
                        for (int i5 = 1; i5 < zzn.size(); i5++) {
                            zzsq zzsqVar2 = (zzsq) zzn.get(i5);
                            if (zzsqVar2.zze(zzadVar)) {
                                zzsqVar = zzsqVar2;
                                z = false;
                                zze = true;
                                break;
                            }
                        }
                    }
                    z = true;
                    int i6 = true != zze ? 3 : 4;
                    int i7 = 8;
                    if (zze && zzsqVar.zzf(zzadVar)) {
                        i7 = 16;
                    }
                    int i8 = true != zzsqVar.zzg ? 0 : 64;
                    if (true != z) {
                        i2 = 0;
                    }
                    return i6 | i7 | 32 | i8 | i2 | i;
                }
                i4 = 2;
            }
        }
        return i4 | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final void bd(Exception exc) {
        zzdt.zzd("MediaCodecAudioRenderer", "Audio codec error", exc);
        this.f8864f.zza(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final void bl(zzad zzadVar, MediaFormat mediaFormat) {
        int i;
        zzad zzadVar2 = this.i;
        int[] iArr = null;
        boolean z = true;
        if (zzadVar2 != null) {
            zzadVar = zzadVar2;
        } else if (this.et != null) {
            mediaFormat.getClass();
            int zzn = "audio/raw".equals(zzadVar.zzo) ? zzadVar.zzE : (zzen.zza < 24 || !mediaFormat.containsKey("pcm-encoding")) ? mediaFormat.containsKey("v-bits-per-sample") ? zzen.zzn(mediaFormat.getInteger("v-bits-per-sample")) : 2 : mediaFormat.getInteger("pcm-encoding");
            zzab zzabVar = new zzab();
            zzabVar.zzZ("audio/raw");
            zzabVar.zzT(zzn);
            zzabVar.zzG(zzadVar.zzF);
            zzabVar.zzH(zzadVar.zzG);
            zzabVar.zzS(zzadVar.zzl);
            zzabVar.zzL(zzadVar.zza);
            zzabVar.zzN(zzadVar.zzb);
            zzabVar.zzO(zzadVar.zzc);
            zzabVar.zzP(zzadVar.zzd);
            zzabVar.zzab(zzadVar.zze);
            zzabVar.zzX(zzadVar.zzf);
            zzabVar.zzz(mediaFormat.getInteger(com.bykv.vk.component.ttvideo.player.MediaFormat.KEY_CHANNEL_COUNT));
            zzabVar.zzaa(mediaFormat.getInteger(com.bykv.vk.component.ttvideo.player.MediaFormat.KEY_SAMPLE_RATE));
            zzad zzaf = zzabVar.zzaf();
            if (this.f8861c && zzaf.zzC == 6 && (i = zzadVar.zzC) < 6) {
                iArr = new int[i];
                for (int i2 = 0; i2 < zzadVar.zzC; i2++) {
                    iArr[i2] = i2;
                }
            } else if (this.j) {
                int i3 = zzaf.zzC;
                if (i3 == 3) {
                    iArr = new int[]{0, 2, 1};
                } else if (i3 == 5) {
                    iArr = new int[]{0, 2, 1, 3, 4};
                } else if (i3 == 6) {
                    iArr = new int[]{0, 2, 1, 5, 3, 4};
                } else if (i3 == 7) {
                    iArr = new int[]{0, 2, 1, 6, 5, 3, 4};
                } else if (i3 == 8) {
                    iArr = new int[]{0, 2, 1, 7, 5, 6, 3, 4};
                }
            }
            zzadVar = zzaf;
        }
        try {
            int i4 = zzen.zza;
            if (i4 >= 29) {
                if (this.dm) {
                    cn();
                }
                if (i4 < 29) {
                    z = false;
                }
                zzdb.zzf(z);
            }
            this.h.zze(zzadVar, 0, iArr);
        } catch (zzpp e2) {
            throw cp(e2, e2.zza, false, MediaPlayer.MEDIA_PLAYER_OPTION_CRASH_INFO);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsy, com.google.android.gms.internal.ads.zzhw
    public final void bm() {
        zzpm zzpmVar = this.f8864f;
        this.k = true;
        this.f8862d = null;
        try {
            this.h.zzf();
            super.bm();
        } catch (Throwable th) {
            super.bm();
            throw th;
        } finally {
            zzpmVar.zzg(this.eu);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsy, com.google.android.gms.internal.ads.zzhw
    public final void bn() {
        zzpu zzpuVar = this.h;
        this.f8859a = false;
        try {
            super.bn();
            if (this.k) {
                this.k = false;
                zzpuVar.zzl();
            }
        } catch (Throwable th) {
            if (this.k) {
                this.k = false;
                zzpuVar.zzl();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsy, com.google.android.gms.internal.ads.zzhw
    public final void bo(boolean z, boolean z2) {
        super.bo(z, z2);
        this.f8864f.zzh(this.eu);
        cn();
        zzoj zzojVar = this.cm;
        zzojVar.getClass();
        zzpu zzpuVar = this.h;
        zzpuVar.zzt(zzojVar);
        zzdc zzdcVar = this.by;
        zzdcVar.getClass();
        zzpuVar.zzp(zzdcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final void bq(String str) {
        this.f8864f.zzf(str);
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final boolean br(long j, long j2, zzsn zzsnVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzad zzadVar) {
        byteBuffer.getClass();
        if (this.i != null && (i2 & 2) != 0) {
            zzsnVar.getClass();
            zzsnVar.zzo(i, false);
            return true;
        }
        zzpu zzpuVar = this.h;
        if (z) {
            if (zzsnVar != null) {
                zzsnVar.zzo(i, false);
            }
            this.eu.zzf += i3;
            zzpuVar.zzg();
            return true;
        }
        try {
            if (!zzpuVar.zzx(byteBuffer, j3, i3)) {
                return false;
            }
            if (zzsnVar != null) {
                zzsnVar.zzo(i, false);
            }
            this.eu.zze += i3;
            return true;
        } catch (zzpq e2) {
            zzad zzadVar2 = this.f8862d;
            if (this.dm) {
                cn();
            }
            throw cp(e2, zzadVar2, e2.zzb, MediaPlayer.MEDIA_PLAYER_OPTION_CRASH_INFO);
        } catch (zzpt e3) {
            if (this.dm) {
                cn();
            }
            throw cp(e3, zzadVar, e3.zzb, MediaPlayer.MEDIA_PLAYER_OPTION_PLAY_LOG_INFO);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhw
    public final void bs() {
        this.h.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final List bu(zzta zztaVar, zzad zzadVar) {
        zzsq zza;
        return zztl.zzf(zzadVar.zzo == null ? zzfzo.zzn() : (!this.h.zzA(zzadVar) || (zza = zztl.zza()) == null) ? zztl.zze(zztaVar, zzadVar, false, false) : zzfzo.zzo(zza), zzadVar);
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final zzhy bv(zzkj zzkjVar) {
        zzad zzadVar = zzkjVar.zza;
        zzadVar.getClass();
        this.f8862d = zzadVar;
        zzhy bv = super.bv(zzkjVar);
        this.f8864f.zzi(zzadVar, bv);
        return bv;
    }

    public final int o(zzsq zzsqVar, zzad zzadVar) {
        int i;
        if (!"OMX.google.raw.decoder".equals(zzsqVar.zza) || (i = zzen.zza) >= 24 || (i == 23 && zzen.zzM(this.f8865g))) {
            return zzadVar.zzp;
        }
        return -1;
    }

    public final void p() {
        long zzb = this.h.zzb(zzW());
        if (zzb != Long.MIN_VALUE) {
            if (!this.f8863e) {
                zzb = Math.max(this.l, zzb);
            }
            this.l = zzb;
            this.f8863e = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzln, com.google.android.gms.internal.ads.zzlq
    public final String zzU() {
        return "MediaCodecAudioRenderer";
    }

    @Override // com.google.android.gms.internal.ads.zzsy, com.google.android.gms.internal.ads.zzln
    public final boolean zzW() {
        return super.zzW() && this.h.zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzsy, com.google.android.gms.internal.ads.zzln
    public final boolean zzX() {
        return this.h.zzy() || super.zzX();
    }

    @Override // com.google.android.gms.internal.ads.zzkp
    public final long zza() {
        if (zzcV() == 2) {
            p();
        }
        return this.l;
    }

    @Override // com.google.android.gms.internal.ads.zzkp
    public final zzbj zzc() {
        return this.h.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzkp
    public final void zzg(zzbj zzbjVar) {
        this.h.zzs(zzbjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzkp
    public final boolean zzj() {
        boolean z = this.f8859a;
        this.f8859a = false;
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzhw, com.google.android.gms.internal.ads.zzln
    public final zzkp zzl() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzsy, com.google.android.gms.internal.ads.zzhw, com.google.android.gms.internal.ads.zzli
    public final void zzu(int i, Object obj) throws zzig {
        zzsj zzsjVar;
        zzpu zzpuVar = this.h;
        if (i == 2) {
            obj.getClass();
            zzpuVar.zzw(((Float) obj).floatValue());
            return;
        }
        if (i == 3) {
            zzg zzgVar = (zzg) obj;
            zzgVar.getClass();
            zzpuVar.zzm(zzgVar);
            return;
        }
        if (i == 6) {
            zzh zzhVar = (zzh) obj;
            zzhVar.getClass();
            zzpuVar.zzo(zzhVar);
            return;
        }
        if (i == 12) {
            if (zzen.zza >= 23) {
                agv.a(zzpuVar, obj);
                return;
            }
            return;
        }
        if (i == 16) {
            obj.getClass();
            this.m = ((Integer) obj).intValue();
            zzsn zzsnVar = this.et;
            if (zzsnVar == null || zzen.zza < 35) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("importance", Math.max(0, -this.m));
            zzsnVar.zzq(bundle);
            return;
        }
        if (i == 9) {
            obj.getClass();
            zzpuVar.zzv(((Boolean) obj).booleanValue());
        } else {
            if (i != 10) {
                super.zzu(i, obj);
                return;
            }
            obj.getClass();
            int intValue = ((Integer) obj).intValue();
            zzpuVar.zzn(intValue);
            if (zzen.zza < 35 || (zzsjVar = this.f8860b) == null) {
                return;
            }
            zzsjVar.zzd(intValue);
        }
    }
}
