package com.google.android.gms.internal.ads;

import android.util.Pair;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.awf;
import g.dub;
import g.et;
import g.fcw;
import g.gme;
import g.gvg;
import g.pd;
import g.xl;
import j$.util.Objects;
import java.math.RoundingMode;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzain {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f4192a;
    public static final /* synthetic */ int zza = 0;

    static {
        int i = zzen.zza;
        f4192a = "OpusHead".getBytes(StandardCharsets.UTF_8);
    }

    public static void b(zzed zzedVar, int i, int i2, int i3, int i4, String str, boolean z, zzw zzwVar, pd pdVar, int i5) {
        int i6;
        int zzn;
        int zzg;
        int i7;
        int i8;
        zzw zzwVar2;
        String str2;
        int i9;
        fcw fcwVar;
        int i10;
        int i11;
        int i12;
        int i13;
        boolean z2;
        String format;
        zzed zzedVar2 = zzedVar;
        int i14 = i3;
        zzedVar2.zzL(i2 + 16);
        if (z) {
            i6 = zzedVar2.zzq();
            zzedVar2.zzM(6);
        } else {
            zzedVar2.zzM(8);
            i6 = 0;
        }
        char c2 = 0;
        if (i6 == 0 || i6 == 1) {
            int zzq = zzedVar2.zzq();
            zzedVar2.zzM(6);
            zzn = zzedVar2.zzn();
            zzedVar2.zzL(zzedVar2.zzd() - 4);
            zzg = zzedVar2.zzg();
            if (i6 == 1) {
                zzedVar2.zzM(16);
            }
            i7 = zzq;
            i8 = -1;
        } else {
            if (i6 != 2) {
                return;
            }
            zzedVar2.zzM(16);
            zzn = (int) Math.round(Double.longBitsToDouble(zzedVar2.zzt()));
            i7 = zzedVar2.zzp();
            zzedVar2.zzM(4);
            int zzp = zzedVar2.zzp();
            int zzp2 = zzedVar2.zzp();
            int i15 = zzp2 & 1;
            int i16 = zzp2 & 2;
            if (i15 == 0) {
                if (zzp == 8) {
                    i8 = 3;
                } else if (zzp == 16) {
                    i8 = i16 != 0 ? C.ENCODING_PCM_MU_LAW : 2;
                } else if (zzp == 24) {
                    i8 = i16 != 0 ? 1342177280 : 21;
                } else {
                    if (zzp == 32) {
                        i8 = i16 != 0 ? 1610612736 : 22;
                    }
                    i8 = -1;
                }
                zzedVar2.zzM(8);
                zzg = 0;
            } else {
                if (zzp == 32) {
                    i8 = 4;
                    zzedVar2.zzM(8);
                    zzg = 0;
                }
                i8 = -1;
                zzedVar2.zzM(8);
                zzg = 0;
            }
        }
        int zzd = zzedVar2.zzd();
        int i17 = 1701733217;
        if (i == 1701733217) {
            Pair d2 = d(zzedVar2, i2, i14);
            if (d2 != null) {
                i17 = ((Integer) d2.first).intValue();
                zzwVar2 = zzwVar == null ? null : zzwVar.zzb(((zzajf) d2.second).zzb);
                ((zzajf[]) pdVar.f19807d)[i5] = (zzajf) d2.second;
            } else {
                zzwVar2 = zzwVar;
            }
            zzedVar2.zzL(zzd);
        } else {
            zzwVar2 = zzwVar;
            i17 = i;
        }
        if (i17 == 1633889587) {
            str2 = "audio/ac3";
        } else if (i17 == 1700998451) {
            str2 = "audio/eac3";
        } else if (i17 == 1633889588) {
            str2 = "audio/ac4";
        } else if (i17 == 1685353315) {
            str2 = "audio/vnd.dts";
        } else if (i17 == 1685353320 || i17 == 1685353324) {
            str2 = "audio/vnd.dts.hd";
        } else if (i17 == 1685353317) {
            str2 = "audio/vnd.dts.hd;profile=lbr";
        } else if (i17 == 1685353336) {
            str2 = "audio/vnd.dts.uhd;profile=p2";
        } else if (i17 == 1935764850) {
            str2 = "audio/3gpp";
        } else if (i17 == 1935767394) {
            str2 = "audio/amr-wb";
        } else {
            if (i17 != 1936684916) {
                if (i17 == 1953984371) {
                    str2 = "audio/raw";
                    i8 = C.ENCODING_PCM_MU_LAW;
                } else if (i17 != 1819304813) {
                    str2 = (i17 == 778924082 || i17 == 778924083) ? "audio/mpeg" : i17 == 1835557169 ? "audio/mha1" : i17 == 1835560241 ? "audio/mhm1" : i17 == 1634492771 ? "audio/alac" : i17 == 1634492791 ? "audio/g711-alaw" : i17 == 1970037111 ? "audio/g711-mlaw" : i17 == 1332770163 ? "audio/opus" : i17 == 1716281667 ? "audio/flac" : i17 == 1835823201 ? "audio/true-hd" : i17 == 1767992678 ? "audio/iamf" : null;
                } else if (i8 != -1) {
                    str2 = "audio/raw";
                }
            }
            str2 = "audio/raw";
            i8 = 2;
        }
        int i18 = i8;
        List list = null;
        String str3 = null;
        fcw fcwVar2 = null;
        while (zzd - i2 < i14) {
            zzedVar2.zzL(zzd);
            int zzg2 = zzedVar2.zzg();
            String str4 = str3;
            zzacv.zzb(zzg2 > 0, "childAtomSize must be positive");
            int zzg3 = zzedVar2.zzg();
            int i19 = zzn;
            if (zzg3 == 1835557187) {
                zzedVar2.zzL(zzd + 8);
                zzedVar2.zzM(1);
                int zzm = zzedVar2.zzm();
                zzedVar2.zzM(1);
                if (Objects.equals(str2, "audio/mhm1")) {
                    Object[] objArr = new Object[1];
                    objArr[c2] = Integer.valueOf(zzm);
                    format = String.format("mhm1.%02X", objArr);
                } else {
                    Object[] objArr2 = new Object[1];
                    objArr2[c2] = Integer.valueOf(zzm);
                    format = String.format("mha1.%02X", objArr2);
                }
                String str5 = format;
                int zzq2 = zzedVar2.zzq();
                byte[] bArr = new byte[zzq2];
                zzedVar2.zzH(bArr, 0, zzq2);
                list = list == null ? zzfzo.zzo(bArr) : zzfzo.zzp(bArr, (byte[]) list.get(0));
                zzn = i19;
                str3 = str5;
                i10 = zzd;
                i11 = zzg2;
            } else {
                if (zzg3 == 1835557200) {
                    zzedVar2.zzL(zzd + 8);
                    int zzm2 = zzedVar2.zzm();
                    if (zzm2 > 0) {
                        byte[] bArr2 = new byte[zzm2];
                        zzedVar2.zzH(bArr2, 0, zzm2);
                        list = list == null ? zzfzo.zzo(bArr2) : zzfzo.zzp((byte[]) list.get(0), bArr2);
                        zzn = i19;
                        i10 = zzd;
                        i11 = zzg2;
                        str3 = str4;
                    }
                    zzn = i19;
                    i10 = zzd;
                    i11 = zzg2;
                    str3 = str4;
                } else {
                    if (zzg3 == 1702061171) {
                        zzn = i19;
                        i9 = zzd;
                    } else if (z && zzg3 == 2002876005) {
                        int zzd2 = zzedVar2.zzd();
                        zzacv.zzb(zzd2 >= zzd, null);
                        int i20 = zzd2;
                        while (true) {
                            if (i20 - zzd >= zzg2) {
                                zzn = i19;
                                i9 = -1;
                                break;
                            }
                            zzedVar2.zzL(i20);
                            int zzg4 = zzedVar2.zzg();
                            if (zzg4 > 0) {
                                i13 = i20;
                                z2 = true;
                            } else {
                                i13 = i20;
                                z2 = false;
                            }
                            zzacv.zzb(z2, "childAtomSize must be positive");
                            if (zzedVar2.zzg() == 1702061171) {
                                zzn = i19;
                                i9 = i13;
                                break;
                            }
                            i20 = i13 + zzg4;
                        }
                    } else {
                        if (zzg3 == 1684103987) {
                            zzedVar2.zzL(zzd + 8);
                            pdVar.f19804a = zzabr.zzc(zzedVar2, Integer.toString(i4), str, zzwVar2);
                        } else if (zzg3 == 1684366131) {
                            zzedVar2.zzL(zzd + 8);
                            pdVar.f19804a = zzabr.zzd(zzedVar2, Integer.toString(i4), str, zzwVar2);
                        } else if (zzg3 == 1684103988) {
                            zzedVar2.zzL(zzd + 8);
                            String num = Integer.toString(i4);
                            zzedVar2.zzM(1);
                            int zzm3 = zzedVar2.zzm() & 32;
                            zzab zzabVar = new zzab();
                            zzabVar.zzL(num);
                            zzabVar.zzZ("audio/ac4");
                            zzabVar.zzz(2);
                            zzabVar.zzaa(1 != (zzm3 >> 5) ? 44100 : 48000);
                            zzabVar.zzF(zzwVar2);
                            zzabVar.zzP(str);
                            pdVar.f19804a = zzabVar.zzaf();
                            zzn = i19;
                            i10 = zzd;
                            i11 = zzg2;
                            str3 = str4;
                        } else if (zzg3 == 1684892784) {
                            if (zzg <= 0) {
                                throw zzbh.zza("Invalid sample rate for Dolby TrueHD MLP stream: " + zzg, null);
                            }
                            i10 = zzd;
                            i11 = zzg2;
                            zzn = zzg;
                            str3 = str4;
                            i7 = 2;
                        } else if (zzg3 == 1684305011 || zzg3 == 1969517683) {
                            zzab zzabVar2 = new zzab();
                            zzabVar2.zzK(i4);
                            zzabVar2.zzZ(str2);
                            zzabVar2.zzz(i7);
                            zzn = i19;
                            zzabVar2.zzaa(zzn);
                            zzabVar2.zzF(zzwVar2);
                            zzabVar2.zzP(str);
                            pdVar.f19804a = zzabVar2.zzaf();
                            i10 = zzd;
                            i11 = zzg2;
                            str3 = str4;
                        } else if (zzg3 == 1682927731) {
                            int i21 = zzg2 - 8;
                            byte[] bArr3 = f4192a;
                            byte[] copyOf = Arrays.copyOf(bArr3, bArr3.length + i21);
                            zzedVar2.zzL(zzd + 8);
                            zzedVar2.zzH(copyOf, bArr3.length, i21);
                            list = zzadm.zze(copyOf);
                            zzn = i19;
                            i10 = zzd;
                            i11 = zzg2;
                            str3 = str4;
                        } else {
                            if (zzg3 == 1684425825) {
                                byte[] bArr4 = new byte[zzg2 - 8];
                                bArr4[0] = 102;
                                bArr4[1] = 76;
                                bArr4[2] = 97;
                                bArr4[3] = 67;
                                zzedVar2.zzL(zzd + 12);
                                zzedVar2.zzH(bArr4, 4, zzg2 - 12);
                                list = zzfzo.zzo(bArr4);
                            } else if (zzg3 == 1634492771) {
                                int i22 = zzg2 - 12;
                                byte[] bArr5 = new byte[i22];
                                zzedVar2.zzL(zzd + 12);
                                zzedVar2.zzH(bArr5, 0, i22);
                                byte[] bArr6 = zzdd.f5884a;
                                zzed zzedVar3 = new zzed(bArr5);
                                zzedVar3.zzL(9);
                                int zzm4 = zzedVar3.zzm();
                                zzedVar3.zzL(20);
                                Pair create = Pair.create(Integer.valueOf(zzedVar3.zzp()), Integer.valueOf(zzm4));
                                int intValue = ((Integer) create.first).intValue();
                                int intValue2 = ((Integer) create.second).intValue();
                                zzfzo zzo = zzfzo.zzo(bArr5);
                                i7 = intValue2;
                                list = zzo;
                                i10 = zzd;
                                i11 = zzg2;
                                str3 = str4;
                                zzn = intValue;
                            } else if (zzg3 == 1767990114) {
                                zzedVar2.zzL(zzd + 9);
                                int zzb = zzgcr.zzb(zzedVar2.zzv());
                                byte[] bArr7 = new byte[zzb];
                                zzedVar2.zzH(bArr7, 0, zzb);
                                list = zzfzo.zzo(bArr7);
                            }
                            zzn = i19;
                            i10 = zzd;
                            i11 = zzg2;
                            str3 = str4;
                        }
                        zzn = i19;
                        i10 = zzd;
                        i11 = zzg2;
                        str3 = str4;
                    }
                    if (i9 != -1) {
                        fcw e2 = e(i9, zzedVar2);
                        str2 = (String) e2.f16580a;
                        byte[] bArr8 = (byte[]) e2.f16581b;
                        if (bArr8 == null) {
                            fcwVar = e2;
                            i10 = zzd;
                            i11 = zzg2;
                        } else if ("audio/vorbis".equals(str2)) {
                            zzed zzedVar4 = new zzed(bArr8);
                            zzedVar4.zzM(1);
                            int i23 = 0;
                            while (true) {
                                int zzb2 = zzedVar4.zzb();
                                i12 = MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
                                fcwVar = e2;
                                if (zzb2 <= 0 || zzedVar4.zzf() != 255) {
                                    break;
                                }
                                zzedVar4.zzM(1);
                                e2 = fcwVar;
                                i23 += MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
                            }
                            int zzm5 = zzedVar4.zzm() + i23;
                            int i24 = 0;
                            while (true) {
                                i10 = zzd;
                                if (zzedVar4.zzb() <= 0 || zzedVar4.zzf() != i12) {
                                    break;
                                }
                                zzedVar4.zzM(1);
                                zzd = i10;
                                i24 += MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
                                i12 = MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
                            }
                            int zzm6 = zzedVar4.zzm() + i24;
                            byte[] bArr9 = new byte[zzm5];
                            int zzd3 = zzedVar4.zzd();
                            System.arraycopy(bArr8, zzd3, bArr9, 0, zzm5);
                            int i25 = zzd3 + zzm5 + zzm6;
                            int length = bArr8.length - i25;
                            i11 = zzg2;
                            byte[] bArr10 = new byte[length];
                            System.arraycopy(bArr8, i25, bArr10, 0, length);
                            list = zzfzo.zzp(bArr9, bArr10);
                        } else {
                            fcwVar = e2;
                            i10 = zzd;
                            i11 = zzg2;
                            if ("audio/mp4a-latm".equals(str2)) {
                                zzabm zza2 = zzabo.zza(bArr8);
                                zzn = zza2.zza;
                                i7 = zza2.zzb;
                                str4 = zza2.zzc;
                            }
                            list = zzfzo.zzo(bArr8);
                        }
                        fcwVar2 = fcwVar;
                        str3 = str4;
                    }
                    i10 = zzd;
                    i11 = zzg2;
                    str3 = str4;
                }
                i14 = i3;
                zzd = i10 + i11;
                c2 = 0;
                zzedVar2 = zzedVar;
            }
            i14 = i3;
            zzd = i10 + i11;
            c2 = 0;
            zzedVar2 = zzedVar;
        }
        String str6 = str3;
        if (((zzad) pdVar.f19804a) != null || str2 == null) {
            return;
        }
        zzab zzabVar3 = new zzab();
        zzabVar3.zzK(i4);
        zzabVar3.zzZ(str2);
        zzabVar3.zzA(str6);
        zzabVar3.zzz(i7);
        zzabVar3.zzaa(zzn);
        zzabVar3.zzT(i18);
        zzabVar3.zzM(list);
        zzabVar3.zzF(zzwVar2);
        zzabVar3.zzP(str);
        fcw fcwVar3 = fcwVar2;
        if (fcwVar3 != null) {
            zzabVar3.zzy(zzgcr.zze(fcwVar3.f16582d));
            zzabVar3.zzU(zzgcr.zze(fcwVar3.f16583e));
        }
        pdVar.f19804a = zzabVar3.zzaf();
    }

    public static int c(zzed zzedVar) {
        int zzm = zzedVar.zzm();
        int i = zzm & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE;
        while ((zzm & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) == 128) {
            zzm = zzedVar.zzm();
            i = (i << 7) | (zzm & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE);
        }
        return i;
    }

    public static Pair d(zzed zzedVar, int i, int i2) {
        Integer num;
        zzajf zzajfVar;
        Pair create;
        int i3;
        int i4;
        Integer num2;
        boolean z;
        int zzd = zzedVar.zzd();
        while (zzd - i < i2) {
            zzedVar.zzL(zzd);
            int zzg = zzedVar.zzg();
            zzacv.zzb(zzg > 0, "childAtomSize must be positive");
            if (zzedVar.zzg() == 1936289382) {
                int i5 = zzd + 8;
                int i6 = -1;
                Integer num3 = null;
                String str = null;
                int i7 = 0;
                while (i5 - zzd < zzg) {
                    zzedVar.zzL(i5);
                    int zzg2 = zzedVar.zzg();
                    int zzg3 = zzedVar.zzg();
                    if (zzg3 == 1718775137) {
                        num3 = Integer.valueOf(zzedVar.zzg());
                    } else if (zzg3 == 1935894637) {
                        zzedVar.zzM(4);
                        str = zzedVar.zzB(4, StandardCharsets.UTF_8);
                    } else if (zzg3 == 1935894633) {
                        i6 = i5;
                        i7 = zzg2;
                    }
                    i5 += zzg2;
                }
                byte[] bArr = null;
                if ("cenc".equals(str) || "cbc1".equals(str) || "cens".equals(str) || "cbcs".equals(str)) {
                    zzacv.zzb(num3 != null, "frma atom is mandatory");
                    zzacv.zzb(i6 != -1, "schi atom is mandatory");
                    int i8 = i6 + 8;
                    while (true) {
                        if (i8 - i6 >= i7) {
                            num = num3;
                            zzajfVar = null;
                            break;
                        }
                        zzedVar.zzL(i8);
                        int zzg4 = zzedVar.zzg();
                        if (zzedVar.zzg() == 1952804451) {
                            int zza2 = zza(zzedVar.zzg());
                            zzedVar.zzM(1);
                            if (zza2 == 0) {
                                zzedVar.zzM(1);
                                i4 = 0;
                                i3 = 0;
                            } else {
                                int zzm = zzedVar.zzm();
                                i3 = zzm & 15;
                                i4 = (zzm & MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA) >> 4;
                            }
                            if (zzedVar.zzm() == 1) {
                                num2 = num3;
                                z = true;
                            } else {
                                num2 = num3;
                                z = false;
                            }
                            int zzm2 = zzedVar.zzm();
                            byte[] bArr2 = new byte[16];
                            zzedVar.zzH(bArr2, 0, 16);
                            if (z && zzm2 == 0) {
                                int zzm3 = zzedVar.zzm();
                                byte[] bArr3 = new byte[zzm3];
                                zzedVar.zzH(bArr3, 0, zzm3);
                                bArr = bArr3;
                            }
                            num = num2;
                            zzajfVar = new zzajf(z, str, zzm2, bArr2, i4, i3, bArr);
                        } else {
                            i8 += zzg4;
                        }
                    }
                    zzacv.zzb(zzajfVar != null, "tenc atom is mandatory");
                    int i9 = zzen.zza;
                    create = Pair.create(num, zzajfVar);
                } else {
                    create = null;
                }
                if (create != null) {
                    return create;
                }
            }
            zzd += zzg;
        }
        return null;
    }

    public static fcw e(int i, zzed zzedVar) {
        zzedVar.zzL(i + 12);
        zzedVar.zzM(1);
        c(zzedVar);
        zzedVar.zzM(2);
        int zzm = zzedVar.zzm();
        if ((zzm & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0) {
            zzedVar.zzM(2);
        }
        if ((zzm & 64) != 0) {
            zzedVar.zzM(zzedVar.zzm());
        }
        if ((zzm & 32) != 0) {
            zzedVar.zzM(2);
        }
        zzedVar.zzM(1);
        c(zzedVar);
        String zzd = zzbg.zzd(zzedVar.zzm());
        if ("audio/mpeg".equals(zzd) || "audio/vnd.dts".equals(zzd) || "audio/vnd.dts.hd".equals(zzd)) {
            return new fcw(zzd, null, -1L, -1L);
        }
        zzedVar.zzM(4);
        long zzu = zzedVar.zzu();
        long zzu2 = zzedVar.zzu();
        zzedVar.zzM(1);
        int c2 = c(zzedVar);
        long j = zzu2;
        byte[] bArr = new byte[c2];
        zzedVar.zzH(bArr, 0, c2);
        if (j <= 0) {
            j = -1;
        }
        return new fcw(zzd, bArr, j, zzu > 0 ? zzu : -1L);
    }

    public static int zza(int i) {
        return (i >> 24) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
    }

    public static zzbd zzb(zzes zzesVar) {
        zzer zzerVar;
        zzet zzb = zzesVar.zzb(1751411826);
        zzet zzb2 = zzesVar.zzb(1801812339);
        zzet zzb3 = zzesVar.zzb(1768715124);
        if (zzb != null && zzb2 != null && zzb3 != null) {
            zzed zzedVar = zzb.zza;
            zzedVar.zzL(16);
            if (zzedVar.zzg() == 1835299937) {
                zzed zzedVar2 = zzb2.zza;
                zzedVar2.zzL(12);
                int zzg = zzedVar2.zzg();
                String[] strArr = new String[zzg];
                for (int i = 0; i < zzg; i++) {
                    int zzg2 = zzedVar2.zzg();
                    zzedVar2.zzM(4);
                    strArr[i] = zzedVar2.zzB(zzg2 - 8, StandardCharsets.UTF_8);
                }
                zzed zzedVar3 = zzb3.zza;
                zzedVar3.zzL(8);
                ArrayList arrayList = new ArrayList();
                while (zzedVar3.zzb() > 8) {
                    int zzg3 = zzedVar3.zzg() + zzedVar3.zzd();
                    int zzg4 = zzedVar3.zzg() - 1;
                    if (zzg4 < 0 || zzg4 >= zzg) {
                        dub.g(zzg4, "Skipped metadata with unknown key index: ", "BoxParsers");
                    } else {
                        String str = strArr[zzg4];
                        while (true) {
                            int zzd = zzedVar3.zzd();
                            if (zzd >= zzg3) {
                                zzerVar = null;
                                break;
                            }
                            int zzg5 = zzedVar3.zzg();
                            if (zzedVar3.zzg() == 1684108385) {
                                int zzg6 = zzedVar3.zzg();
                                int zzg7 = zzedVar3.zzg();
                                int i2 = zzg5 - 16;
                                byte[] bArr = new byte[i2];
                                zzedVar3.zzH(bArr, 0, i2);
                                zzerVar = new zzer(str, bArr, zzg7, zzg6);
                                break;
                            }
                            zzedVar3.zzL(zzd + zzg5);
                        }
                        if (zzerVar != null) {
                            arrayList.add(zzerVar);
                        }
                    }
                    zzedVar3.zzL(zzg3);
                }
                if (!arrayList.isEmpty()) {
                    return new zzbd(arrayList);
                }
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x01fc, code lost:
    
        if (r13 != 1684108385) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01fe, code lost:
    
        r10 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01ff, code lost:
    
        if (r13 != 1684108385) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0201, code lost:
    
        r6 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0202, code lost:
    
        r1.zzM(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0208, code lost:
    
        if (r0 == null) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x020a, code lost:
    
        if (r5 == null) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x020d, code lost:
    
        if (r6 != (-1)) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0212, code lost:
    
        r1.zzL(r6);
        r1.zzM(16);
        r5 = new com.google.android.gms.internal.ads.zzago(r0, r5, r1.zzA(r10 - 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x020f, code lost:
    
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x02cd, code lost:
    
        com.google.android.gms.internal.ads.zzdt.zzb("MetadataUtil", "Skipped unknown metadata entry: " + com.google.android.gms.internal.ads.zzev.zze(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0092, code lost:
    
        r0 = com.google.android.gms.internal.ads.zzagm.zza(g.awt.aj(r1) - 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x009c, code lost:
    
        if (r0 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x009e, code lost:
    
        r5 = new com.google.android.gms.internal.ads.zzagu("TCON", r15, com.google.android.gms.internal.ads.zzfzo.zzo(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x00ae, code lost:
    
        com.google.android.gms.internal.ads.zzdt.zzf("MetadataUtil", "Failed to parse standard genre code");
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x00ab, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x02fd, code lost:
    
        r1.zzL(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0300, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x022c, code lost:
    
        r3 = r0 & 16777215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0231, code lost:
    
        if (r3 != 6516084) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0233, code lost:
    
        r3 = r1.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x023e, code lost:
    
        if (r1.zzg() != 1684108385) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0240, code lost:
    
        r1.zzM(8);
        r0 = r1.zzA(r3 - 16);
        r5 = new com.google.android.gms.internal.ads.zzagf("und", r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0254, code lost:
    
        com.google.android.gms.internal.ads.zzdt.zzf("MetadataUtil", "Failed to parse comment attribute: ".concat(com.google.android.gms.internal.ads.zzev.zze(r0)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0265, code lost:
    
        if (r3 == 7233901) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x026a, code lost:
    
        if (r3 != 7631467) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0051, code lost:
    
        r1.zzL(r4);
        r1.zzM(r0);
        r4 = new java.util.ArrayList();
        r3 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0271, code lost:
    
        if (r3 == 6516589) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0276, code lost:
    
        if (r3 != 7828084) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x027d, code lost:
    
        if (r3 != 6578553) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x027f, code lost:
    
        r5 = g.awt.z(r0, "TDRC", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x028a, code lost:
    
        if (r3 != 4280916) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x028c, code lost:
    
        r5 = g.awt.z(r0, "TPE1", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0296, code lost:
    
        if (r3 != 7630703) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0298, code lost:
    
        r5 = g.awt.z(r0, "TSSE", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x02a2, code lost:
    
        if (r3 != 6384738) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x02a4, code lost:
    
        r5 = g.awt.z(r0, "TALB", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x02ae, code lost:
    
        if (r3 != 7108978) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0060, code lost:
    
        if (r1.zzd() >= r8) goto L248;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x02b0, code lost:
    
        r5 = g.awt.z(r0, "USLT", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x02ba, code lost:
    
        if (r3 != 6776174) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x02bc, code lost:
    
        r5 = g.awt.z(r0, "TCON", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x02c4, code lost:
    
        if (r3 != 6779504) goto L151;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x02c6, code lost:
    
        r5 = g.awt.z(r0, "TIT1", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x02e2, code lost:
    
        r5 = g.awt.z(r0, "TCOM", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x02e9, code lost:
    
        r5 = g.awt.z(r0, "TIT2", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0062, code lost:
    
        r9 = r1.zzg() + r1.zzd();
        r0 = r1.zzg();
        r10 = (r0 >> 24) & com.bykv.vk.component.ttvideo.player.MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0307, code lost:
    
        if (r4.isEmpty() == false) goto L163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0309, code lost:
    
        r15 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x030b, code lost:
    
        r15 = new com.google.android.gms.internal.ads.zzbd(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0083, code lost:
    
        if (r10 == 169) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0087, code lost:
    
        if (r10 != 253) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0090, code lost:
    
        if (r0 != 1735291493) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b8, code lost:
    
        if (r0 != 1684632427) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00ba, code lost:
    
        r5 = g.awt.al(1684632427, "TPOS", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x02f2, code lost:
    
        if (r5 == null) goto L250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x02f4, code lost:
    
        r4.add(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x02f7, code lost:
    
        r3 = 0;
        r15 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c4, code lost:
    
        if (r0 != 1953655662) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c6, code lost:
    
        r5 = g.awt.al(1953655662, "TRCK", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d0, code lost:
    
        if (r0 != 1953329263) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00d2, code lost:
    
        r5 = g.awt.k(1953329263, "TBPM", r1, true, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00dc, code lost:
    
        if (r0 != 1668311404) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00de, code lost:
    
        r5 = g.awt.k(1668311404, "TCMP", r1, true, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00e8, code lost:
    
        if (r0 != 1668249202) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ea, code lost:
    
        r0 = r1.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00f5, code lost:
    
        if (r1.zzg() != 1684108385) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00f7, code lost:
    
        r5 = r1.zzg() & 16777215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ff, code lost:
    
        if (r5 != 13) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0101, code lost:
    
        r10 = "image/jpeg";
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x010f, code lost:
    
        if (r10 != null) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0111, code lost:
    
        com.google.android.gms.internal.ads.zzdt.zzf("MetadataUtil", "Unrecognized cover art flags: " + r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b3, code lost:
    
        r5 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0121, code lost:
    
        r1.zzM(4);
        r0 = r0 - 16;
        r5 = new byte[r0];
        r1.zzH(r5, r3, r0);
        r5 = new com.google.android.gms.internal.ads.zzafx(r10, r15, 3, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0106, code lost:
    
        if (r5 != 14) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0108, code lost:
    
        r10 = "image/png";
        r5 = 14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x010e, code lost:
    
        r10 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0135, code lost:
    
        com.google.android.gms.internal.ads.zzdt.zzf("MetadataUtil", "Failed to parse cover art attribute");
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x013f, code lost:
    
        if (r0 != 1631670868) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0141, code lost:
    
        r5 = g.awt.z(1631670868, "TPE2", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x014c, code lost:
    
        if (r0 != 1936682605) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x014e, code lost:
    
        r5 = g.awt.z(1936682605, "TSOT", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0159, code lost:
    
        if (r0 != 1936679276) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x015b, code lost:
    
        r5 = g.awt.z(1936679276, "TSOA", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0166, code lost:
    
        if (r0 != 1936679282) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0168, code lost:
    
        r5 = g.awt.z(1936679282, "TSOP", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0173, code lost:
    
        if (r0 != 1936679265) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0175, code lost:
    
        r5 = g.awt.z(1936679265, "TSO2", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0180, code lost:
    
        if (r0 != 1936679791) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0182, code lost:
    
        r5 = g.awt.z(1936679791, "TSOC", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x018d, code lost:
    
        if (r0 != 1920233063) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x018f, code lost:
    
        r5 = g.awt.k(1920233063, "ITUNESADVISORY", r1, r3, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x019a, code lost:
    
        if (r0 != 1885823344) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x019c, code lost:
    
        r5 = g.awt.k(1885823344, "ITUNESGAPLESS", r1, r3, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01a7, code lost:
    
        if (r0 != 1936683886) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01a9, code lost:
    
        r5 = g.awt.z(1936683886, "TVSHOWSORT", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01b4, code lost:
    
        if (r0 != 1953919848) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01b6, code lost:
    
        r5 = g.awt.z(1953919848, "TVSHOW", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01c1, code lost:
    
        if (r0 != 757935405) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01c3, code lost:
    
        r0 = r15;
        r5 = r0;
        r6 = -1;
        r10 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01cb, code lost:
    
        if (r1.zzd() >= r9) goto L251;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01cd, code lost:
    
        r11 = r1.zzd();
        r12 = r1.zzg();
        r13 = r1.zzg();
        r1.zzM(4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01e0, code lost:
    
        if (r13 != 1835360622) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01e2, code lost:
    
        r0 = r1.zzA(r12 - 12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01ea, code lost:
    
        r15 = r12 - 12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01f1, code lost:
    
        if (r13 != 1851878757) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01f3, code lost:
    
        r5 = r1.zzA(r15);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:212:0x03c0  */
    /* JADX WARN: Type inference failed for: r3v13, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v37 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzbd zzc(zzet zzetVar) {
        long j;
        zzbd zzbdVar;
        zzbd zzbdVar2;
        int i;
        zzbd zzbdVar3;
        zzed zzedVar = zzetVar.zza;
        int i2 = 8;
        zzedVar.zzL(8);
        boolean z = false;
        zzbd zzbdVar4 = new zzbd(-9223372036854775807L, new zzbc[0]);
        while (zzedVar.zzb() >= i2) {
            int zzd = zzedVar.zzd();
            int zzg = zzedVar.zzg() + zzd;
            int zzg2 = zzedVar.zzg();
            String str = null;
            if (zzg2 == 1835365473) {
                zzedVar.zzL(zzd);
                zzedVar.zzM(i2);
                zzg(zzedVar);
                boolean z2 = z;
                while (true) {
                    if (zzedVar.zzd() >= zzg) {
                        break;
                    }
                    int zzd2 = zzedVar.zzd();
                    int zzg3 = zzedVar.zzg() + zzd2;
                    if (zzedVar.zzg() == 1768715124) {
                        break;
                    }
                    zzedVar.zzL(zzg3);
                    i2 = 8;
                    z2 = false;
                    str = null;
                }
                zzbdVar4 = zzbdVar4.zzd(zzbdVar3);
                j = -9223372036854775807L;
            } else {
                if (zzg2 == 1936553057) {
                    zzedVar.zzL(zzd);
                    zzedVar.zzM(12);
                    while (true) {
                        if (zzedVar.zzd() >= zzg) {
                            break;
                        }
                        int zzd3 = zzedVar.zzd();
                        int zzg4 = zzedVar.zzg();
                        if (zzedVar.zzg() != 1935766900) {
                            zzedVar.zzL(zzd3 + zzg4);
                        } else if (zzg4 >= 16) {
                            zzedVar.zzM(4);
                            int i3 = 0;
                            int i4 = -1;
                            for (int i5 = 0; i5 < 2; i5++) {
                                int zzm = zzedVar.zzm();
                                int zzm2 = zzedVar.zzm();
                                if (zzm == 0) {
                                    i4 = zzm2;
                                } else if (zzm == 1) {
                                    i3 = zzm2;
                                }
                            }
                            if (i4 == 12) {
                                i = MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA;
                            } else if (i4 == 13) {
                                i = 120;
                            } else if (i4 != 21) {
                                i = -2147483647;
                            } else {
                                if (zzedVar.zzb() >= 8 && zzedVar.zzd() + 8 <= zzg) {
                                    int zzg5 = zzedVar.zzg();
                                    int zzg6 = zzedVar.zzg();
                                    if (zzg5 >= 12 && zzg6 == 1936877170) {
                                        i = zzedVar.zzn();
                                        zzbdVar2 = i != -2147483647 ? new zzbd(-9223372036854775807L, new zzahg(i, i3)) : null;
                                    }
                                }
                                i = -2147483647;
                                if (i != -2147483647) {
                                }
                            }
                            if (i != -2147483647) {
                            }
                        }
                    }
                    zzbdVar4 = zzbdVar4.zzd(zzbdVar2);
                } else if (zzg2 == -1451722374) {
                    short zzE = zzedVar.zzE();
                    zzedVar.zzM(2);
                    String zzB = zzedVar.zzB(zzE, StandardCharsets.UTF_8);
                    int max = Math.max(zzB.lastIndexOf(43), zzB.lastIndexOf(45));
                    try {
                        zzey zzeyVar = new zzey(Float.parseFloat(zzB.substring(0, max)), Float.parseFloat(zzB.substring(max, zzB.length() - 1)));
                        try {
                            zzbc[] zzbcVarArr = new zzbc[1];
                            try {
                                zzbcVarArr[0] = zzeyVar;
                                j = -9223372036854775807L;
                                try {
                                    zzbdVar = new zzbd(-9223372036854775807L, zzbcVarArr);
                                } catch (IndexOutOfBoundsException | NumberFormatException unused) {
                                    zzbdVar = null;
                                    zzbdVar4 = zzbdVar4.zzd(zzbdVar);
                                    zzedVar.zzL(zzg);
                                    i2 = 8;
                                    z = false;
                                }
                            } catch (IndexOutOfBoundsException | NumberFormatException unused2) {
                                j = -9223372036854775807L;
                                zzbdVar = null;
                                zzbdVar4 = zzbdVar4.zzd(zzbdVar);
                                zzedVar.zzL(zzg);
                                i2 = 8;
                                z = false;
                            }
                        } catch (IndexOutOfBoundsException | NumberFormatException unused3) {
                        }
                    } catch (IndexOutOfBoundsException | NumberFormatException unused4) {
                        j = -9223372036854775807L;
                    }
                    zzbdVar4 = zzbdVar4.zzd(zzbdVar);
                }
                j = -9223372036854775807L;
            }
            zzedVar.zzL(zzg);
            i2 = 8;
            z = false;
        }
        return zzbdVar4;
    }

    public static zzfb zzd(zzed zzedVar) {
        long zzt;
        long zzt2;
        zzedVar.zzL(8);
        if (zza(zzedVar.zzg()) == 0) {
            zzt = zzedVar.zzu();
            zzt2 = zzedVar.zzu();
        } else {
            zzt = zzedVar.zzt();
            zzt2 = zzedVar.zzt();
        }
        return new zzfb(zzt, zzt2, zzedVar.zzu());
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x0317  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0327  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzajh zze(zzaje zzajeVar, zzes zzesVar, zzadf zzadfVar) throws zzbh {
        xl gmeVar;
        boolean z;
        int i;
        int i2;
        int i3;
        long j;
        long[] jArr;
        long[] jArr2;
        int[] iArr;
        boolean z2;
        boolean z3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        long j2;
        int[] iArr2;
        int[] iArr3;
        long j3;
        int i9;
        int i10;
        long[] jArr3;
        int i11;
        long[] jArr4;
        long j4;
        long[] jArr5;
        int i12;
        int i13;
        int i14;
        int length;
        zzet zzb = zzesVar.zzb(1937011578);
        if (zzb != null) {
            gmeVar = new gvg(zzb, zzajeVar.zzf);
        } else {
            zzet zzb2 = zzesVar.zzb(1937013298);
            if (zzb2 == null) {
                throw zzbh.zza("Track has no sample table size information", null);
            }
            gmeVar = new gme(zzb2);
        }
        int zzb3 = gmeVar.zzb();
        if (zzb3 == 0) {
            return new zzajh(zzajeVar, new long[0], new int[0], 0, new long[0], new int[0], 0L);
        }
        zzet zzb4 = zzesVar.zzb(1937007471);
        if (zzb4 == null) {
            zzb4 = zzesVar.zzb(1668232756);
            zzb4.getClass();
            z = true;
        } else {
            z = false;
        }
        zzet zzb5 = zzesVar.zzb(1937011555);
        zzb5.getClass();
        zzed zzedVar = zzb5.zza;
        zzet zzb6 = zzesVar.zzb(1937011827);
        zzb6.getClass();
        zzed zzedVar2 = zzb6.zza;
        zzet zzb7 = zzesVar.zzb(1937011571);
        zzed zzedVar3 = zzb7 != null ? zzb7.zza : null;
        zzet zzb8 = zzesVar.zzb(1668576371);
        zzed zzedVar4 = zzb8 != null ? zzb8.zza : null;
        et etVar = new et(zzedVar, zzb4.zza, z);
        zzedVar2.zzL(12);
        int zzp = zzedVar2.zzp() - 1;
        int zzp2 = zzedVar2.zzp();
        int zzp3 = zzedVar2.zzp();
        if (zzedVar4 != null) {
            zzedVar4.zzL(12);
            i = zzedVar4.zzp();
        } else {
            i = 0;
        }
        if (zzedVar3 != null) {
            zzedVar3.zzL(12);
            i3 = zzedVar3.zzp();
            if (i3 > 0) {
                i2 = zzedVar3.zzp() - 1;
            } else {
                zzedVar3 = null;
                i2 = -1;
            }
        } else {
            i2 = -1;
            i3 = 0;
        }
        int zza2 = gmeVar.zza();
        String str = zzajeVar.zzf.zzo;
        xl xlVar = gmeVar;
        int i15 = i3;
        if (zza2 == -1 || !(("audio/raw".equals(str) || "audio/g711-mlaw".equals(str) || "audio/g711-alaw".equals(str)) && zzp == 0)) {
            j = 0;
        } else {
            if (i == 0 && i15 == 0) {
                int i16 = etVar.f16127d;
                long[] jArr6 = new long[i16];
                int[] iArr4 = new int[i16];
                while (etVar.j()) {
                    int i17 = etVar.f16130g;
                    jArr6[i17] = etVar.f16125b;
                    iArr4[i17] = etVar.h;
                }
                long j5 = zzp3;
                int i18 = 8192 / zza2;
                int i19 = 0;
                for (int i20 = 0; i20 < i16; i20++) {
                    int i21 = iArr4[i20];
                    int i22 = zzen.zza;
                    i19 += ((i21 + i18) - 1) / i18;
                }
                jArr = new long[i19];
                iArr3 = new int[i19];
                jArr2 = new long[i19];
                iArr = new int[i19];
                int i23 = 0;
                int i24 = 0;
                i9 = 0;
                int i25 = 0;
                j = 0;
                while (i23 < i16) {
                    int i26 = iArr4[i23];
                    int i27 = i25;
                    int i28 = i16;
                    int i29 = i9;
                    int i30 = i27;
                    long j6 = jArr6[i23];
                    long[] jArr7 = jArr6;
                    int i31 = i26;
                    while (i31 > 0) {
                        int min = Math.min(i18, i31);
                        jArr[i30] = j6;
                        int i32 = i31;
                        int i33 = zza2 * min;
                        iArr3[i30] = i33;
                        i29 = Math.max(i29, i33);
                        jArr2[i30] = i24 * j5;
                        iArr[i30] = 1;
                        j6 += iArr3[i30];
                        i24 += min;
                        i31 = i32 - min;
                        i30++;
                        zza2 = zza2;
                    }
                    i23++;
                    int i34 = i30;
                    i9 = i29;
                    i16 = i28;
                    i25 = i34;
                    jArr6 = jArr7;
                }
                j3 = j5 * i24;
                long[] jArr8 = jArr;
                long j7 = zzajeVar.zzc;
                RoundingMode roundingMode = RoundingMode.FLOOR;
                long zzu = zzen.zzu(j3, C.MICROS_PER_SECOND, j7, roundingMode);
                jArr3 = zzajeVar.zzh;
                if (jArr3 == null) {
                    zzen.zzF(jArr2, C.MICROS_PER_SECOND, zzajeVar.zzc);
                    return new zzajh(zzajeVar, jArr8, iArr3, i9, jArr2, iArr, zzu);
                }
                int i35 = zzb3;
                long j8 = j3;
                int[] iArr5 = iArr;
                int[] iArr6 = iArr3;
                long[] jArr9 = jArr2;
                int i36 = i9;
                if (jArr3.length == 1 && zzajeVar.zzb == 1 && (length = jArr9.length) >= 2) {
                    long[] jArr10 = zzajeVar.zzi;
                    jArr10.getClass();
                    long j9 = jArr10[0];
                    long zzu2 = zzen.zzu(jArr3[0], zzajeVar.zzc, zzajeVar.zzd, roundingMode) + j9;
                    int i37 = length - 1;
                    int max = Math.max(0, Math.min(4, i37));
                    int max2 = Math.max(0, Math.min(length - 4, i37));
                    long j10 = jArr9[0];
                    if (j10 <= j9 && j9 < jArr9[max] && jArr9[max2] < zzu2 && zzu2 <= j8) {
                        long zzu3 = zzen.zzu(j9 - j10, zzajeVar.zzf.zzD, zzajeVar.zzc, roundingMode);
                        long zzu4 = zzen.zzu(j8 - zzu2, zzajeVar.zzf.zzD, zzajeVar.zzc, roundingMode);
                        if (zzu3 == j) {
                            if (zzu4 != j) {
                                zzu3 = j;
                            }
                            jArr8 = jArr8;
                            iArr6 = iArr6;
                        }
                        if (zzu3 <= 2147483647L && zzu4 <= 2147483647L) {
                            zzadfVar.zza = (int) zzu3;
                            zzadfVar.zzb = (int) zzu4;
                            zzen.zzF(jArr9, C.MICROS_PER_SECOND, zzajeVar.zzc);
                            return new zzajh(zzajeVar, jArr8, iArr6, i36, jArr9, iArr5, zzen.zzu(zzajeVar.zzh[0], C.MICROS_PER_SECOND, zzajeVar.zzd, roundingMode));
                        }
                        jArr8 = jArr8;
                        iArr6 = iArr6;
                    }
                }
                long[] jArr11 = zzajeVar.zzh;
                int length2 = jArr11.length;
                if (length2 == 1) {
                    if (jArr11[0] == j) {
                        long[] jArr12 = zzajeVar.zzi;
                        jArr12.getClass();
                        long j11 = jArr12[0];
                        for (int i38 = 0; i38 < jArr9.length; i38++) {
                            jArr9[i38] = zzen.zzu(jArr9[i38] - j11, C.MICROS_PER_SECOND, zzajeVar.zzc, RoundingMode.FLOOR);
                        }
                        return new zzajh(zzajeVar, jArr8, iArr6, i36, jArr9, iArr5, zzen.zzu(j8 - j11, C.MICROS_PER_SECOND, zzajeVar.zzc, RoundingMode.FLOOR));
                    }
                    length2 = 1;
                }
                boolean z4 = zzajeVar.zzb == 1;
                long[] jArr13 = zzajeVar.zzi;
                int[] iArr7 = new int[length2];
                int[] iArr8 = new int[length2];
                jArr13.getClass();
                int i39 = 0;
                boolean z5 = false;
                int i40 = 0;
                int i41 = 0;
                while (true) {
                    long[] jArr14 = zzajeVar.zzh;
                    i11 = i36;
                    if (i41 >= jArr14.length) {
                        break;
                    }
                    int[] iArr9 = iArr8;
                    long[] jArr15 = jArr13;
                    long j12 = jArr15[i41];
                    if (j12 != -1) {
                        i12 = i41;
                        long zzu5 = zzen.zzu(jArr14[i41], zzajeVar.zzc, zzajeVar.zzd, RoundingMode.FLOOR);
                        jArr5 = jArr15;
                        int i42 = 1;
                        iArr7[i12] = zzen.zzd(jArr9, j12, true, true);
                        iArr9[i12] = zzen.zza(jArr9, j12 + zzu5, z4, false);
                        while (true) {
                            i13 = iArr7[i12];
                            i14 = iArr9[i12];
                            if (i13 >= i14 || (iArr5[i13] & i42) != 0) {
                                break;
                            }
                            iArr7[i12] = i13 + 1;
                            i42 = 1;
                        }
                        i39 = (i14 - i13) + i39;
                        z5 = (i40 != i13) | z5;
                        i40 = i14;
                    } else {
                        jArr5 = jArr15;
                        i12 = i41;
                    }
                    jArr13 = jArr5;
                    i41 = i12 + 1;
                    iArr8 = iArr9;
                    i36 = i11;
                }
                int[] iArr10 = iArr8;
                int i43 = 0;
                boolean z6 = (i39 != i35) | z5;
                long[] jArr16 = z6 ? new long[i39] : jArr8;
                int[] iArr11 = z6 ? new int[i39] : iArr6;
                int i44 = true == z6 ? 0 : i11;
                int[] iArr12 = z6 ? new int[i39] : iArr5;
                long[] jArr17 = new long[i39];
                int i45 = i44;
                long j13 = j;
                int i46 = 0;
                while (i43 < zzajeVar.zzh.length) {
                    long j14 = zzajeVar.zzi[i43];
                    int i47 = iArr7[i43];
                    int i48 = iArr10[i43];
                    boolean z7 = z6;
                    if (z6) {
                        int i49 = i48 - i47;
                        System.arraycopy(jArr8, i47, jArr16, i46, i49);
                        System.arraycopy(iArr6, i47, iArr11, i46, i49);
                        System.arraycopy(iArr5, i47, iArr12, i46, i49);
                    }
                    while (i47 < i48) {
                        long[] jArr18 = jArr8;
                        int[] iArr13 = iArr6;
                        long j15 = zzajeVar.zzd;
                        RoundingMode roundingMode2 = RoundingMode.FLOOR;
                        long zzu6 = zzen.zzu(j13, C.MICROS_PER_SECOND, j15, roundingMode2);
                        long zzu7 = zzen.zzu(jArr9[i47] - j14, C.MICROS_PER_SECOND, zzajeVar.zzc, roundingMode2);
                        long[] jArr19 = jArr16;
                        if (zzajeVar.zzb != 1) {
                            jArr4 = jArr9;
                            j4 = j;
                            zzu7 = Math.max(j4, zzu7);
                        } else {
                            jArr4 = jArr9;
                            j4 = j;
                        }
                        jArr17[i46] = zzu6 + zzu7;
                        if (z7 && iArr11[i46] > i45) {
                            i45 = iArr13[i47];
                        }
                        i46++;
                        i47++;
                        jArr8 = jArr18;
                        j = j4;
                        iArr6 = iArr13;
                        jArr16 = jArr19;
                        jArr9 = jArr4;
                    }
                    j13 += zzajeVar.zzh[i43];
                    i43++;
                    jArr8 = jArr8;
                    jArr16 = jArr16;
                    jArr9 = jArr9;
                    z6 = z7;
                }
                return new zzajh(zzajeVar, jArr16, iArr11, i45, jArr17, iArr12, zzen.zzu(j13, C.MICROS_PER_SECOND, zzajeVar.zzd, RoundingMode.FLOOR));
            }
            j = 0;
            zzp = 0;
        }
        long[] jArr20 = new long[zzb3];
        int[] iArr14 = new int[zzb3];
        long[] jArr21 = new long[zzb3];
        int[] iArr15 = new int[zzb3];
        int i50 = i15;
        zzed zzedVar5 = zzedVar4;
        int i51 = zzp;
        long j16 = j;
        long j17 = j16;
        int i52 = 0;
        int i53 = 0;
        int i54 = 0;
        int i55 = 0;
        int i56 = 0;
        while (true) {
            if (i54 >= zzb3) {
                jArr = jArr20;
                jArr2 = jArr21;
                iArr = iArr15;
                break;
            }
            long j18 = j16;
            boolean z8 = true;
            while (true) {
                if (i55 != 0) {
                    i10 = i55;
                    break;
                }
                z8 = etVar.j();
                if (!z8) {
                    i10 = 0;
                    break;
                }
                j18 = etVar.f16125b;
                i55 = etVar.h;
                zzb3 = zzb3;
            }
            int i57 = zzb3;
            if (!z8) {
                zzdt.zzf("BoxParsers", "Unexpected end of chunk data");
                jArr = Arrays.copyOf(jArr20, i54);
                iArr14 = Arrays.copyOf(iArr14, i54);
                jArr2 = Arrays.copyOf(jArr21, i54);
                iArr = Arrays.copyOf(iArr15, i54);
                zzb3 = i54;
                break;
            }
            if (zzedVar5 != null) {
                while (true) {
                    if (i56 != 0) {
                        break;
                    }
                    if (i <= 0) {
                        i56 = 0;
                        break;
                    }
                    i--;
                    i56 = zzedVar5.zzp();
                    i52 = zzedVar5.zzg();
                }
                i56--;
            }
            jArr20[i54] = j18;
            int zzc = xlVar.zzc();
            iArr14[i54] = zzc;
            if (zzc > i53) {
                i53 = zzc;
            }
            int i58 = i10;
            jArr21[i54] = j17 + i52;
            iArr15[i54] = zzedVar3 == null ? 1 : 0;
            if (i54 == i2) {
                iArr15[i54] = 1;
                i50--;
                if (i50 > 0) {
                    zzedVar3.getClass();
                    i2 = zzedVar3.zzp() - 1;
                }
            }
            j17 += zzp3;
            zzp2--;
            if (zzp2 == 0) {
                if (i51 > 0) {
                    i51--;
                    zzp2 = zzedVar2.zzp();
                    zzp3 = zzedVar2.zzg();
                } else {
                    zzp2 = 0;
                }
            }
            long j19 = j18 + iArr14[i54];
            i55 = i58 - 1;
            i54++;
            zzb3 = i57;
            j16 = j19;
        }
        long j20 = j17 + i52;
        if (zzedVar5 != null) {
            while (i > 0) {
                if (zzedVar5.zzp() != 0) {
                    z2 = false;
                    break;
                }
                zzedVar5.zzg();
                i--;
            }
        }
        z2 = true;
        if (i50 != 0) {
            z3 = z2;
            i4 = zzb3;
            i5 = i55;
            i6 = i51;
            i7 = i50;
            i8 = i56;
        } else if (zzp2 == 0) {
            if (i55 != 0) {
                z3 = z2;
                i4 = zzb3;
                i5 = i55;
                i6 = i51;
                i8 = i56;
                i7 = 0;
            } else if (i51 != 0) {
                z3 = z2;
                i4 = zzb3;
                i6 = i51;
                i8 = i56;
                i7 = 0;
                i5 = 0;
            } else if (i56 != 0) {
                z3 = z2;
                i4 = zzb3;
                i8 = i56;
                i7 = 0;
                i5 = 0;
                i6 = 0;
            } else if (z2) {
                i4 = zzb3;
                j2 = j20;
                iArr2 = iArr14;
                zzb3 = i4;
                iArr3 = iArr2;
                j3 = j2;
                i9 = i53;
                long[] jArr82 = jArr;
                long j72 = zzajeVar.zzc;
                RoundingMode roundingMode3 = RoundingMode.FLOOR;
                long zzu8 = zzen.zzu(j3, C.MICROS_PER_SECOND, j72, roundingMode3);
                jArr3 = zzajeVar.zzh;
                if (jArr3 == null) {
                }
            } else {
                i4 = zzb3;
                i7 = 0;
                i5 = 0;
                i6 = 0;
                i8 = 0;
                z3 = false;
            }
            zzp2 = 0;
        } else {
            z3 = z2;
            i4 = zzb3;
            i5 = i55;
            i6 = i51;
            i8 = i56;
            i7 = 0;
        }
        j2 = j20;
        iArr2 = iArr14;
        StringBuilder z9 = awf.z(zzajeVar.zza, i7, "Inconsistent stbl box for track ", ": remainingSynchronizationSamples ", ", remainingSamplesAtTimestampDelta ");
        z9.append(zzp2);
        z9.append(", remainingSamplesInChunk ");
        z9.append(i5);
        z9.append(", remainingTimestampDeltaChanges ");
        z9.append(i6);
        z9.append(", remainingSamplesAtTimestampOffset ");
        z9.append(i8);
        z9.append(true != z3 ? ", ctts invalid" : "");
        zzdt.zzf("BoxParsers", z9.toString());
        zzb3 = i4;
        iArr3 = iArr2;
        j3 = j2;
        i9 = i53;
        long[] jArr822 = jArr;
        long j722 = zzajeVar.zzc;
        RoundingMode roundingMode32 = RoundingMode.FLOOR;
        long zzu82 = zzen.zzu(j3, C.MICROS_PER_SECOND, j722, roundingMode32);
        jArr3 = zzajeVar.zzh;
        if (jArr3 == null) {
        }
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    public static java.util.List zzf(com.google.android.gms.internal.ads.zzes r70, com.google.android.gms.internal.ads.zzadf r71, long r72, com.google.android.gms.internal.ads.zzw r74, boolean r75, boolean r76, com.google.android.gms.internal.ads.zzfwh r77) throws com.google.android.gms.internal.ads.zzbh {
        /*
            Method dump skipped, instructions count: 3651
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzain.zzf(com.google.android.gms.internal.ads.zzes, com.google.android.gms.internal.ads.zzadf, long, com.google.android.gms.internal.ads.zzw, boolean, boolean, com.google.android.gms.internal.ads.zzfwh):java.util.List");
    }

    public static void zzg(zzed zzedVar) {
        int zzd = zzedVar.zzd();
        zzedVar.zzM(4);
        if (zzedVar.zzg() != 1751411826) {
            zzd += 4;
        }
        zzedVar.zzL(zzd);
    }
}
