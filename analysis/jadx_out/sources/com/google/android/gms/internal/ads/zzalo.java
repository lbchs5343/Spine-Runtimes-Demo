package com.google.android.gms.internal.ads;

import g.gpt;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes3.dex */
public final class zzalo implements zzaki {

    /* renamed from: a, reason: collision with root package name */
    public final zzed f4261a = new zzed();

    @Override // com.google.android.gms.internal.ads.zzaki
    public final void zza(byte[] bArr, int i, int i2, zzakh zzakhVar, zzdg zzdgVar) {
        zzct zzp;
        zzed zzedVar = this.f4261a;
        zzedVar.zzJ(bArr, i2 + i);
        zzedVar.zzL(i);
        ArrayList arrayList = new ArrayList();
        while (zzedVar.zzb() > 0) {
            zzdb.zze(zzedVar.zzb() >= 8, "Incomplete Mp4Webvtt Top Level box header found.");
            int zzg = zzedVar.zzg() - 8;
            if (zzedVar.zzg() == 1987343459) {
                CharSequence charSequence = null;
                zzcr zzcrVar = null;
                while (zzg > 0) {
                    zzdb.zze(zzg >= 8, "Incomplete vtt cue box header found.");
                    int zzg2 = zzedVar.zzg();
                    int zzg3 = zzedVar.zzg();
                    int i3 = zzg - 8;
                    int i4 = zzg2 - 8;
                    String zzC = zzen.zzC(zzedVar.zzN(), zzedVar.zzd(), i4);
                    zzedVar.zzM(i4);
                    if (zzg3 == 1937011815) {
                        gpt gptVar = new gpt();
                        zzaly.g(zzC, gptVar);
                        zzcrVar = gptVar.l();
                    } else if (zzg3 == 1885436268) {
                        charSequence = zzaly.f(null, zzC.trim(), Collections.EMPTY_LIST);
                    }
                    zzg = i3 - i4;
                }
                if (charSequence == null) {
                    charSequence = "";
                }
                if (zzcrVar != null) {
                    zzcrVar.zzl(charSequence);
                    zzp = zzcrVar.zzp();
                } else {
                    gpt gptVar2 = new gpt();
                    gptVar2.j = charSequence;
                    zzp = gptVar2.l().zzp();
                }
                arrayList.add(zzp);
            } else {
                zzedVar.zzM(zzg);
            }
        }
        zzdgVar.zza(new zzaka(arrayList, -9223372036854775807L, -9223372036854775807L));
    }
}
