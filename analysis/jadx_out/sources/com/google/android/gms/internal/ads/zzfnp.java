package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Date;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class zzfnp implements zzfns {

    /* renamed from: a, reason: collision with root package name */
    public static final zzfnp f8066a = new zzfnp(new zzfnt());

    /* renamed from: b, reason: collision with root package name */
    public boolean f8067b;

    /* renamed from: c, reason: collision with root package name */
    public Date f8068c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f8069d;

    /* renamed from: e, reason: collision with root package name */
    public final zzfnt f8070e;

    public zzfnp(zzfnt zzfntVar) {
        this.f8070e = zzfntVar;
    }

    public static zzfnp zza() {
        return f8066a;
    }

    public final Date zzb() {
        Date date = this.f8068c;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzfns
    public final void zzc(boolean z) {
        if (!this.f8067b && z) {
            Date date = new Date();
            Date date2 = this.f8068c;
            if (date2 == null || date.after(date2)) {
                this.f8068c = date;
                if (this.f8069d) {
                    Iterator it = zzfnr.zza().zzb().iterator();
                    while (it.hasNext()) {
                        ((zzfna) it.next()).zzg().zzg(zzb());
                    }
                }
            }
        }
        this.f8067b = z;
    }

    public final void zzd(Context context) {
        if (this.f8069d) {
            return;
        }
        zzfnt zzfntVar = this.f8070e;
        zzfntVar.zzd(context);
        zzfntVar.zze(this);
        zzfntVar.zzf();
        this.f8067b = zzfntVar.f8077d;
        this.f8069d = true;
    }
}
