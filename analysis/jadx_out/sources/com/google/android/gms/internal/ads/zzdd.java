package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.util.Pair;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.dub;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@SuppressLint({"InlinedApi"})
/* loaded from: classes3.dex */
public final class zzdd {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f5884a = {0, 0, 0, 1};

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f5885b = {"", "A", "B", "C"};

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f5886c = Pattern.compile("^\\D?(\\d+)$");
    public static final /* synthetic */ int zza = 0;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0144, code lost:
    
        if (r0.equals("11") != false) goto L104;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x01b8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Pair zza(zzad zzadVar) {
        char c2;
        int parseInt;
        int parseInt2;
        int i;
        int i2;
        Integer num;
        Integer num2 = 1024;
        Integer valueOf = Integer.valueOf(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
        int i3 = 4;
        int i4 = 2;
        String str = zzadVar.zzk;
        if (str == null) {
            return null;
        }
        String[] split = str.split("\\.");
        if (!"video/dolby-vision".equals(zzadVar.zzo)) {
            String str2 = split[0];
            switch (str2.hashCode()) {
                case 3004662:
                    if (str2.equals("av01")) {
                        c2 = 5;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3006243:
                    if (str2.equals("avc1")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3006244:
                    if (str2.equals("avc2")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3199032:
                    if (str2.equals("hev1")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3214780:
                    if (str2.equals("hvc1")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3356560:
                    if (str2.equals("mp4a")) {
                        c2 = 6;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3624515:
                    if (str2.equals("vp09")) {
                        c2 = 2;
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
                    String str3 = zzadVar.zzk;
                    int length = split.length;
                    if (length < 2) {
                        dub.a(str3, "Ignoring malformed AVC codec string: ", "CodecSpecificDataUtil");
                        return null;
                    }
                    try {
                        if (split[1].length() == 6) {
                            parseInt = Integer.parseInt(split[1].substring(0, 2), 16);
                            parseInt2 = Integer.parseInt(split[1].substring(4), 16);
                        } else {
                            if (length < 3) {
                                zzdt.zzf("CodecSpecificDataUtil", "Ignoring malformed AVC codec string: " + str3);
                                return null;
                            }
                            parseInt = Integer.parseInt(split[1]);
                            parseInt2 = Integer.parseInt(split[2]);
                        }
                        if (parseInt == 66) {
                            i4 = 1;
                        } else if (parseInt != 77) {
                            i4 = parseInt != 88 ? parseInt != 100 ? parseInt != 110 ? parseInt != 122 ? parseInt != 244 ? -1 : 64 : 32 : 16 : 8 : 4;
                        }
                        if (i4 == -1) {
                            dub.g(parseInt, "Unknown AVC profile: ", "CodecSpecificDataUtil");
                            return null;
                        }
                        switch (parseInt2) {
                            case 10:
                                i3 = 1;
                                break;
                            case 11:
                                break;
                            case 12:
                                i3 = 8;
                                break;
                            case 13:
                                i3 = 16;
                                break;
                            default:
                                switch (parseInt2) {
                                    case 20:
                                        i3 = 32;
                                        break;
                                    case 21:
                                        i3 = 64;
                                        break;
                                    case 22:
                                        i3 = TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
                                        break;
                                    default:
                                        switch (parseInt2) {
                                            case 30:
                                                i3 = 256;
                                                break;
                                            case 31:
                                                i3 = 512;
                                                break;
                                            case 32:
                                                i3 = 1024;
                                                break;
                                            default:
                                                switch (parseInt2) {
                                                    case 40:
                                                        i3 = 2048;
                                                        break;
                                                    case 41:
                                                        i3 = 4096;
                                                        break;
                                                    case 42:
                                                        i3 = 8192;
                                                        break;
                                                    default:
                                                        switch (parseInt2) {
                                                            case 50:
                                                                i3 = 16384;
                                                                break;
                                                            case 51:
                                                                i3 = 32768;
                                                                break;
                                                            case 52:
                                                                i3 = 65536;
                                                                break;
                                                            default:
                                                                i3 = -1;
                                                                break;
                                                        }
                                                }
                                        }
                                }
                        }
                        if (i3 != -1) {
                            return new Pair(Integer.valueOf(i4), Integer.valueOf(i3));
                        }
                        dub.g(parseInt2, "Unknown AVC level: ", "CodecSpecificDataUtil");
                        return null;
                    } catch (NumberFormatException unused) {
                        dub.a(str3, "Ignoring malformed AVC codec string: ", "CodecSpecificDataUtil");
                        return null;
                    }
                case 2:
                    String str4 = zzadVar.zzk;
                    if (split.length < 3) {
                        dub.a(str4, "Ignoring malformed VP9 codec string: ", "CodecSpecificDataUtil");
                        return null;
                    }
                    try {
                        int parseInt3 = Integer.parseInt(split[1]);
                        int parseInt4 = Integer.parseInt(split[2]);
                        int i5 = parseInt3 != 0 ? parseInt3 != 1 ? parseInt3 != 2 ? parseInt3 != 3 ? -1 : 8 : 4 : 2 : 1;
                        if (i5 == -1) {
                            dub.g(parseInt3, "Unknown VP9 profile: ", "CodecSpecificDataUtil");
                            return null;
                        }
                        if (parseInt4 == 10) {
                            i4 = 1;
                        } else if (parseInt4 != 11) {
                            if (parseInt4 == 20) {
                                i4 = 4;
                            } else if (parseInt4 == 21) {
                                i4 = 8;
                            } else if (parseInt4 == 30) {
                                i4 = 16;
                            } else if (parseInt4 == 31) {
                                i4 = 32;
                            } else if (parseInt4 == 40) {
                                i4 = 64;
                            } else if (parseInt4 == 41) {
                                i4 = TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
                            } else if (parseInt4 == 50) {
                                i4 = 256;
                            } else if (parseInt4 != 51) {
                                switch (parseInt4) {
                                    case 60:
                                        i4 = 2048;
                                        break;
                                    case 61:
                                        i4 = 4096;
                                        break;
                                    case 62:
                                        i4 = 8192;
                                        break;
                                    default:
                                        i4 = -1;
                                        break;
                                }
                            } else {
                                i4 = 512;
                            }
                        }
                        if (i4 != -1) {
                            return new Pair(Integer.valueOf(i5), Integer.valueOf(i4));
                        }
                        dub.g(parseInt4, "Unknown VP9 level: ", "CodecSpecificDataUtil");
                        return null;
                    } catch (NumberFormatException unused2) {
                        dub.a(str4, "Ignoring malformed VP9 codec string: ", "CodecSpecificDataUtil");
                        return null;
                    }
                case 3:
                case 4:
                    return zzb(zzadVar.zzk, split, zzadVar.zzB);
                case 5:
                    String str5 = zzadVar.zzk;
                    zzm zzmVar = zzadVar.zzB;
                    if (split.length < 4) {
                        dub.a(str5, "Ignoring malformed AV1 codec string: ", "CodecSpecificDataUtil");
                        return null;
                    }
                    try {
                        int parseInt5 = Integer.parseInt(split[1]);
                        int parseInt6 = Integer.parseInt(split[2].substring(0, 2));
                        int parseInt7 = Integer.parseInt(split[3]);
                        if (parseInt5 != 0) {
                            dub.g(parseInt5, "Unknown AV1 profile: ", "CodecSpecificDataUtil");
                            return null;
                        }
                        if (parseInt7 == 8) {
                            i = 1;
                        } else {
                            if (parseInt7 != 10) {
                                dub.g(parseInt7, "Unknown AV1 bit depth: ", "CodecSpecificDataUtil");
                                return null;
                            }
                            i = (zzmVar == null || !(zzmVar.zze != null || (i2 = zzmVar.zzd) == 7 || i2 == 6)) ? 2 : 4096;
                        }
                        switch (parseInt6) {
                            case 0:
                                i3 = 1;
                                break;
                            case 1:
                                i3 = 2;
                                break;
                            case 2:
                                break;
                            case 3:
                                i3 = 8;
                                break;
                            case 4:
                                i3 = 16;
                                break;
                            case 5:
                                i3 = 32;
                                break;
                            case 6:
                                i3 = 64;
                                break;
                            case 7:
                                i3 = TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
                                break;
                            case 8:
                                i3 = 256;
                                break;
                            case 9:
                                i3 = 512;
                                break;
                            case 10:
                                i3 = 1024;
                                break;
                            case 11:
                                i3 = 2048;
                                break;
                            case 12:
                                i3 = 4096;
                                break;
                            case 13:
                                i3 = 8192;
                                break;
                            case 14:
                                i3 = 16384;
                                break;
                            case 15:
                                i3 = 32768;
                                break;
                            case 16:
                                i3 = 65536;
                                break;
                            case 17:
                                i3 = 131072;
                                break;
                            case 18:
                                i3 = 262144;
                                break;
                            case 19:
                                i3 = 524288;
                                break;
                            case 20:
                                i3 = 1048576;
                                break;
                            case 21:
                                i3 = 2097152;
                                break;
                            case 22:
                                i3 = 4194304;
                                break;
                            case 23:
                                i3 = 8388608;
                                break;
                            default:
                                i3 = -1;
                                break;
                        }
                        if (i3 != -1) {
                            return new Pair(Integer.valueOf(i), Integer.valueOf(i3));
                        }
                        dub.g(parseInt6, "Unknown AV1 level: ", "CodecSpecificDataUtil");
                        return null;
                    } catch (NumberFormatException unused3) {
                        dub.a(str5, "Ignoring malformed AV1 codec string: ", "CodecSpecificDataUtil");
                        return null;
                    }
                case 6:
                    String str6 = zzadVar.zzk;
                    if (split.length != 3) {
                        dub.a(str6, "Ignoring malformed MP4A codec string: ", "CodecSpecificDataUtil");
                        return null;
                    }
                    try {
                        if ("audio/mp4a-latm".equals(zzbg.zzd(Integer.parseInt(split[1], 16)))) {
                            int parseInt8 = Integer.parseInt(split[2]);
                            if (parseInt8 == 17) {
                                i3 = 17;
                            } else if (parseInt8 == 20) {
                                i3 = 20;
                            } else if (parseInt8 == 23) {
                                i3 = 23;
                            } else if (parseInt8 == 29) {
                                i3 = 29;
                            } else if (parseInt8 == 39) {
                                i3 = 39;
                            } else if (parseInt8 != 42) {
                                switch (parseInt8) {
                                    case 1:
                                        i3 = 1;
                                        break;
                                    case 2:
                                        i3 = 2;
                                        break;
                                    case 3:
                                        i3 = 3;
                                        break;
                                    case 4:
                                        break;
                                    case 5:
                                        i3 = 5;
                                        break;
                                    case 6:
                                        i3 = 6;
                                        break;
                                    default:
                                        i3 = -1;
                                        break;
                                }
                            } else {
                                i3 = 42;
                            }
                            if (i3 != -1) {
                                return new Pair(Integer.valueOf(i3), 0);
                            }
                        }
                        return null;
                    } catch (NumberFormatException unused4) {
                        dub.a(str6, "Ignoring malformed MP4A codec string: ", "CodecSpecificDataUtil");
                        return null;
                    }
                default:
                    return null;
            }
        }
        String str7 = zzadVar.zzk;
        if (split.length < 3) {
            dub.a(str7, "Ignoring malformed Dolby Vision codec string: ", "CodecSpecificDataUtil");
            return null;
        }
        Matcher matcher = f5886c.matcher(split[1]);
        if (!matcher.matches()) {
            dub.a(str7, "Ignoring malformed Dolby Vision codec string: ", "CodecSpecificDataUtil");
            return null;
        }
        String group = matcher.group(1);
        if (group != null) {
            int hashCode = group.hashCode();
            if (hashCode != 1567) {
                switch (hashCode) {
                    case 1536:
                        if (group.equals("00")) {
                            num = 1;
                            break;
                        }
                        break;
                    case 1537:
                        if (group.equals("01")) {
                            num = 2;
                            break;
                        }
                        break;
                    case 1538:
                        if (group.equals("02")) {
                            num = 4;
                            break;
                        }
                        break;
                    case 1539:
                        if (group.equals("03")) {
                            num = 8;
                            break;
                        }
                        break;
                    case 1540:
                        if (group.equals("04")) {
                            num = 16;
                            break;
                        }
                        break;
                    case 1541:
                        if (group.equals("05")) {
                            num = 32;
                            break;
                        }
                        break;
                    case 1542:
                        if (group.equals("06")) {
                            num = 64;
                            break;
                        }
                        break;
                    case 1543:
                        if (group.equals("07")) {
                            num = valueOf;
                            break;
                        }
                        break;
                    case 1544:
                        if (group.equals("08")) {
                            num = 256;
                            break;
                        }
                        break;
                    case 1545:
                        if (group.equals("09")) {
                            num = 512;
                            break;
                        }
                        break;
                }
                if (num == null) {
                    dub.a(group, "Unknown Dolby Vision profile string: ", "CodecSpecificDataUtil");
                    return null;
                }
                String str8 = split[2];
                if (str8 != null) {
                    int hashCode2 = str8.hashCode();
                    switch (hashCode2) {
                        case 1537:
                            if (str8.equals("01")) {
                                num2 = 1;
                                break;
                            }
                            break;
                        case 1538:
                            if (str8.equals("02")) {
                                num2 = 2;
                                break;
                            }
                            break;
                        case 1539:
                            if (str8.equals("03")) {
                                num2 = 4;
                                break;
                            }
                            break;
                        case 1540:
                            if (str8.equals("04")) {
                                num2 = 8;
                                break;
                            }
                            break;
                        case 1541:
                            if (str8.equals("05")) {
                                num2 = 16;
                                break;
                            }
                            break;
                        case 1542:
                            if (str8.equals("06")) {
                                num2 = 32;
                                break;
                            }
                            break;
                        case 1543:
                            if (str8.equals("07")) {
                                num2 = 64;
                                break;
                            }
                            break;
                        case 1544:
                            if (str8.equals("08")) {
                                num2 = valueOf;
                                break;
                            }
                            break;
                        case 1545:
                            if (str8.equals("09")) {
                                num2 = 256;
                                break;
                            }
                            break;
                        default:
                            switch (hashCode2) {
                                case 1567:
                                    if (str8.equals("10")) {
                                        num2 = 512;
                                        break;
                                    }
                                    break;
                                case 1569:
                                    if (str8.equals("12")) {
                                        num2 = 2048;
                                        break;
                                    }
                                    break;
                                case 1570:
                                    if (str8.equals("13")) {
                                        num2 = 4096;
                                        break;
                                    }
                                    break;
                            }
                    }
                    if (num2 == null) {
                        return new Pair(num, num2);
                    }
                    dub.a(str8, "Unknown Dolby Vision level string: ", "CodecSpecificDataUtil");
                    return null;
                }
                num2 = null;
                if (num2 == null) {
                }
            } else if (group.equals("10")) {
                num = num2;
                if (num == null) {
                }
            }
        }
        num = null;
        if (num == null) {
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00b0, code lost:
    
        if (r11.equals("L123") != false) goto L108;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x024a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Pair zzb(String str, String[] strArr, zzm zzmVar) {
        int i;
        Integer num;
        if (strArr.length < 4) {
            dub.a(str, "Ignoring malformed HEVC codec string: ", "CodecSpecificDataUtil");
            return null;
        }
        Matcher matcher = f5886c.matcher(strArr[1]);
        if (!matcher.matches()) {
            dub.a(str, "Ignoring malformed HEVC codec string: ", "CodecSpecificDataUtil");
            return null;
        }
        String group = matcher.group(1);
        char c2 = 6;
        if ("1".equals(group)) {
            i = 1;
        } else if ("2".equals(group)) {
            i = (zzmVar == null || zzmVar.zzd != 6) ? 2 : 4096;
        } else {
            if (!"6".equals(group)) {
                dub.a(group, "Unknown HEVC profile string: ", "CodecSpecificDataUtil");
                return null;
            }
            i = 6;
        }
        String str2 = strArr[3];
        if (str2 != null) {
            switch (str2.hashCode()) {
                case 70821:
                    if (str2.equals("H30")) {
                        c2 = '\r';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 70914:
                    if (str2.equals("H60")) {
                        c2 = 14;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 70917:
                    if (str2.equals("H63")) {
                        c2 = 15;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 71007:
                    if (str2.equals("H90")) {
                        c2 = 16;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 71010:
                    if (str2.equals("H93")) {
                        c2 = 17;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 74665:
                    if (str2.equals("L30")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 74758:
                    if (str2.equals("L60")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 74761:
                    if (str2.equals("L63")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 74851:
                    if (str2.equals("L90")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 74854:
                    if (str2.equals("L93")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2193639:
                    if (str2.equals("H120")) {
                        c2 = 18;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2193642:
                    if (str2.equals("H123")) {
                        c2 = 19;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2193732:
                    if (str2.equals("H150")) {
                        c2 = 20;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2193735:
                    if (str2.equals("H153")) {
                        c2 = 21;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2193738:
                    if (str2.equals("H156")) {
                        c2 = 22;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2193825:
                    if (str2.equals("H180")) {
                        c2 = 23;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2193828:
                    if (str2.equals("H183")) {
                        c2 = 24;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2193831:
                    if (str2.equals("H186")) {
                        c2 = 25;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2312803:
                    if (str2.equals("L120")) {
                        c2 = 5;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2312806:
                    break;
                case 2312896:
                    if (str2.equals("L150")) {
                        c2 = 7;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2312899:
                    if (str2.equals("L153")) {
                        c2 = '\b';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2312902:
                    if (str2.equals("L156")) {
                        c2 = '\t';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2312989:
                    if (str2.equals("L180")) {
                        c2 = '\n';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2312992:
                    if (str2.equals("L183")) {
                        c2 = 11;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2312995:
                    if (str2.equals("L186")) {
                        c2 = '\f';
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
                    num = 1;
                    break;
                case 1:
                    num = 4;
                    break;
                case 2:
                    num = 16;
                    break;
                case 3:
                    num = 64;
                    break;
                case 4:
                    num = 256;
                    break;
                case 5:
                    num = 1024;
                    break;
                case 6:
                    num = 4096;
                    break;
                case 7:
                    num = 16384;
                    break;
                case '\b':
                    num = 65536;
                    break;
                case '\t':
                    num = 262144;
                    break;
                case '\n':
                    num = 1048576;
                    break;
                case 11:
                    num = 4194304;
                    break;
                case '\f':
                    num = 16777216;
                    break;
                case '\r':
                    num = 2;
                    break;
                case 14:
                    num = 8;
                    break;
                case 15:
                    num = 32;
                    break;
                case 16:
                    num = Integer.valueOf(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                    break;
                case 17:
                    num = 512;
                    break;
                case 18:
                    num = 2048;
                    break;
                case 19:
                    num = 8192;
                    break;
                case 20:
                    num = 32768;
                    break;
                case 21:
                    num = 131072;
                    break;
                case 22:
                    num = 524288;
                    break;
                case 23:
                    num = 2097152;
                    break;
                case 24:
                    num = 8388608;
                    break;
                case 25:
                    num = 33554432;
                    break;
            }
            if (num == null) {
                return new Pair(Integer.valueOf(i), num);
            }
            dub.a(str2, "Unknown HEVC level string: ", "CodecSpecificDataUtil");
            return null;
        }
        num = null;
        if (num == null) {
        }
    }

    public static String zzc(int i, int i2, int i3) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    public static String zzd(int i, boolean z, int i2, int i3, int[] iArr, int i4) {
        StringBuilder sb = new StringBuilder(String.format(Locale.US, "hvc1.%s%d.%X.%c%d", f5885b[i], Integer.valueOf(i2), Integer.valueOf(i3), Character.valueOf(true != z ? 'L' : 'H'), Integer.valueOf(i4)));
        int i5 = 6;
        while (i5 > 0) {
            int i6 = i5 - 1;
            if (iArr[i6] != 0) {
                break;
            }
            i5 = i6;
        }
        for (int i7 = 0; i7 < i5; i7++) {
            sb.append(String.format(".%02X", Integer.valueOf(iArr[i7])));
        }
        return sb.toString();
    }

    public static byte[] zze(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2 + 4];
        System.arraycopy(f5884a, 0, bArr2, 0, 4);
        System.arraycopy(bArr, i, bArr2, 4, i2);
        return bArr2;
    }
}
