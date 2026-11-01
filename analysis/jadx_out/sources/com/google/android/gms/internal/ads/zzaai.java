package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Trace;
import android.util.Pair;
import android.view.Surface;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.akm;
import g.aoy;
import g.azr;
import g.gem;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzaai extends zzsy implements zzaao {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f4006a;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f4007b;

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f4008c = {1920, 1600, 1440, 1280, 960, 854, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HW_ERR_REASON, 480};
    public List aa;

    /* renamed from: ab, reason: collision with root package name */
    public int f4009ab;
    public zzabl ac;
    public long ad;
    public zzci ae;
    public zzaal af;
    public zzci ag;
    public final zzaap ah;
    public int ai;
    public int aj;

    /* renamed from: d, reason: collision with root package name */
    public int f4010d;

    /* renamed from: e, reason: collision with root package name */
    public int f4011e;

    /* renamed from: f, reason: collision with root package name */
    public int f4012f;

    /* renamed from: g, reason: collision with root package name */
    public zzee f4013g;
    public zzaam h;
    public Surface i;
    public final boolean j;
    public final zzaan k;
    public boolean l;
    public boolean m;
    public boolean n;
    public long o;
    public int p;
    public final boolean q;
    public long r;
    public boolean s;
    public final Context t;
    public final zzabf u;
    public long v;
    public int w;
    public boolean x;
    public zzaah y;
    public long z;

    public zzaai(Context context, zzsl zzslVar, zzta zztaVar, long j, boolean z, Handler handler, zzabg zzabgVar, int i, float f2) {
        super(2, zzslVar, zztaVar, false, 30.0f);
        Context applicationContext = context.getApplicationContext();
        this.t = applicationContext;
        this.ac = null;
        this.u = new zzabf(handler, zzabgVar);
        this.q = true;
        this.ah = new zzaap(applicationContext, this, 0L);
        this.k = new zzaan();
        this.j = "NVIDIA".equals(zzen.zzc);
        this.f4013g = zzee.zza;
        this.f4009ab = 1;
        this.w = 0;
        this.ag = zzci.zza;
        this.f4011e = 0;
        this.ae = null;
        this.aj = AVMDLDataLoader.AVMDLErrorIsCreateTask;
        this.v = -9223372036854775807L;
        this.ad = -9223372036854775807L;
    }

    public static int ak(zzsq zzsqVar, zzad zzadVar) {
        if (zzadVar.zzp == -1) {
            return zzad(zzsqVar, zzadVar);
        }
        int size = zzadVar.zzr.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += ((byte[]) zzadVar.zzr.get(i2)).length;
        }
        return zzadVar.zzp + i;
    }

    public static List al(Context context, zzta zztaVar, zzad zzadVar, boolean z, boolean z2) {
        String str = zzadVar.zzo;
        if (str == null) {
            return zzfzo.zzn();
        }
        if (zzen.zza >= 26 && "video/dolby-vision".equals(str) && !azr.a(context)) {
            List zzc = zztl.zzc(zztaVar, zzadVar, z, z2);
            if (!zzc.isEmpty()) {
                return zzc;
            }
        }
        return zztl.zze(zztaVar, zzadVar, z, z2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:302:0x04c3, code lost:
    
        if (r0.equals("deb") != false) goto L508;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x07a0, code lost:
    
        if (r13.equals("JSN-L21") == false) goto L516;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0080 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean am(String str) {
        char c2;
        char c3;
        boolean z = false;
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (zzaai.class) {
            if (!f4006a) {
                int i = zzen.zza;
                char c4 = 28;
                if (i <= 28) {
                    String str2 = zzen.zzb;
                    switch (str2.hashCode()) {
                        case -1339091551:
                            if (str2.equals("dangal")) {
                                c3 = 1;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case -1220081023:
                            if (str2.equals("dangalFHD")) {
                                c3 = 3;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case -1220066608:
                            if (str2.equals("dangalUHD")) {
                                c3 = 2;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case -1012436106:
                            if (str2.equals("oneday")) {
                                c3 = 7;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case -760312546:
                            if (str2.equals("aquaman")) {
                                c3 = 0;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case -64886864:
                            if (str2.equals("magnolia")) {
                                c3 = 4;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 3415681:
                            if (str2.equals("once")) {
                                c3 = 6;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 825323514:
                            if (str2.equals("machuca")) {
                                c3 = 5;
                                break;
                            }
                            c3 = 65535;
                            break;
                        default:
                            c3 = 65535;
                            break;
                    }
                    switch (c3) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                            z = true;
                            break;
                    }
                    f4007b = z;
                    f4006a = true;
                }
                if (i > 27 || !"HWEML".equals(zzen.zzb)) {
                    String str3 = zzen.zzd;
                    switch (str3.hashCode()) {
                        case -349662828:
                            if (str3.equals("AFTJMST12")) {
                                c2 = 6;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case -321033677:
                            if (str3.equals("AFTKMST12")) {
                                c2 = 7;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 2006354:
                            if (str3.equals("AFTA")) {
                                c2 = 0;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 2006367:
                            if (str3.equals("AFTN")) {
                                c2 = 1;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 2006371:
                            if (str3.equals("AFTR")) {
                                c2 = 2;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 1785421873:
                            if (str3.equals("AFTEU011")) {
                                c2 = 3;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 1785421876:
                            if (str3.equals("AFTEU014")) {
                                c2 = 4;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 1798172390:
                            if (str3.equals("AFTSO001")) {
                                c2 = '\b';
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 2119412532:
                            if (str3.equals("AFTEUFF014")) {
                                c2 = 5;
                                break;
                            }
                            c2 = 65535;
                            break;
                        default:
                            c2 = 65535;
                            break;
                    }
                    switch (c2) {
                        default:
                            if (i <= 26) {
                                String str4 = zzen.zzb;
                                switch (str4.hashCode()) {
                                    case -2144781245:
                                        if (str4.equals("GIONEE_SWW1609")) {
                                            c4 = '6';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -2144781185:
                                        if (str4.equals("GIONEE_SWW1627")) {
                                            c4 = '7';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -2144781160:
                                        if (str4.equals("GIONEE_SWW1631")) {
                                            c4 = '8';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -2097309513:
                                        if (str4.equals("K50a40")) {
                                            c4 = 'J';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -2022874474:
                                        if (str4.equals("CP8676_I02")) {
                                            c4 = 22;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -1978993182:
                                        if (str4.equals("NX541J")) {
                                            c4 = 'Y';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -1978990237:
                                        if (str4.equals("NX573J")) {
                                            c4 = 'Z';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -1936688988:
                                        if (str4.equals("PGN528")) {
                                            c4 = 'e';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -1936688066:
                                        if (str4.equals("PGN610")) {
                                            c4 = 'f';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -1936688065:
                                        if (str4.equals("PGN611")) {
                                            c4 = 'g';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -1931988508:
                                        if (str4.equals("AquaPowerM")) {
                                            c4 = '\r';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -1885099851:
                                        if (str4.equals("RAIJIN")) {
                                            c4 = 't';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -1696512866:
                                        if (str4.equals("XT1663")) {
                                            c4 = 137;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -1680025915:
                                        if (str4.equals("ComioS1")) {
                                            c4 = 21;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -1615810839:
                                        if (str4.equals("Phantom6")) {
                                            c4 = 'h';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -1600724499:
                                        if (str4.equals("pacificrim")) {
                                            c4 = '_';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -1554255044:
                                        if (str4.equals("vernee_M5")) {
                                            c4 = 130;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -1481772737:
                                        if (str4.equals("panell_dl")) {
                                            c4 = 'a';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -1481772730:
                                        if (str4.equals("panell_ds")) {
                                            c4 = 'b';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -1481772729:
                                        if (str4.equals("panell_dt")) {
                                            c4 = 'c';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -1320080169:
                                        if (str4.equals("GiONEE_GBL7319")) {
                                            c4 = '4';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -1217592143:
                                        if (str4.equals("BRAVIA_ATV2")) {
                                            c4 = 18;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -1180384755:
                                        if (str4.equals("iris60")) {
                                            c4 = 'F';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -1139198265:
                                        if (str4.equals("Slate_Pro")) {
                                            c4 = 'v';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -1052835013:
                                        if (str4.equals("namath")) {
                                            c4 = 'W';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -993250464:
                                        if (str4.equals("A10-70F")) {
                                            c4 = 5;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -993250458:
                                        if (str4.equals("A10-70L")) {
                                            c4 = 6;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -965403638:
                                        if (str4.equals("s905x018")) {
                                            c4 = 'x';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -958336948:
                                        if (str4.equals("ELUGA_Ray_X")) {
                                            c4 = '\"';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -879245230:
                                        if (str4.equals("tcl_eu")) {
                                            c4 = '~';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -842500323:
                                        if (str4.equals("nicklaus_f")) {
                                            c4 = 'X';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -821392978:
                                        if (str4.equals("A7000-a")) {
                                            c4 = '\t';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -797483286:
                                        if (str4.equals("SVP-DTV15")) {
                                            c4 = 'w';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -794946968:
                                        if (str4.equals("watson")) {
                                            c4 = 131;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -788334647:
                                        if (str4.equals("whyred")) {
                                            c4 = 132;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -782144577:
                                        if (str4.equals("OnePlus5T")) {
                                            c4 = '[';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -575125681:
                                        if (str4.equals("GiONEE_CBL7513")) {
                                            c4 = '3';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -521118391:
                                        if (str4.equals("GIONEE_GBL7360")) {
                                            c4 = '5';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -430914369:
                                        if (str4.equals("Pixi4-7_3G")) {
                                            c4 = 'i';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -290434366:
                                        if (str4.equals("taido_row")) {
                                            c4 = 'y';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -282781963:
                                        if (str4.equals("BLACK-1X")) {
                                            c4 = 17;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -277133239:
                                        if (str4.equals("Z12_PRO")) {
                                            c4 = 138;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -173639913:
                                        if (str4.equals("ELUGA_A3_Pro")) {
                                            c4 = 31;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case -56598463:
                                        if (str4.equals("woods_fn")) {
                                            c4 = 134;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 2126:
                                        if (str4.equals("C1")) {
                                            c4 = 20;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 2564:
                                        if (str4.equals("Q5")) {
                                            c4 = 'q';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 2715:
                                        if (str4.equals("V1")) {
                                            c4 = 127;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 2719:
                                        if (str4.equals("V5")) {
                                            c4 = 129;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 3091:
                                        if (str4.equals("b5")) {
                                            c4 = 16;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 3483:
                                        if (str4.equals("mh")) {
                                            c4 = 'T';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 73405:
                                        if (str4.equals("JGZ")) {
                                            c4 = 'I';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 75537:
                                        if (str4.equals("M04")) {
                                            c4 = 'O';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 75739:
                                        if (str4.equals("M5c")) {
                                            c4 = 'P';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 76779:
                                        if (str4.equals("MX6")) {
                                            c4 = 'V';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 78669:
                                        if (str4.equals("P85")) {
                                            c4 = '^';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 79305:
                                        if (str4.equals("PLE")) {
                                            c4 = 'k';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 80618:
                                        if (str4.equals("QX1")) {
                                            c4 = 's';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 88274:
                                        if (str4.equals("Z80")) {
                                            c4 = 139;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 98846:
                                        if (str4.equals("cv1")) {
                                            c4 = 26;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 98848:
                                        if (str4.equals("cv3")) {
                                            c4 = 27;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 99329:
                                        break;
                                    case 101481:
                                        if (str4.equals("flo")) {
                                            c4 = '1';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 1513190:
                                        if (str4.equals("1601")) {
                                            c4 = 0;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 1514184:
                                        if (str4.equals("1713")) {
                                            c4 = 1;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 1514185:
                                        if (str4.equals("1714")) {
                                            c4 = 2;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 2133089:
                                        if (str4.equals("F01H")) {
                                            c4 = '$';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 2133091:
                                        if (str4.equals("F01J")) {
                                            c4 = '%';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 2133120:
                                        if (str4.equals("F02H")) {
                                            c4 = '&';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 2133151:
                                        if (str4.equals("F03H")) {
                                            c4 = '\'';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 2133182:
                                        if (str4.equals("F04H")) {
                                            c4 = '(';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 2133184:
                                        if (str4.equals("F04J")) {
                                            c4 = ')';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 2436959:
                                        if (str4.equals("P681")) {
                                            c4 = ']';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 2463773:
                                        if (str4.equals("Q350")) {
                                            c4 = 'm';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 2464648:
                                        if (str4.equals("Q427")) {
                                            c4 = 'o';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 2689555:
                                        if (str4.equals("XE2X")) {
                                            c4 = 136;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 3154429:
                                        if (str4.equals("fugu")) {
                                            c4 = '2';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 3284551:
                                        if (str4.equals("kate")) {
                                            c4 = 'K';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 3351335:
                                        if (str4.equals("mido")) {
                                            c4 = 'U';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 3386211:
                                        if (str4.equals("p212")) {
                                            c4 = '\\';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 41325051:
                                        if (str4.equals("MEIZU_M5")) {
                                            c4 = 'S';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 51349633:
                                        if (str4.equals("601LV")) {
                                            c4 = 3;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 51350594:
                                        if (str4.equals("602LV")) {
                                            c4 = 4;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 55178625:
                                        if (str4.equals("Aura_Note_2")) {
                                            c4 = 15;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 61542055:
                                        if (str4.equals("A1601")) {
                                            c4 = 7;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 65355429:
                                        if (str4.equals("E5643")) {
                                            c4 = 30;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 66214468:
                                        if (str4.equals("F3111")) {
                                            c4 = '*';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 66214470:
                                        if (str4.equals("F3113")) {
                                            c4 = '+';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 66214473:
                                        if (str4.equals("F3116")) {
                                            c4 = ',';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 66215429:
                                        if (str4.equals("F3211")) {
                                            c4 = '-';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 66215431:
                                        if (str4.equals("F3213")) {
                                            c4 = '.';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 66215433:
                                        if (str4.equals("F3215")) {
                                            c4 = '/';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 66216390:
                                        if (str4.equals("F3311")) {
                                            c4 = '0';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 76402249:
                                        if (str4.equals("PRO7S")) {
                                            c4 = 'l';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 76404105:
                                        if (str4.equals("Q4260")) {
                                            c4 = 'n';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 76404911:
                                        if (str4.equals("Q4310")) {
                                            c4 = 'p';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 80963634:
                                        if (str4.equals("V23GB")) {
                                            c4 = 128;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 82882791:
                                        if (str4.equals("X3_HK")) {
                                            c4 = 135;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 98715550:
                                        if (str4.equals("i9031")) {
                                            c4 = 'C';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 101370885:
                                        if (str4.equals("l5460")) {
                                            c4 = 'L';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 102844228:
                                        if (str4.equals("le_x6")) {
                                            c4 = 'M';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 165221241:
                                        if (str4.equals("A2016a40")) {
                                            c4 = '\b';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 182191441:
                                        if (str4.equals("CPY83_I00")) {
                                            c4 = 25;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 245388979:
                                        if (str4.equals("marino_f")) {
                                            c4 = 'R';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 287431619:
                                        if (str4.equals("griffin")) {
                                            c4 = '<';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 307593612:
                                        if (str4.equals("A7010a48")) {
                                            c4 = 11;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 308517133:
                                        if (str4.equals("A7020a48")) {
                                            c4 = '\f';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 316215098:
                                        if (str4.equals("TB3-730F")) {
                                            c4 = 'z';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 316215116:
                                        if (str4.equals("TB3-730X")) {
                                            c4 = '{';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 316246811:
                                        if (str4.equals("TB3-850F")) {
                                            c4 = '|';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 316246818:
                                        if (str4.equals("TB3-850M")) {
                                            c4 = '}';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 407160593:
                                        if (str4.equals("Pixi5-10_4G")) {
                                            c4 = 'j';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 507412548:
                                        if (str4.equals("QM16XE_U")) {
                                            c4 = 'r';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 793982701:
                                        if (str4.equals("GIONEE_WBL5708")) {
                                            c4 = '9';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 794038622:
                                        if (str4.equals("GIONEE_WBL7365")) {
                                            c4 = ':';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 794040393:
                                        if (str4.equals("GIONEE_WBL7519")) {
                                            c4 = ';';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 835649806:
                                        if (str4.equals("manning")) {
                                            c4 = 'Q';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 917340916:
                                        if (str4.equals("A7000plus")) {
                                            c4 = '\n';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 958008161:
                                        if (str4.equals("j2xlteins")) {
                                            c4 = 'H';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 1060579533:
                                        if (str4.equals("panell_d")) {
                                            c4 = '`';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 1150207623:
                                        if (str4.equals("LS-5017")) {
                                            c4 = 'N';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 1176899427:
                                        if (str4.equals("itel_S41")) {
                                            c4 = 'G';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 1280332038:
                                        if (str4.equals("hwALE-H")) {
                                            c4 = '>';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 1306947716:
                                        if (str4.equals("EverStar_S")) {
                                            c4 = '#';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 1349174697:
                                        if (str4.equals("htc_e56ml_dtul")) {
                                            c4 = '=';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 1522194893:
                                        if (str4.equals("woods_f")) {
                                            c4 = 133;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 1691543273:
                                        if (str4.equals("CPH1609")) {
                                            c4 = 23;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 1691544261:
                                        if (str4.equals("CPH1715")) {
                                            c4 = 24;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 1709443163:
                                        if (str4.equals("iball8735_9806")) {
                                            c4 = 'D';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 1865889110:
                                        if (str4.equals("santoni")) {
                                            c4 = 'u';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 1906253259:
                                        if (str4.equals("PB2-670M")) {
                                            c4 = 'd';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 1977196784:
                                        if (str4.equals("Infinix-X572")) {
                                            c4 = 'E';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 2006372676:
                                        if (str4.equals("BRAVIA_ATV3_4K")) {
                                            c4 = 19;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 2019281702:
                                        if (str4.equals("DM-01K")) {
                                            c4 = 29;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 2029784656:
                                        if (str4.equals("HWBLN-H")) {
                                            c4 = '?';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 2030379515:
                                        if (str4.equals("HWCAM-H")) {
                                            c4 = '@';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 2033393791:
                                        if (str4.equals("ASUS_X00AD_2")) {
                                            c4 = 14;
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 2047190025:
                                        if (str4.equals("ELUGA_Note")) {
                                            c4 = ' ';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 2047252157:
                                        if (str4.equals("ELUGA_Prim")) {
                                            c4 = '!';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 2048319463:
                                        if (str4.equals("HWVNS-H")) {
                                            c4 = 'A';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    case 2048855701:
                                        if (str4.equals("HWWAS-H")) {
                                            c4 = 'B';
                                            break;
                                        }
                                        c4 = 65535;
                                        break;
                                    default:
                                        c4 = 65535;
                                        break;
                                }
                                switch (c4) {
                                    default:
                                        if (str3.hashCode() == -594534941) {
                                            break;
                                        }
                                        break;
                                    case 0:
                                    case 1:
                                    case 2:
                                    case 3:
                                    case 4:
                                    case 5:
                                    case 6:
                                    case 7:
                                    case '\b':
                                    case '\t':
                                    case '\n':
                                    case 11:
                                    case '\f':
                                    case '\r':
                                    case 14:
                                    case 15:
                                    case 16:
                                    case 17:
                                    case 18:
                                    case 19:
                                    case 20:
                                    case 21:
                                    case 22:
                                    case 23:
                                    case 24:
                                    case 25:
                                    case 26:
                                    case 27:
                                    case 28:
                                    case 29:
                                    case 30:
                                    case 31:
                                    case ' ':
                                    case '!':
                                    case '\"':
                                    case '#':
                                    case '$':
                                    case '%':
                                    case '&':
                                    case '\'':
                                    case '(':
                                    case ')':
                                    case '*':
                                    case '+':
                                    case ',':
                                    case '-':
                                    case '.':
                                    case '/':
                                    case '0':
                                    case '1':
                                    case '2':
                                    case '3':
                                    case '4':
                                    case '5':
                                    case '6':
                                    case '7':
                                    case '8':
                                    case '9':
                                    case ':':
                                    case ';':
                                    case '<':
                                    case '=':
                                    case '>':
                                    case '?':
                                    case '@':
                                    case 'A':
                                    case 'B':
                                    case 'C':
                                    case 'D':
                                    case 'E':
                                    case 'F':
                                    case 'G':
                                    case 'H':
                                    case 'I':
                                    case 'J':
                                    case 'K':
                                    case 'L':
                                    case 'M':
                                    case 'N':
                                    case 'O':
                                    case 'P':
                                    case 'Q':
                                    case 'R':
                                    case 'S':
                                    case 'T':
                                    case 'U':
                                    case 'V':
                                    case 'W':
                                    case 'X':
                                    case 'Y':
                                    case 'Z':
                                    case '[':
                                    case '\\':
                                    case ']':
                                    case '^':
                                    case '_':
                                    case '`':
                                    case 'a':
                                    case 'b':
                                    case 'c':
                                    case 'd':
                                    case 'e':
                                    case 'f':
                                    case 'g':
                                    case 'h':
                                    case 'i':
                                    case 'j':
                                    case 'k':
                                    case 'l':
                                    case 'm':
                                    case 'n':
                                    case 'o':
                                    case 'p':
                                    case 'q':
                                    case 'r':
                                    case 's':
                                    case 't':
                                    case 'u':
                                    case 'v':
                                    case 'w':
                                    case 'x':
                                    case 'y':
                                    case 'z':
                                    case '{':
                                    case '|':
                                    case '}':
                                    case '~':
                                    case TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE /* 127 */:
                                    case TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME /* 128 */:
                                    case TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA /* 129 */:
                                    case 130:
                                    case 131:
                                    case 132:
                                    case 133:
                                    case 134:
                                    case 135:
                                    case 136:
                                    case 137:
                                    case 138:
                                    case 139:
                                        break;
                                }
                            }
                            break;
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case '\b':
                            break;
                    }
                    f4007b = z;
                    f4006a = true;
                }
                z = true;
                f4007b = z;
                f4006a = true;
            }
        }
        return f4007b;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0077, code lost:
    
        if (r3.equals("video/av01") != false) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int zzad(zzsq zzsqVar, zzad zzadVar) {
        int intValue;
        int i = zzadVar.zzu;
        int i2 = zzadVar.zzv;
        if (i != -1 && i2 != -1) {
            String str = zzadVar.zzo;
            str.getClass();
            char c2 = 2;
            if ("video/dolby-vision".equals(str)) {
                HashMap hashMap = zztl.f8880a;
                Pair zza = zzdd.zza(zzadVar);
                str = (zza == null || !((intValue = ((Integer) zza.first).intValue()) == 512 || intValue == 1 || intValue == 2)) ? "video/hevc" : "video/avc";
            }
            int i3 = 4;
            switch (str.hashCode()) {
                case -1664118616:
                    if (str.equals("video/3gpp")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1662735862:
                    break;
                case -1662541442:
                    if (str.equals("video/hevc")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1187890754:
                    if (str.equals("video/mp4v-es")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1331836730:
                    if (str.equals("video/avc")) {
                        c2 = 5;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1599127256:
                    if (str.equals("video/x-vnd.on2.vp8")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1599127257:
                    if (str.equals("video/x-vnd.on2.vp9")) {
                        c2 = 6;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            switch (c2) {
                case 0:
                case 1:
                case 2:
                case 3:
                    return ((i * i2) * 3) / i3;
                case 4:
                    return Math.max(2097152, ((i * i2) * 3) / 4);
                case 5:
                    String str2 = zzen.zzd;
                    if (!"BRAVIA 4K 2015".equals(str2) && (!"Amazon".equals(zzen.zzc) || (!"KFSOWI".equals(str2) && (!"AFTS".equals(str2) || !zzsqVar.zzf)))) {
                        return ((((i2 + 15) / 16) * ((i + 15) / 16)) * 768) / 4;
                    }
                    break;
                case 6:
                    i3 = 8;
                    return ((i * i2) * 3) / i3;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzsy, com.google.android.gms.internal.ads.zzhw
    public final void an(long j, boolean z) {
        zzabl zzablVar = this.ac;
        if (zzablVar != null) {
            zzablVar.zzg(true);
            zzabl zzablVar2 = this.ac;
            akm akmVar = this.f2do;
            zzablVar2.zzu(akmVar.f10395d, akmVar.f10396e, -this.v, this.cc);
            this.s = true;
        }
        super.an(j, z);
        zzabl zzablVar3 = this.ac;
        zzaap zzaapVar = this.ah;
        if (zzablVar3 == null) {
            zzaapVar.zzi();
        }
        if (z) {
            zzabl zzablVar4 = this.ac;
            if (zzablVar4 != null) {
                zzablVar4.zzi(false);
            } else {
                zzaapVar.zzc(false);
            }
        }
        this.f4012f = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final zzsk ao(zzsq zzsqVar, zzad zzadVar, float f2) {
        Point point;
        int i;
        int i2;
        int i3;
        int zzad;
        zzad[] zzadVarArr = this.ca;
        zzadVarArr.getClass();
        int length = zzadVarArr.length;
        int ak = ak(zzsqVar, zzadVar);
        int i4 = zzadVar.zzu;
        int i5 = zzadVar.zzv;
        if (length != 1) {
            boolean z = false;
            for (int i6 = 0; i6 < length; i6++) {
                zzad zzadVar2 = zzadVarArr[i6];
                if (zzadVar.zzB != null && zzadVar2.zzB == null) {
                    zzab zzb = zzadVar2.zzb();
                    zzb.zzB(zzadVar.zzB);
                    zzadVar2 = zzb.zzaf();
                }
                if (zzsqVar.zzb(zzadVar, zzadVar2).zzd != 0) {
                    int i7 = zzadVar2.zzu;
                    z |= i7 == -1 || zzadVar2.zzv == -1;
                    i4 = Math.max(i4, i7);
                    i5 = Math.max(i5, zzadVar2.zzv);
                    ak = Math.max(ak, ak(zzsqVar, zzadVar2));
                }
            }
            if (z) {
                zzdt.zzf("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + i4 + "x" + i5);
                int i8 = zzadVar.zzv;
                int i9 = zzadVar.zzu;
                boolean z2 = i8 > i9;
                int i10 = z2 ? i8 : i9;
                if (true == z2) {
                    i8 = i9;
                }
                int i11 = 0;
                while (i11 < 9) {
                    float f3 = i8;
                    float f4 = i10;
                    int i12 = f4008c[i11];
                    int i13 = i11;
                    float f5 = i12;
                    if (i12 <= i10 || (i = (int) ((f3 / f4) * f5)) <= i8) {
                        break;
                    }
                    int i14 = true != z2 ? i12 : i;
                    if (true != z2) {
                        i12 = i;
                    }
                    point = zzsqVar.zza(i14, i12);
                    float f6 = zzadVar.zzw;
                    if (point != null) {
                        i2 = i8;
                        if (zzsqVar.zzg(point.x, point.y, f6)) {
                            break;
                        }
                    } else {
                        i2 = i8;
                    }
                    i11 = i13 + 1;
                    i8 = i2;
                }
                point = null;
                if (point != null) {
                    i4 = Math.max(i4, point.x);
                    i5 = Math.max(i5, point.y);
                    zzab zzb2 = zzadVar.zzb();
                    zzb2.zzae(i4);
                    zzb2.zzJ(i5);
                    ak = Math.max(ak, zzad(zzsqVar, zzb2.zzaf()));
                    zzdt.zzf("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + i4 + "x" + i5);
                }
            }
        } else if (ak != -1 && (zzad = zzad(zzsqVar, zzadVar)) != -1) {
            ak = Math.min((int) (ak * 1.5f), zzad);
        }
        String str = zzsqVar.zzc;
        zzaah zzaahVar = new zzaah(i4, i5, ak);
        this.y = zzaahVar;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger(com.bykv.vk.component.ttvideo.player.MediaFormat.KEY_WIDTH, zzadVar.zzu);
        mediaFormat.setInteger(com.bykv.vk.component.ttvideo.player.MediaFormat.KEY_HEIGHT, zzadVar.zzv);
        zzdw.zzb(mediaFormat, zzadVar.zzr);
        float f7 = zzadVar.zzw;
        if (f7 != -1.0f) {
            mediaFormat.setFloat("frame-rate", f7);
        }
        zzdw.zza(mediaFormat, "rotation-degrees", zzadVar.zzx);
        zzm zzmVar = zzadVar.zzB;
        if (zzmVar != null) {
            zzdw.zza(mediaFormat, "color-transfer", zzmVar.zzd);
            zzdw.zza(mediaFormat, "color-standard", zzmVar.zzb);
            zzdw.zza(mediaFormat, "color-range", zzmVar.zzc);
            byte[] bArr = zzmVar.zze;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        if ("video/dolby-vision".equals(zzadVar.zzo)) {
            HashMap hashMap = zztl.f8880a;
            Pair zza = zzdd.zza(zzadVar);
            if (zza != null) {
                zzdw.zza(mediaFormat, "profile", ((Integer) zza.first).intValue());
            }
        }
        mediaFormat.setInteger("max-width", zzaahVar.zza);
        mediaFormat.setInteger("max-height", zzaahVar.zzb);
        zzdw.zza(mediaFormat, "max-input-size", zzaahVar.zzc);
        int i15 = zzen.zza;
        if (i15 >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f2 != -1.0f) {
                mediaFormat.setFloat("operating-rate", f2);
            }
        }
        if (this.j) {
            mediaFormat.setInteger("no-post-process", 1);
            i3 = 0;
            mediaFormat.setInteger("auto-frc", 0);
        } else {
            i3 = 0;
        }
        if (i15 >= 35) {
            mediaFormat.setInteger("importance", Math.max(i3, -this.aj));
        }
        Surface bt = bt(zzsqVar);
        if (this.ac != null && !zzen.zzK(this.t)) {
            mediaFormat.setInteger("allow-frame-drop", 0);
        }
        return zzsk.zzb(zzsqVar, mediaFormat, zzadVar, bt, null);
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final void ap(zzhm zzhmVar) {
        if (this.x) {
            ByteBuffer byteBuffer = zzhmVar.zzf;
            byteBuffer.getClass();
            if (byteBuffer.remaining() >= 7) {
                byte b2 = byteBuffer.get();
                short s = byteBuffer.getShort();
                short s2 = byteBuffer.getShort();
                byte b3 = byteBuffer.get();
                byte b4 = byteBuffer.get();
                byteBuffer.position(0);
                if (b2 == -75 && s == 60 && s2 == 1 && b3 == 4) {
                    if (b4 == 0 || b4 == 1) {
                        byte[] bArr = new byte[byteBuffer.remaining()];
                        byteBuffer.get(bArr);
                        byteBuffer.position(0);
                        zzsn zzsnVar = this.et;
                        zzsnVar.getClass();
                        Bundle bundle = new Bundle();
                        bundle.putByteArray("hdr10-plus-info", bArr);
                        zzsnVar.zzq(bundle);
                    }
                }
            }
        }
    }

    public final boolean aq(zzsq zzsqVar) {
        if (zzen.zza < 23 || am(zzsqVar.zza)) {
            return false;
        }
        return !zzsqVar.zzf || zzaal.zzb(this.t);
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final void ar(long j) {
        super.ar(j);
        this.p--;
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final void as() {
        zzabl zzablVar = this.ac;
        if (zzablVar != null) {
            akm akmVar = this.f2do;
            zzablVar.zzu(akmVar.f10395d, akmVar.f10396e, -this.v, this.cc);
        } else {
            this.ah.zzf();
        }
        this.s = true;
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final void at(long j, long j2, String str) {
        this.u.zza(str, j, j2);
        this.l = am(str);
        zzsq zzsqVar = this.en;
        zzsqVar.getClass();
        boolean z = false;
        if (zzen.zza >= 29 && "video/x-vnd.on2.vp9".equals(zzsqVar.zzb)) {
            MediaCodecInfo.CodecProfileLevel[] zzh = zzsqVar.zzh();
            int length = zzh.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (zzh[i].profile == 16384) {
                    z = true;
                    break;
                }
                i++;
            }
        }
        this.x = z;
    }

    public final void au(zzsn zzsnVar, int i, long j) {
        Surface surface;
        Trace.beginSection("releaseOutputBuffer");
        zzsnVar.zzn(i, j);
        Trace.endSection();
        this.eu.zze++;
        this.f4012f = 0;
        if (this.ac == null) {
            zzci zzciVar = this.ag;
            boolean equals = zzciVar.equals(zzci.zza);
            zzabf zzabfVar = this.u;
            if (!equals && !zzciVar.equals(this.ae)) {
                this.ae = zzciVar;
                zzabfVar.zzt(zzciVar);
            }
            if (!this.ah.zzp() || (surface = this.i) == null) {
                return;
            }
            zzabfVar.zzq(surface);
            this.n = true;
        }
    }

    public final void av(zzsn zzsnVar, int i) {
        Trace.beginSection("skipVideoBuffer");
        zzsnVar.zzo(i, false);
        Trace.endSection();
        this.eu.zzf++;
    }

    @Override // com.google.android.gms.internal.ads.zzhw
    public final void aw() {
        int i = this.f4010d;
        zzabf zzabfVar = this.u;
        if (i > 0) {
            zzdc zzdcVar = this.by;
            zzdcVar.getClass();
            long zzb = zzdcVar.zzb();
            zzabfVar.zzd(this.f4010d, zzb - this.z);
            this.f4010d = 0;
            this.z = zzb;
        }
        int i2 = this.ai;
        if (i2 != 0) {
            zzabfVar.zzr(this.r, i2);
            this.r = 0L;
            this.ai = 0;
        }
        zzabl zzablVar = this.ac;
        if (zzablVar != null) {
            zzablVar.zzn();
        } else {
            this.ah.zzh();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final float ax(float f2, zzad[] zzadVarArr) {
        float f3 = -1.0f;
        for (zzad zzadVar : zzadVarArr) {
            float f4 = zzadVar.zzw;
            if (f4 != -1.0f) {
                f3 = Math.max(f3, f4);
            }
        }
        if (f3 == -1.0f) {
            return -1.0f;
        }
        return f3 * f2;
    }

    @Override // com.google.android.gms.internal.ads.zzsy, com.google.android.gms.internal.ads.zzhw
    public final void ay(zzad[] zzadVarArr, long j, long j2, zzur zzurVar) {
        super.ay(zzadVarArr, j, j2, zzurVar);
        if (this.v == -9223372036854775807L) {
            this.v = j;
        }
        zzbv zzbvVar = this.bx;
        if (zzbvVar.zzo()) {
            this.ad = -9223372036854775807L;
        } else {
            this.ad = zzbvVar.zzn(zzurVar.zza, new zzbt()).zzd;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final void az() {
        int i = zzen.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzhw
    public final void ba() {
        zzabl zzablVar = this.ac;
        if (zzablVar == null || !this.q) {
            return;
        }
        zzablVar.zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final zzhy bb(zzsq zzsqVar, zzad zzadVar, zzad zzadVar2) {
        int i;
        int i2;
        zzhy zzb = zzsqVar.zzb(zzadVar, zzadVar2);
        int i3 = zzb.zze;
        zzaah zzaahVar = this.y;
        zzaahVar.getClass();
        if (zzadVar2.zzu > zzaahVar.zza || zzadVar2.zzv > zzaahVar.zzb) {
            i3 |= 256;
        }
        if (ak(zzsqVar, zzadVar2) > zzaahVar.zzc) {
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
        boolean z;
        boolean zzi = zzbg.zzi(zzadVar.zzo);
        int i = TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
        if (!zzi) {
            return TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
        }
        int i2 = 1;
        int i3 = 0;
        boolean z2 = zzadVar.zzs != null;
        Context context = this.t;
        List al = al(context, zztaVar, zzadVar, z2, false);
        if (z2 && al.isEmpty()) {
            al = al(context, zztaVar, zzadVar, false, false);
        }
        if (!al.isEmpty()) {
            if (zzadVar.zzJ == 0) {
                zzsq zzsqVar = (zzsq) al.get(0);
                boolean zze = zzsqVar.zze(zzadVar);
                if (!zze) {
                    for (int i4 = 1; i4 < al.size(); i4++) {
                        zzsq zzsqVar2 = (zzsq) al.get(i4);
                        if (zzsqVar2.zze(zzadVar)) {
                            zzsqVar = zzsqVar2;
                            z = false;
                            zze = true;
                            break;
                        }
                    }
                }
                z = true;
                int i5 = true != zze ? 3 : 4;
                int i6 = true != zzsqVar.zzf(zzadVar) ? 8 : 16;
                int i7 = true != zzsqVar.zzg ? 0 : 64;
                if (true != z) {
                    i = 0;
                }
                if (zzen.zza >= 26 && "video/dolby-vision".equals(zzadVar.zzo) && !azr.a(context)) {
                    i = 256;
                }
                if (zze) {
                    List al2 = al(context, zztaVar, zzadVar, z2, true);
                    if (!al2.isEmpty()) {
                        zzsq zzsqVar3 = (zzsq) zztl.zzf(al2, zzadVar).get(0);
                        if (zzsqVar3.zze(zzadVar) && zzsqVar3.zzf(zzadVar)) {
                            i3 = 32;
                        }
                    }
                }
                return i5 | i6 | i3 | i7 | i;
            }
            i2 = 2;
        }
        return i2 | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final void bd(Exception exc) {
        zzdt.zzd("MediaCodecVideoRenderer", "Video codec error", exc);
        this.u.zzs(exc);
    }

    public final void be(long j) {
        zzhx zzhxVar = this.eu;
        zzhxVar.zzk += j;
        zzhxVar.zzl++;
        this.r += j;
        this.ai++;
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final boolean bf(zzsq zzsqVar) {
        if (this.i == null) {
            return (zzen.zza >= 35 && zzsqVar.zzh) || aq(zzsqVar);
        }
        return true;
    }

    public final void bg(int i, int i2) {
        zzhx zzhxVar = this.eu;
        zzhxVar.zzh += i;
        int i3 = i + i2;
        zzhxVar.zzg += i3;
        this.f4010d += i3;
        int i4 = this.f4012f + i3;
        this.f4012f = i4;
        zzhxVar.zzi = Math.max(i4, zzhxVar.zzi);
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final boolean bh(zzhm zzhmVar) {
        if (!zzhmVar.zzi() || zzQ() || zzhmVar.zzh()) {
            return false;
        }
        long j = this.ad;
        return j != -9223372036854775807L && j - (zzhmVar.zze - this.f2do.f10396e) > 100000 && !zzhmVar.zzl() && zzhmVar.zze < this.cc;
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final void bi() {
        super.bi();
        this.p = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final void bj() {
        this.p++;
        int i = zzen.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final zzsp bk(IllegalStateException illegalStateException, zzsq zzsqVar) {
        return new zzaad(illegalStateException, zzsqVar, this.i);
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final void bl(zzad zzadVar, MediaFormat mediaFormat) {
        zzsn zzsnVar = this.et;
        if (zzsnVar != null) {
            zzsnVar.zzr(this.f4009ab);
        }
        mediaFormat.getClass();
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        int integer = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger(com.bykv.vk.component.ttvideo.player.MediaFormat.KEY_WIDTH);
        int integer2 = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger(com.bykv.vk.component.ttvideo.player.MediaFormat.KEY_HEIGHT);
        float f2 = zzadVar.zzy;
        if (zzen.zza >= 30 && mediaFormat.containsKey("sar-width") && mediaFormat.containsKey("sar-height")) {
            f2 = mediaFormat.getInteger("sar-width") / mediaFormat.getInteger("sar-height");
        }
        int i = zzadVar.zzx;
        if (i == 90 || i == 270) {
            f2 = 1.0f / f2;
            int i2 = integer2;
            integer2 = integer;
            integer = i2;
        }
        this.ag = new zzci(integer, integer2, f2);
        zzabl zzablVar = this.ac;
        if (zzablVar == null || !this.s) {
            this.ah.zzl(zzadVar.zzw);
        } else {
            zzab zzb = zzadVar.zzb();
            zzb.zzae(integer);
            zzb.zzJ(integer2);
            zzb.zzV(f2);
            zzablVar.zzj(1, zzb.zzaf());
        }
        this.s = false;
    }

    @Override // com.google.android.gms.internal.ads.zzsy, com.google.android.gms.internal.ads.zzhw
    public final void bm() {
        zzabf zzabfVar = this.u;
        this.ae = null;
        this.ad = -9223372036854775807L;
        zzabl zzablVar = this.ac;
        if (zzablVar != null) {
            zzablVar.zzk();
        } else {
            this.ah.zzd();
        }
        this.n = false;
        try {
            super.bm();
        } finally {
            zzabfVar.zzc(this.eu);
            zzabfVar.zzt(zzci.zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsy, com.google.android.gms.internal.ads.zzhw
    public final void bn() {
        try {
            super.bn();
        } finally {
            this.m = false;
            this.v = -9223372036854775807L;
            zzaal zzaalVar = this.af;
            if (zzaalVar != null) {
                zzaalVar.release();
                this.af = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsy, com.google.android.gms.internal.ads.zzhw
    public final void bo(boolean z, boolean z2) {
        super.bo(z, z2);
        cn();
        this.u.zze(this.eu);
        boolean z3 = this.m;
        zzaap zzaapVar = this.ah;
        if (!z3) {
            if (this.aa != null && this.ac == null) {
                zzzp zzzpVar = new zzzp(this.t, zzaapVar);
                zzdc zzdcVar = this.by;
                zzdcVar.getClass();
                zzzpVar.zzd(zzdcVar);
                this.ac = zzzpVar.zze().zzh();
            }
            this.m = true;
        }
        zzabl zzablVar = this.ac;
        if (zzablVar == null) {
            zzdc zzdcVar2 = this.by;
            zzdcVar2.getClass();
            zzaapVar.zzk(zzdcVar2);
            zzaapVar.zze(z2);
            return;
        }
        zzablVar.zzr(new aoy(this), zzgey.zzb());
        zzaam zzaamVar = this.h;
        if (zzaamVar != null) {
            this.ac.zzw(zzaamVar);
        }
        if (this.i != null && !this.f4013g.equals(zzee.zza)) {
            this.ac.zzs(this.i, this.f4013g);
        }
        this.ac.zzq(this.w);
        this.ac.zzt(this.dn);
        List list = this.aa;
        if (list != null) {
            this.ac.zzv(list);
        }
        this.ac.zzl(z2);
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final void bp(zzad zzadVar) {
        zzabl zzablVar = this.ac;
        if (zzablVar != null) {
            try {
                zzablVar.zzh(zzadVar);
            } catch (zzabk e2) {
                throw cp(e2, zzadVar, false, 7000);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final void bq(String str) {
        this.u.zzb(str);
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final boolean br(long j, long j2, zzsn zzsnVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzad zzadVar) {
        zzsnVar.getClass();
        akm akmVar = this.f2do;
        long j4 = j3 - akmVar.f10396e;
        zzabl zzablVar = this.ac;
        if (zzablVar != null) {
            try {
                return zzablVar.zzx(j3 + (-this.v), z2, j, j2, new gem(this, zzsnVar, i, j4));
            } catch (zzabk e2) {
                throw cp(e2, e2.zza, false, 7001);
            }
        }
        int zza = this.ah.zza(j3, j, j2, akmVar.f10395d, z2, this.k);
        if (zza != 4) {
            if (z && !z2) {
                av(zzsnVar, i);
                return true;
            }
            Surface surface = this.i;
            zzaan zzaanVar = this.k;
            if (surface == null) {
                if (zzaanVar.zzc() < 30000) {
                    av(zzsnVar, i);
                    be(zzaanVar.zzc());
                    return true;
                }
            } else {
                if (zza == 0) {
                    zzdc zzdcVar = this.by;
                    zzdcVar.getClass();
                    au(zzsnVar, i, zzdcVar.zzc());
                    be(zzaanVar.zzc());
                    return true;
                }
                if (zza == 1) {
                    long zzd = zzaanVar.zzd();
                    long zzc = zzaanVar.zzc();
                    if (zzd == this.o) {
                        av(zzsnVar, i);
                    } else {
                        au(zzsnVar, i, zzd);
                    }
                    be(zzc);
                    this.o = zzd;
                    return true;
                }
                if (zza == 2) {
                    Trace.beginSection("dropVideoBuffer");
                    zzsnVar.zzo(i, false);
                    Trace.endSection();
                    bg(0, 1);
                    be(zzaanVar.zzc());
                    return true;
                }
                if (zza == 3) {
                    av(zzsnVar, i);
                    be(zzaanVar.zzc());
                    return true;
                }
                if (zza != 5) {
                    throw new IllegalStateException(String.valueOf(zza));
                }
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzhw
    public final void bs() {
        this.f4010d = 0;
        zzdc zzdcVar = this.by;
        zzdcVar.getClass();
        this.z = zzdcVar.zzb();
        this.r = 0L;
        this.ai = 0;
        zzabl zzablVar = this.ac;
        if (zzablVar != null) {
            zzablVar.zzm();
        } else {
            this.ah.zzg();
        }
    }

    public final Surface bt(zzsq zzsqVar) {
        zzabl zzablVar = this.ac;
        if (zzablVar != null) {
            return zzablVar.zzd();
        }
        Surface surface = this.i;
        if (surface != null) {
            return surface;
        }
        if (zzen.zza >= 35 && zzsqVar.zzh) {
            return null;
        }
        zzdb.zzf(aq(zzsqVar));
        zzaal zzaalVar = this.af;
        if (zzaalVar != null) {
            if (zzaalVar.zza != zzsqVar.zzf && zzaalVar != null) {
                zzaalVar.release();
                this.af = null;
            }
        }
        if (this.af == null) {
            this.af = zzaal.zza(this.t, zzsqVar.zzf);
        }
        return this.af;
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final List bu(zzta zztaVar, zzad zzadVar) {
        return zztl.zzf(al(this.t, zztaVar, zzadVar, false, false), zzadVar);
    }

    @Override // com.google.android.gms.internal.ads.zzsy
    public final zzhy bv(zzkj zzkjVar) {
        zzhy bv = super.bv(zzkjVar);
        zzad zzadVar = zzkjVar.zza;
        zzadVar.getClass();
        this.u.zzf(zzadVar, bv);
        return bv;
    }

    @Override // com.google.android.gms.internal.ads.zzsy, com.google.android.gms.internal.ads.zzhw, com.google.android.gms.internal.ads.zzln
    public final void zzM(float f2, float f3) throws zzig {
        super.zzM(f2, f3);
        zzabl zzablVar = this.ac;
        if (zzablVar != null) {
            zzablVar.zzt(f2);
        } else {
            this.ah.zzn(f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzln, com.google.android.gms.internal.ads.zzlq
    public final String zzU() {
        return "MediaCodecVideoRenderer";
    }

    @Override // com.google.android.gms.internal.ads.zzsy, com.google.android.gms.internal.ads.zzln
    public final void zzV(long j, long j2) throws zzig {
        super.zzV(j, j2);
        zzabl zzablVar = this.ac;
        if (zzablVar != null) {
            try {
                zzablVar.zzp(j, j2);
            } catch (zzabk e2) {
                throw cp(e2, e2.zza, false, 7001);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsy, com.google.android.gms.internal.ads.zzln
    public final boolean zzW() {
        return super.zzW() && this.ac == null;
    }

    @Override // com.google.android.gms.internal.ads.zzsy, com.google.android.gms.internal.ads.zzln
    public final boolean zzX() {
        boolean zzX = super.zzX();
        zzabl zzablVar = this.ac;
        if (zzablVar != null) {
            return zzablVar.zzy(zzX);
        }
        if (zzX && (this.et == null || this.i == null)) {
            return true;
        }
        return this.ah.zzo(zzX);
    }

    @Override // com.google.android.gms.internal.ads.zzhw, com.google.android.gms.internal.ads.zzln
    public final void zzt() {
        zzabl zzablVar = this.ac;
        if (zzablVar != null) {
            zzablVar.zzf();
        } else {
            this.ah.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsy, com.google.android.gms.internal.ads.zzhw, com.google.android.gms.internal.ads.zzli
    public final void zzu(int i, Object obj) throws zzig {
        zzaap zzaapVar = this.ah;
        if (i == 1) {
            Surface surface = obj instanceof Surface ? (Surface) obj : null;
            Surface surface2 = this.i;
            zzabf zzabfVar = this.u;
            if (surface2 == surface) {
                if (surface != null) {
                    zzci zzciVar = this.ae;
                    if (zzciVar != null) {
                        zzabfVar.zzt(zzciVar);
                    }
                    Surface surface3 = this.i;
                    if (surface3 == null || !this.n) {
                        return;
                    }
                    zzabfVar.zzq(surface3);
                    return;
                }
                return;
            }
            this.i = surface;
            if (this.ac == null) {
                zzaapVar.zzm(surface);
            }
            this.n = false;
            int zzcV = zzcV();
            zzsn zzsnVar = this.et;
            if (zzsnVar != null && this.ac == null) {
                zzsq zzsqVar = this.en;
                zzsqVar.getClass();
                boolean z = this.i != null || (zzen.zza >= 35 && zzsqVar.zzh) || aq(zzsqVar);
                int i2 = zzen.zza;
                if (i2 < 23 || !z || this.l) {
                    fi();
                    ez();
                } else {
                    Surface bt = bt(zzsqVar);
                    if (i2 >= 23 && bt != null) {
                        zzsnVar.zzp(bt);
                    } else {
                        if (i2 < 35) {
                            throw new IllegalStateException();
                        }
                        zzsnVar.zzi();
                    }
                }
            }
            if (surface == null) {
                this.ae = null;
                zzabl zzablVar = this.ac;
                if (zzablVar != null) {
                    zzablVar.zze();
                    return;
                }
                return;
            }
            zzci zzciVar2 = this.ae;
            if (zzciVar2 != null) {
                zzabfVar.zzt(zzciVar2);
            }
            if (zzcV == 2) {
                zzabl zzablVar2 = this.ac;
                if (zzablVar2 != null) {
                    zzablVar2.zzi(true);
                    return;
                } else {
                    zzaapVar.zzc(true);
                    return;
                }
            }
            return;
        }
        if (i == 7) {
            obj.getClass();
            zzaam zzaamVar = (zzaam) obj;
            this.h = zzaamVar;
            zzabl zzablVar3 = this.ac;
            if (zzablVar3 != null) {
                zzablVar3.zzw(zzaamVar);
                return;
            }
            return;
        }
        if (i == 10) {
            obj.getClass();
            int intValue = ((Integer) obj).intValue();
            if (this.f4011e != intValue) {
                this.f4011e = intValue;
                return;
            }
            return;
        }
        if (i == 16) {
            obj.getClass();
            this.aj = ((Integer) obj).intValue();
            zzsn zzsnVar2 = this.et;
            if (zzsnVar2 == null || zzen.zza < 35) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("importance", Math.max(0, -this.aj));
            zzsnVar2.zzq(bundle);
            return;
        }
        if (i == 4) {
            obj.getClass();
            int intValue2 = ((Integer) obj).intValue();
            this.f4009ab = intValue2;
            zzsn zzsnVar3 = this.et;
            if (zzsnVar3 != null) {
                zzsnVar3.zzr(intValue2);
                return;
            }
            return;
        }
        if (i == 5) {
            obj.getClass();
            int intValue3 = ((Integer) obj).intValue();
            this.w = intValue3;
            zzabl zzablVar4 = this.ac;
            if (zzablVar4 != null) {
                zzablVar4.zzq(intValue3);
                return;
            } else {
                zzaapVar.zzj(intValue3);
                return;
            }
        }
        if (i == 13) {
            obj.getClass();
            List list = (List) obj;
            this.aa = list;
            zzabl zzablVar5 = this.ac;
            if (zzablVar5 != null) {
                zzablVar5.zzv(list);
                return;
            }
            return;
        }
        if (i != 14) {
            super.zzu(i, obj);
            return;
        }
        obj.getClass();
        zzee zzeeVar = (zzee) obj;
        if (zzeeVar.zzb() == 0 || zzeeVar.zza() == 0) {
            return;
        }
        this.f4013g = zzeeVar;
        zzabl zzablVar6 = this.ac;
        if (zzablVar6 != null) {
            Surface surface4 = this.i;
            zzdb.zzb(surface4);
            zzablVar6.zzs(surface4, zzeeVar);
        }
    }
}
