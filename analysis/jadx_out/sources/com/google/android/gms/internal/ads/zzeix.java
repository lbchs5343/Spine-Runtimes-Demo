package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* loaded from: classes3.dex */
public final class zzeix {

    /* renamed from: a, reason: collision with root package name */
    public final zzfgg f7086a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdqa f7087b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdsm f7088c;

    public zzeix(zzfgg zzfggVar, zzdqa zzdqaVar, zzdsm zzdsmVar) {
        this.f7086a = zzfggVar;
        this.f7087b = zzdqaVar;
        this.f7088c = zzdsmVar;
    }

    public final void zza(zzfew zzfewVar, zzfet zzfetVar, int i, zzeff zzeffVar, long j) {
        zzdpz zzdpzVar;
        zzdsl zza = this.f7088c.zza();
        zza.zzd(zzfewVar);
        zza.zzc(zzfetVar);
        zza.zzb("action", "adapter_status");
        zza.zzb("adapter_l", String.valueOf(j));
        zza.zzb("sc", Integer.toString(i));
        if (zzeffVar != null) {
            zza.zzb("arec", Integer.toString(zzeffVar.zzb().zza));
            String zza2 = this.f7086a.zza(zzeffVar.getMessage());
            if (zza2 != null) {
                zza.zzb("areec", zza2);
            }
        }
        Iterator it = zzfetVar.zzt.iterator();
        while (true) {
            if (!it.hasNext()) {
                zzdpzVar = null;
                break;
            }
            zzdpzVar = this.f7087b.zza((String) it.next());
            if (zzdpzVar != null) {
                break;
            }
        }
        if (zzdpzVar != null) {
            zza.zzb("ancn", zzdpzVar.zza);
            zzbru zzbruVar = zzdpzVar.zzb;
            if (zzbruVar != null) {
                zza.zzb("adapter_v", zzbruVar.toString());
            }
            zzbru zzbruVar2 = zzdpzVar.zzc;
            if (zzbruVar2 != null) {
                zza.zzb("adapter_sv", zzbruVar2.toString());
            }
        }
        zza.zzf();
    }
}
