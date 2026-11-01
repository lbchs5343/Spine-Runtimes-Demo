package com.google.android.gms.internal.ads;

import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzbbs;
import g.aeh;
import g.agd;
import g.bdk;
import g.bvs;
import g.edt;
import g.gby;
import g.he;
import g.pa;
import g.ti;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.LinkedList;
import java.util.Map;

/* loaded from: classes3.dex */
public final class af implements zzfhc {

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f3935a;

    /* renamed from: b, reason: collision with root package name */
    public final zzfhj f3936b;

    /* renamed from: c, reason: collision with root package name */
    public final bdk f3937c = new bdk();

    public af(zzfhj zzfhjVar) {
        this.f3935a = new ConcurrentHashMap(zzfhjVar.zzd);
        this.f3936b = zzfhjVar;
    }

    public final void d() {
        Parcelable.Creator<zzfhj> creator = zzfhj.CREATOR;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgi)).booleanValue()) {
            StringBuilder sb = new StringBuilder();
            zzfhj zzfhjVar = this.f3936b;
            sb.append(zzfhjVar.zzb);
            sb.append(" PoolCollection");
            StringBuilder sb2 = new StringBuilder("\n\tPool does not exist: ");
            bdk bdkVar = this.f3937c;
            sb2.append(bdkVar.f11319a);
            sb2.append("\n\tNew pools created: ");
            sb2.append(bdkVar.f11323e);
            sb2.append("\n\tPools removed: ");
            sb2.append(bdkVar.f11324f);
            sb2.append("\n\tEntries added: ");
            sb2.append(bdkVar.f11322d);
            sb2.append("\n\tNo entries retrieved: ");
            sb2.append(bdkVar.f11320b);
            sb2.append("\n");
            sb.append(sb2.toString());
            int i = 0;
            for (Map.Entry entry : this.f3935a.entrySet()) {
                i++;
                sb.append(i);
                sb.append(". ");
                sb.append(entry.getValue());
                sb.append("#");
                sb.append(((zzfhm) entry.getKey()).hashCode());
                sb.append("    ");
                int i2 = 0;
                while (true) {
                    bvs bvsVar = (bvs) entry.getValue();
                    bvsVar.e();
                    if (i2 >= bvsVar.f12284b.size()) {
                        break;
                    }
                    sb.append("[O]");
                    i2++;
                }
                bvs bvsVar2 = (bvs) entry.getValue();
                bvsVar2.e();
                for (int size = bvsVar2.f12284b.size(); size < zzfhjVar.zzd; size++) {
                    sb.append("[ ]");
                }
                sb.append("\n");
                pa paVar = ((bvs) entry.getValue()).f12283a;
                sb.append("Created: " + paVar.f19794c + " Last accessed: " + paVar.f19797f + " Accesses: " + paVar.f19792a + "\nEntries retrieved: Valid: " + paVar.f19793b + " Stale: " + paVar.f19795d);
                sb.append("\n");
            }
            while (i < zzfhjVar.zzc) {
                i++;
                sb.append(i);
                sb.append(".\n");
            }
            agd.c(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfhc
    public final zzfhj zza() {
        return this.f3936b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0043, code lost:
    
        r5.f3937c.f11320b++;
     */
    @Override // com.google.android.gms.internal.ads.zzfhc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized zzfhl zzb(zzfhm zzfhmVar) {
        zzfhl zzfhlVar;
        try {
            bvs bvsVar = (bvs) this.f3935a.get(zzfhmVar);
            zzfhlVar = null;
            if (bvsVar != null) {
                pa paVar = bvsVar.f12283a;
                paVar.getClass();
                ti.f20033a.v.getClass();
                paVar.f19797f = System.currentTimeMillis();
                paVar.f19792a++;
                bvsVar.e();
                LinkedList linkedList = bvsVar.f12284b;
                if (!linkedList.isEmpty() && (zzfhlVar = (zzfhl) linkedList.remove()) != null) {
                    paVar.f19793b++;
                    paVar.f19796e.zza = true;
                }
                zzfhz zzfhzVar = bvsVar.f12283a.f19796e;
                zzfhz clone = zzfhzVar.clone();
                zzfhzVar.zza = false;
                zzfhzVar.zzb = 0;
                if (zzfhlVar != null) {
                    zzbbs.zzb.zzc zzd = zzbbs.zzb.zzd();
                    zzbbs.zzb.zza.C0209zza zza = zzbbs.zzb.zza.zza();
                    zza.zzf(zzbbs.zzb.zzd.IN_MEMORY);
                    zzbbs.zzb.zze.zza zzb = zzbbs.zzb.zze.zzb();
                    zzb.zzd(clone.zza);
                    zzb.zze(clone.zzb);
                    zza.zzg(zzb);
                    zzd.zzd(zza);
                    zzfhlVar.zza.zzb().zzc().zzi(zzd.zzbr());
                }
                d();
            } else {
                this.f3937c.f11319a++;
                d();
            }
        } catch (Throwable th) {
            throw th;
        }
        return zzfhlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfhc
    public final zzfhm zzc(aeh aehVar, String str, gby gbyVar) {
        zzfhj zzfhjVar = this.f3936b;
        return new zzfhn(aehVar, str, new zzbwa(zzfhjVar.zza).zza().zzj, zzfhjVar.zzf, gbyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfhc
    public final synchronized boolean zzd(zzfhm zzfhmVar, zzfhl zzfhlVar) {
        boolean z;
        try {
            bvs bvsVar = (bvs) this.f3935a.get(zzfhmVar);
            ti.f20033a.v.getClass();
            zzfhlVar.zzd = System.currentTimeMillis();
            if (bvsVar == null) {
                zzfhj zzfhjVar = this.f3936b;
                bvs bvsVar2 = new bvs(zzfhjVar.zzd, zzfhjVar.zze * 1000);
                if (this.f3935a.size() == this.f3936b.zzc) {
                    int i = this.f3936b.zzg;
                    int i2 = i - 1;
                    zzfhm zzfhmVar2 = null;
                    if (i == 0) {
                        throw null;
                    }
                    long j = Long.MAX_VALUE;
                    if (i2 == 0) {
                        for (Map.Entry entry : this.f3935a.entrySet()) {
                            if (((bvs) entry.getValue()).f12283a.f19794c < j) {
                                j = ((bvs) entry.getValue()).f12283a.f19794c;
                                zzfhmVar2 = (zzfhm) entry.getKey();
                            }
                        }
                        if (zzfhmVar2 != null) {
                            this.f3935a.remove(zzfhmVar2);
                        }
                    } else if (i2 == 1) {
                        for (Map.Entry entry2 : this.f3935a.entrySet()) {
                            if (((bvs) entry2.getValue()).f12283a.f19797f < j) {
                                j = ((bvs) entry2.getValue()).f12283a.f19797f;
                                zzfhmVar2 = (zzfhm) entry2.getKey();
                            }
                        }
                        if (zzfhmVar2 != null) {
                            this.f3935a.remove(zzfhmVar2);
                        }
                    } else if (i2 == 2) {
                        int i3 = he.UNDEFINED_ITEM_ID;
                        for (Map.Entry entry3 : this.f3935a.entrySet()) {
                            if (((bvs) entry3.getValue()).f12283a.f19792a < i3) {
                                i3 = ((bvs) entry3.getValue()).f12283a.f19792a;
                                zzfhmVar2 = (zzfhm) entry3.getKey();
                            }
                        }
                        if (zzfhmVar2 != null) {
                            this.f3935a.remove(zzfhmVar2);
                        }
                    }
                    bdk bdkVar = this.f3937c;
                    bdkVar.f11324f++;
                    bdkVar.f11321c.zzb = true;
                }
                this.f3935a.put(zzfhmVar, bvsVar2);
                bdk bdkVar2 = this.f3937c;
                bdkVar2.f11323e++;
                bdkVar2.f11321c.zza = true;
                bvsVar = bvsVar2;
            }
            pa paVar = bvsVar.f12283a;
            paVar.getClass();
            ti.f20033a.v.getClass();
            paVar.f19797f = System.currentTimeMillis();
            paVar.f19792a++;
            bvsVar.e();
            LinkedList linkedList = bvsVar.f12284b;
            if (linkedList.size() == bvsVar.f12285c) {
                z = false;
            } else {
                linkedList.add(zzfhlVar);
                z = true;
            }
            bdk bdkVar3 = this.f3937c;
            bdkVar3.f11322d++;
            zzfhe zzfheVar = bdkVar3.f11321c;
            zzfhe clone = zzfheVar.clone();
            zzfheVar.zza = false;
            zzfheVar.zzb = false;
            zzfhz zzfhzVar = bvsVar.f12283a.f19796e;
            zzfhz clone2 = zzfhzVar.clone();
            zzfhzVar.zza = false;
            zzfhzVar.zzb = 0;
            zzbbs.zzb.zzc zzd = zzbbs.zzb.zzd();
            zzbbs.zzb.zza.C0209zza zza = zzbbs.zzb.zza.zza();
            zza.zzf(zzbbs.zzb.zzd.IN_MEMORY);
            zzbbs.zzb.zzg.zza zzb = zzbbs.zzb.zzg.zzb();
            zzb.zze(clone.zza);
            zzb.zzf(clone.zzb);
            zzb.zzg(clone2.zzb);
            zza.zzi(zzb);
            zzd.zzd(zza);
            zzfhlVar.zza.zzb().zzc().zzj(zzd.zzbr());
            d();
        } catch (Throwable th) {
            throw th;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzfhc
    public final synchronized boolean zze(zzfhm zzfhmVar) {
        bvs bvsVar = (bvs) this.f3935a.get(zzfhmVar);
        if (bvsVar == null) {
            return true;
        }
        zzfhj zzfhjVar = this.f3936b;
        bvsVar.e();
        return bvsVar.f12284b.size() < zzfhjVar.zzd;
    }
}
