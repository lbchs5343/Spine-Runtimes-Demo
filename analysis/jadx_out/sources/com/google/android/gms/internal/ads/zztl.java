package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.media.MediaCodecInfo;
import android.util.Pair;
import g.aze;
import g.cjd;
import g.fbc;
import g.gpw;
import g.gqc;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

@SuppressLint({"InlinedApi"})
/* loaded from: classes3.dex */
public final class zztl {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f8880a = new HashMap();
    public static final /* synthetic */ int zza = 0;

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00b2, code lost:
    
        if ("SCV31".equals(r14) == false) goto L43;
     */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01b9 A[Catch: Exception -> 0x01b3, TryCatch #5 {Exception -> 0x01b3, blocks: (B:75:0x019f, B:77:0x01a9, B:116:0x01b9, B:118:0x01c9, B:120:0x01d1), top: B:74:0x019f }] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0194 A[Catch: Exception -> 0x0189, TRY_LEAVE, TryCatch #1 {Exception -> 0x0189, blocks: (B:61:0x0161, B:67:0x016c, B:71:0x017c, B:73:0x0182, B:127:0x0194), top: B:60:0x0161 }] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0182 A[Catch: Exception -> 0x0189, TryCatch #1 {Exception -> 0x0189, blocks: (B:61:0x0161, B:67:0x016c, B:71:0x017c, B:73:0x0182, B:127:0x0194), top: B:60:0x0161 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01a9 A[Catch: Exception -> 0x01b3, TryCatch #5 {Exception -> 0x01b3, blocks: (B:75:0x019f, B:77:0x01a9, B:116:0x01b9, B:118:0x01c9, B:120:0x01d1), top: B:74:0x019f }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0231 A[Catch: Exception -> 0x027e, TRY_ENTER, TryCatch #0 {Exception -> 0x027e, blocks: (B:3:0x000a, B:5:0x001e, B:7:0x0028, B:12:0x0036, B:16:0x0045, B:21:0x0058, B:23:0x0060, B:25:0x0068, B:27:0x0072, B:29:0x007c, B:31:0x0084, B:33:0x008c, B:35:0x0094, B:37:0x009c, B:39:0x00a4, B:41:0x00ac, B:45:0x00b8, B:47:0x00c0, B:49:0x00c8, B:51:0x00d0, B:87:0x022b, B:90:0x0231, B:92:0x0237, B:95:0x0251, B:96:0x0272, B:53:0x00da, B:143:0x00df, B:145:0x00e8, B:148:0x00f3, B:150:0x00fb, B:153:0x0106, B:155:0x010e, B:158:0x0119, B:160:0x0121, B:163:0x012c, B:165:0x0134, B:168:0x013f, B:170:0x0147), top: B:2:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0251 A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ArrayList b(aze azeVar, gpw gpwVar) {
        String str;
        int i;
        int i2;
        String str2;
        String str3;
        String str4;
        int i3;
        int i4;
        boolean z;
        boolean c2;
        String str5;
        boolean z2;
        boolean z3;
        boolean isVendor;
        boolean isAlias;
        aze azeVar2 = azeVar;
        boolean z4 = azeVar2.f11106b;
        String str6 = "tunneled-playback";
        try {
            ArrayList arrayList = new ArrayList();
            String str7 = azeVar2.f11105a;
            boolean mo11zze = gpwVar.mo11zze();
            int i5 = 0;
            for (int zza2 = gpwVar.zza(); i5 < zza2; zza2 = i2) {
                MediaCodecInfo zzb = gpwVar.zzb(i5);
                int i6 = zzen.zza;
                if (i6 >= 29) {
                    isAlias = zzb.isAlias();
                    if (isAlias) {
                        str = str6;
                        i2 = zza2;
                        i = i5;
                        i5 = i + 1;
                        azeVar2 = azeVar;
                        str6 = str;
                    }
                }
                int i7 = zza2;
                String name = zzb.getName();
                if (!zzb.isEncoder()) {
                    if (!mo11zze) {
                        if (!name.endsWith(".secure")) {
                        }
                    }
                    if (i6 < 24 && (("OMX.SEC.aac.dec".equals(name) || "OMX.Exynos.AAC.Decoder".equals(name)) && "samsung".equals(zzen.zzc))) {
                        String str8 = zzen.zzb;
                        if (!str8.startsWith("zeroflte")) {
                            if (!str8.startsWith("zerolte")) {
                                if (!str8.startsWith("zenlte")) {
                                    if (!"SC-05G".equals(str8)) {
                                        if (!"marinelteatt".equals(str8)) {
                                            if (!"404SC".equals(str8)) {
                                                if (!"SC-04G".equals(str8)) {
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    if (i6 > 23 || !"audio/eac3-joc".equals(str7) || !"OMX.MTK.AUDIO.DECODER.DSPAC3".equals(name)) {
                        String[] supportedTypes = zzb.getSupportedTypes();
                        int length = supportedTypes.length;
                        int i8 = 0;
                        while (true) {
                            if (i8 < length) {
                                str2 = supportedTypes[i8];
                                if (str2.equalsIgnoreCase(str7)) {
                                    break;
                                }
                                i8++;
                            } else {
                                str2 = null;
                                if (str7.equals("video/dolby-vision")) {
                                    if ("OMX.MS.HEVCDV.Decoder".equals(name)) {
                                        str2 = "video/hevcdv";
                                    } else if ("OMX.RTK.video.decoder".equals(name) || "OMX.realtek.video.decoder.tunneled".equals(name)) {
                                        str2 = "video/dv_hevc";
                                    }
                                } else if (str7.equals("video/mv-hevc")) {
                                    if ("c2.qti.mvhevc.decoder".equals(name)) {
                                        str2 = "video/x-mvhevc";
                                    }
                                } else if (str7.equals("audio/alac") && "OMX.lge.alac.decoder".equals(name)) {
                                    str2 = "audio/x-lg-alac";
                                } else if (str7.equals("audio/flac") && "OMX.lge.flac.decoder".equals(name)) {
                                    str2 = "audio/x-lg-flac";
                                } else if (str7.equals("audio/ac3") && "OMX.lge.ac3.decoder".equals(name)) {
                                    str2 = "audio/lg-ac3";
                                }
                            }
                        }
                        if (str2 != null) {
                            try {
                                MediaCodecInfo.CodecCapabilities capabilitiesForType = zzb.getCapabilitiesForType(str2);
                                boolean u = gpwVar.u(str6, str2, capabilitiesForType);
                                boolean w = gpwVar.w(str6, capabilitiesForType);
                                str = str6;
                                try {
                                    if (azeVar2.f11107c) {
                                        if (!u) {
                                            i = i5;
                                            i2 = i7;
                                        }
                                        boolean u2 = gpwVar.u("secure-playback", str2, capabilitiesForType);
                                        boolean w2 = gpwVar.w("secure-playback", capabilitiesForType);
                                        if (!z4) {
                                        }
                                    } else {
                                        if (!w) {
                                            boolean u22 = gpwVar.u("secure-playback", str2, capabilitiesForType);
                                            boolean w22 = gpwVar.w("secure-playback", capabilitiesForType);
                                            if (!z4) {
                                                if (u22) {
                                                    u22 = true;
                                                    i4 = zzen.zza;
                                                    if (i4 < 29) {
                                                    }
                                                    c2 = c(zzb, str7);
                                                    if (i4 < 29) {
                                                    }
                                                    if (mo11zze) {
                                                    }
                                                    i = i5;
                                                    str4 = str2;
                                                    z3 = z;
                                                    if (!mo11zze) {
                                                        str3 = name;
                                                        i3 = 23;
                                                        arrayList.add(zzsq.zzc(name + str5, str7, str4, capabilitiesForType, z3, c2, z2, false, true));
                                                        break;
                                                        break;
                                                    }
                                                    continue;
                                                }
                                            } else if (!w22) {
                                                i4 = zzen.zza;
                                                if (i4 < 29) {
                                                    z = zzb.isHardwareAccelerated();
                                                    i2 = i7;
                                                } else {
                                                    i2 = i7;
                                                    z = !c(zzb, str7);
                                                }
                                                try {
                                                    c2 = c(zzb, str7);
                                                    if (i4 < 29) {
                                                        isVendor = zzb.isVendor();
                                                        z2 = isVendor;
                                                        str5 = ".secure";
                                                    } else {
                                                        String zza3 = zzfwa.zza(zzb.getName());
                                                        if (zza3.startsWith("omx.google.") || zza3.startsWith("c2.android.") || zza3.startsWith("c2.google.")) {
                                                            str5 = ".secure";
                                                            z2 = false;
                                                        } else {
                                                            str5 = ".secure";
                                                            z2 = true;
                                                        }
                                                    }
                                                    if ((mo11zze || z4 != u22) && (mo11zze || z4)) {
                                                        i = i5;
                                                        str4 = str2;
                                                        z3 = z;
                                                        if (!mo11zze && u22) {
                                                            str3 = name;
                                                            i3 = 23;
                                                            try {
                                                                arrayList.add(zzsq.zzc(name + str5, str7, str4, capabilitiesForType, z3, c2, z2, false, true));
                                                                break;
                                                            } catch (Exception e2) {
                                                                e = e2;
                                                                if (zzen.zza > i3) {
                                                                }
                                                                zzdt.zzc("MediaCodecUtil", "Failed to query codec " + str3 + " (" + str4 + ")");
                                                                throw e;
                                                            }
                                                        }
                                                    } else {
                                                        int i9 = i5;
                                                        str4 = str2;
                                                        i = i9;
                                                        try {
                                                            arrayList.add(zzsq.zzc(name, str7, str4, capabilitiesForType, z, c2, z2, false, false));
                                                        } catch (Exception e3) {
                                                            e = e3;
                                                            str3 = name;
                                                            i3 = 23;
                                                            if (zzen.zza > i3) {
                                                            }
                                                            zzdt.zzc("MediaCodecUtil", "Failed to query codec " + str3 + " (" + str4 + ")");
                                                            throw e;
                                                        }
                                                    }
                                                } catch (Exception e4) {
                                                    e = e4;
                                                    str3 = name;
                                                    i = i5;
                                                    str4 = str2;
                                                }
                                            }
                                        }
                                        i = i5;
                                        i2 = i7;
                                    }
                                } catch (Exception e5) {
                                    e = e5;
                                    str3 = name;
                                    i = i5;
                                    str4 = str2;
                                    i2 = i7;
                                    i3 = 23;
                                    if (zzen.zza > i3 || arrayList.isEmpty()) {
                                        zzdt.zzc("MediaCodecUtil", "Failed to query codec " + str3 + " (" + str4 + ")");
                                        throw e;
                                    }
                                    zzdt.zzc("MediaCodecUtil", "Skipping codec " + str3 + " (failed to query capabilities)");
                                    i5 = i + 1;
                                    azeVar2 = azeVar;
                                    str6 = str;
                                }
                            } catch (Exception e6) {
                                e = e6;
                                str = str6;
                            }
                            i5 = i + 1;
                            azeVar2 = azeVar;
                            str6 = str;
                        }
                    }
                }
                str = str6;
                i = i5;
                i2 = i7;
                i5 = i + 1;
                azeVar2 = azeVar;
                str6 = str;
            }
            return arrayList;
        } catch (Exception e7) {
            throw new zztf("Failed to query underlying media codecs", e7);
        }
    }

    public static boolean c(MediaCodecInfo mediaCodecInfo, String str) {
        boolean isSoftwareOnly;
        if (zzen.zza >= 29) {
            isSoftwareOnly = mediaCodecInfo.isSoftwareOnly();
            return isSoftwareOnly;
        }
        if (zzbg.zzg(str)) {
            return true;
        }
        String zza2 = zzfwa.zza(mediaCodecInfo.getName());
        if (zza2.startsWith("arc.")) {
            return false;
        }
        if (zza2.startsWith("omx.google.") || zza2.startsWith("omx.ffmpeg.")) {
            return true;
        }
        if ((zza2.startsWith("omx.sec.") && zza2.contains(".sw.")) || zza2.equals("omx.qcom.video.decoder.hevcswvdec") || zza2.startsWith("c2.android.") || zza2.startsWith("c2.google.")) {
            return true;
        }
        return (zza2.startsWith("omx.") || zza2.startsWith("c2.")) ? false : true;
    }

    public static zzsq zza() throws zztf {
        List zzd = zzd("audio/raw", false, false);
        if (zzd.isEmpty()) {
            return null;
        }
        return (zzsq) zzd.get(0);
    }

    public static String zzb(zzad zzadVar) {
        Pair zza2;
        if ("audio/eac3-joc".equals(zzadVar.zzo)) {
            return "audio/eac3";
        }
        if ("video/dolby-vision".equals(zzadVar.zzo) && (zza2 = zzdd.zza(zzadVar)) != null) {
            int intValue = ((Integer) zza2.first).intValue();
            if (intValue == 16 || intValue == 256) {
                return "video/hevc";
            }
            if (intValue == 512) {
                return "video/avc";
            }
            if (intValue == 1024) {
                return "video/av01";
            }
        }
        if ("video/mv-hevc".equals(zzadVar.zzo)) {
            return "video/hevc";
        }
        return null;
    }

    public static List zzc(zzta zztaVar, zzad zzadVar, boolean z, boolean z2) throws zztf {
        String zzb = zzb(zzadVar);
        return zzb == null ? zzfzo.zzn() : zztaVar.zza(zzb, z, z2);
    }

    public static synchronized List zzd(String str, boolean z, boolean z2) throws zztf {
        synchronized (zztl.class) {
            try {
                aze azeVar = new aze(str, z, z2);
                HashMap hashMap = f8880a;
                List list = (List) hashMap.get(azeVar);
                if (list != null) {
                    return list;
                }
                ArrayList b2 = b(azeVar, new gqc(z, z2));
                if (z && b2.isEmpty() && zzen.zza <= 23) {
                    b2 = b(azeVar, new fbc(26));
                    if (!b2.isEmpty()) {
                        zzdt.zzf("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + ((zzsq) b2.get(0)).zza);
                    }
                }
                if ("audio/raw".equals(str)) {
                    if (zzen.zza < 26 && zzen.zzb.equals("R9") && b2.size() == 1 && ((zzsq) b2.get(0)).zza.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                        b2.add(zzsq.zzc("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false, false));
                    }
                    Collections.sort(b2, new zztb(new cjd() { // from class: com.google.android.gms.internal.ads.zztc
                        @Override // g.cjd
                        public final int zza(Object obj) {
                            HashMap hashMap2 = zztl.f8880a;
                            String str2 = ((zzsq) obj).zza;
                            if (str2.startsWith("OMX.google") || str2.startsWith("c2.android")) {
                                return 1;
                            }
                            return (zzen.zza >= 26 || !str2.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
                        }
                    }));
                }
                if (zzen.zza < 32 && b2.size() > 1 && "OMX.qti.audio.decoder.flac".equals(((zzsq) b2.get(0)).zza)) {
                    b2.add((zzsq) b2.remove(0));
                }
                zzfzo zzl = zzfzo.zzl(b2);
                hashMap.put(azeVar, zzl);
                return zzl;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static List zze(zzta zztaVar, zzad zzadVar, boolean z, boolean z2) throws zztf {
        List zza2 = zztaVar.zza(zzadVar.zzo, z, z2);
        List zzc = zzc(zztaVar, zzadVar, z, z2);
        zzfzl zzfzlVar = new zzfzl();
        zzfzlVar.zzh(zza2);
        zzfzlVar.zzh(zzc);
        return zzfzlVar.zzi();
    }

    public static List zzf(List list, final zzad zzadVar) {
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList, new zztb(new cjd() { // from class: com.google.android.gms.internal.ads.zztd
            @Override // g.cjd
            public final int zza(Object obj) {
                HashMap hashMap = zztl.f8880a;
                return ((zzsq) obj).zzd(zzad.this) ? 1 : 0;
            }
        }));
        return arrayList;
    }
}
