package com.google.android.gms.internal.ads;

import g.cxb;
import g.dfl;
import g.eol;
import g.erw;
import g.eub;
import g.fse;
import g.gli;
import g.hj;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public final class x implements g.ah {

    /* renamed from: a, reason: collision with root package name */
    public final zzhai f3995a;

    /* renamed from: b, reason: collision with root package name */
    public final i f3996b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3997c;

    public x(i iVar, zzhai zzhaiVar) {
        i iVar2 = erw.f16067a;
        this.f3996b = iVar;
        this.f3997c = zzhaiVar instanceof zzgyt;
        this.f3995a = zzhaiVar;
    }

    @Override // g.ah
    public final void d(Object obj, byte[] bArr, int i, int i2, fse fseVar) {
        zzgyx zzgyxVar = (zzgyx) obj;
        if (zzgyxVar.zzt == zzhbo.zzc()) {
            zzgyxVar.zzt = zzhbo.g();
        }
        throw null;
    }

    @Override // g.ah
    public final int e(zzgyx zzgyxVar) {
        int hashCode = zzgyxVar.zzt.hashCode();
        if (!this.f3997c) {
            return hashCode;
        }
        return ((zzgyt) zzgyxVar).zza.f13668b.hashCode() + (hashCode * 53);
    }

    @Override // g.ah
    public final boolean f(zzgyx zzgyxVar, zzgyx zzgyxVar2) {
        if (!zzgyxVar.zzt.equals(zzgyxVar2.zzt)) {
            return false;
        }
        if (this.f3997c) {
            return ((zzgyt) zzgyxVar).zza.equals(((zzgyt) zzgyxVar2).zza);
        }
        return true;
    }

    @Override // g.ah
    public final void g(Object obj) {
        this.f3996b.getClass();
        ((zzgyx) obj).zzt.zzh();
        i iVar = erw.f16067a;
        i.c(obj);
    }

    @Override // g.ah
    public final boolean h(Object obj) {
        return ((zzgyt) obj).zza.n();
    }

    @Override // g.ah
    public final void i(Object obj, gli gliVar) {
        Iterator k = ((zzgyt) obj).zza.k();
        while (k.hasNext()) {
            Map.Entry entry = (Map.Entry) k.next();
            zzgyl zzgylVar = (zzgyl) entry.getKey();
            if (zzgylVar.zzc() != zzhcb.zzi || zzgylVar.zze() || zzgylVar.zzd()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (entry instanceof dfl) {
                ((eub) gliVar).c(zzgylVar.zza(), ((zzgzs) ((dfl) entry).f14093a.getValue()).zzb());
            } else {
                ((eub) gliVar).c(zzgylVar.zza(), entry.getValue());
            }
        }
        zzhbo zzhboVar = ((zzgyx) obj).zzt;
        for (int i = 0; i < zzhboVar.f8702d; i++) {
            ((eub) gliVar).c(zzhboVar.f8703e[i] >>> 3, zzhboVar.f8704f[i]);
        }
    }

    @Override // g.ah
    public final int j(zzgyx zzgyxVar) {
        int zzb = zzgyxVar.zzt.zzb();
        if (!this.f3997c) {
            return zzb;
        }
        eol eolVar = ((zzgyt) zzgyxVar).zza.f13668b;
        int i = eolVar.f15904f;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += cxb.g(eolVar.m(i3));
        }
        Iterator it = eolVar.j().iterator();
        while (it.hasNext()) {
            i2 += cxb.g((Map.Entry) it.next());
        }
        return zzb + i2;
    }

    @Override // g.ah
    public final void k(Object obj, Object obj2) {
        e.m(obj, obj2);
        if (this.f3997c) {
            i iVar = erw.f16067a;
            if (((zzgyt) obj2).zza.f13668b.isEmpty()) {
                return;
            }
            throw null;
        }
    }

    @Override // g.ah
    public final void l(Object obj, hj hjVar, zzgyh zzgyhVar) {
        this.f3996b.getClass();
        i.b(obj);
        throw null;
    }

    @Override // g.ah
    public final Object zze() {
        zzhai zzhaiVar = this.f3995a;
        return zzhaiVar instanceof zzgyx ? ((zzgyx) zzhaiVar).cm() : zzhaiVar.zzcZ().zzbs();
    }
}
