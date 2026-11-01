package com.google.android.gms.internal.ads;

import android.util.Pair;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes3.dex */
public final class zzaho {

    /* renamed from: a, reason: collision with root package name */
    public int f4175a;

    /* renamed from: b, reason: collision with root package name */
    public String f4176b;
    public int zzA;
    public int zzB;
    public int zzC;
    public float zzD;
    public float zzE;
    public float zzF;
    public float zzG;
    public float zzH;
    public float zzI;
    public float zzJ;
    public float zzK;
    public float zzL;
    public float zzM;
    public byte[] zzN;
    public int zzO;
    public int zzP;
    public int zzQ;
    public long zzR;
    public long zzS;
    public zzady zzT;
    public boolean zzU;
    public boolean zzV;
    public zzadx zzW;
    public int zzX;
    public String zza;
    public String zzb;
    public int zzc;
    public int zzd;
    public int zze;
    public int zzf;
    public boolean zzg;
    public byte[] zzh;
    public zzadw zzi;
    public byte[] zzj;
    public zzw zzk;
    public int zzl;
    public int zzm;
    public int zzn;
    public int zzo;
    public int zzp;
    public int zzq;
    public int zzr;
    public float zzs;
    public float zzt;
    public float zzu;
    public byte[] zzv;
    public int zzw;
    public boolean zzx;
    public int zzy;
    public int zzz;

    public final byte[] c(String str) {
        byte[] bArr = this.zzj;
        if (bArr != null) {
            return bArr;
        }
        throw zzbh.zza("Missing CodecPrivate for codec ".concat(String.valueOf(str)), null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0286, code lost:
    
        if (r1.zzt() == r2.getLeastSignificantBits()) goto L148;
     */
    /* JADX WARN: Removed duplicated region for block: B:116:0x04c3  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x04a8  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x04c1  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x04d0  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x06c2  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x04e0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zze(zzacu zzacuVar, int i) throws zzbh {
        char c2;
        List list;
        String str;
        String str2;
        List list2;
        Pair pair;
        int i2;
        ArrayList arrayList;
        List list3;
        List list4;
        String str3;
        zzab zzabVar;
        int i3;
        int i4;
        String str4;
        zzacn zza;
        List list5;
        String str5 = this.zzb;
        int i5 = 4;
        int i6 = 2;
        int i7 = 0;
        switch (str5.hashCode()) {
            case -2095576542:
                if (str5.equals("V_MPEG4/ISO/AP")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case -2095575984:
                if (str5.equals("V_MPEG4/ISO/SP")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case -1985379776:
                if (str5.equals("A_MS/ACM")) {
                    c2 = 23;
                    break;
                }
                c2 = 65535;
                break;
            case -1784763192:
                if (str5.equals("A_TRUEHD")) {
                    c2 = 18;
                    break;
                }
                c2 = 65535;
                break;
            case -1730367663:
                if (str5.equals("A_VORBIS")) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            case -1482641358:
                if (str5.equals("A_MPEG/L2")) {
                    c2 = 14;
                    break;
                }
                c2 = 65535;
                break;
            case -1482641357:
                if (str5.equals("A_MPEG/L3")) {
                    c2 = 15;
                    break;
                }
                c2 = 65535;
                break;
            case -1373388978:
                if (str5.equals("V_MS/VFW/FOURCC")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case -933872740:
                if (str5.equals("S_DVBSUB")) {
                    c2 = ' ';
                    break;
                }
                c2 = 65535;
                break;
            case -538363189:
                if (str5.equals("V_MPEG4/ISO/ASP")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case -538363109:
                if (str5.equals("V_MPEG4/ISO/AVC")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case -425012669:
                if (str5.equals("S_VOBSUB")) {
                    c2 = 30;
                    break;
                }
                c2 = 65535;
                break;
            case -356037306:
                if (str5.equals("A_DTS/LOSSLESS")) {
                    c2 = 21;
                    break;
                }
                c2 = 65535;
                break;
            case 62923557:
                if (str5.equals("A_AAC")) {
                    c2 = '\r';
                    break;
                }
                c2 = 65535;
                break;
            case 62923603:
                if (str5.equals("A_AC3")) {
                    c2 = 16;
                    break;
                }
                c2 = 65535;
                break;
            case 62927045:
                if (str5.equals("A_DTS")) {
                    c2 = 19;
                    break;
                }
                c2 = 65535;
                break;
            case 82318131:
                if (str5.equals("V_AV1")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 82338133:
                if (str5.equals("V_VP8")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 82338134:
                if (str5.equals("V_VP9")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 99146302:
                if (str5.equals("S_HDMV/PGS")) {
                    c2 = 31;
                    break;
                }
                c2 = 65535;
                break;
            case 444813526:
                if (str5.equals("V_THEORA")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case 542569478:
                if (str5.equals("A_DTS/EXPRESS")) {
                    c2 = 20;
                    break;
                }
                c2 = 65535;
                break;
            case 635596514:
                if (str5.equals("A_PCM/FLOAT/IEEE")) {
                    c2 = 26;
                    break;
                }
                c2 = 65535;
                break;
            case 725948237:
                if (str5.equals("A_PCM/INT/BIG")) {
                    c2 = 25;
                    break;
                }
                c2 = 65535;
                break;
            case 725957860:
                if (str5.equals("A_PCM/INT/LIT")) {
                    c2 = 24;
                    break;
                }
                c2 = 65535;
                break;
            case 738597099:
                if (str5.equals("S_TEXT/ASS")) {
                    c2 = 28;
                    break;
                }
                c2 = 65535;
                break;
            case 855502857:
                if (str5.equals("V_MPEGH/ISO/HEVC")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case 1045209816:
                if (str5.equals("S_TEXT/WEBVTT")) {
                    c2 = 29;
                    break;
                }
                c2 = 65535;
                break;
            case 1422270023:
                if (str5.equals("S_TEXT/UTF8")) {
                    c2 = 27;
                    break;
                }
                c2 = 65535;
                break;
            case 1809237540:
                if (str5.equals("V_MPEG2")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1950749482:
                if (str5.equals("A_EAC3")) {
                    c2 = 17;
                    break;
                }
                c2 = 65535;
                break;
            case 1950789798:
                if (str5.equals("A_FLAC")) {
                    c2 = 22;
                    break;
                }
                c2 = 65535;
                break;
            case 1951062397:
                if (str5.equals("A_OPUS")) {
                    c2 = '\f';
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        String str6 = "audio/raw";
        zzm zzmVar = null;
        r5 = null;
        r5 = null;
        r5 = null;
        r5 = null;
        r5 = null;
        r5 = null;
        r5 = null;
        r5 = null;
        r5 = null;
        byte[] bArr = null;
        switch (c2) {
            case 0:
                str6 = "video/x-vnd.on2.vp8";
                list2 = null;
                str2 = null;
                i2 = -1;
                list3 = list2;
                i5 = -1;
                list4 = list3;
                if (this.zzN != null && (zza = zzacn.zza(new zzed(this.zzN))) != null) {
                    str2 = zza.zza;
                    str6 = "video/dolby-vision";
                }
                str3 = str6;
                int i8 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                zzabVar = new zzab();
                if (!zzbg.zzg(str3)) {
                    zzabVar.zzz(this.zzO);
                    zzabVar.zzaa(this.zzQ);
                    zzabVar.zzT(i5);
                    i6 = 1;
                } else if (zzbg.zzi(str3)) {
                    if (this.zzq == 0) {
                        int i9 = this.zzo;
                        i3 = -1;
                        if (i9 == -1) {
                            i9 = this.zzl;
                        }
                        this.zzo = i9;
                        int i10 = this.zzp;
                        if (i10 == -1) {
                            i10 = this.zzm;
                        }
                        this.zzp = i10;
                    } else {
                        i3 = -1;
                    }
                    float f2 = (this.zzo == i3 || (i4 = this.zzp) == i3) ? -1.0f : (this.zzm * r8) / (this.zzl * i4);
                    if (this.zzx) {
                        if (this.zzD != -1.0f && this.zzE != -1.0f && this.zzF != -1.0f && this.zzG != -1.0f && this.zzH != -1.0f && this.zzI != -1.0f && this.zzJ != -1.0f && this.zzK != -1.0f && this.zzL != -1.0f && this.zzM != -1.0f) {
                            bArr = new byte[25];
                            ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                            order.put((byte) 0);
                            order.putShort((short) ((this.zzD * 50000.0f) + 0.5f));
                            order.putShort((short) ((this.zzE * 50000.0f) + 0.5f));
                            order.putShort((short) ((this.zzF * 50000.0f) + 0.5f));
                            order.putShort((short) ((this.zzG * 50000.0f) + 0.5f));
                            order.putShort((short) ((this.zzH * 50000.0f) + 0.5f));
                            order.putShort((short) ((this.zzI * 50000.0f) + 0.5f));
                            order.putShort((short) ((this.zzJ * 50000.0f) + 0.5f));
                            order.putShort((short) ((this.zzK * 50000.0f) + 0.5f));
                            order.putShort((short) (this.zzL + 0.5f));
                            order.putShort((short) (this.zzM + 0.5f));
                            order.putShort((short) this.zzB);
                            order.putShort((short) this.zzC);
                        }
                        zzk zzkVar = new zzk();
                        zzkVar.zzc(this.zzy);
                        zzkVar.zzb(this.zzA);
                        zzkVar.zzd(this.zzz);
                        zzkVar.zze(bArr);
                        zzkVar.zzf(this.zzn);
                        zzkVar.zza(this.zzn);
                        zzmVar = zzkVar.zzg();
                    }
                    String str7 = this.zza;
                    if (str7 != null) {
                        Map map = zzahq.f4181e;
                        if (map.containsKey(str7)) {
                            i3 = ((Integer) map.get(this.zza)).intValue();
                        }
                    }
                    if (this.zzr == 0 && Float.compare(this.zzs, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) == 0 && Float.compare(this.zzt, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) == 0) {
                        if (Float.compare(this.zzu, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) != 0) {
                            if (Float.compare(this.zzu, 90.0f) == 0) {
                                i7 = 90;
                            } else if (Float.compare(this.zzu, -180.0f) == 0 || Float.compare(this.zzu, 180.0f) == 0) {
                                i7 = 180;
                            } else if (Float.compare(this.zzu, -90.0f) == 0) {
                                i7 = MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SWITCH_CACHE_TIME;
                            }
                        }
                        zzabVar.zzae(this.zzl);
                        zzabVar.zzJ(this.zzm);
                        zzabVar.zzV(f2);
                        zzabVar.zzY(i7);
                        zzabVar.zzW(this.zzv);
                        zzabVar.zzac(this.zzw);
                        zzabVar.zzB(zzmVar);
                    }
                    i7 = i3;
                    zzabVar.zzae(this.zzl);
                    zzabVar.zzJ(this.zzm);
                    zzabVar.zzV(f2);
                    zzabVar.zzY(i7);
                    zzabVar.zzW(this.zzv);
                    zzabVar.zzac(this.zzw);
                    zzabVar.zzB(zzmVar);
                } else {
                    if (!"application/x-subrip".equals(str3) && !"text/x-ssa".equals(str3) && !"text/vtt".equals(str3) && !"application/vobsub".equals(str3) && !"application/pgs".equals(str3) && !"application/dvbsubs".equals(str3)) {
                        throw zzbh.zza("Unexpected MIME type.", null);
                    }
                    i6 = 3;
                }
                str4 = this.zza;
                if (str4 != null && !zzahq.f4181e.containsKey(str4)) {
                    zzabVar.zzN(this.zza);
                }
                zzabVar.zzK(i);
                zzabVar.zzZ(str3);
                zzabVar.zzQ(i2);
                zzabVar.zzP(this.f4176b);
                zzabVar.zzab(i8);
                zzabVar.zzM(list4);
                zzabVar.zzA(str2);
                zzabVar.zzF(this.zzk);
                zzad zzaf = zzabVar.zzaf();
                zzadx zzw = zzacuVar.zzw(this.zzc, i6);
                this.zzW = zzw;
                zzw.zzl(zzaf);
                return;
            case 1:
                str6 = "video/x-vnd.on2.vp9";
                list2 = null;
                str2 = null;
                i2 = -1;
                list3 = list2;
                i5 = -1;
                list4 = list3;
                if (this.zzN != null) {
                    str2 = zza.zza;
                    str6 = "video/dolby-vision";
                    break;
                }
                str3 = str6;
                int i82 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                zzabVar = new zzab();
                if (!zzbg.zzg(str3)) {
                }
                str4 = this.zza;
                if (str4 != null) {
                    zzabVar.zzN(this.zza);
                    break;
                }
                zzabVar.zzK(i);
                zzabVar.zzZ(str3);
                zzabVar.zzQ(i2);
                zzabVar.zzP(this.f4176b);
                zzabVar.zzab(i82);
                zzabVar.zzM(list4);
                zzabVar.zzA(str2);
                zzabVar.zzF(this.zzk);
                zzad zzaf2 = zzabVar.zzaf();
                zzadx zzw2 = zzacuVar.zzw(this.zzc, i6);
                this.zzW = zzw2;
                zzw2.zzl(zzaf2);
                return;
            case 2:
                str6 = "video/av01";
                list2 = null;
                str2 = null;
                i2 = -1;
                list3 = list2;
                i5 = -1;
                list4 = list3;
                if (this.zzN != null) {
                }
                str3 = str6;
                int i822 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                zzabVar = new zzab();
                if (!zzbg.zzg(str3)) {
                }
                str4 = this.zza;
                if (str4 != null) {
                }
                zzabVar.zzK(i);
                zzabVar.zzZ(str3);
                zzabVar.zzQ(i2);
                zzabVar.zzP(this.f4176b);
                zzabVar.zzab(i822);
                zzabVar.zzM(list4);
                zzabVar.zzA(str2);
                zzabVar.zzF(this.zzk);
                zzad zzaf22 = zzabVar.zzaf();
                zzadx zzw22 = zzacuVar.zzw(this.zzc, i6);
                this.zzW = zzw22;
                zzw22.zzl(zzaf22);
                return;
            case 3:
                str6 = "video/mpeg2";
                list2 = null;
                str2 = null;
                i2 = -1;
                list3 = list2;
                i5 = -1;
                list4 = list3;
                if (this.zzN != null) {
                }
                str3 = str6;
                int i8222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                zzabVar = new zzab();
                if (!zzbg.zzg(str3)) {
                }
                str4 = this.zza;
                if (str4 != null) {
                }
                zzabVar.zzK(i);
                zzabVar.zzZ(str3);
                zzabVar.zzQ(i2);
                zzabVar.zzP(this.f4176b);
                zzabVar.zzab(i8222);
                zzabVar.zzM(list4);
                zzabVar.zzA(str2);
                zzabVar.zzF(this.zzk);
                zzad zzaf222 = zzabVar.zzaf();
                zzadx zzw222 = zzacuVar.zzw(this.zzc, i6);
                this.zzW = zzw222;
                zzw222.zzl(zzaf222);
                return;
            case 4:
            case 5:
            case 6:
                byte[] bArr2 = this.zzj;
                str6 = "video/mp4v-es";
                list5 = bArr2 == null ? null : Collections.singletonList(bArr2);
                str2 = null;
                list2 = list5;
                i2 = -1;
                list3 = list2;
                i5 = -1;
                list4 = list3;
                if (this.zzN != null) {
                }
                str3 = str6;
                int i82222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                zzabVar = new zzab();
                if (!zzbg.zzg(str3)) {
                }
                str4 = this.zza;
                if (str4 != null) {
                }
                zzabVar.zzK(i);
                zzabVar.zzZ(str3);
                zzabVar.zzQ(i2);
                zzabVar.zzP(this.f4176b);
                zzabVar.zzab(i82222);
                zzabVar.zzM(list4);
                zzabVar.zzA(str2);
                zzabVar.zzF(this.zzk);
                zzad zzaf2222 = zzabVar.zzaf();
                zzadx zzw2222 = zzacuVar.zzw(this.zzc, i6);
                this.zzW = zzw2222;
                zzw2222.zzl(zzaf2222);
                return;
            case 7:
                zzabv zza2 = zzabv.zza(new zzed(c(this.zzb)));
                list = zza2.zza;
                this.zzX = zza2.zzb;
                str = zza2.zzl;
                str6 = "video/avc";
                str2 = str;
                list2 = list;
                i2 = -1;
                list3 = list2;
                i5 = -1;
                list4 = list3;
                if (this.zzN != null) {
                }
                str3 = str6;
                int i822222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                zzabVar = new zzab();
                if (!zzbg.zzg(str3)) {
                }
                str4 = this.zza;
                if (str4 != null) {
                }
                zzabVar.zzK(i);
                zzabVar.zzZ(str3);
                zzabVar.zzQ(i2);
                zzabVar.zzP(this.f4176b);
                zzabVar.zzab(i822222);
                zzabVar.zzM(list4);
                zzabVar.zzA(str2);
                zzabVar.zzF(this.zzk);
                zzad zzaf22222 = zzabVar.zzaf();
                zzadx zzw22222 = zzacuVar.zzw(this.zzc, i6);
                this.zzW = zzw22222;
                zzw22222.zzl(zzaf22222);
                return;
            case '\b':
                zzadg zza3 = zzadg.zza(new zzed(c(this.zzb)));
                list = zza3.zza;
                this.zzX = zza3.zzb;
                str = zza3.zzk;
                str6 = "video/hevc";
                str2 = str;
                list2 = list;
                i2 = -1;
                list3 = list2;
                i5 = -1;
                list4 = list3;
                if (this.zzN != null) {
                }
                str3 = str6;
                int i8222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                zzabVar = new zzab();
                if (!zzbg.zzg(str3)) {
                }
                str4 = this.zza;
                if (str4 != null) {
                }
                zzabVar.zzK(i);
                zzabVar.zzZ(str3);
                zzabVar.zzQ(i2);
                zzabVar.zzP(this.f4176b);
                zzabVar.zzab(i8222222);
                zzabVar.zzM(list4);
                zzabVar.zzA(str2);
                zzabVar.zzF(this.zzk);
                zzad zzaf222222 = zzabVar.zzaf();
                zzadx zzw222222 = zzacuVar.zzw(this.zzc, i6);
                this.zzW = zzw222222;
                zzw222222.zzl(zzaf222222);
                return;
            case '\t':
                zzed zzedVar = new zzed(c(this.zzb));
                try {
                    zzedVar.zzM(16);
                    long zzs = zzedVar.zzs();
                    if (zzs == 1482049860) {
                        pair = new Pair("video/divx", null);
                    } else if (zzs == 859189832) {
                        pair = new Pair("video/3gpp", null);
                    } else if (zzs == 826496599) {
                        int zzd = zzedVar.zzd() + 20;
                        byte[] zzN = zzedVar.zzN();
                        while (true) {
                            int length = zzN.length;
                            if (zzd >= length - 4) {
                                throw zzbh.zza("Failed to find FourCC VC1 initialization data", null);
                            }
                            int i11 = zzd + 1;
                            if (zzN[zzd] == 0 && zzN[i11] == 0 && zzN[zzd + 2] == 1) {
                                if (zzN[zzd + 3] == 15) {
                                    pair = new Pair("video/wvc1", Collections.singletonList(Arrays.copyOfRange(zzN, zzd, length)));
                                }
                            }
                            zzd = i11;
                        }
                    } else {
                        zzdt.zzf("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                        pair = new Pair("video/x-unknown", null);
                    }
                    str6 = (String) pair.first;
                    list5 = (List) pair.second;
                    str2 = null;
                    list2 = list5;
                    i2 = -1;
                    list3 = list2;
                    i5 = -1;
                    list4 = list3;
                    if (this.zzN != null) {
                    }
                    str3 = str6;
                    int i82222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                    zzabVar = new zzab();
                    if (!zzbg.zzg(str3)) {
                    }
                    str4 = this.zza;
                    if (str4 != null) {
                    }
                    zzabVar.zzK(i);
                    zzabVar.zzZ(str3);
                    zzabVar.zzQ(i2);
                    zzabVar.zzP(this.f4176b);
                    zzabVar.zzab(i82222222);
                    zzabVar.zzM(list4);
                    zzabVar.zzA(str2);
                    zzabVar.zzF(this.zzk);
                    zzad zzaf2222222 = zzabVar.zzaf();
                    zzadx zzw2222222 = zzacuVar.zzw(this.zzc, i6);
                    this.zzW = zzw2222222;
                    zzw2222222.zzl(zzaf2222222);
                    return;
                } catch (ArrayIndexOutOfBoundsException unused) {
                    throw zzbh.zza("Error parsing FourCC private data", null);
                }
            case '\n':
                str6 = "video/x-unknown";
                list2 = null;
                str2 = null;
                i2 = -1;
                list3 = list2;
                i5 = -1;
                list4 = list3;
                if (this.zzN != null) {
                }
                str3 = str6;
                int i822222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                zzabVar = new zzab();
                if (!zzbg.zzg(str3)) {
                }
                str4 = this.zza;
                if (str4 != null) {
                }
                zzabVar.zzK(i);
                zzabVar.zzZ(str3);
                zzabVar.zzQ(i2);
                zzabVar.zzP(this.f4176b);
                zzabVar.zzab(i822222222);
                zzabVar.zzM(list4);
                zzabVar.zzA(str2);
                zzabVar.zzF(this.zzk);
                zzad zzaf22222222 = zzabVar.zzaf();
                zzadx zzw22222222 = zzacuVar.zzw(this.zzc, i6);
                this.zzW = zzw22222222;
                zzw22222222.zzl(zzaf22222222);
                return;
            case 11:
                byte[] c3 = c(str5);
                try {
                    if (c3[0] != 2) {
                        throw zzbh.zza("Error parsing vorbis codec private", null);
                    }
                    int i12 = 1;
                    int i13 = 0;
                    while (true) {
                        int i14 = c3[i12];
                        i12++;
                        int i15 = i14 & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
                        if (i15 == 255) {
                            i13 += MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
                        } else {
                            int i16 = i13 + i15;
                            int i17 = 0;
                            while (true) {
                                int i18 = c3[i12];
                                i12++;
                                int i19 = i18 & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
                                if (i19 != 255) {
                                    int i20 = i17 + i19;
                                    if (c3[i12] != 1) {
                                        throw zzbh.zza("Error parsing vorbis codec private", null);
                                    }
                                    byte[] bArr3 = new byte[i16];
                                    System.arraycopy(c3, i12, bArr3, 0, i16);
                                    int i21 = i12 + i16;
                                    if (c3[i21] != 3) {
                                        throw zzbh.zza("Error parsing vorbis codec private", null);
                                    }
                                    int i22 = i21 + i20;
                                    if (c3[i22] != 5) {
                                        throw zzbh.zza("Error parsing vorbis codec private", null);
                                    }
                                    int length2 = c3.length - i22;
                                    byte[] bArr4 = new byte[length2];
                                    System.arraycopy(c3, i22, bArr4, 0, length2);
                                    ArrayList arrayList2 = new ArrayList(2);
                                    arrayList2.add(bArr3);
                                    arrayList2.add(bArr4);
                                    i2 = 8192;
                                    str6 = "audio/vorbis";
                                    arrayList = arrayList2;
                                    str2 = null;
                                    list3 = arrayList;
                                    i5 = -1;
                                    list4 = list3;
                                    if (this.zzN != null) {
                                    }
                                    str3 = str6;
                                    int i8222222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                                    zzabVar = new zzab();
                                    if (!zzbg.zzg(str3)) {
                                    }
                                    str4 = this.zza;
                                    if (str4 != null) {
                                    }
                                    zzabVar.zzK(i);
                                    zzabVar.zzZ(str3);
                                    zzabVar.zzQ(i2);
                                    zzabVar.zzP(this.f4176b);
                                    zzabVar.zzab(i8222222222);
                                    zzabVar.zzM(list4);
                                    zzabVar.zzA(str2);
                                    zzabVar.zzF(this.zzk);
                                    zzad zzaf222222222 = zzabVar.zzaf();
                                    zzadx zzw222222222 = zzacuVar.zzw(this.zzc, i6);
                                    this.zzW = zzw222222222;
                                    zzw222222222.zzl(zzaf222222222);
                                    return;
                                }
                                i17 += MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
                            }
                        }
                    }
                } catch (ArrayIndexOutOfBoundsException unused2) {
                    throw zzbh.zza("Error parsing vorbis codec private", null);
                }
                break;
            case '\f':
                ArrayList arrayList3 = new ArrayList(3);
                arrayList3.add(c(this.zzb));
                ByteBuffer allocate = ByteBuffer.allocate(8);
                ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                arrayList3.add(allocate.order(byteOrder).putLong(this.zzR).array());
                arrayList3.add(ByteBuffer.allocate(8).order(byteOrder).putLong(this.zzS).array());
                i2 = 5760;
                str6 = "audio/opus";
                arrayList = arrayList3;
                str2 = null;
                list3 = arrayList;
                i5 = -1;
                list4 = list3;
                if (this.zzN != null) {
                }
                str3 = str6;
                int i82222222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                zzabVar = new zzab();
                if (!zzbg.zzg(str3)) {
                }
                str4 = this.zza;
                if (str4 != null) {
                }
                zzabVar.zzK(i);
                zzabVar.zzZ(str3);
                zzabVar.zzQ(i2);
                zzabVar.zzP(this.f4176b);
                zzabVar.zzab(i82222222222);
                zzabVar.zzM(list4);
                zzabVar.zzA(str2);
                zzabVar.zzF(this.zzk);
                zzad zzaf2222222222 = zzabVar.zzaf();
                zzadx zzw2222222222 = zzacuVar.zzw(this.zzc, i6);
                this.zzW = zzw2222222222;
                zzw2222222222.zzl(zzaf2222222222);
                return;
            case '\r':
                List singletonList = Collections.singletonList(c(str5));
                zzabm zza4 = zzabo.zza(this.zzj);
                this.zzQ = zza4.zza;
                this.zzO = zza4.zzb;
                str6 = "audio/mp4a-latm";
                str2 = zza4.zzc;
                list2 = singletonList;
                i2 = -1;
                list3 = list2;
                i5 = -1;
                list4 = list3;
                if (this.zzN != null) {
                }
                str3 = str6;
                int i822222222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                zzabVar = new zzab();
                if (!zzbg.zzg(str3)) {
                }
                str4 = this.zza;
                if (str4 != null) {
                }
                zzabVar.zzK(i);
                zzabVar.zzZ(str3);
                zzabVar.zzQ(i2);
                zzabVar.zzP(this.f4176b);
                zzabVar.zzab(i822222222222);
                zzabVar.zzM(list4);
                zzabVar.zzA(str2);
                zzabVar.zzF(this.zzk);
                zzad zzaf22222222222 = zzabVar.zzaf();
                zzadx zzw22222222222 = zzacuVar.zzw(this.zzc, i6);
                this.zzW = zzw22222222222;
                zzw22222222222.zzl(zzaf22222222222);
                return;
            case 14:
                str6 = "audio/mpeg-L2";
                list3 = null;
                str2 = null;
                i2 = 4096;
                i5 = -1;
                list4 = list3;
                if (this.zzN != null) {
                }
                str3 = str6;
                int i8222222222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                zzabVar = new zzab();
                if (!zzbg.zzg(str3)) {
                }
                str4 = this.zza;
                if (str4 != null) {
                }
                zzabVar.zzK(i);
                zzabVar.zzZ(str3);
                zzabVar.zzQ(i2);
                zzabVar.zzP(this.f4176b);
                zzabVar.zzab(i8222222222222);
                zzabVar.zzM(list4);
                zzabVar.zzA(str2);
                zzabVar.zzF(this.zzk);
                zzad zzaf222222222222 = zzabVar.zzaf();
                zzadx zzw222222222222 = zzacuVar.zzw(this.zzc, i6);
                this.zzW = zzw222222222222;
                zzw222222222222.zzl(zzaf222222222222);
                return;
            case 15:
                str6 = "audio/mpeg";
                list3 = null;
                str2 = null;
                i2 = 4096;
                i5 = -1;
                list4 = list3;
                if (this.zzN != null) {
                }
                str3 = str6;
                int i82222222222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                zzabVar = new zzab();
                if (!zzbg.zzg(str3)) {
                }
                str4 = this.zza;
                if (str4 != null) {
                }
                zzabVar.zzK(i);
                zzabVar.zzZ(str3);
                zzabVar.zzQ(i2);
                zzabVar.zzP(this.f4176b);
                zzabVar.zzab(i82222222222222);
                zzabVar.zzM(list4);
                zzabVar.zzA(str2);
                zzabVar.zzF(this.zzk);
                zzad zzaf2222222222222 = zzabVar.zzaf();
                zzadx zzw2222222222222 = zzacuVar.zzw(this.zzc, i6);
                this.zzW = zzw2222222222222;
                zzw2222222222222.zzl(zzaf2222222222222);
                return;
            case 16:
                str6 = "audio/ac3";
                list2 = null;
                str2 = null;
                i2 = -1;
                list3 = list2;
                i5 = -1;
                list4 = list3;
                if (this.zzN != null) {
                }
                str3 = str6;
                int i822222222222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                zzabVar = new zzab();
                if (!zzbg.zzg(str3)) {
                }
                str4 = this.zza;
                if (str4 != null) {
                }
                zzabVar.zzK(i);
                zzabVar.zzZ(str3);
                zzabVar.zzQ(i2);
                zzabVar.zzP(this.f4176b);
                zzabVar.zzab(i822222222222222);
                zzabVar.zzM(list4);
                zzabVar.zzA(str2);
                zzabVar.zzF(this.zzk);
                zzad zzaf22222222222222 = zzabVar.zzaf();
                zzadx zzw22222222222222 = zzacuVar.zzw(this.zzc, i6);
                this.zzW = zzw22222222222222;
                zzw22222222222222.zzl(zzaf22222222222222);
                return;
            case 17:
                str6 = "audio/eac3";
                list2 = null;
                str2 = null;
                i2 = -1;
                list3 = list2;
                i5 = -1;
                list4 = list3;
                if (this.zzN != null) {
                }
                str3 = str6;
                int i8222222222222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                zzabVar = new zzab();
                if (!zzbg.zzg(str3)) {
                }
                str4 = this.zza;
                if (str4 != null) {
                }
                zzabVar.zzK(i);
                zzabVar.zzZ(str3);
                zzabVar.zzQ(i2);
                zzabVar.zzP(this.f4176b);
                zzabVar.zzab(i8222222222222222);
                zzabVar.zzM(list4);
                zzabVar.zzA(str2);
                zzabVar.zzF(this.zzk);
                zzad zzaf222222222222222 = zzabVar.zzaf();
                zzadx zzw222222222222222 = zzacuVar.zzw(this.zzc, i6);
                this.zzW = zzw222222222222222;
                zzw222222222222222.zzl(zzaf222222222222222);
                return;
            case 18:
                this.zzT = new zzady();
                str6 = "audio/true-hd";
                list2 = null;
                str2 = null;
                i2 = -1;
                list3 = list2;
                i5 = -1;
                list4 = list3;
                if (this.zzN != null) {
                }
                str3 = str6;
                int i82222222222222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                zzabVar = new zzab();
                if (!zzbg.zzg(str3)) {
                }
                str4 = this.zza;
                if (str4 != null) {
                }
                zzabVar.zzK(i);
                zzabVar.zzZ(str3);
                zzabVar.zzQ(i2);
                zzabVar.zzP(this.f4176b);
                zzabVar.zzab(i82222222222222222);
                zzabVar.zzM(list4);
                zzabVar.zzA(str2);
                zzabVar.zzF(this.zzk);
                zzad zzaf2222222222222222 = zzabVar.zzaf();
                zzadx zzw2222222222222222 = zzacuVar.zzw(this.zzc, i6);
                this.zzW = zzw2222222222222222;
                zzw2222222222222222.zzl(zzaf2222222222222222);
                return;
            case 19:
            case 20:
                str6 = "audio/vnd.dts";
                list2 = null;
                str2 = null;
                i2 = -1;
                list3 = list2;
                i5 = -1;
                list4 = list3;
                if (this.zzN != null) {
                }
                str3 = str6;
                int i822222222222222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                zzabVar = new zzab();
                if (!zzbg.zzg(str3)) {
                }
                str4 = this.zza;
                if (str4 != null) {
                }
                zzabVar.zzK(i);
                zzabVar.zzZ(str3);
                zzabVar.zzQ(i2);
                zzabVar.zzP(this.f4176b);
                zzabVar.zzab(i822222222222222222);
                zzabVar.zzM(list4);
                zzabVar.zzA(str2);
                zzabVar.zzF(this.zzk);
                zzad zzaf22222222222222222 = zzabVar.zzaf();
                zzadx zzw22222222222222222 = zzacuVar.zzw(this.zzc, i6);
                this.zzW = zzw22222222222222222;
                zzw22222222222222222.zzl(zzaf22222222222222222);
                return;
            case 21:
                str6 = "audio/vnd.dts.hd";
                list2 = null;
                str2 = null;
                i2 = -1;
                list3 = list2;
                i5 = -1;
                list4 = list3;
                if (this.zzN != null) {
                }
                str3 = str6;
                int i8222222222222222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                zzabVar = new zzab();
                if (!zzbg.zzg(str3)) {
                }
                str4 = this.zza;
                if (str4 != null) {
                }
                zzabVar.zzK(i);
                zzabVar.zzZ(str3);
                zzabVar.zzQ(i2);
                zzabVar.zzP(this.f4176b);
                zzabVar.zzab(i8222222222222222222);
                zzabVar.zzM(list4);
                zzabVar.zzA(str2);
                zzabVar.zzF(this.zzk);
                zzad zzaf222222222222222222 = zzabVar.zzaf();
                zzadx zzw222222222222222222 = zzacuVar.zzw(this.zzc, i6);
                this.zzW = zzw222222222222222222;
                zzw222222222222222222.zzl(zzaf222222222222222222);
                return;
            case 22:
                str6 = "audio/flac";
                list5 = Collections.singletonList(c(str5));
                str2 = null;
                list2 = list5;
                i2 = -1;
                list3 = list2;
                i5 = -1;
                list4 = list3;
                if (this.zzN != null) {
                }
                str3 = str6;
                int i82222222222222222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                zzabVar = new zzab();
                if (!zzbg.zzg(str3)) {
                }
                str4 = this.zza;
                if (str4 != null) {
                }
                zzabVar.zzK(i);
                zzabVar.zzZ(str3);
                zzabVar.zzQ(i2);
                zzabVar.zzP(this.f4176b);
                zzabVar.zzab(i82222222222222222222);
                zzabVar.zzM(list4);
                zzabVar.zzA(str2);
                zzabVar.zzF(this.zzk);
                zzad zzaf2222222222222222222 = zzabVar.zzaf();
                zzadx zzw2222222222222222222 = zzacuVar.zzw(this.zzc, i6);
                this.zzW = zzw2222222222222222222;
                zzw2222222222222222222.zzl(zzaf2222222222222222222);
                return;
            case 23:
                zzed zzedVar2 = new zzed(c(this.zzb));
                try {
                    int zzk = zzedVar2.zzk();
                    if (zzk != 1) {
                        if (zzk == 65534) {
                            zzedVar2.zzL(24);
                            long zzt = zzedVar2.zzt();
                            UUID uuid = zzahq.f4177a;
                            if (zzt == uuid.getMostSignificantBits()) {
                                break;
                            }
                        }
                        zzdt.zzf("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown");
                        list2 = null;
                        str2 = null;
                        str6 = "audio/x-unknown";
                        i2 = -1;
                        list3 = list2;
                        i5 = -1;
                        list4 = list3;
                        if (this.zzN != null) {
                        }
                        str3 = str6;
                        int i822222222222222222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                        zzabVar = new zzab();
                        if (!zzbg.zzg(str3)) {
                        }
                        str4 = this.zza;
                        if (str4 != null) {
                        }
                        zzabVar.zzK(i);
                        zzabVar.zzZ(str3);
                        zzabVar.zzQ(i2);
                        zzabVar.zzP(this.f4176b);
                        zzabVar.zzab(i822222222222222222222);
                        zzabVar.zzM(list4);
                        zzabVar.zzA(str2);
                        zzabVar.zzF(this.zzk);
                        zzad zzaf22222222222222222222 = zzabVar.zzaf();
                        zzadx zzw22222222222222222222 = zzacuVar.zzw(this.zzc, i6);
                        this.zzW = zzw22222222222222222222;
                        zzw22222222222222222222.zzl(zzaf22222222222222222222);
                        return;
                    }
                    i5 = zzen.zzn(this.zzP);
                    if (i5 == 0) {
                        zzdt.zzf("MatroskaExtractor", "Unsupported PCM bit depth: " + this.zzP + ". Setting mimeType to audio/x-unknown");
                        list2 = null;
                        str2 = null;
                        str6 = "audio/x-unknown";
                        i2 = -1;
                        list3 = list2;
                        i5 = -1;
                        list4 = list3;
                        if (this.zzN != null) {
                        }
                        str3 = str6;
                        int i8222222222222222222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                        zzabVar = new zzab();
                        if (!zzbg.zzg(str3)) {
                        }
                        str4 = this.zza;
                        if (str4 != null) {
                        }
                        zzabVar.zzK(i);
                        zzabVar.zzZ(str3);
                        zzabVar.zzQ(i2);
                        zzabVar.zzP(this.f4176b);
                        zzabVar.zzab(i8222222222222222222222);
                        zzabVar.zzM(list4);
                        zzabVar.zzA(str2);
                        zzabVar.zzF(this.zzk);
                        zzad zzaf222222222222222222222 = zzabVar.zzaf();
                        zzadx zzw222222222222222222222 = zzacuVar.zzw(this.zzc, i6);
                        this.zzW = zzw222222222222222222222;
                        zzw222222222222222222222.zzl(zzaf222222222222222222222);
                        return;
                    }
                    list4 = null;
                    str2 = null;
                    i2 = -1;
                    if (this.zzN != null) {
                    }
                    str3 = str6;
                    int i82222222222222222222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                    zzabVar = new zzab();
                    if (!zzbg.zzg(str3)) {
                    }
                    str4 = this.zza;
                    if (str4 != null) {
                    }
                    zzabVar.zzK(i);
                    zzabVar.zzZ(str3);
                    zzabVar.zzQ(i2);
                    zzabVar.zzP(this.f4176b);
                    zzabVar.zzab(i82222222222222222222222);
                    zzabVar.zzM(list4);
                    zzabVar.zzA(str2);
                    zzabVar.zzF(this.zzk);
                    zzad zzaf2222222222222222222222 = zzabVar.zzaf();
                    zzadx zzw2222222222222222222222 = zzacuVar.zzw(this.zzc, i6);
                    this.zzW = zzw2222222222222222222222;
                    zzw2222222222222222222222.zzl(zzaf2222222222222222222222);
                    return;
                } catch (ArrayIndexOutOfBoundsException unused3) {
                    throw zzbh.zza("Error parsing MS/ACM codec private", null);
                }
            case 24:
                i5 = zzen.zzn(this.zzP);
                if (i5 == 0) {
                    zzdt.zzf("MatroskaExtractor", "Unsupported little endian PCM bit depth: " + this.zzP + ". Setting mimeType to audio/x-unknown");
                    list2 = null;
                    str2 = null;
                    str6 = "audio/x-unknown";
                    i2 = -1;
                    list3 = list2;
                    i5 = -1;
                    list4 = list3;
                    if (this.zzN != null) {
                    }
                    str3 = str6;
                    int i822222222222222222222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                    zzabVar = new zzab();
                    if (!zzbg.zzg(str3)) {
                    }
                    str4 = this.zza;
                    if (str4 != null) {
                    }
                    zzabVar.zzK(i);
                    zzabVar.zzZ(str3);
                    zzabVar.zzQ(i2);
                    zzabVar.zzP(this.f4176b);
                    zzabVar.zzab(i822222222222222222222222);
                    zzabVar.zzM(list4);
                    zzabVar.zzA(str2);
                    zzabVar.zzF(this.zzk);
                    zzad zzaf22222222222222222222222 = zzabVar.zzaf();
                    zzadx zzw22222222222222222222222 = zzacuVar.zzw(this.zzc, i6);
                    this.zzW = zzw22222222222222222222222;
                    zzw22222222222222222222222.zzl(zzaf22222222222222222222222);
                    return;
                }
                list4 = null;
                str2 = null;
                i2 = -1;
                if (this.zzN != null) {
                }
                str3 = str6;
                int i8222222222222222222222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                zzabVar = new zzab();
                if (!zzbg.zzg(str3)) {
                }
                str4 = this.zza;
                if (str4 != null) {
                }
                zzabVar.zzK(i);
                zzabVar.zzZ(str3);
                zzabVar.zzQ(i2);
                zzabVar.zzP(this.f4176b);
                zzabVar.zzab(i8222222222222222222222222);
                zzabVar.zzM(list4);
                zzabVar.zzA(str2);
                zzabVar.zzF(this.zzk);
                zzad zzaf222222222222222222222222 = zzabVar.zzaf();
                zzadx zzw222222222222222222222222 = zzacuVar.zzw(this.zzc, i6);
                this.zzW = zzw222222222222222222222222;
                zzw222222222222222222222222.zzl(zzaf222222222222222222222222);
                return;
            case 25:
                int i23 = this.zzP;
                if (i23 == 8) {
                    list4 = null;
                    str2 = null;
                    i2 = -1;
                    i5 = 3;
                    if (this.zzN != null) {
                    }
                    str3 = str6;
                    int i82222222222222222222222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                    zzabVar = new zzab();
                    if (!zzbg.zzg(str3)) {
                    }
                    str4 = this.zza;
                    if (str4 != null) {
                    }
                    zzabVar.zzK(i);
                    zzabVar.zzZ(str3);
                    zzabVar.zzQ(i2);
                    zzabVar.zzP(this.f4176b);
                    zzabVar.zzab(i82222222222222222222222222);
                    zzabVar.zzM(list4);
                    zzabVar.zzA(str2);
                    zzabVar.zzF(this.zzk);
                    zzad zzaf2222222222222222222222222 = zzabVar.zzaf();
                    zzadx zzw2222222222222222222222222 = zzacuVar.zzw(this.zzc, i6);
                    this.zzW = zzw2222222222222222222222222;
                    zzw2222222222222222222222222.zzl(zzaf2222222222222222222222222);
                    return;
                }
                if (i23 == 16) {
                    i5 = C.ENCODING_PCM_MU_LAW;
                } else if (i23 == 24) {
                    i5 = 1342177280;
                } else {
                    if (i23 != 32) {
                        zzdt.zzf("MatroskaExtractor", "Unsupported big endian PCM bit depth: " + i23 + ". Setting mimeType to audio/x-unknown");
                        list2 = null;
                        str2 = null;
                        str6 = "audio/x-unknown";
                        i2 = -1;
                        list3 = list2;
                        i5 = -1;
                        list4 = list3;
                        if (this.zzN != null) {
                        }
                        str3 = str6;
                        int i822222222222222222222222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                        zzabVar = new zzab();
                        if (!zzbg.zzg(str3)) {
                        }
                        str4 = this.zza;
                        if (str4 != null) {
                        }
                        zzabVar.zzK(i);
                        zzabVar.zzZ(str3);
                        zzabVar.zzQ(i2);
                        zzabVar.zzP(this.f4176b);
                        zzabVar.zzab(i822222222222222222222222222);
                        zzabVar.zzM(list4);
                        zzabVar.zzA(str2);
                        zzabVar.zzF(this.zzk);
                        zzad zzaf22222222222222222222222222 = zzabVar.zzaf();
                        zzadx zzw22222222222222222222222222 = zzacuVar.zzw(this.zzc, i6);
                        this.zzW = zzw22222222222222222222222222;
                        zzw22222222222222222222222222.zzl(zzaf22222222222222222222222222);
                        return;
                    }
                    i5 = 1610612736;
                }
                list4 = null;
                str2 = null;
                i2 = -1;
                if (this.zzN != null) {
                }
                str3 = str6;
                int i8222222222222222222222222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                zzabVar = new zzab();
                if (!zzbg.zzg(str3)) {
                }
                str4 = this.zza;
                if (str4 != null) {
                }
                zzabVar.zzK(i);
                zzabVar.zzZ(str3);
                zzabVar.zzQ(i2);
                zzabVar.zzP(this.f4176b);
                zzabVar.zzab(i8222222222222222222222222222);
                zzabVar.zzM(list4);
                zzabVar.zzA(str2);
                zzabVar.zzF(this.zzk);
                zzad zzaf222222222222222222222222222 = zzabVar.zzaf();
                zzadx zzw222222222222222222222222222 = zzacuVar.zzw(this.zzc, i6);
                this.zzW = zzw222222222222222222222222222;
                zzw222222222222222222222222222.zzl(zzaf222222222222222222222222222);
                return;
            case 26:
                int i24 = this.zzP;
                if (i24 != 32) {
                    zzdt.zzf("MatroskaExtractor", "Unsupported floating point PCM bit depth: " + i24 + ". Setting mimeType to audio/x-unknown");
                    list2 = null;
                    str2 = null;
                    str6 = "audio/x-unknown";
                    i2 = -1;
                    list3 = list2;
                    i5 = -1;
                    list4 = list3;
                    if (this.zzN != null) {
                    }
                    str3 = str6;
                    int i82222222222222222222222222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                    zzabVar = new zzab();
                    if (!zzbg.zzg(str3)) {
                    }
                    str4 = this.zza;
                    if (str4 != null) {
                    }
                    zzabVar.zzK(i);
                    zzabVar.zzZ(str3);
                    zzabVar.zzQ(i2);
                    zzabVar.zzP(this.f4176b);
                    zzabVar.zzab(i82222222222222222222222222222);
                    zzabVar.zzM(list4);
                    zzabVar.zzA(str2);
                    zzabVar.zzF(this.zzk);
                    zzad zzaf2222222222222222222222222222 = zzabVar.zzaf();
                    zzadx zzw2222222222222222222222222222 = zzacuVar.zzw(this.zzc, i6);
                    this.zzW = zzw2222222222222222222222222222;
                    zzw2222222222222222222222222222.zzl(zzaf2222222222222222222222222222);
                    return;
                }
                list4 = null;
                str2 = null;
                i2 = -1;
                if (this.zzN != null) {
                }
                str3 = str6;
                int i822222222222222222222222222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                zzabVar = new zzab();
                if (!zzbg.zzg(str3)) {
                }
                str4 = this.zza;
                if (str4 != null) {
                }
                zzabVar.zzK(i);
                zzabVar.zzZ(str3);
                zzabVar.zzQ(i2);
                zzabVar.zzP(this.f4176b);
                zzabVar.zzab(i822222222222222222222222222222);
                zzabVar.zzM(list4);
                zzabVar.zzA(str2);
                zzabVar.zzF(this.zzk);
                zzad zzaf22222222222222222222222222222 = zzabVar.zzaf();
                zzadx zzw22222222222222222222222222222 = zzacuVar.zzw(this.zzc, i6);
                this.zzW = zzw22222222222222222222222222222;
                zzw22222222222222222222222222222.zzl(zzaf22222222222222222222222222222);
                return;
            case 27:
                str6 = "application/x-subrip";
                list2 = null;
                str2 = null;
                i2 = -1;
                list3 = list2;
                i5 = -1;
                list4 = list3;
                if (this.zzN != null) {
                }
                str3 = str6;
                int i8222222222222222222222222222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                zzabVar = new zzab();
                if (!zzbg.zzg(str3)) {
                }
                str4 = this.zza;
                if (str4 != null) {
                }
                zzabVar.zzK(i);
                zzabVar.zzZ(str3);
                zzabVar.zzQ(i2);
                zzabVar.zzP(this.f4176b);
                zzabVar.zzab(i8222222222222222222222222222222);
                zzabVar.zzM(list4);
                zzabVar.zzA(str2);
                zzabVar.zzF(this.zzk);
                zzad zzaf222222222222222222222222222222 = zzabVar.zzaf();
                zzadx zzw222222222222222222222222222222 = zzacuVar.zzw(this.zzc, i6);
                this.zzW = zzw222222222222222222222222222222;
                zzw222222222222222222222222222222.zzl(zzaf222222222222222222222222222222);
                return;
            case 28:
                str6 = "text/x-ssa";
                list5 = zzfzo.zzp(zzahq.f4182f, c(this.zzb));
                str2 = null;
                list2 = list5;
                i2 = -1;
                list3 = list2;
                i5 = -1;
                list4 = list3;
                if (this.zzN != null) {
                }
                str3 = str6;
                int i82222222222222222222222222222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                zzabVar = new zzab();
                if (!zzbg.zzg(str3)) {
                }
                str4 = this.zza;
                if (str4 != null) {
                }
                zzabVar.zzK(i);
                zzabVar.zzZ(str3);
                zzabVar.zzQ(i2);
                zzabVar.zzP(this.f4176b);
                zzabVar.zzab(i82222222222222222222222222222222);
                zzabVar.zzM(list4);
                zzabVar.zzA(str2);
                zzabVar.zzF(this.zzk);
                zzad zzaf2222222222222222222222222222222 = zzabVar.zzaf();
                zzadx zzw2222222222222222222222222222222 = zzacuVar.zzw(this.zzc, i6);
                this.zzW = zzw2222222222222222222222222222222;
                zzw2222222222222222222222222222222.zzl(zzaf2222222222222222222222222222222);
                return;
            case 29:
                str6 = "text/vtt";
                list2 = null;
                str2 = null;
                i2 = -1;
                list3 = list2;
                i5 = -1;
                list4 = list3;
                if (this.zzN != null) {
                }
                str3 = str6;
                int i822222222222222222222222222222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                zzabVar = new zzab();
                if (!zzbg.zzg(str3)) {
                }
                str4 = this.zza;
                if (str4 != null) {
                }
                zzabVar.zzK(i);
                zzabVar.zzZ(str3);
                zzabVar.zzQ(i2);
                zzabVar.zzP(this.f4176b);
                zzabVar.zzab(i822222222222222222222222222222222);
                zzabVar.zzM(list4);
                zzabVar.zzA(str2);
                zzabVar.zzF(this.zzk);
                zzad zzaf22222222222222222222222222222222 = zzabVar.zzaf();
                zzadx zzw22222222222222222222222222222222 = zzacuVar.zzw(this.zzc, i6);
                this.zzW = zzw22222222222222222222222222222222;
                zzw22222222222222222222222222222222.zzl(zzaf22222222222222222222222222222222);
                return;
            case 30:
                str6 = "application/vobsub";
                list5 = zzfzo.zzo(c(str5));
                str2 = null;
                list2 = list5;
                i2 = -1;
                list3 = list2;
                i5 = -1;
                list4 = list3;
                if (this.zzN != null) {
                }
                str3 = str6;
                int i8222222222222222222222222222222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                zzabVar = new zzab();
                if (!zzbg.zzg(str3)) {
                }
                str4 = this.zza;
                if (str4 != null) {
                }
                zzabVar.zzK(i);
                zzabVar.zzZ(str3);
                zzabVar.zzQ(i2);
                zzabVar.zzP(this.f4176b);
                zzabVar.zzab(i8222222222222222222222222222222222);
                zzabVar.zzM(list4);
                zzabVar.zzA(str2);
                zzabVar.zzF(this.zzk);
                zzad zzaf222222222222222222222222222222222 = zzabVar.zzaf();
                zzadx zzw222222222222222222222222222222222 = zzacuVar.zzw(this.zzc, i6);
                this.zzW = zzw222222222222222222222222222222222;
                zzw222222222222222222222222222222222.zzl(zzaf222222222222222222222222222222222);
                return;
            case 31:
                str6 = "application/pgs";
                list2 = null;
                str2 = null;
                i2 = -1;
                list3 = list2;
                i5 = -1;
                list4 = list3;
                if (this.zzN != null) {
                }
                str3 = str6;
                int i82222222222222222222222222222222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                zzabVar = new zzab();
                if (!zzbg.zzg(str3)) {
                }
                str4 = this.zza;
                if (str4 != null) {
                }
                zzabVar.zzK(i);
                zzabVar.zzZ(str3);
                zzabVar.zzQ(i2);
                zzabVar.zzP(this.f4176b);
                zzabVar.zzab(i82222222222222222222222222222222222);
                zzabVar.zzM(list4);
                zzabVar.zzA(str2);
                zzabVar.zzF(this.zzk);
                zzad zzaf2222222222222222222222222222222222 = zzabVar.zzaf();
                zzadx zzw2222222222222222222222222222222222 = zzacuVar.zzw(this.zzc, i6);
                this.zzW = zzw2222222222222222222222222222222222;
                zzw2222222222222222222222222222222222.zzl(zzaf2222222222222222222222222222222222);
                return;
            case ' ':
                byte[] bArr5 = new byte[4];
                System.arraycopy(c(str5), 0, bArr5, 0, 4);
                str6 = "application/dvbsubs";
                list5 = zzfzo.zzo(bArr5);
                str2 = null;
                list2 = list5;
                i2 = -1;
                list3 = list2;
                i5 = -1;
                list4 = list3;
                if (this.zzN != null) {
                }
                str3 = str6;
                int i822222222222222222222222222222222222 = (this.zzV ? 1 : 0) | (true == this.zzU ? 0 : 2);
                zzabVar = new zzab();
                if (!zzbg.zzg(str3)) {
                }
                str4 = this.zza;
                if (str4 != null) {
                }
                zzabVar.zzK(i);
                zzabVar.zzZ(str3);
                zzabVar.zzQ(i2);
                zzabVar.zzP(this.f4176b);
                zzabVar.zzab(i822222222222222222222222222222222222);
                zzabVar.zzM(list4);
                zzabVar.zzA(str2);
                zzabVar.zzF(this.zzk);
                zzad zzaf22222222222222222222222222222222222 = zzabVar.zzaf();
                zzadx zzw22222222222222222222222222222222222 = zzacuVar.zzw(this.zzc, i6);
                this.zzW = zzw22222222222222222222222222222222222;
                zzw22222222222222222222222222222222222.zzl(zzaf22222222222222222222222222222222222);
                return;
            default:
                throw zzbh.zza("Unrecognized codec identifier.", null);
        }
    }
}
