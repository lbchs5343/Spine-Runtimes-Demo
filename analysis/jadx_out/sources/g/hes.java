package g;

import com.google.android.gms.internal.ads.zzab;
import com.google.android.gms.internal.ads.zzdt;
import com.google.android.gms.internal.ads.zzed;
import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzfzl;
import com.google.android.gms.internal.ads.zzfzo;
import java.nio.charset.StandardCharsets;

/* loaded from: classes3.dex */
public final class hes implements alv {

    /* renamed from: a, reason: collision with root package name */
    public final zzfzo f19357a;

    /* renamed from: b, reason: collision with root package name */
    public final int f19358b;

    public hes(int i, zzfzo zzfzoVar) {
        this.f19358b = i;
        this.f19357a = zzfzoVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static hes c(int i, zzed zzedVar) {
        alv bbVar;
        String str;
        zzfzl zzfzlVar = new zzfzl();
        int zze = zzedVar.zze();
        int i2 = -2;
        while (zzedVar.zzb() > 8) {
            int zzi = zzedVar.zzi();
            int zzd = zzedVar.zzd() + zzedVar.zzi();
            zzedVar.zzK(zzd);
            if (zzi != 1414744396) {
                switch (zzi) {
                    case 1718776947:
                        if (i2 == 2) {
                            zzedVar.zzM(4);
                            int zzi2 = zzedVar.zzi();
                            int zzi3 = zzedVar.zzi();
                            zzedVar.zzM(4);
                            int zzi4 = zzedVar.zzi();
                            switch (zzi4) {
                                case 808802372:
                                case 877677894:
                                case 1145656883:
                                case 1145656920:
                                case 1482049860:
                                case 1684633208:
                                case 2021026148:
                                    str = "video/mp4v-es";
                                    break;
                                case 826496577:
                                case 828601953:
                                case 875967048:
                                    str = "video/avc";
                                    break;
                                case 842289229:
                                    str = "video/mp42";
                                    break;
                                case 859066445:
                                    str = "video/mp43";
                                    break;
                                case 1196444237:
                                case 1735420525:
                                    str = "video/mjpeg";
                                    break;
                                default:
                                    str = null;
                                    break;
                            }
                            if (str != null) {
                                zzab zzabVar = new zzab();
                                zzabVar.zzae(zzi2);
                                zzabVar.zzJ(zzi3);
                                zzabVar.zzZ(str);
                                bbVar = new bb(zzabVar.zzaf());
                                break;
                            } else {
                                dub.g(zzi4, "Ignoring track with unsupported compression ", "StreamFormatChunk");
                                bbVar = null;
                                break;
                            }
                        } else {
                            if (i2 == 1) {
                                int zzk = zzedVar.zzk();
                                String str2 = zzk != 1 ? zzk != 85 ? zzk != 255 ? zzk != 8192 ? zzk != 8193 ? null : "audio/vnd.dts" : "audio/ac3" : "audio/mp4a-latm" : "audio/mpeg" : "audio/raw";
                                if (str2 != null) {
                                    int zzk2 = zzedVar.zzk();
                                    int zzi5 = zzedVar.zzi();
                                    zzedVar.zzM(6);
                                    int zzn = zzen.zzn(zzedVar.zzk());
                                    int zzk3 = zzedVar.zzb() > 0 ? zzedVar.zzk() : 0;
                                    byte[] bArr = new byte[zzk3];
                                    zzedVar.zzH(bArr, 0, zzk3);
                                    zzab zzabVar2 = new zzab();
                                    zzabVar2.zzZ(str2);
                                    zzabVar2.zzz(zzk2);
                                    zzabVar2.zzaa(zzi5);
                                    if ("audio/raw".equals(str2) && zzn != 0) {
                                        zzabVar2.zzT(zzn);
                                    }
                                    if ("audio/mp4a-latm".equals(str2) && zzk3 > 0) {
                                        zzabVar2.zzM(zzfzo.zzo(bArr));
                                    }
                                    bbVar = new bb(zzabVar2.zzaf());
                                    break;
                                } else {
                                    dub.g(zzk, "Ignoring track with unsupported format tag ", "StreamFormatChunk");
                                }
                            } else {
                                zzdt.zzf("StreamFormatChunk", "Ignoring strf box for unsupported track type: ".concat(zzen.zzD(i2)));
                            }
                            bbVar = null;
                        }
                    case 1751742049:
                        int zzi6 = zzedVar.zzi();
                        zzedVar.zzM(8);
                        int zzi7 = zzedVar.zzi();
                        int zzi8 = zzedVar.zzi();
                        zzedVar.zzM(4);
                        zzedVar.zzi();
                        zzedVar.zzM(12);
                        bbVar = new ddl(zzi6, zzi7, zzi8);
                        break;
                    case 1752331379:
                        int zzi9 = zzedVar.zzi();
                        zzedVar.zzM(12);
                        zzedVar.zzi();
                        int zzi10 = zzedVar.zzi();
                        int zzi11 = zzedVar.zzi();
                        zzedVar.zzM(4);
                        int zzi12 = zzedVar.zzi();
                        int zzi13 = zzedVar.zzi();
                        zzedVar.zzM(8);
                        bbVar = new cyw(zzi9, zzi10, zzi11, zzi12, zzi13);
                        break;
                    case 1852994675:
                        bbVar = new gcf(zzedVar.zzB(zzedVar.zzb(), StandardCharsets.UTF_8));
                        break;
                    default:
                        bbVar = null;
                        break;
                }
            } else {
                bbVar = c(zzedVar.zzi(), zzedVar);
            }
            if (bbVar != null) {
                if (bbVar.zza() == 1752331379) {
                    int i3 = ((cyw) bbVar).f13783c;
                    if (i3 == 1935960438) {
                        i2 = 2;
                    } else if (i3 == 1935963489) {
                        i2 = 1;
                    } else if (i3 != 1937012852) {
                        zzdt.zzf("AviStreamHeaderChunk", "Found unsupported streamType fourCC: ".concat(String.valueOf(Integer.toHexString(i3))));
                        i2 = -1;
                    } else {
                        i2 = 3;
                    }
                }
                zzfzlVar.zzf(bbVar);
            }
            zzedVar.zzL(zzd);
            zzedVar.zzK(zze);
        }
        return new hes(i, zzfzlVar.zzi());
    }

    public final alv d(Class cls) {
        zzfzo zzfzoVar = this.f19357a;
        int size = zzfzoVar.size();
        int i = 0;
        while (i < size) {
            alv alvVar = (alv) zzfzoVar.get(i);
            i++;
            if (alvVar.getClass() == cls) {
                return alvVar;
            }
        }
        return null;
    }

    @Override // g.alv
    public final int zza() {
        return this.f19358b;
    }
}
