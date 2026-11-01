package g;

import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.internal.ads.zzab;
import com.google.android.gms.internal.ads.zzacu;
import com.google.android.gms.internal.ads.zzad;
import com.google.android.gms.internal.ads.zzadx;
import com.google.android.gms.internal.ads.zzbh;
import com.google.android.gms.internal.ads.zzed;
import com.google.android.gms.internal.ads.zzen;
import java.math.RoundingMode;

/* loaded from: classes3.dex */
public final class dax implements ew {

    /* renamed from: d, reason: collision with root package name */
    public final zzad f13891d;

    /* renamed from: e, reason: collision with root package name */
    public int f13892e;

    /* renamed from: f, reason: collision with root package name */
    public final int f13893f;

    /* renamed from: g, reason: collision with root package name */
    public long f13894g;
    public final byte[] h;
    public final zzacu i;
    public final zzed j;
    public int k;
    public final zzadx l;
    public long m;
    public final gme n;
    public final int o;

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f13890c = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f13889b = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, MediaPlayer.MEDIA_PLAYER_OPTION_GET_VIDEO_CODEC_NAME, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_SWITCH_COUNT, MediaPlayer.MEDIA_PLAYER_OPTION_SLOW_PLAY_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_DRM_CLOSE_ROOT_CHECK, MediaPlayer.MEDIA_PLAYER_OPTION_NETWORK_TRY_COUNT, MediaPlayer.MEDIA_PLAYER_OPTION_ACCURATE_LAYOUT, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS, MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_PREPARED_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_GET_VIDEO_DEVICE_WAIT_END_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_PRIMING_WORK_AROUND, TTAdConstant.INTERACTION_TYPE_CODE, 449, 494, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_BITRATE_4UP_CEILING, 598, MediaPlayer.MEDIA_PLAYER_OPTION_BACKGROUND_STATUS, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

    public dax(zzacu zzacuVar, zzadx zzadxVar, gme gmeVar) {
        this.i = zzacuVar;
        this.l = zzadxVar;
        this.n = gmeVar;
        int i = gmeVar.f18394e;
        int max = Math.max(1, i / 10);
        this.o = max;
        zzed zzedVar = new zzed((byte[]) gmeVar.f18392c);
        zzedVar.zzk();
        int zzk = zzedVar.zzk();
        this.f13893f = zzk;
        int i2 = gmeVar.f18393d;
        int i3 = gmeVar.f18390a;
        int i4 = (((i3 - (i2 * 4)) * 8) / (gmeVar.f18391b * i2)) + 1;
        if (zzk != i4) {
            throw zzbh.zza("Expected frames per block: " + i4 + "; got: " + zzk, null);
        }
        int i5 = zzen.zza;
        int i6 = ((max + zzk) - 1) / zzk;
        this.h = new byte[i6 * i3];
        this.j = new zzed((zzk + zzk) * i2 * i6);
        int i7 = ((i3 * i) * 8) / zzk;
        zzab zzabVar = new zzab();
        zzabVar.zzZ("audio/raw");
        zzabVar.zzy(i7);
        zzabVar.zzU(i7);
        zzabVar.zzQ((max + max) * i2);
        zzabVar.zzz(i2);
        zzabVar.zzaa(i);
        zzabVar.zzT(2);
        this.f13891d = zzabVar.zzaf();
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0046 A[ADDED_TO_REGION, EDGE_INSN: B:49:0x0046->B:14:0x0046 BREAK  A[LOOP:0: B:5:0x0025->B:11:0x0040], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0029  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x003d -> B:3:0x0022). Please report as a decompilation issue!!! */
    @Override // g.ew
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(com.google.android.gms.internal.ads.zzacs r25, long r26) {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: g.dax.a(com.google.android.gms.internal.ads.zzacs, long):boolean");
    }

    public final void p(int i) {
        gme gmeVar = this.n;
        long zzu = this.m + zzen.zzu(this.f13894g, C.MICROS_PER_SECOND, gmeVar.f18394e, RoundingMode.FLOOR);
        int i2 = (i + i) * gmeVar.f18393d;
        this.l.zzs(zzu, 1, i2, this.f13892e - i2, null);
        this.f13894g += i;
        this.f13892e -= i2;
    }

    @Override // g.ew
    public final void zza(int i, long j) {
        this.i.zzO(new glb(this.n, this.f13893f, i, j));
        this.l.zzl(this.f13891d);
    }

    @Override // g.ew
    public final void zzb(long j) {
        this.k = 0;
        this.m = j;
        this.f13892e = 0;
        this.f13894g = 0L;
    }
}
