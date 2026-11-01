package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import g.edt;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public final class zzdef extends zzdcc implements zzaym {

    /* renamed from: a, reason: collision with root package name */
    public final Context f5895a;

    /* renamed from: b, reason: collision with root package name */
    public final zzfet f5896b;

    /* renamed from: c, reason: collision with root package name */
    public final WeakHashMap f5897c;

    public zzdef(Context context, Set set, zzfet zzfetVar) {
        super(set);
        this.f5897c = new WeakHashMap(1);
        this.f5895a = context;
        this.f5896b = zzfetVar;
    }

    public final synchronized void zza(View view) {
        try {
            zzayn zzaynVar = (zzayn) this.f5897c.get(view);
            if (zzaynVar == null) {
                zzayn zzaynVar2 = new zzayn(this.f5895a, view);
                zzaynVar2.zzc(this);
                this.f5897c.put(view, zzaynVar2);
                zzaynVar = zzaynVar2;
            }
            if (this.f5896b.zzX) {
                zzbce zzbceVar = zzbcn.zzbv;
                edt edtVar = edt.f15376a;
                if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                    zzaynVar.zzg(((Long) edtVar.f15379d.zza(zzbcn.zzbu)).longValue());
                    return;
                }
            }
            zzaynVar.zzf();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzb(View view) {
        if (this.f5897c.containsKey(view)) {
            ((zzayn) this.f5897c.get(view)).zze(this);
            this.f5897c.remove(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaym
    public final synchronized void zzdp(final zzayl zzaylVar) {
        m(new zzdcb() { // from class: com.google.android.gms.internal.ads.zzdee
            @Override // com.google.android.gms.internal.ads.zzdcb
            public final void zza(Object obj) {
                ((zzaym) obj).zzdp(zzayl.this);
            }
        });
    }
}
