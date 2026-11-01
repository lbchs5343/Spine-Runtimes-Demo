package com.google.android.gms.internal.ads;

import android.util.Base64;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzaed {
    public static int zza(int i) {
        int i2 = 0;
        while (i > 0) {
            i >>>= 1;
            i2++;
        }
        return i2;
    }

    public static zzbd zzb(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            String str = (String) list.get(i);
            int i2 = zzen.zza;
            String[] split = str.split("=", 2);
            if (split.length != 2) {
                zzdt.zzf("VorbisUtil", "Failed to parse Vorbis comment: ".concat(str));
            } else if (split[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(zzafr.zzb(new zzed(Base64.decode(split[1], 0))));
                } catch (RuntimeException e2) {
                    zzdt.zzg("VorbisUtil", "Failed to parse vorbis picture", e2);
                }
            } else {
                arrayList.add(new zzahi(split[0], split[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new zzbd(arrayList);
    }

    public static zzaea zzc(zzed zzedVar, boolean z, boolean z2) throws zzbh {
        if (z) {
            zzd(3, zzedVar, false);
        }
        String zzB = zzedVar.zzB((int) zzedVar.zzs(), StandardCharsets.UTF_8);
        int length = zzB.length();
        long zzs = zzedVar.zzs();
        String[] strArr = new String[(int) zzs];
        int i = length + 15;
        for (int i2 = 0; i2 < zzs; i2++) {
            String zzB2 = zzedVar.zzB((int) zzedVar.zzs(), StandardCharsets.UTF_8);
            strArr[i2] = zzB2;
            i = i + 4 + zzB2.length();
        }
        if (z2 && (zzedVar.zzm() & 1) == 0) {
            throw zzbh.zza("framing bit expected to be set", null);
        }
        return new zzaea(zzB, strArr, i + 1);
    }

    public static boolean zzd(int i, zzed zzedVar, boolean z) throws zzbh {
        if (zzedVar.zzb() < 7) {
            if (z) {
                return false;
            }
            throw zzbh.zza("too short header: " + zzedVar.zzb(), null);
        }
        if (zzedVar.zzm() != i) {
            if (z) {
                return false;
            }
            throw zzbh.zza("expected header type ".concat(String.valueOf(Integer.toHexString(i))), null);
        }
        if (zzedVar.zzm() == 118 && zzedVar.zzm() == 111 && zzedVar.zzm() == 114 && zzedVar.zzm() == 98 && zzedVar.zzm() == 105 && zzedVar.zzm() == 115) {
            return true;
        }
        if (z) {
            return false;
        }
        throw zzbh.zza("expected characters 'vorbis'", null);
    }
}
