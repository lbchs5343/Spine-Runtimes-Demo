package com.google.android.gms.internal.ads;

import android.net.Uri;
import g.akj;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzacl implements zzacw {

    /* renamed from: d, reason: collision with root package name */
    public zzfzo f4086d;

    /* renamed from: e, reason: collision with root package name */
    public final zzakb f4087e = new zzakb();

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f4085c = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14, 17, 18, 19, 20, 21};

    /* renamed from: a, reason: collision with root package name */
    public static final akj f4083a = new akj(new zzacj() { // from class: com.google.android.gms.internal.ads.zzach
        @Override // com.google.android.gms.internal.ads.zzacj
        public final Constructor zza() {
            if (Boolean.TRUE.equals(Class.forName("androidx.media3.decoder.flac.FlacLibrary").getMethod("isAvailable", null).invoke(null, null))) {
                return Class.forName("androidx.media3.decoder.flac.FlacExtractor").asSubclass(zzacr.class).getConstructor(Integer.TYPE);
            }
            return null;
        }
    });

    /* renamed from: b, reason: collision with root package name */
    public static final akj f4084b = new akj(new zzacj() { // from class: com.google.android.gms.internal.ads.zzaci
        @Override // com.google.android.gms.internal.ads.zzacj
        public final Constructor zza() {
            return Class.forName("androidx.media3.decoder.midi.MidiExtractor").asSubclass(zzacr.class).getConstructor(null);
        }
    });

    public final void f(int i, ArrayList arrayList) {
        zzakb zzakbVar = this.f4087e;
        switch (i) {
            case 0:
                arrayList.add(new zzamd());
                break;
            case 1:
                arrayList.add(new zzamf());
                break;
            case 2:
                arrayList.add(new zzamh(0));
                break;
            case 3:
                arrayList.add(new zzaee(0));
                break;
            case 4:
                zzacr ah = f4083a.ah(0);
                if (ah == null) {
                    arrayList.add(new zzaew(0));
                    break;
                } else {
                    arrayList.add(ah);
                    break;
                }
            case 5:
                arrayList.add(new zzaey());
                break;
            case 6:
                arrayList.add(new zzahq(zzakbVar, 0));
                break;
            case 7:
                arrayList.add(new zzahw(0));
                break;
            case 8:
                arrayList.add(new zzait(zzakbVar, 0, null, null, zzfzo.zzn(), null));
                arrayList.add(new zzaiy(zzakbVar, 0));
                break;
            case 9:
                arrayList.add(new zzajo());
                break;
            case 10:
                arrayList.add(new zzanm());
                break;
            case 11:
                if (this.f4086d == null) {
                    this.f4086d = zzfzo.zzn();
                }
                arrayList.add(new zzanw(1, 0, zzakbVar, new zzek(0L), new zzamj(0, this.f4086d), 112800));
                break;
            case 12:
                arrayList.add(new zzaoh());
                break;
            case 14:
                arrayList.add(new zzafe(0));
                break;
            case 15:
                zzacr ah2 = f4084b.ah(new Object[0]);
                if (ah2 != null) {
                    arrayList.add(ah2);
                    break;
                }
                break;
            case 16:
                arrayList.add(new zzaej(0, zzakbVar));
                break;
            case 17:
                arrayList.add(new zzajz());
                break;
            case 18:
                arrayList.add(new zzaom());
                break;
            case 19:
                arrayList.add(new zzaer());
                break;
            case 20:
                arrayList.add(new zzafd());
                break;
            case 21:
                arrayList.add(new zzaeq());
                break;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x03c1, code lost:
    
        if (r13 == r4) goto L248;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x03c3, code lost:
    
        f(r13, r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x020a A[Catch: all -> 0x0027, TryCatch #0 {all -> 0x0027, blocks: (B:4:0x0003, B:6:0x0018, B:9:0x001f, B:14:0x020a, B:15:0x020d, B:20:0x03c3, B:21:0x03c6, B:23:0x03cb, B:26:0x03d1, B:28:0x03d4, B:32:0x03d7, B:37:0x0216, B:39:0x021e, B:41:0x0229, B:44:0x0234, B:46:0x023c, B:48:0x0247, B:51:0x0252, B:54:0x025d, B:57:0x0268, B:59:0x0270, B:61:0x0278, B:63:0x0284, B:65:0x0292, B:67:0x029d, B:70:0x02a8, B:72:0x02b0, B:74:0x02be, B:76:0x02cc, B:78:0x02de, B:80:0x02ec, B:82:0x02f8, B:84:0x0300, B:86:0x0308, B:88:0x0310, B:90:0x031c, B:92:0x0324, B:94:0x0336, B:96:0x033e, B:98:0x034a, B:100:0x0352, B:102:0x035d, B:104:0x0365, B:106:0x0370, B:109:0x037b, B:112:0x0386, B:115:0x0391, B:117:0x0399, B:119:0x03a4, B:121:0x03ac, B:124:0x03b5, B:139:0x004f, B:140:0x0057, B:143:0x01cc, B:166:0x005c, B:169:0x0068, B:172:0x0074, B:175:0x0080, B:178:0x008c, B:181:0x0097, B:184:0x00a2, B:187:0x00ad, B:190:0x00b9, B:193:0x00c5, B:196:0x00d1, B:199:0x00dd, B:202:0x00e8, B:205:0x00f3, B:208:0x00fe, B:211:0x010a, B:214:0x0116, B:217:0x0122, B:220:0x012e, B:223:0x013a, B:226:0x0146, B:229:0x0152, B:232:0x015e, B:235:0x016a, B:238:0x0175, B:241:0x0180, B:244:0x018b, B:247:0x0196, B:250:0x01a0, B:253:0x01ab, B:256:0x01b6, B:259:0x01c1), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x03cb A[Catch: all -> 0x0027, TryCatch #0 {all -> 0x0027, blocks: (B:4:0x0003, B:6:0x0018, B:9:0x001f, B:14:0x020a, B:15:0x020d, B:20:0x03c3, B:21:0x03c6, B:23:0x03cb, B:26:0x03d1, B:28:0x03d4, B:32:0x03d7, B:37:0x0216, B:39:0x021e, B:41:0x0229, B:44:0x0234, B:46:0x023c, B:48:0x0247, B:51:0x0252, B:54:0x025d, B:57:0x0268, B:59:0x0270, B:61:0x0278, B:63:0x0284, B:65:0x0292, B:67:0x029d, B:70:0x02a8, B:72:0x02b0, B:74:0x02be, B:76:0x02cc, B:78:0x02de, B:80:0x02ec, B:82:0x02f8, B:84:0x0300, B:86:0x0308, B:88:0x0310, B:90:0x031c, B:92:0x0324, B:94:0x0336, B:96:0x033e, B:98:0x034a, B:100:0x0352, B:102:0x035d, B:104:0x0365, B:106:0x0370, B:109:0x037b, B:112:0x0386, B:115:0x0391, B:117:0x0399, B:119:0x03a4, B:121:0x03ac, B:124:0x03b5, B:139:0x004f, B:140:0x0057, B:143:0x01cc, B:166:0x005c, B:169:0x0068, B:172:0x0074, B:175:0x0080, B:178:0x008c, B:181:0x0097, B:184:0x00a2, B:187:0x00ad, B:190:0x00b9, B:193:0x00c5, B:196:0x00d1, B:199:0x00dd, B:202:0x00e8, B:205:0x00f3, B:208:0x00fe, B:211:0x010a, B:214:0x0116, B:217:0x0122, B:220:0x012e, B:223:0x013a, B:226:0x0146, B:229:0x0152, B:232:0x015e, B:235:0x016a, B:238:0x0175, B:241:0x0180, B:244:0x018b, B:247:0x0196, B:250:0x01a0, B:253:0x01ab, B:256:0x01b6, B:259:0x01c1), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0216 A[Catch: all -> 0x0027, TryCatch #0 {all -> 0x0027, blocks: (B:4:0x0003, B:6:0x0018, B:9:0x001f, B:14:0x020a, B:15:0x020d, B:20:0x03c3, B:21:0x03c6, B:23:0x03cb, B:26:0x03d1, B:28:0x03d4, B:32:0x03d7, B:37:0x0216, B:39:0x021e, B:41:0x0229, B:44:0x0234, B:46:0x023c, B:48:0x0247, B:51:0x0252, B:54:0x025d, B:57:0x0268, B:59:0x0270, B:61:0x0278, B:63:0x0284, B:65:0x0292, B:67:0x029d, B:70:0x02a8, B:72:0x02b0, B:74:0x02be, B:76:0x02cc, B:78:0x02de, B:80:0x02ec, B:82:0x02f8, B:84:0x0300, B:86:0x0308, B:88:0x0310, B:90:0x031c, B:92:0x0324, B:94:0x0336, B:96:0x033e, B:98:0x034a, B:100:0x0352, B:102:0x035d, B:104:0x0365, B:106:0x0370, B:109:0x037b, B:112:0x0386, B:115:0x0391, B:117:0x0399, B:119:0x03a4, B:121:0x03ac, B:124:0x03b5, B:139:0x004f, B:140:0x0057, B:143:0x01cc, B:166:0x005c, B:169:0x0068, B:172:0x0074, B:175:0x0080, B:178:0x008c, B:181:0x0097, B:184:0x00a2, B:187:0x00ad, B:190:0x00b9, B:193:0x00c5, B:196:0x00d1, B:199:0x00dd, B:202:0x00e8, B:205:0x00f3, B:208:0x00fe, B:211:0x010a, B:214:0x0116, B:217:0x0122, B:220:0x012e, B:223:0x013a, B:226:0x0146, B:229:0x0152, B:232:0x015e, B:235:0x016a, B:238:0x0175, B:241:0x0180, B:244:0x018b, B:247:0x0196, B:250:0x01a0, B:253:0x01ab, B:256:0x01b6, B:259:0x01c1), top: B:3:0x0003 }] */
    @Override // com.google.android.gms.internal.ads.zzacw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized zzacr[] zza(Uri uri, Map map) {
        ArrayList arrayList;
        char c2;
        int i;
        String lastPathSegment;
        int i2;
        try {
            arrayList = new ArrayList(21);
            List list = (List) map.get("Content-Type");
            String str = null;
            if (list != null && !list.isEmpty()) {
                str = (String) list.get(0);
            }
            int i3 = 20;
            if (str != null) {
                String zze = zzbg.zze(str);
                switch (zze.hashCode()) {
                    case -2123537834:
                        if (zze.equals("audio/eac3-joc")) {
                            c2 = 2;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -1662384011:
                        if (zze.equals("video/mp2p")) {
                            c2 = 20;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -1662384007:
                        if (zze.equals("video/mp2t")) {
                            c2 = 21;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -1662095187:
                        if (zze.equals("video/webm")) {
                            c2 = '\f';
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -1606874997:
                        if (zze.equals("audio/amr-wb")) {
                            c2 = 6;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -1487656890:
                        if (zze.equals("image/avif")) {
                            c2 = 31;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -1487464693:
                        if (zze.equals("image/heic")) {
                            c2 = 30;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -1487464690:
                        if (zze.equals("image/heif")) {
                            c2 = 29;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -1487394660:
                        if (zze.equals("image/jpeg")) {
                            c2 = 24;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -1487018032:
                        if (zze.equals("image/webp")) {
                            c2 = 27;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -1248337486:
                        if (zze.equals("application/mp4")) {
                            c2 = 18;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -1079884372:
                        if (zze.equals("video/x-msvideo")) {
                            c2 = 25;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -1004728940:
                        if (zze.equals("text/vtt")) {
                            c2 = 23;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -879272239:
                        if (zze.equals("image/bmp")) {
                            c2 = 28;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -879258763:
                        if (zze.equals("image/png")) {
                            c2 = 26;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -387023398:
                        if (zze.equals("audio/x-matroska")) {
                            c2 = 11;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -43467528:
                        if (zze.equals("application/webm")) {
                            c2 = 14;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 13915911:
                        if (zze.equals("video/x-flv")) {
                            c2 = '\b';
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 187078296:
                        if (zze.equals("audio/ac3")) {
                            c2 = 0;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 187078297:
                        if (zze.equals("audio/ac4")) {
                            c2 = 3;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 187078669:
                        if (zze.equals("audio/amr")) {
                            c2 = 4;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 187090232:
                        if (zze.equals("audio/mp4")) {
                            c2 = 17;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 187091926:
                        if (zze.equals("audio/ogg")) {
                            c2 = 19;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 187099443:
                        if (zze.equals("audio/wav")) {
                            c2 = 22;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 1331848029:
                        if (zze.equals("video/mp4")) {
                            c2 = 16;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 1503095341:
                        if (zze.equals("audio/3gpp")) {
                            c2 = 5;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 1504578661:
                        if (zze.equals("audio/eac3")) {
                            c2 = 1;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 1504619009:
                        if (zze.equals("audio/flac")) {
                            c2 = 7;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 1504824762:
                        if (zze.equals("audio/midi")) {
                            c2 = '\t';
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 1504831518:
                        if (zze.equals("audio/mpeg")) {
                            c2 = 15;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 1505118770:
                        if (zze.equals("audio/webm")) {
                            c2 = '\r';
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 2039520277:
                        if (zze.equals("video/x-matroska")) {
                            c2 = '\n';
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
                        i = 0;
                        break;
                    case 3:
                        i = 1;
                        break;
                    case 4:
                    case 5:
                    case 6:
                        i = 3;
                        break;
                    case 7:
                        i = 4;
                        break;
                    case '\b':
                        i = 5;
                        break;
                    case '\t':
                        i = 15;
                        break;
                    case '\n':
                    case 11:
                    case '\f':
                    case '\r':
                    case 14:
                        i = 6;
                        break;
                    case 15:
                        i = 7;
                        break;
                    case 16:
                    case 17:
                    case 18:
                        i = 8;
                        break;
                    case 19:
                        i = 9;
                        break;
                    case 20:
                        i = 10;
                        break;
                    case 21:
                        i = 11;
                        break;
                    case 22:
                        i = 12;
                        break;
                    case 23:
                        i = 13;
                        break;
                    case 24:
                        i = 14;
                        break;
                    case 25:
                        i = 16;
                        break;
                    case 26:
                        i = 17;
                        break;
                    case 27:
                        i = 18;
                        break;
                    case 28:
                        i = 19;
                        break;
                    case 29:
                    case 30:
                        i = 20;
                        break;
                    case 31:
                        i = 21;
                        break;
                }
                if (i != -1) {
                    f(i, arrayList);
                }
                lastPathSegment = uri.getLastPathSegment();
                if (lastPathSegment != null) {
                    if (lastPathSegment.endsWith(".ac3") || lastPathSegment.endsWith(".ec3")) {
                        i3 = 0;
                    } else if (lastPathSegment.endsWith(".ac4")) {
                        i3 = 1;
                    } else if (lastPathSegment.endsWith(".adts") || lastPathSegment.endsWith(".aac")) {
                        i3 = 2;
                    } else if (lastPathSegment.endsWith(".amr")) {
                        i3 = 3;
                    } else if (lastPathSegment.endsWith(".flac")) {
                        i3 = 4;
                    } else if (lastPathSegment.endsWith(".flv")) {
                        i3 = 5;
                    } else if (lastPathSegment.endsWith(".mid") || lastPathSegment.endsWith(".midi") || lastPathSegment.endsWith(".smf")) {
                        i3 = 15;
                    } else if (lastPathSegment.startsWith(".mk", lastPathSegment.length() - 4) || lastPathSegment.endsWith(".webm")) {
                        i3 = 6;
                    } else if (lastPathSegment.endsWith(".mp3")) {
                        i3 = 7;
                    } else if (lastPathSegment.endsWith(".mp4") || lastPathSegment.startsWith(".m4", lastPathSegment.length() - 4) || lastPathSegment.startsWith(".mp4", lastPathSegment.length() - 5) || lastPathSegment.startsWith(".cmf", lastPathSegment.length() - 5)) {
                        i3 = 8;
                    } else if (lastPathSegment.startsWith(".og", lastPathSegment.length() - 4) || lastPathSegment.endsWith(".opus")) {
                        i3 = 9;
                    } else if (lastPathSegment.endsWith(".ps") || lastPathSegment.endsWith(".mpeg") || lastPathSegment.endsWith(".mpg") || lastPathSegment.endsWith(".m2p")) {
                        i3 = 10;
                    } else if (lastPathSegment.endsWith(".ts") || lastPathSegment.startsWith(".ts", lastPathSegment.length() - 4)) {
                        i3 = 11;
                    } else if (lastPathSegment.endsWith(".wav") || lastPathSegment.endsWith(".wave")) {
                        i3 = 12;
                    } else if (lastPathSegment.endsWith(".vtt") || lastPathSegment.endsWith(".webvtt")) {
                        i3 = 13;
                    } else if (lastPathSegment.endsWith(".jpg") || lastPathSegment.endsWith(".jpeg")) {
                        i3 = 14;
                    } else if (lastPathSegment.endsWith(".avi")) {
                        i3 = 16;
                    } else if (lastPathSegment.endsWith(".png")) {
                        i3 = 17;
                    } else if (lastPathSegment.endsWith(".webp")) {
                        i3 = 18;
                    } else if (lastPathSegment.endsWith(".bmp") || lastPathSegment.endsWith(".dib")) {
                        i3 = 19;
                    } else if (!lastPathSegment.endsWith(".heic") && !lastPathSegment.endsWith(".heif")) {
                        if (lastPathSegment.endsWith(".avif")) {
                            i3 = 21;
                        }
                    }
                    int[] iArr = f4085c;
                    for (i2 = 0; i2 < 21; i2++) {
                        int i4 = iArr[i2];
                        if (i4 != i && i4 != i3) {
                            f(i4, arrayList);
                        }
                    }
                }
                i3 = -1;
                int[] iArr2 = f4085c;
                while (i2 < 21) {
                }
            }
            i = -1;
            if (i != -1) {
            }
            lastPathSegment = uri.getLastPathSegment();
            if (lastPathSegment != null) {
            }
            i3 = -1;
            int[] iArr22 = f4085c;
            while (i2 < 21) {
            }
        } catch (Throwable th) {
            throw th;
        }
        return (zzacr[]) arrayList.toArray(new zzacr[arrayList.size()]);
    }
}
