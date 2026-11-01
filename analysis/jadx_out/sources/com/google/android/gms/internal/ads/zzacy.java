package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class zzacy {
    public static int zza(zzed zzedVar, int i) {
        switch (i) {
            case 1:
                return MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i - 2);
            case 6:
                return zzedVar.zzm() + 1;
            case 7:
                return zzedVar.zzq() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i - 8);
            default:
                return -1;
        }
    }

    public static long zzb(zzacs zzacsVar, zzadc zzadcVar) throws IOException {
        zzacsVar.zzj();
        zzacsVar.zzg(1);
        byte[] bArr = new byte[1];
        zzacsVar.zzh(bArr, 0, 1);
        int i = bArr[0] & 1;
        boolean z = 1 == i;
        zzacsVar.zzg(2);
        int i2 = 1 != i ? 6 : 7;
        zzed zzedVar = new zzed(i2);
        zzedVar.zzK(zzacv.zza(zzacsVar, zzedVar.zzN(), 0, i2));
        zzacsVar.zzj();
        zzacx zzacxVar = new zzacx();
        try {
            long zzx = zzedVar.zzx();
            if (!z) {
                zzx *= zzadcVar.zzb;
            }
            zzacxVar.zza = zzx;
            return zzx;
        } catch (NumberFormatException unused) {
            throw zzbh.zza(null, null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0089, code lost:
    
        if (r4 != r23.zzf) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0094, code lost:
    
        if ((r22.zzm() * 1000) == r7) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00a3, code lost:
    
        if (r3 == r7) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean zzc(zzed zzedVar, zzadc zzadcVar, int i, zzacx zzacxVar) {
        int zzd = zzedVar.zzd();
        long zzu = zzedVar.zzu();
        long j = zzu >>> 16;
        if (j == i) {
            boolean z = (j & 1) == 1;
            long j2 = zzu >> 12;
            long j3 = zzu >> 8;
            long j4 = zzu >> 4;
            long j5 = zzu >> 1;
            long j6 = zzu & 1;
            int i2 = (int) (j4 & 15);
            if (i2 > 7 ? !(i2 > 10 || zzadcVar.zzg != 2) : i2 == zzadcVar.zzg - 1) {
                int i3 = (int) (j5 & 7);
                if ((i3 == 0 || i3 == zzadcVar.zzi) && j6 != 1) {
                    try {
                        long zzx = zzedVar.zzx();
                        if (!z) {
                            zzx *= zzadcVar.zzb;
                        }
                        zzacxVar.zza = zzx;
                        int zza = zza(zzedVar, (int) (j2 & 15));
                        if (zza != -1 && zza <= zzadcVar.zzb) {
                            int i4 = zzadcVar.zze;
                            int i5 = (int) (j3 & 15);
                            if (i5 != 0) {
                                if (i5 > 11) {
                                    if (i5 != 12) {
                                        if (i5 <= 14) {
                                            int zzq = zzedVar.zzq();
                                            if (i5 == 14) {
                                                zzq *= 10;
                                            }
                                        }
                                    }
                                }
                            }
                            if (zzedVar.zzm() == zzen.zzg(zzedVar.zzN(), zzd, zzedVar.zzd() - 1, 0)) {
                                return true;
                            }
                        }
                    } catch (NumberFormatException unused) {
                    }
                }
            }
        }
        return false;
    }
}
