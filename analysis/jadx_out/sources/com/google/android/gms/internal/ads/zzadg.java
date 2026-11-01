package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzadg {
    public final List zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final float zzi;
    public final int zzj;
    public final String zzk;
    public final zzfm zzl;

    public zzadg(List list, int i, int i2, int i3, int i4, int i5, int i6, int i7, float f2, int i8, String str, zzfm zzfmVar) {
        this.zza = list;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
        this.zze = i4;
        this.zzf = i5;
        this.zzg = i6;
        this.zzh = i7;
        this.zzi = f2;
        this.zzj = i8;
        this.zzk = str;
        this.zzl = zzfmVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0266  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzadg a(zzed zzedVar, boolean z, zzfm zzfmVar) {
        int i;
        int i2;
        zzfi zzfiVar;
        int i3;
        int max;
        int i4;
        int max2;
        int i5;
        int i6;
        int i7 = 4;
        if (z) {
            try {
                zzedVar.zzM(4);
            } catch (ArrayIndexOutOfBoundsException e2) {
                e = e2;
                throw zzbh.zza("Error parsing".concat(true == z ? "HEVC config" : "L-HEVC config"), e);
            }
        } else {
            try {
                zzedVar.zzM(21);
            } catch (ArrayIndexOutOfBoundsException e3) {
                e = e3;
                throw zzbh.zza("Error parsing".concat(true == z ? "HEVC config" : "L-HEVC config"), e);
            }
        }
        int zzm = zzedVar.zzm() & 3;
        int zzm2 = zzedVar.zzm();
        int zzd = zzedVar.zzd();
        int i8 = 0;
        int i9 = 0;
        for (int i10 = 0; i10 < zzm2; i10++) {
            zzedVar.zzM(1);
            int zzq = zzedVar.zzq();
            for (int i11 = 0; i11 < zzq; i11++) {
                int zzq2 = zzedVar.zzq();
                i9 += zzq2 + 4;
                zzedVar.zzM(zzq2);
            }
        }
        zzedVar.zzL(zzd);
        byte[] bArr = new byte[i9];
        zzfm zzfmVar2 = zzfmVar;
        int i12 = 0;
        int i13 = 0;
        int i14 = -1;
        int i15 = -1;
        int i16 = -1;
        int i17 = -1;
        int i18 = -1;
        int i19 = -1;
        float f2 = 1.0f;
        int i20 = -1;
        String str = null;
        while (i12 < zzm2) {
            int zzm3 = zzedVar.zzm() & 63;
            int zzq3 = zzedVar.zzq();
            zzfm zzfmVar3 = zzfmVar2;
            int i21 = 0;
            while (i21 < zzq3) {
                int zzq4 = zzedVar.zzq();
                int i22 = i21;
                System.arraycopy(zzfp.zza, i8, bArr, i13, i7);
                int i23 = i13 + 4;
                System.arraycopy(zzedVar.zzN(), zzedVar.zzd(), bArr, i23, zzq4);
                int i24 = 32;
                if (zzm3 != 32) {
                    i24 = zzm3;
                } else if (i22 == 0) {
                    zzfmVar3 = zzfp.zzd(bArr, i23, i23 + zzq4);
                    i2 = i23;
                    i = zzm;
                    i5 = 0;
                    i13 = i2 + zzq4;
                    zzedVar.zzM(zzq4);
                    i21 = i5 + 1;
                    zzm = i;
                    i7 = 4;
                    i8 = 0;
                }
                i = zzm;
                int i25 = 8;
                if (i24 != 33) {
                    i2 = i23;
                    if (i24 == 39 && i22 == 0) {
                        int i26 = i13 + 6;
                        int i27 = (i2 + zzq4) - 1;
                        while (true) {
                            byte b2 = bArr[i27];
                            if (b2 == 0) {
                                if (i27 <= i26) {
                                    break;
                                }
                                i27--;
                            } else if (b2 != 0 && i27 > i26) {
                                zzfq zzfqVar = new zzfq(bArr, i26, i27 + 1);
                                while (true) {
                                    if (!zzfqVar.zzg(16)) {
                                        break;
                                    }
                                    int zza = zzfqVar.zza(i25);
                                    int i28 = 0;
                                    while (zza == 255) {
                                        i28 += MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
                                        zza = zzfqVar.zza(i25);
                                    }
                                    int i29 = i28 + zza;
                                    int zza2 = zzfqVar.zza(i25);
                                    int i30 = 0;
                                    while (zza2 == 255) {
                                        i30 += MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
                                        zza2 = zzfqVar.zza(8);
                                    }
                                    int i31 = i30 + zza2;
                                    if (i31 == 0 || !zzfqVar.zzg(i31)) {
                                        break;
                                    }
                                    if (i29 == 176) {
                                        int zzc = zzfqVar.zzc();
                                        boolean zzh = zzfqVar.zzh();
                                        int zzc2 = zzh ? zzfqVar.zzc() : 0;
                                        int zzc3 = zzfqVar.zzc();
                                        int i32 = 0;
                                        int i33 = -1;
                                        int i34 = -1;
                                        int i35 = -1;
                                        int i36 = -1;
                                        int i37 = -1;
                                        int i38 = -1;
                                        while (i32 <= zzc3) {
                                            i33 = zzfqVar.zzc();
                                            i34 = zzfqVar.zzc();
                                            boolean z2 = zzh;
                                            int zza3 = zzfqVar.zza(6);
                                            if (zza3 != 63) {
                                                if (zza3 == 0) {
                                                    i3 = zza3;
                                                    max = Math.max(0, zzc - 30);
                                                } else {
                                                    i3 = zza3;
                                                    max = Math.max(0, (i3 + zzc) - 31);
                                                }
                                                i36 = zzfqVar.zza(max);
                                                if (z2) {
                                                    int zza4 = zzfqVar.zza(6);
                                                    if (zza4 != 63) {
                                                        if (zza4 == 0) {
                                                            i4 = zza4;
                                                            max2 = Math.max(0, zzc2 - 30);
                                                        } else {
                                                            i4 = zza4;
                                                            max2 = Math.max(0, (i4 + zzc2) - 31);
                                                        }
                                                        i38 = zzfqVar.zza(max2);
                                                        i37 = i4;
                                                    }
                                                }
                                                if (zzfqVar.zzh()) {
                                                    zzfqVar.zzf(10);
                                                }
                                                i32++;
                                                zzh = z2;
                                                i35 = i3;
                                            }
                                        }
                                        zzfiVar = new zzfi(zzc, zzc2, zzc3 + 1, i33, i34, i35, i36, i37, i38);
                                    } else {
                                        i25 = 8;
                                    }
                                }
                            }
                        }
                        zzfiVar = null;
                        if (zzfiVar != null && zzfmVar3 != null) {
                            if (zzfiVar.zza == ((zzfc) zzfmVar3.zza.get(0)).zzb) {
                                i5 = i22;
                                i19 = 4;
                            } else {
                                i5 = i22;
                                i19 = 5;
                            }
                        }
                    }
                    i5 = i22;
                } else if (i22 == 0) {
                    zzfj zzc4 = zzfp.zzc(bArr, i23, i23 + zzq4, zzfmVar3);
                    int i39 = zzc4.zzd;
                    int i40 = zzc4.zzb + 8;
                    int i41 = zzc4.zzc + 8;
                    int i42 = zzc4.zzh;
                    int i43 = zzc4.zzi;
                    i2 = i23;
                    int i44 = zzc4.zzj;
                    float f3 = zzc4.zzf;
                    int i45 = zzc4.zzg;
                    zzfe zzfeVar = zzc4.zza;
                    if (zzfeVar != null) {
                        i6 = i45;
                        str = zzdd.zzd(zzfeVar.zza, zzfeVar.zzb, zzfeVar.zzc, zzfeVar.zzd, zzfeVar.zze, zzfeVar.zzf);
                    } else {
                        i6 = i45;
                    }
                    i18 = i44;
                    f2 = f3;
                    i20 = i6;
                    i5 = i22;
                    i16 = i42;
                    i15 = i41;
                    i17 = i43;
                    i14 = i40;
                } else {
                    i2 = i23;
                    i5 = i22;
                }
                i13 = i2 + zzq4;
                zzedVar.zzM(zzq4);
                i21 = i5 + 1;
                zzm = i;
                i7 = 4;
                i8 = 0;
            }
            i12++;
            zzfmVar2 = zzfmVar3;
            zzm = zzm;
            i7 = 4;
            i8 = 0;
        }
        return new zzadg(i9 == 0 ? Collections.EMPTY_LIST : Collections.singletonList(bArr), zzm + 1, i14, i15, i16, i17, i18, i19, f2, i20, str, zzfmVar2);
    }

    public static zzadg zza(zzed zzedVar) throws zzbh {
        return a(zzedVar, false, null);
    }

    public static zzadg zzb(zzed zzedVar, zzfm zzfmVar) throws zzbh {
        return a(zzedVar, true, zzfmVar);
    }
}
