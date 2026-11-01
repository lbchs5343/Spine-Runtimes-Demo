package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.bxw;
import g.fc;
import g.gqc;
import g.gvg;
import g.tn;
import java.io.IOException;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes3.dex */
public final class zzahq implements zzacr {

    /* renamed from: a, reason: collision with root package name */
    public static final UUID f4177a;

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f4178b;

    /* renamed from: c, reason: collision with root package name */
    public static final byte[] f4179c;

    /* renamed from: d, reason: collision with root package name */
    public static final byte[] f4180d = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* renamed from: e, reason: collision with root package name */
    public static final Map f4181e;

    /* renamed from: f, reason: collision with root package name */
    public static final byte[] f4182f;
    public long aa;

    /* renamed from: ab, reason: collision with root package name */
    public zzdu f4183ab;
    public boolean ac;
    public long ad;
    public int[] ae;
    public boolean af;
    public int ag;
    public zzaho ah;
    public boolean ai;
    public boolean aj;
    public final zzed ak;
    public long al;
    public long am;
    public ByteBuffer an;
    public final zzed ao;
    public byte ap;
    public boolean aq;
    public int ar;
    public final zzed as;
    public final SparseArray at;
    public int au;
    public final zzed av;
    public long aw;
    public long ax;
    public long ay;
    public boolean az;
    public int ba;
    public long bb;
    public final boolean bc;
    public int bd;
    public long be;
    public zzdu bf;
    public int bg;
    public final zzed bh;
    public long bi;
    public boolean bj;

    /* renamed from: g, reason: collision with root package name */
    public boolean f4184g;
    public final zzed h;
    public final zzed i;
    public int j;
    public int k;
    public final bxw l;
    public final zzed m;
    public long n;
    public int o;
    public int p;
    public boolean q;
    public zzacu r;
    public int s;
    public final zzed t;
    public final boolean u;
    public long v;
    public final zzed w;
    public final zzakg x;
    public int y;
    public final gvg z;

    static {
        int i = zzen.zza;
        f4182f = "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text".getBytes(StandardCharsets.UTF_8);
        f4179c = new byte[]{68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
        f4178b = new byte[]{87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};
        f4177a = new UUID(72057594037932032L, -9223371306706625679L);
        HashMap hashMap = new HashMap();
        tn.e(0, hashMap, "htc_video_rotA-000", 90, "htc_video_rotA-090");
        tn.e(180, hashMap, "htc_video_rotA-180", MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SWITCH_CACHE_TIME, "htc_video_rotA-270");
        f4181e = Collections.unmodifiableMap(hashMap);
    }

    @Deprecated
    public zzahq() {
        this(new bxw(), 2, zzakg.zza);
    }

    public zzahq(zzakg zzakgVar, int i) {
        this(new bxw(), 0, zzakgVar);
    }

    public zzahq(bxw bxwVar, int i, zzakg zzakgVar) {
        this.bi = -1L;
        this.am = -9223372036854775807L;
        this.ay = -9223372036854775807L;
        this.aa = -9223372036854775807L;
        this.ax = -1L;
        this.v = -1L;
        this.ad = -9223372036854775807L;
        this.l = bxwVar;
        bxwVar.f12409a = new fc(24, this);
        this.x = zzakgVar;
        this.bc = true;
        this.u = (i & 2) == 0;
        this.z = new gvg(0);
        this.at = new SparseArray();
        this.h = new zzed(4);
        this.as = new zzed(ByteBuffer.allocate(4).putInt(-1).array());
        this.av = new zzed(4);
        this.ak = new zzed(zzfp.zza);
        this.bh = new zzed(4);
        this.i = new zzed();
        this.w = new zzed();
        this.ao = new zzed(8);
        this.t = new zzed();
        this.m = new zzed();
        this.ae = new int[1];
    }

    public static byte[] bk(long j, long j2, String str) {
        zzdb.zzd(j != -9223372036854775807L);
        Locale locale = Locale.US;
        int i = (int) (j / 3600000000L);
        Integer valueOf = Integer.valueOf(i);
        long j3 = j - (i * 3600000000L);
        int i2 = (int) (j3 / 60000000);
        Integer valueOf2 = Integer.valueOf(i2);
        long j4 = j3 - (i2 * 60000000);
        int i3 = (int) (j4 / C.MICROS_PER_SECOND);
        String format = String.format(locale, str, valueOf, valueOf2, Integer.valueOf(i3), Integer.valueOf((int) ((j4 - (i3 * C.MICROS_PER_SECOND)) / j2)));
        int i4 = zzen.zza;
        return format.getBytes(StandardCharsets.UTF_8);
    }

    public final void bl() {
        this.au = 0;
        this.y = 0;
        this.s = 0;
        this.ai = false;
        this.af = false;
        this.bj = false;
        this.bd = 0;
        this.ap = (byte) 0;
        this.ac = false;
        this.i.zzI(0);
    }

    public final void bm(int i) {
        if (this.f4183ab == null || this.bf == null) {
            throw zzbh.zza("Element " + i + " must be in a Cues", null);
        }
    }

    public final void bn(int i) {
        if (this.ah != null) {
            return;
        }
        throw zzbh.zza("Element " + i + " must be in a TrackEntry", null);
    }

    public final void bo(int i, long j) {
        boolean z;
        if (i == 20529) {
            if (j == 0) {
                return;
            }
            throw zzbh.zza("ContentEncodingOrder " + j + " not supported", null);
        }
        if (i == 20530) {
            if (j == 1) {
                return;
            }
            throw zzbh.zza("ContentEncodingScope " + j + " not supported", null);
        }
        switch (i) {
            case 131:
                bn(i);
                this.ah.zzd = (int) j;
                return;
            case 136:
                z = j == 1;
                bn(i);
                this.ah.zzV = z;
                return;
            case MediaPlayer.MEDIA_PLAYER_OPTION_GET_VIDEO_DEVICE_OPEN_TIME /* 155 */:
                this.al = bs(j);
                return;
            case MediaPlayer.MEDIA_PLAYER_OPTION_SET_FRAMES_DROP /* 159 */:
                bn(i);
                this.ah.zzO = (int) j;
                return;
            case MediaPlayer.MEDIA_PLAYER_OPTION_ABR_HURRY_THRESHOLD /* 176 */:
                bn(i);
                this.ah.zzl = (int) j;
                return;
            case MediaPlayer.MEDIA_PLAYER_OPTION_ABR_PROBE_COUNT /* 179 */:
                bm(i);
                this.f4183ab.zzc(bs(j));
                return;
            case MediaPlayer.MEDIA_PLAYER_OPTION_GET_VIDEODECODER_FPS /* 186 */:
                bn(i);
                this.ah.zzm = (int) j;
                return;
            case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_QCOM_LOW_LATENCY /* 215 */:
                bn(i);
                this.ah.zzc = (int) j;
                return;
            case MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR /* 231 */:
                this.ad = bs(j);
                return;
            case 238:
                this.o = (int) j;
                return;
            case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_INDEX_CACHE /* 241 */:
                if (this.az) {
                    return;
                }
                bm(i);
                this.bf.zzc(j);
                this.az = true;
                return;
            case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_PROCESSOR_ADDR /* 251 */:
                this.aq = true;
                return;
            case 16871:
                bn(i);
                this.ah.f4175a = (int) j;
                return;
            case 16980:
                if (j == 3) {
                    return;
                }
                throw zzbh.zza("ContentCompAlgo " + j + " not supported", null);
            case 17029:
                if (j < 1 || j > 2) {
                    throw zzbh.zza("DocTypeReadVersion " + j + " not supported", null);
                }
                return;
            case 17143:
                if (j == 1) {
                    return;
                }
                throw zzbh.zza("EBMLReadVersion " + j + " not supported", null);
            case 18401:
                if (j == 5) {
                    return;
                }
                throw zzbh.zza("ContentEncAlgo " + j + " not supported", null);
            case 18408:
                if (j == 1) {
                    return;
                }
                throw zzbh.zza("AESSettingsCipherMode " + j + " not supported", null);
            case 21420:
                this.n = j + this.bi;
                return;
            case 21432:
                int i2 = (int) j;
                bn(i);
                if (i2 == 0) {
                    this.ah.zzw = 0;
                    return;
                }
                if (i2 == 1) {
                    this.ah.zzw = 2;
                    return;
                } else if (i2 == 3) {
                    this.ah.zzw = 1;
                    return;
                } else {
                    if (i2 != 15) {
                        return;
                    }
                    this.ah.zzw = 3;
                    return;
                }
            case 21680:
                bn(i);
                this.ah.zzo = (int) j;
                return;
            case 21682:
                bn(i);
                this.ah.zzq = (int) j;
                return;
            case 21690:
                bn(i);
                this.ah.zzp = (int) j;
                return;
            case 21930:
                z = j == 1;
                bn(i);
                this.ah.zzU = z;
                return;
            case 21938:
                bn(i);
                zzaho zzahoVar = this.ah;
                zzahoVar.zzx = true;
                zzahoVar.zzn = (int) j;
                return;
            case 21998:
                bn(i);
                this.ah.zzf = (int) j;
                return;
            case 22186:
                bn(i);
                this.ah.zzR = j;
                return;
            case 22203:
                bn(i);
                this.ah.zzS = j;
                return;
            case 25188:
                bn(i);
                this.ah.zzP = (int) j;
                return;
            case 30114:
                this.bb = j;
                return;
            case 30321:
                int i3 = (int) j;
                bn(i);
                if (i3 == 0) {
                    this.ah.zzr = 0;
                    return;
                }
                if (i3 == 1) {
                    this.ah.zzr = 1;
                    return;
                } else if (i3 == 2) {
                    this.ah.zzr = 2;
                    return;
                } else {
                    if (i3 != 3) {
                        return;
                    }
                    this.ah.zzr = 3;
                    return;
                }
            case 2352003:
                bn(i);
                this.ah.zze = (int) j;
                return;
            case 2807729:
                this.am = j;
                return;
            default:
                switch (i) {
                    case 21945:
                        int i4 = (int) j;
                        bn(i);
                        if (i4 == 1) {
                            this.ah.zzA = 2;
                            return;
                        } else {
                            if (i4 != 2) {
                                return;
                            }
                            this.ah.zzA = 1;
                            return;
                        }
                    case 21946:
                        bn(i);
                        int zzb = zzm.zzb((int) j);
                        if (zzb != -1) {
                            this.ah.zzz = zzb;
                            return;
                        }
                        return;
                    case 21947:
                        bn(i);
                        this.ah.zzx = true;
                        int zza = zzm.zza((int) j);
                        if (zza != -1) {
                            this.ah.zzy = zza;
                            return;
                        }
                        return;
                    case 21948:
                        bn(i);
                        this.ah.zzB = (int) j;
                        return;
                    case 21949:
                        bn(i);
                        this.ah.zzC = (int) j;
                        return;
                    default:
                        return;
                }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d8 A[EDGE_INSN: B:50:0x00d8->B:49:0x00d8 BREAK  A[LOOP:0: B:42:0x00c3->B:46:0x00d5], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void bp(zzaho zzahoVar, long j, int i, int i2, int i3) {
        char c2;
        byte[] bk;
        int i4;
        int zzd;
        int zze;
        zzady zzadyVar = zzahoVar.zzT;
        if (zzadyVar != null) {
            zzadyVar.zzc(zzahoVar.zzW, j, i, i2, i3, zzahoVar.zzi);
        } else {
            if ("S_TEXT/UTF8".equals(zzahoVar.zzb) || "S_TEXT/ASS".equals(zzahoVar.zzb) || "S_TEXT/WEBVTT".equals(zzahoVar.zzb)) {
                if (this.k > 1) {
                    zzdt.zzf("MatroskaExtractor", "Skipping subtitle sample in laced block.");
                } else {
                    long j2 = this.al;
                    if (j2 == -9223372036854775807L) {
                        zzdt.zzf("MatroskaExtractor", "Skipping subtitle sample with no duration.");
                    } else {
                        String str = zzahoVar.zzb;
                        zzed zzedVar = this.w;
                        byte[] zzN = zzedVar.zzN();
                        int hashCode = str.hashCode();
                        if (hashCode == 738597099) {
                            if (str.equals("S_TEXT/ASS")) {
                                c2 = 1;
                                if (c2 != 0) {
                                }
                                System.arraycopy(bk, 0, zzN, i4, bk.length);
                                zzd = zzedVar.zzd();
                                while (true) {
                                    if (zzd >= zzedVar.zze()) {
                                    }
                                    zzd++;
                                }
                                zzahoVar.zzW.zzq(zzedVar, zzedVar.zze());
                                zze = zzedVar.zze() + i2;
                                if ((i & C.ENCODING_PCM_MU_LAW) != 0) {
                                }
                                zzahoVar.zzW.zzs(j, i, zze, i3, zzahoVar.zzi);
                            }
                            c2 = 65535;
                            if (c2 != 0) {
                            }
                            System.arraycopy(bk, 0, zzN, i4, bk.length);
                            zzd = zzedVar.zzd();
                            while (true) {
                                if (zzd >= zzedVar.zze()) {
                                }
                                zzd++;
                            }
                            zzahoVar.zzW.zzq(zzedVar, zzedVar.zze());
                            zze = zzedVar.zze() + i2;
                            if ((i & C.ENCODING_PCM_MU_LAW) != 0) {
                            }
                            zzahoVar.zzW.zzs(j, i, zze, i3, zzahoVar.zzi);
                        } else if (hashCode != 1045209816) {
                            if (hashCode == 1422270023 && str.equals("S_TEXT/UTF8")) {
                                c2 = 0;
                                if (c2 != 0) {
                                    bk = bk(j2, 1000L, "%02d:%02d:%02d,%03d");
                                    i4 = 19;
                                } else if (c2 == 1) {
                                    bk = bk(j2, ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT, "%01d:%02d:%02d:%02d");
                                    i4 = 21;
                                } else {
                                    if (c2 != 2) {
                                        throw new IllegalArgumentException();
                                    }
                                    bk = bk(j2, 1000L, "%02d:%02d:%02d.%03d");
                                    i4 = 25;
                                }
                                System.arraycopy(bk, 0, zzN, i4, bk.length);
                                zzd = zzedVar.zzd();
                                while (true) {
                                    if (zzd >= zzedVar.zze()) {
                                        break;
                                    }
                                    if (zzedVar.zzN()[zzd] == 0) {
                                        zzedVar.zzK(zzd);
                                        break;
                                    }
                                    zzd++;
                                }
                                zzahoVar.zzW.zzq(zzedVar, zzedVar.zze());
                                zze = zzedVar.zze() + i2;
                                if ((i & C.ENCODING_PCM_MU_LAW) != 0) {
                                    int i5 = this.k;
                                    zzed zzedVar2 = this.m;
                                    if (i5 > 1) {
                                        zzedVar2.zzI(0);
                                    } else {
                                        int zze2 = zzedVar2.zze();
                                        zzahoVar.zzW.zzr(zzedVar2, zze2, 2);
                                        zze += zze2;
                                    }
                                }
                                zzahoVar.zzW.zzs(j, i, zze, i3, zzahoVar.zzi);
                            }
                            c2 = 65535;
                            if (c2 != 0) {
                            }
                            System.arraycopy(bk, 0, zzN, i4, bk.length);
                            zzd = zzedVar.zzd();
                            while (true) {
                                if (zzd >= zzedVar.zze()) {
                                }
                                zzd++;
                            }
                            zzahoVar.zzW.zzq(zzedVar, zzedVar.zze());
                            zze = zzedVar.zze() + i2;
                            if ((i & C.ENCODING_PCM_MU_LAW) != 0) {
                            }
                            zzahoVar.zzW.zzs(j, i, zze, i3, zzahoVar.zzi);
                        } else {
                            if (str.equals("S_TEXT/WEBVTT")) {
                                c2 = 2;
                                if (c2 != 0) {
                                }
                                System.arraycopy(bk, 0, zzN, i4, bk.length);
                                zzd = zzedVar.zzd();
                                while (true) {
                                    if (zzd >= zzedVar.zze()) {
                                    }
                                    zzd++;
                                }
                                zzahoVar.zzW.zzq(zzedVar, zzedVar.zze());
                                zze = zzedVar.zze() + i2;
                                if ((i & C.ENCODING_PCM_MU_LAW) != 0) {
                                }
                                zzahoVar.zzW.zzs(j, i, zze, i3, zzahoVar.zzi);
                            }
                            c2 = 65535;
                            if (c2 != 0) {
                            }
                            System.arraycopy(bk, 0, zzN, i4, bk.length);
                            zzd = zzedVar.zzd();
                            while (true) {
                                if (zzd >= zzedVar.zze()) {
                                }
                                zzd++;
                            }
                            zzahoVar.zzW.zzq(zzedVar, zzedVar.zze());
                            zze = zzedVar.zze() + i2;
                            if ((i & C.ENCODING_PCM_MU_LAW) != 0) {
                            }
                            zzahoVar.zzW.zzs(j, i, zze, i3, zzahoVar.zzi);
                        }
                    }
                }
            }
            zze = i2;
            if ((i & C.ENCODING_PCM_MU_LAW) != 0) {
            }
            zzahoVar.zzW.zzs(j, i, zze, i3, zzahoVar.zzi);
        }
        this.q = true;
    }

    public final void bq(zzacs zzacsVar, byte[] bArr, int i) {
        int length = bArr.length;
        int i2 = length + i;
        zzed zzedVar = this.w;
        if (zzedVar.zzc() < i2) {
            byte[] copyOf = Arrays.copyOf(bArr, i2 + i);
            zzedVar.zzJ(copyOf, copyOf.length);
        } else {
            System.arraycopy(bArr, 0, zzedVar.zzN(), 0, length);
        }
        zzacsVar.zzi(zzedVar.zzN(), length, i);
        zzedVar.zzL(0);
        zzedVar.zzK(i2);
    }

    public final int br(zzacs zzacsVar, zzaho zzahoVar, int i, boolean z) {
        int zzf;
        int zzf2;
        int i2;
        if ("S_TEXT/UTF8".equals(zzahoVar.zzb)) {
            bq(zzacsVar, f4180d, i);
            int i3 = this.y;
            bl();
            return i3;
        }
        if ("S_TEXT/ASS".equals(zzahoVar.zzb)) {
            bq(zzacsVar, f4179c, i);
            int i4 = this.y;
            bl();
            return i4;
        }
        if ("S_TEXT/WEBVTT".equals(zzahoVar.zzb)) {
            bq(zzacsVar, f4178b, i);
            int i5 = this.y;
            bl();
            return i5;
        }
        zzadx zzadxVar = zzahoVar.zzW;
        boolean z2 = this.ai;
        zzed zzedVar = this.i;
        if (!z2) {
            boolean z3 = zzahoVar.zzg;
            zzed zzedVar2 = this.h;
            if (z3) {
                this.ar &= -1073741825;
                boolean z4 = this.af;
                int i6 = TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
                if (!z4) {
                    zzacsVar.zzi(zzedVar2.zzN(), 0, 1);
                    this.au++;
                    if ((zzedVar2.zzN()[0] & 128) == 128) {
                        throw zzbh.zza("Extension bit is set in signal byte", null);
                    }
                    this.ap = zzedVar2.zzN()[0];
                    this.af = true;
                }
                byte b2 = this.ap;
                if ((b2 & 1) == 1) {
                    int i7 = b2 & 2;
                    this.ar |= C.ENCODING_PCM_32BIT;
                    if (!this.ac) {
                        zzed zzedVar3 = this.ao;
                        zzacsVar.zzi(zzedVar3.zzN(), 0, 8);
                        this.au += 8;
                        this.ac = true;
                        if (i7 != 2) {
                            i6 = 0;
                        }
                        zzedVar2.zzN()[0] = (byte) (i6 | 8);
                        zzedVar2.zzL(0);
                        zzadxVar.zzr(zzedVar2, 1, 1);
                        this.y++;
                        zzedVar3.zzL(0);
                        zzadxVar.zzr(zzedVar3, 8, 1);
                        this.y += 8;
                    }
                    if (i7 == 2) {
                        if (!this.bj) {
                            zzacsVar.zzi(zzedVar2.zzN(), 0, 1);
                            this.au++;
                            zzedVar2.zzL(0);
                            this.bd = zzedVar2.zzm();
                            this.bj = true;
                        }
                        int i8 = this.bd * 4;
                        zzedVar2.zzI(i8);
                        zzacsVar.zzi(zzedVar2.zzN(), 0, i8);
                        this.au += i8;
                        int i9 = (this.bd >> 1) + 1;
                        int i10 = (i9 * 6) + 2;
                        ByteBuffer byteBuffer = this.an;
                        if (byteBuffer == null || byteBuffer.capacity() < i10) {
                            this.an = ByteBuffer.allocate(i10);
                        }
                        this.an.position(0);
                        this.an.putShort((short) i9);
                        int i11 = 0;
                        int i12 = 0;
                        while (true) {
                            i2 = this.bd;
                            if (i11 >= i2) {
                                break;
                            }
                            int zzp = zzedVar2.zzp();
                            int i13 = zzp - i12;
                            if (i11 % 2 == 0) {
                                this.an.putShort((short) i13);
                            } else {
                                this.an.putInt(i13);
                            }
                            i11++;
                            i12 = zzp;
                        }
                        int i14 = (i - this.au) - i12;
                        if ((i2 & 1) == 1) {
                            this.an.putInt(i14);
                        } else {
                            this.an.putShort((short) i14);
                            this.an.putInt(0);
                        }
                        byte[] array = this.an.array();
                        zzed zzedVar4 = this.t;
                        zzedVar4.zzJ(array, i10);
                        zzadxVar.zzr(zzedVar4, i10, 1);
                        this.y += i10;
                    }
                }
            } else {
                byte[] bArr = zzahoVar.zzh;
                if (bArr != null) {
                    zzedVar.zzJ(bArr, bArr.length);
                }
            }
            if (!"A_OPUS".equals(zzahoVar.zzb) ? zzahoVar.zzf > 0 : z) {
                this.ar |= C.ENCODING_PCM_MU_LAW;
                this.m.zzI(0);
                int zze = (zzedVar.zze() + i) - this.au;
                zzedVar2.zzI(4);
                zzedVar2.zzN()[0] = (byte) ((zze >> 24) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                zzedVar2.zzN()[1] = (byte) ((zze >> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                zzedVar2.zzN()[2] = (byte) ((zze >> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                zzedVar2.zzN()[3] = (byte) (zze & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                zzadxVar.zzr(zzedVar2, 4, 2);
                this.y += 4;
            }
            this.ai = true;
        }
        int zze2 = zzedVar.zze() + i;
        if (!"V_MPEG4/ISO/AVC".equals(zzahoVar.zzb) && !"V_MPEGH/ISO/HEVC".equals(zzahoVar.zzb)) {
            if (zzahoVar.zzT != null) {
                zzdb.zzf(zzedVar.zze() == 0);
                zzahoVar.zzT.zzd(zzacsVar);
            }
            while (true) {
                int i15 = this.au;
                if (i15 >= zze2) {
                    break;
                }
                int i16 = zze2 - i15;
                int zzb = zzedVar.zzb();
                if (zzb > 0) {
                    zzf2 = Math.min(i16, zzb);
                    zzadxVar.zzq(zzedVar, zzf2);
                } else {
                    zzf2 = zzadxVar.zzf(zzacsVar, i16, false);
                }
                this.au += zzf2;
                this.y += zzf2;
            }
        } else {
            zzed zzedVar5 = this.bh;
            byte[] zzN = zzedVar5.zzN();
            zzN[0] = 0;
            zzN[1] = 0;
            zzN[2] = 0;
            int i17 = zzahoVar.zzX;
            int i18 = 4 - i17;
            while (this.au < zze2) {
                int i19 = this.s;
                if (i19 == 0) {
                    int min = Math.min(i17, zzedVar.zzb());
                    zzacsVar.zzi(zzN, i18 + min, i17 - min);
                    if (min > 0) {
                        zzedVar.zzH(zzN, i18, min);
                    }
                    this.au += i17;
                    zzedVar5.zzL(0);
                    this.s = zzedVar5.zzp();
                    zzed zzedVar6 = this.ak;
                    zzedVar6.zzL(0);
                    zzadxVar.zzq(zzedVar6, 4);
                    this.y += 4;
                } else {
                    int zzb2 = zzedVar.zzb();
                    if (zzb2 > 0) {
                        zzf = Math.min(i19, zzb2);
                        zzadxVar.zzq(zzedVar, zzf);
                    } else {
                        zzf = zzadxVar.zzf(zzacsVar, i19, false);
                    }
                    this.au += zzf;
                    this.y += zzf;
                    this.s -= zzf;
                }
            }
        }
        if ("A_VORBIS".equals(zzahoVar.zzb)) {
            zzed zzedVar7 = this.as;
            zzedVar7.zzL(0);
            zzadxVar.zzq(zzedVar7, 4);
            this.y += 4;
        }
        int i20 = this.y;
        bl();
        return i20;
    }

    public final long bs(long j) {
        long j2 = this.am;
        if (j2 != -9223372036854775807L) {
            return zzen.zzu(j, j2, 1000L, RoundingMode.FLOOR);
        }
        throw zzbh.zza("Can't scale timecode prior to timecodeScale being set.", null);
    }

    public final void bt(zzacs zzacsVar, int i) {
        zzed zzedVar = this.h;
        if (zzedVar.zze() >= i) {
            return;
        }
        if (zzedVar.zzc() < i) {
            int zzc = zzedVar.zzc();
            zzedVar.zzF(Math.max(zzc + zzc, i));
        }
        zzacsVar.zzi(zzedVar.zzN(), zzedVar.zze(), i - zzedVar.zze());
        zzedVar.zzK(i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:453:0x07e7, code lost:
    
        throw com.google.android.gms.internal.ads.zzbh.zza("EBML lacing sample size out of range.", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x03ef, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x03f0, code lost:
    
        r22 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:577:0x0477, code lost:
    
        if (r11 == 1) goto L258;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzacr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzb(zzacs zzacsVar, zzadn zzadnVar) throws IOException {
        boolean z;
        boolean z2;
        String str;
        int i;
        int i2;
        int i3;
        long j;
        int i4;
        int i5;
        int i6;
        long j2;
        boolean z3;
        int i7;
        int f2;
        int i8;
        int i9;
        char c2;
        zzadq zzadpVar;
        this.q = false;
        while (!this.q) {
            bxw bxwVar = this.l;
            byte[] bArr = bxwVar.f12411c;
            gvg gvgVar = bxwVar.f12414f;
            ArrayDeque arrayDeque = bxwVar.f12413e;
            zzdb.zzb(bxwVar.f12409a);
            while (true) {
                g.v vVar = (g.v) arrayDeque.peek();
                if (vVar == null || zzacsVar.zzf() < vVar.f20133b) {
                    int i10 = 0;
                    int i11 = bxwVar.f12410b;
                    if (i11 == 0) {
                        int i12 = 4;
                        long g2 = gvgVar.g(zzacsVar, true, false, 4);
                        if (g2 == -2) {
                            zzacsVar.zzj();
                            while (true) {
                                zzacsVar.zzh(bArr, i10, i12);
                                byte b2 = bArr[i10];
                                int i13 = 0;
                                while (true) {
                                    if (i13 < 8) {
                                        i7 = i13 + 1;
                                        if ((gvg.f18809a[i13] & b2) == 0) {
                                            i13 = i7;
                                        }
                                    } else {
                                        i7 = -1;
                                    }
                                }
                                if (i7 != -1 && i7 <= 4) {
                                    f2 = (int) gvg.f(bArr, i7, false);
                                    Object obj = bxwVar.f12409a.f16548e;
                                    if (f2 != 357149030 && f2 != 524531317 && f2 != 475249515) {
                                        i8 = 374648427;
                                        if (f2 == 374648427) {
                                        }
                                    }
                                }
                                zzacsVar.zzk(1);
                                i12 = 4;
                                i10 = 0;
                            }
                            i8 = f2;
                            zzacsVar.zzk(i7);
                            j2 = i8;
                        } else {
                            j2 = g2;
                        }
                        z = true;
                        if (j2 == -1) {
                            z2 = false;
                            z3 = false;
                        } else {
                            bxwVar.f12412d = (int) j2;
                            bxwVar.f12410b = 1;
                        }
                    } else {
                        z = true;
                    }
                    bxwVar.f12415g = gvgVar.g(zzacsVar, false, z, 8);
                    bxwVar.f12410b = 2;
                    fc fcVar = bxwVar.f12409a;
                    int i14 = bxwVar.f12412d;
                    zzahq zzahqVar = (zzahq) fcVar.f16548e;
                    switch (i14) {
                        case 131:
                        case 136:
                        case MediaPlayer.MEDIA_PLAYER_OPTION_GET_VIDEO_DEVICE_OPEN_TIME /* 155 */:
                        case MediaPlayer.MEDIA_PLAYER_OPTION_SET_FRAMES_DROP /* 159 */:
                        case MediaPlayer.MEDIA_PLAYER_OPTION_ABR_HURRY_THRESHOLD /* 176 */:
                        case MediaPlayer.MEDIA_PLAYER_OPTION_ABR_PROBE_COUNT /* 179 */:
                        case MediaPlayer.MEDIA_PLAYER_OPTION_GET_VIDEODECODER_FPS /* 186 */:
                        case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_QCOM_LOW_LATENCY /* 215 */:
                        case MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR /* 231 */:
                        case 238:
                        case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_INDEX_CACHE /* 241 */:
                        case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_PROCESSOR_ADDR /* 251 */:
                        case 16871:
                        case 16980:
                        case 17029:
                        case 17143:
                        case 18401:
                        case 18408:
                        case 20529:
                        case 20530:
                        case 21420:
                        case 21432:
                        case 21680:
                        case 21682:
                        case 21690:
                        case 21930:
                        case 21938:
                        case 21945:
                        case 21946:
                        case 21947:
                        case 21948:
                        case 21949:
                        case 21998:
                        case 22186:
                        case 22203:
                        case 25188:
                        case 30114:
                        case 30321:
                        case 2352003:
                        case 2807729:
                            long j3 = bxwVar.f12415g;
                            if (j3 > 8) {
                                throw zzbh.zza("Invalid integer size: " + j3, null);
                            }
                            zzahqVar.bo(i14, bxwVar.h(zzacsVar, (int) j3));
                            z2 = false;
                            bxwVar.f12410b = 0;
                            break;
                        case 134:
                        case 17026:
                        case 21358:
                        case 2274716:
                            long j4 = bxwVar.f12415g;
                            if (j4 > 2147483647L) {
                                throw zzbh.zza("String element size: " + j4, null);
                            }
                            int i15 = (int) j4;
                            if (i15 == 0) {
                                str = "";
                            } else {
                                byte[] bArr2 = new byte[i15];
                                zzacsVar.zzi(bArr2, 0, i15);
                                while (i15 > 0) {
                                    int i16 = i15 - 1;
                                    if (bArr2[i16] == 0) {
                                        i15 = i16;
                                    } else {
                                        str = new String(bArr2, 0, i15);
                                    }
                                }
                                str = new String(bArr2, 0, i15);
                            }
                            if (i14 == 134) {
                                zzahqVar.bn(i14);
                                zzahqVar.ah.zzb = str;
                            } else if (i14 != 17026) {
                                if (i14 == 21358) {
                                    zzahqVar.bn(i14);
                                    zzahqVar.ah.zza = str;
                                } else if (i14 == 2274716) {
                                    zzahqVar.bn(i14);
                                    zzahqVar.ah.f4176b = str;
                                }
                            } else if (!"webm".equals(str) && !"matroska".equals(str)) {
                                throw zzbh.zza("DocType " + str + " not supported", null);
                            }
                            z2 = false;
                            bxwVar.f12410b = 0;
                            break;
                            break;
                        case 160:
                        case 166:
                        case MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE /* 174 */:
                        case MediaPlayer.MEDIA_PLAYER_OPTION_EGL_NEED_WORKAROUND /* 183 */:
                        case MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_NAME /* 187 */:
                        case 224:
                        case 225:
                        case 16868:
                        case 18407:
                        case 19899:
                        case 20532:
                        case 20533:
                        case 21936:
                        case 21968:
                        case 25152:
                        case 28032:
                        case 30113:
                        case 30320:
                        case 290298740:
                        case 357149030:
                        case 374648427:
                        case 408125543:
                        case 440786851:
                        case 475249515:
                        case 524531317:
                            long zzf = zzacsVar.zzf();
                            arrayDeque.push(new g.v(i14, bxwVar.f12415g + zzf));
                            fc fcVar2 = bxwVar.f12409a;
                            int i17 = bxwVar.f12412d;
                            long j5 = bxwVar.f12415g;
                            zzahq zzahqVar2 = (zzahq) fcVar2.f16548e;
                            zzdb.zzb(zzahqVar2.r);
                            if (i17 != 160) {
                                if (i17 == 174) {
                                    zzaho zzahoVar = new zzaho();
                                    zzahoVar.zzl = -1;
                                    zzahoVar.zzm = -1;
                                    zzahoVar.zzn = -1;
                                    zzahoVar.zzo = -1;
                                    zzahoVar.zzp = -1;
                                    zzahoVar.zzq = 0;
                                    zzahoVar.zzr = -1;
                                    zzahoVar.zzs = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                    zzahoVar.zzt = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                    zzahoVar.zzu = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                    zzahoVar.zzv = null;
                                    zzahoVar.zzw = -1;
                                    zzahoVar.zzx = false;
                                    zzahoVar.zzy = -1;
                                    zzahoVar.zzz = -1;
                                    zzahoVar.zzA = -1;
                                    zzahoVar.zzB = 1000;
                                    zzahoVar.zzC = 200;
                                    zzahoVar.zzD = -1.0f;
                                    zzahoVar.zzE = -1.0f;
                                    zzahoVar.zzF = -1.0f;
                                    zzahoVar.zzG = -1.0f;
                                    zzahoVar.zzH = -1.0f;
                                    zzahoVar.zzI = -1.0f;
                                    zzahoVar.zzJ = -1.0f;
                                    zzahoVar.zzK = -1.0f;
                                    zzahoVar.zzL = -1.0f;
                                    zzahoVar.zzM = -1.0f;
                                    zzahoVar.zzO = 1;
                                    zzahoVar.zzP = -1;
                                    zzahoVar.zzQ = AVMDLDataLoader.KeyIsLiveSetLoaderType;
                                    zzahoVar.zzR = 0L;
                                    zzahoVar.zzS = 0L;
                                    zzahoVar.zzV = true;
                                    zzahoVar.f4176b = "eng";
                                    zzahqVar2.ah = zzahoVar;
                                } else if (i17 == 187) {
                                    zzahqVar2.az = false;
                                } else if (i17 == 19899) {
                                    zzahqVar2.bg = -1;
                                    zzahqVar2.n = -1L;
                                } else if (i17 == 20533) {
                                    zzahqVar2.bn(i17);
                                    zzahqVar2.ah.zzg = true;
                                } else if (i17 == 21968) {
                                    zzahqVar2.bn(i17);
                                    zzahqVar2.ah.zzx = true;
                                } else if (i17 == 408125543) {
                                    long j6 = zzahqVar2.bi;
                                    if (j6 != -1 && j6 != zzf) {
                                        throw zzbh.zza("Multiple Segment elements not supported", null);
                                    }
                                    zzahqVar2.bi = zzf;
                                    zzahqVar2.aw = j5;
                                } else if (i17 == 475249515) {
                                    zzahqVar2.f4183ab = new zzdu(32);
                                    zzahqVar2.bf = new zzdu(32);
                                } else if (i17 == 524531317 && !zzahqVar2.aj) {
                                    if (!zzahqVar2.bc || zzahqVar2.ax == -1) {
                                        zzahqVar2.r.zzO(new zzadp(zzahqVar2.aa, 0L));
                                        zzahqVar2.aj = true;
                                    } else {
                                        zzahqVar2.f4184g = true;
                                    }
                                }
                                i = 0;
                            } else {
                                i = 0;
                                zzahqVar2.aq = false;
                                zzahqVar2.bb = 0L;
                            }
                            bxwVar.f12410b = i;
                            break;
                        case MediaPlayer.MEDIA_PLAYER_OPTION_DECODE_SECOND_VIDEO_FRAME_TIME /* 161 */:
                        case MediaPlayer.MEDIA_PLAYER_OPTION_GET_AUDIO_DEVICE_OPENED_TIME /* 163 */:
                        case MediaPlayer.MEDIA_PLAYER_OPTION_SUPER_RES_OPTION /* 165 */:
                        case 16877:
                        case 16981:
                        case 18402:
                        case 21419:
                        case 25506:
                        case 30322:
                            int i18 = (int) bxwVar.f12415g;
                            gvg gvgVar2 = zzahqVar.z;
                            zzed zzedVar = zzahqVar.m;
                            SparseArray sparseArray = zzahqVar.at;
                            zzed zzedVar2 = zzahqVar.av;
                            zzed zzedVar3 = zzahqVar.h;
                            if (i14 == 161 || i14 == 163) {
                                if (zzahqVar.j == 0) {
                                    zzahqVar.p = (int) gvgVar2.g(zzacsVar, false, true, 8);
                                    zzahqVar.ba = gvgVar2.f18810b;
                                    zzahqVar.al = -9223372036854775807L;
                                    zzahqVar.j = 1;
                                    zzedVar3.zzI(0);
                                }
                                zzaho zzahoVar2 = (zzaho) sparseArray.get(zzahqVar.p);
                                if (zzahoVar2 == null) {
                                    zzacsVar.zzk(i18 - zzahqVar.ba);
                                    zzahqVar.j = 0;
                                } else {
                                    zzahoVar2.zzW.getClass();
                                    if (zzahqVar.j == 1) {
                                        zzahqVar.bt(zzacsVar, 3);
                                        int i19 = (zzedVar3.zzN()[2] & 6) >> 1;
                                        if (i19 == 0) {
                                            zzahqVar.k = 1;
                                            int[] iArr = zzahqVar.ae;
                                            if (iArr == null) {
                                                iArr = new int[1];
                                            } else {
                                                int length = iArr.length;
                                                if (length < 1) {
                                                    iArr = new int[Math.max(length + length, 1)];
                                                }
                                            }
                                            zzahqVar.ae = iArr;
                                            iArr[0] = (i18 - zzahqVar.ba) - 3;
                                        } else {
                                            zzahqVar.bt(zzacsVar, 4);
                                            int i20 = (zzedVar3.zzN()[3] & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) + 1;
                                            zzahqVar.k = i20;
                                            int[] iArr2 = zzahqVar.ae;
                                            if (iArr2 == null) {
                                                iArr2 = new int[i20];
                                            } else {
                                                int length2 = iArr2.length;
                                                if (length2 < i20) {
                                                    iArr2 = new int[Math.max(length2 + length2, i20)];
                                                }
                                            }
                                            zzahqVar.ae = iArr2;
                                            if (i19 == 2) {
                                                int i21 = (i18 - zzahqVar.ba) - 4;
                                                int i22 = zzahqVar.k;
                                                Arrays.fill(iArr2, 0, i22, i21 / i22);
                                            } else {
                                                int i23 = 0;
                                                if (i19 == 1) {
                                                    int i24 = 0;
                                                    int i25 = 0;
                                                    int i26 = 4;
                                                    while (true) {
                                                        int i27 = zzahqVar.k - 1;
                                                        if (i24 < i27) {
                                                            zzahqVar.ae[i24] = i23;
                                                            while (true) {
                                                                i4 = i26 + 1;
                                                                zzahqVar.bt(zzacsVar, i4);
                                                                int i28 = zzedVar3.zzN()[i26] & 255;
                                                                int[] iArr3 = zzahqVar.ae;
                                                                i5 = iArr3[i24] + i28;
                                                                iArr3[i24] = i5;
                                                                if (i28 != 255) {
                                                                    break;
                                                                }
                                                                i26 = i4;
                                                            }
                                                            i25 += i5;
                                                            i24++;
                                                            i26 = i4;
                                                            i23 = 0;
                                                        } else {
                                                            zzahqVar.ae[i27] = ((i18 - zzahqVar.ba) - i26) - i25;
                                                        }
                                                    }
                                                } else {
                                                    if (i19 != 3) {
                                                        throw zzbh.zza("Unexpected lacing value: 2", null);
                                                    }
                                                    int i29 = 0;
                                                    int i30 = 0;
                                                    int i31 = 4;
                                                    while (true) {
                                                        int i32 = zzahqVar.k - 1;
                                                        if (i29 < i32) {
                                                            zzahqVar.ae[i29] = 0;
                                                            int i33 = i31 + 1;
                                                            zzahqVar.bt(zzacsVar, i33);
                                                            if (zzedVar3.zzN()[i31] == 0) {
                                                                throw zzbh.zza("No valid varint length mask found", null);
                                                            }
                                                            int i34 = 0;
                                                            while (true) {
                                                                if (i34 < 8) {
                                                                    int i35 = 1 << (7 - i34);
                                                                    if ((zzedVar3.zzN()[i31] & i35) != 0) {
                                                                        int i36 = i33 + i34;
                                                                        zzahqVar.bt(zzacsVar, i36);
                                                                        i2 = i18;
                                                                        i3 = i29;
                                                                        j = (~i35) & zzedVar3.zzN()[i31] & 255;
                                                                        while (i33 < i36) {
                                                                            j = (j << 8) | (zzedVar3.zzN()[i33] & 255);
                                                                            i33++;
                                                                        }
                                                                        if (i3 > 0) {
                                                                            j -= (1 << ((i34 * 7) + 6)) - 1;
                                                                        }
                                                                        i31 = i36;
                                                                    } else {
                                                                        i34++;
                                                                    }
                                                                } else {
                                                                    i2 = i18;
                                                                    i3 = i29;
                                                                    i31 = i33;
                                                                    j = 0;
                                                                }
                                                            }
                                                            if (j >= -2147483648L && j <= 2147483647L) {
                                                                int[] iArr4 = zzahqVar.ae;
                                                                int i37 = (int) j;
                                                                if (i3 != 0) {
                                                                    i37 += iArr4[i3 - 1];
                                                                }
                                                                iArr4[i3] = i37;
                                                                i30 += i37;
                                                                i29 = i3 + 1;
                                                                i18 = i2;
                                                            }
                                                        } else {
                                                            zzahqVar.ae[i32] = ((i18 - zzahqVar.ba) - i31) - i30;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        zzahqVar.be = zzahqVar.bs((zzedVar3.zzN()[0] << 8) | (zzedVar3.zzN()[1] & 255)) + zzahqVar.ad;
                                        if (zzahoVar2.zzd == 2) {
                                            i6 = 1;
                                        } else if (i14 == 163) {
                                            i6 = (zzedVar3.zzN()[2] & 128) == 128 ? 1 : 0;
                                            i14 = MediaPlayer.MEDIA_PLAYER_OPTION_GET_AUDIO_DEVICE_OPENED_TIME;
                                        } else {
                                            i6 = 0;
                                        }
                                        zzahqVar.ar = i6;
                                        zzahqVar.j = 2;
                                        zzahqVar.ag = 0;
                                    }
                                    if (i14 == 163) {
                                        while (true) {
                                            int i38 = zzahqVar.ag;
                                            if (i38 < zzahqVar.k) {
                                                zzahqVar.bp(zzahoVar2, zzahqVar.be + ((zzahqVar.ag * zzahoVar2.zze) / 1000), zzahqVar.ar, zzahqVar.br(zzacsVar, zzahoVar2, zzahqVar.ae[i38], false), 0);
                                                zzahqVar.ag++;
                                            } else {
                                                zzahqVar.j = 0;
                                            }
                                        }
                                    } else {
                                        while (true) {
                                            int i39 = zzahqVar.ag;
                                            if (i39 < zzahqVar.k) {
                                                int[] iArr5 = zzahqVar.ae;
                                                iArr5[i39] = zzahqVar.br(zzacsVar, zzahoVar2, iArr5[i39], true);
                                                zzahqVar.ag++;
                                            }
                                        }
                                    }
                                }
                            } else if (i14 != 165) {
                                if (i14 != 16877) {
                                    if (i14 != 16981) {
                                        if (i14 != 18402) {
                                            if (i14 != 21419) {
                                                if (i14 != 25506) {
                                                    if (i14 != 30322) {
                                                        throw zzbh.zza("Unexpected id: " + i14, null);
                                                    }
                                                    zzahqVar.bn(i14);
                                                    byte[] bArr3 = new byte[i18];
                                                    zzahqVar.ah.zzv = bArr3;
                                                    z2 = false;
                                                    zzacsVar.zzi(bArr3, 0, i18);
                                                    bxwVar.f12410b = z2 ? 1 : 0;
                                                    break;
                                                } else {
                                                    zzahqVar.bn(i14);
                                                    byte[] bArr4 = new byte[i18];
                                                    zzahqVar.ah.zzj = bArr4;
                                                    zzacsVar.zzi(bArr4, 0, i18);
                                                }
                                            } else {
                                                Arrays.fill(zzedVar2.zzN(), (byte) 0);
                                                zzacsVar.zzi(zzedVar2.zzN(), 4 - i18, i18);
                                                zzedVar2.zzL(0);
                                                zzahqVar.bg = (int) zzedVar2.zzu();
                                            }
                                        } else {
                                            byte[] bArr5 = new byte[i18];
                                            zzacsVar.zzi(bArr5, 0, i18);
                                            zzahqVar.bn(i14);
                                            zzahqVar.ah.zzi = new zzadw(1, bArr5, 0, 0);
                                        }
                                    } else {
                                        zzahqVar.bn(i14);
                                        byte[] bArr6 = new byte[i18];
                                        zzahqVar.ah.zzh = bArr6;
                                        zzacsVar.zzi(bArr6, 0, i18);
                                    }
                                } else {
                                    zzahqVar.bn(i14);
                                    zzaho zzahoVar3 = zzahqVar.ah;
                                    int i40 = zzahoVar3.f4175a;
                                    if (i40 == 1685485123 || i40 == 1685480259) {
                                        byte[] bArr7 = new byte[i18];
                                        zzahoVar3.zzN = bArr7;
                                        z2 = false;
                                        zzacsVar.zzi(bArr7, 0, i18);
                                        bxwVar.f12410b = z2 ? 1 : 0;
                                    } else {
                                        zzacsVar.zzk(i18);
                                    }
                                }
                            } else if (zzahqVar.j == 2) {
                                zzaho zzahoVar4 = (zzaho) sparseArray.get(zzahqVar.p);
                                if (zzahqVar.o == 4 && "V_VP9".equals(zzahoVar4.zzb)) {
                                    zzedVar.zzI(i18);
                                    zzacsVar.zzi(zzedVar.zzN(), 0, i18);
                                } else {
                                    zzacsVar.zzk(i18);
                                }
                            }
                            z2 = false;
                            bxwVar.f12410b = z2 ? 1 : 0;
                            break;
                        case MediaPlayer.MEDIA_PLAYER_OPTION_ASYNC_INIT_CODEC /* 181 */:
                        case 17545:
                        case 21969:
                        case 21970:
                        case 21971:
                        case 21972:
                        case 21973:
                        case 21974:
                        case 21975:
                        case 21976:
                        case 21977:
                        case 21978:
                        case 30323:
                        case 30324:
                        case 30325:
                            long j7 = bxwVar.f12415g;
                            if (j7 != 4 && j7 != 8) {
                                throw zzbh.zza("Invalid float size: " + j7, null);
                            }
                            int i41 = (int) j7;
                            double intBitsToFloat = i41 == 4 ? Float.intBitsToFloat((int) r7) : Double.longBitsToDouble(bxwVar.h(zzacsVar, i41));
                            if (i14 == 181) {
                                zzahqVar.bn(i14);
                                zzahqVar.ah.zzQ = (int) intBitsToFloat;
                            } else if (i14 != 17545) {
                                switch (i14) {
                                    case 21969:
                                        zzahqVar.bn(i14);
                                        zzahqVar.ah.zzD = (float) intBitsToFloat;
                                        break;
                                    case 21970:
                                        zzahqVar.bn(i14);
                                        zzahqVar.ah.zzE = (float) intBitsToFloat;
                                        break;
                                    case 21971:
                                        zzahqVar.bn(i14);
                                        zzahqVar.ah.zzF = (float) intBitsToFloat;
                                        break;
                                    case 21972:
                                        zzahqVar.bn(i14);
                                        zzahqVar.ah.zzG = (float) intBitsToFloat;
                                        break;
                                    case 21973:
                                        zzahqVar.bn(i14);
                                        zzahqVar.ah.zzH = (float) intBitsToFloat;
                                        break;
                                    case 21974:
                                        zzahqVar.bn(i14);
                                        zzahqVar.ah.zzI = (float) intBitsToFloat;
                                        break;
                                    case 21975:
                                        zzahqVar.bn(i14);
                                        zzahqVar.ah.zzJ = (float) intBitsToFloat;
                                        break;
                                    case 21976:
                                        zzahqVar.bn(i14);
                                        zzahqVar.ah.zzK = (float) intBitsToFloat;
                                        break;
                                    case 21977:
                                        zzahqVar.bn(i14);
                                        zzahqVar.ah.zzL = (float) intBitsToFloat;
                                        break;
                                    case 21978:
                                        zzahqVar.bn(i14);
                                        zzahqVar.ah.zzM = (float) intBitsToFloat;
                                        break;
                                    default:
                                        switch (i14) {
                                            case 30323:
                                                zzahqVar.bn(i14);
                                                zzahqVar.ah.zzs = (float) intBitsToFloat;
                                                break;
                                            case 30324:
                                                zzahqVar.bn(i14);
                                                zzahqVar.ah.zzt = (float) intBitsToFloat;
                                                break;
                                            case 30325:
                                                zzahqVar.bn(i14);
                                                zzahqVar.ah.zzu = (float) intBitsToFloat;
                                                break;
                                        }
                                }
                            } else {
                                zzahqVar.ay = (long) intBitsToFloat;
                            }
                            z2 = false;
                            bxwVar.f12410b = 0;
                            break;
                            break;
                        default:
                            zzacsVar.zzk((int) bxwVar.f12415g);
                            bxwVar.f12410b = 0;
                    }
                } else {
                    fc fcVar3 = bxwVar.f12409a;
                    int i42 = ((g.v) arrayDeque.pop()).f20132a;
                    zzahq zzahqVar3 = (zzahq) fcVar3.f16548e;
                    SparseArray sparseArray2 = zzahqVar3.at;
                    zzdb.zzb(zzahqVar3.r);
                    if (i42 != 160) {
                        if (i42 == 174) {
                            zzaho zzahoVar5 = zzahqVar3.ah;
                            zzdb.zzb(zzahoVar5);
                            String str2 = zzahoVar5.zzb;
                            if (str2 == null) {
                                throw zzbh.zza("CodecId is missing in TrackEntry element", null);
                            }
                            switch (str2.hashCode()) {
                                case -2095576542:
                                    if (str2.equals("V_MPEG4/ISO/AP")) {
                                        c2 = 6;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -2095575984:
                                    if (str2.equals("V_MPEG4/ISO/SP")) {
                                        c2 = 4;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -1985379776:
                                    if (str2.equals("A_MS/ACM")) {
                                        c2 = 23;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -1784763192:
                                    if (str2.equals("A_TRUEHD")) {
                                        c2 = 18;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -1730367663:
                                    if (str2.equals("A_VORBIS")) {
                                        c2 = '\f';
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -1482641358:
                                    if (str2.equals("A_MPEG/L2")) {
                                        c2 = 14;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -1482641357:
                                    if (str2.equals("A_MPEG/L3")) {
                                        c2 = 15;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -1373388978:
                                    if (str2.equals("V_MS/VFW/FOURCC")) {
                                        c2 = '\t';
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -933872740:
                                    if (str2.equals("S_DVBSUB")) {
                                        c2 = ' ';
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -538363189:
                                    if (str2.equals("V_MPEG4/ISO/ASP")) {
                                        c2 = 5;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -538363109:
                                    if (str2.equals("V_MPEG4/ISO/AVC")) {
                                        c2 = 7;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -425012669:
                                    if (str2.equals("S_VOBSUB")) {
                                        c2 = 30;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -356037306:
                                    if (str2.equals("A_DTS/LOSSLESS")) {
                                        c2 = 21;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 62923557:
                                    if (str2.equals("A_AAC")) {
                                        c2 = '\r';
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 62923603:
                                    if (str2.equals("A_AC3")) {
                                        c2 = 16;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 62927045:
                                    if (str2.equals("A_DTS")) {
                                        c2 = 19;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 82318131:
                                    if (str2.equals("V_AV1")) {
                                        c2 = 2;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 82338133:
                                    if (str2.equals("V_VP8")) {
                                        c2 = 0;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 82338134:
                                    if (str2.equals("V_VP9")) {
                                        c2 = 1;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 99146302:
                                    if (str2.equals("S_HDMV/PGS")) {
                                        c2 = 31;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 444813526:
                                    if (str2.equals("V_THEORA")) {
                                        c2 = '\n';
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 542569478:
                                    if (str2.equals("A_DTS/EXPRESS")) {
                                        c2 = 20;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 635596514:
                                    if (str2.equals("A_PCM/FLOAT/IEEE")) {
                                        c2 = 26;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 725948237:
                                    if (str2.equals("A_PCM/INT/BIG")) {
                                        c2 = 25;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 725957860:
                                    if (str2.equals("A_PCM/INT/LIT")) {
                                        c2 = 24;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 738597099:
                                    if (str2.equals("S_TEXT/ASS")) {
                                        c2 = 28;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 855502857:
                                    if (str2.equals("V_MPEGH/ISO/HEVC")) {
                                        c2 = '\b';
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 1045209816:
                                    if (str2.equals("S_TEXT/WEBVTT")) {
                                        c2 = 29;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 1422270023:
                                    if (str2.equals("S_TEXT/UTF8")) {
                                        c2 = 27;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 1809237540:
                                    if (str2.equals("V_MPEG2")) {
                                        c2 = 3;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 1950749482:
                                    if (str2.equals("A_EAC3")) {
                                        c2 = 17;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 1950789798:
                                    if (str2.equals("A_FLAC")) {
                                        c2 = 22;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 1951062397:
                                    if (str2.equals("A_OPUS")) {
                                        c2 = 11;
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
                                    zzahoVar5.zze(zzahqVar3.r, zzahoVar5.zzc);
                                    sparseArray2.put(zzahoVar5.zzc, zzahoVar5);
                                    break;
                            }
                            zzahqVar3.ah = null;
                        } else {
                            if (i42 == 19899) {
                                int i43 = zzahqVar3.bg;
                                if (i43 != -1) {
                                    long j8 = zzahqVar3.n;
                                    if (j8 != -1) {
                                        if (i43 == 475249515) {
                                            zzahqVar3.ax = j8;
                                        }
                                    }
                                }
                                throw zzbh.zza("Mandatory element SeekID or SeekPosition not found", null);
                            }
                            if (i42 == 25152) {
                                zzahqVar3.bn(i42);
                                zzaho zzahoVar6 = zzahqVar3.ah;
                                if (zzahoVar6.zzg) {
                                    zzadw zzadwVar = zzahoVar6.zzi;
                                    if (zzadwVar == null) {
                                        throw zzbh.zza("Encrypted Track found but ContentEncKeyID was not found", null);
                                    }
                                    zzahoVar6.zzk = new zzw(null, new zzv(zzj.zza, null, "video/webm", zzadwVar.zzb));
                                }
                            } else if (i42 == 28032) {
                                zzahqVar3.bn(i42);
                                zzaho zzahoVar7 = zzahqVar3.ah;
                                if (zzahoVar7.zzg && zzahoVar7.zzh != null) {
                                    throw zzbh.zza("Combining encryption and compression is not supported", null);
                                }
                            } else if (i42 == 357149030) {
                                if (zzahqVar3.am == -9223372036854775807L) {
                                    zzahqVar3.am = C.MICROS_PER_SECOND;
                                }
                                long j9 = zzahqVar3.ay;
                                if (j9 != -9223372036854775807L) {
                                    zzahqVar3.aa = zzahqVar3.bs(j9);
                                }
                            } else if (i42 == 374648427) {
                                if (sparseArray2.size() == 0) {
                                    throw zzbh.zza("No valid tracks were found", null);
                                }
                                zzahqVar3.r.zzD();
                            } else if (i42 == 475249515) {
                                if (!zzahqVar3.aj) {
                                    zzacu zzacuVar = zzahqVar3.r;
                                    zzdu zzduVar = zzahqVar3.f4183ab;
                                    zzdu zzduVar2 = zzahqVar3.bf;
                                    if (zzahqVar3.bi == -1 || zzahqVar3.aa == -9223372036854775807L || zzduVar == null || zzduVar.zza() == 0 || zzduVar2 == null || zzduVar2.zza() != zzduVar.zza()) {
                                        zzadpVar = new zzadp(zzahqVar3.aa, 0L);
                                    } else {
                                        int zza = zzduVar.zza();
                                        int[] iArr6 = new int[zza];
                                        long[] jArr = new long[zza];
                                        long[] jArr2 = new long[zza];
                                        long[] jArr3 = new long[zza];
                                        for (int i44 = 0; i44 < zza; i44++) {
                                            jArr3[i44] = zzduVar.zzb(i44);
                                            jArr[i44] = zzduVar2.zzb(i44) + zzahqVar3.bi;
                                        }
                                        int i45 = 0;
                                        while (true) {
                                            int i46 = zza - 1;
                                            if (i45 < i46) {
                                                int i47 = i45 + 1;
                                                iArr6[i45] = (int) (jArr[i47] - jArr[i45]);
                                                jArr2[i45] = jArr3[i47] - jArr3[i45];
                                                i45 = i47;
                                            } else {
                                                iArr6[i46] = (int) ((zzahqVar3.bi + zzahqVar3.aw) - jArr[i46]);
                                                long j10 = zzahqVar3.aa - jArr3[i46];
                                                jArr2[i46] = j10;
                                                if (j10 <= 0) {
                                                    zzdt.zzf("MatroskaExtractor", "Discarding last cue point with unexpected duration: " + j10);
                                                    iArr6 = Arrays.copyOf(iArr6, i46);
                                                    jArr = Arrays.copyOf(jArr, i46);
                                                    jArr2 = Arrays.copyOf(jArr2, i46);
                                                    jArr3 = Arrays.copyOf(jArr3, i46);
                                                }
                                                zzadpVar = new zzace(iArr6, jArr, jArr2, jArr3);
                                            }
                                        }
                                    }
                                    zzacuVar.zzO(zzadpVar);
                                    zzahqVar3.aj = true;
                                }
                                zzahqVar3.f4183ab = null;
                                zzahqVar3.bf = null;
                            }
                        }
                    } else if (zzahqVar3.j == 2) {
                        zzaho zzahoVar8 = (zzaho) sparseArray2.get(zzahqVar3.p);
                        zzahoVar8.zzW.getClass();
                        if (zzahqVar3.bb > 0 && "A_OPUS".equals(zzahoVar8.zzb)) {
                            zzed zzedVar4 = zzahqVar3.m;
                            byte[] array = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(zzahqVar3.bb).array();
                            zzedVar4.zzJ(array, array.length);
                        }
                        int i48 = 0;
                        for (int i49 = 0; i49 < zzahqVar3.k; i49++) {
                            i48 += zzahqVar3.ae[i49];
                        }
                        int i50 = 0;
                        while (i50 < zzahqVar3.k) {
                            long j11 = zzahqVar3.be + ((zzahoVar8.zze * i50) / 1000);
                            int i51 = zzahqVar3.ar;
                            if (i50 == 0) {
                                if (!zzahqVar3.aq) {
                                    i51 |= 1;
                                }
                                i9 = i51;
                                i50 = 0;
                            } else {
                                i9 = i51;
                            }
                            int i52 = zzahqVar3.ae[i50];
                            int i53 = i48 - i52;
                            zzahqVar3.bp(zzahoVar8, j11, i9, i52, i53);
                            i50++;
                            i48 = i53;
                        }
                        zzahqVar3.j = 0;
                    }
                }
            }
            if (z3) {
                long zzf2 = zzacsVar.zzf();
                if (this.f4184g) {
                    this.v = zzf2;
                    zzadnVar.zza = this.ax;
                    this.f4184g = z2;
                    return 1;
                }
                if (this.aj) {
                    long j12 = this.v;
                    if (j12 != -1) {
                        zzadnVar.zza = j12;
                        this.v = -1L;
                        return 1;
                    }
                }
            } else {
                int i54 = 0;
                while (true) {
                    SparseArray sparseArray3 = this.at;
                    if (i54 >= sparseArray3.size()) {
                        return -1;
                    }
                    zzaho zzahoVar9 = (zzaho) sparseArray3.valueAt(i54);
                    zzahoVar9.zzW.getClass();
                    zzady zzadyVar = zzahoVar9.zzT;
                    if (zzadyVar != null) {
                        zzadyVar.zza(zzahoVar9.zzW, zzahoVar9.zzi);
                    }
                    i54++;
                }
            }
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final /* synthetic */ zzacr zzc() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final /* synthetic */ List zzd() {
        return zzfzo.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zze(zzacu zzacuVar) {
        this.r = zzacuVar;
        if (this.u) {
            zzacuVar = new zzakj(zzacuVar, this.x);
        }
        this.r = zzacuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zzf(long j, long j2) {
        this.ad = -9223372036854775807L;
        int i = 0;
        this.j = 0;
        bxw bxwVar = this.l;
        bxwVar.f12410b = 0;
        bxwVar.f12413e.clear();
        gvg gvgVar = bxwVar.f12414f;
        gvgVar.f18813e = 0;
        gvgVar.f18810b = 0;
        gvg gvgVar2 = this.z;
        gvgVar2.f18813e = 0;
        gvgVar2.f18810b = 0;
        bl();
        while (true) {
            SparseArray sparseArray = this.at;
            if (i >= sparseArray.size()) {
                return;
            }
            zzady zzadyVar = ((zzaho) sparseArray.valueAt(i)).zzT;
            if (zzadyVar != null) {
                zzadyVar.zzb();
            }
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final boolean zzi(zzacs zzacsVar) throws IOException {
        gqc gqcVar = new gqc(14);
        zzed zzedVar = (zzed) gqcVar.z;
        long zzd = zzacsVar.zzd();
        long j = 1024;
        if (zzd != -1 && zzd <= 1024) {
            j = zzd;
        }
        zzacg zzacgVar = (zzacg) zzacsVar;
        zzacgVar.zzm(zzedVar.zzN(), 0, 4, false);
        long zzu = zzedVar.zzu();
        gqcVar.f18566ab = 4;
        while (true) {
            if (zzu != 440786851) {
                int i = (int) j;
                int i2 = gqcVar.f18566ab + 1;
                gqcVar.f18566ab = i2;
                if (i2 == i) {
                    break;
                }
                zzacgVar.zzm(zzedVar.zzN(), 0, 1, false);
                zzu = ((zzu << 8) & (-256)) | (zzedVar.zzN()[0] & 255);
            } else {
                long bh = gqcVar.bh(zzacsVar);
                long j2 = gqcVar.f18566ab;
                if (bh != Long.MIN_VALUE) {
                    long j3 = j2 + bh;
                    if (zzd == -1 || j3 < zzd) {
                        while (true) {
                            long j4 = gqcVar.f18566ab;
                            if (j4 < j3) {
                                if (gqcVar.bh(zzacsVar) != Long.MIN_VALUE) {
                                    long bh2 = gqcVar.bh(zzacsVar);
                                    if (bh2 < 0) {
                                        break;
                                    }
                                    if (bh2 != 0) {
                                        int i3 = (int) bh2;
                                        zzacgVar.zzl(i3, false);
                                        gqcVar.f18566ab += i3;
                                    }
                                } else {
                                    break;
                                }
                            } else if (j4 == j3) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }
}
