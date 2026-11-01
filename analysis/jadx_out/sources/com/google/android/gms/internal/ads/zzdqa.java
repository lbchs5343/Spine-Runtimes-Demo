package com.google.android.gms.internal.ads;

import g.edt;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzdqa {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f6376a = new HashMap();

    /* JADX WARN: Removed duplicated region for block: B:16:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x001e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void b(String str, zzfgm zzfgmVar) {
        zzbru zze;
        if (this.f6376a.containsKey(str)) {
            return;
        }
        zzbru zzbruVar = null;
        if (zzfgmVar != null) {
            try {
                zze = zzfgmVar.zze();
            } catch (zzffv unused) {
            }
            if (zzfgmVar != null) {
                try {
                    zzbruVar = zzfgmVar.zzf();
                } catch (zzffv unused2) {
                }
            }
            boolean z = true;
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziW)).booleanValue()) {
                if (zzfgmVar != null) {
                    try {
                        zzfgmVar.zzC();
                    } catch (zzffv unused3) {
                    }
                }
                z = false;
            }
            this.f6376a.put(str, new zzdpz(str, zze, zzbruVar, z));
        }
        zze = null;
        if (zzfgmVar != null) {
        }
        boolean z2 = true;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziW)).booleanValue()) {
        }
        this.f6376a.put(str, new zzdpz(str, zze, zzbruVar, z2));
    }

    public final synchronized zzdpz zza(String str) {
        return (zzdpz) this.f6376a.get(str);
    }

    public final String zzb(String str) {
        zzbru zzbruVar;
        zzdpz zza = zza(str);
        return (zza == null || (zzbruVar = zza.zzb) == null) ? "" : zzbruVar.toString();
    }
}
