package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import g.edt;

/* loaded from: classes3.dex */
public final class zzawp extends zzaxt {

    /* renamed from: a, reason: collision with root package name */
    public final Activity f4558a;

    /* renamed from: b, reason: collision with root package name */
    public final View f4559b;

    public zzawp(zzawf zzawfVar, String str, String str2, zzasf zzasfVar, int i, int i2, View view, Activity activity) {
        super(zzawfVar, "s0uE9hdlawP+tYGHYSI6i0EWhWy7Tdc9XW5A0finsHWGrmLjBRDuDmlHo7fmD8mf", "0+4i1BfON/tZfr/zJSlwHIdubE7ug8Met8dVp0E6y4I=", zzasfVar, i, 62);
        this.f4559b = view;
        this.f4558a = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzaxt
    public final void c() {
        if (this.f4559b == null) {
            return;
        }
        Boolean bool = (Boolean) edt.f15376a.f15379d.zza(zzbcn.zzcI);
        boolean booleanValue = bool.booleanValue();
        Object[] objArr = (Object[]) this.j.invoke(null, this.f4559b, this.f4558a, bool);
        synchronized (this.i) {
            try {
                this.i.zzc(((Long) objArr[0]).longValue());
                this.i.zze(((Long) objArr[1]).longValue());
                if (booleanValue) {
                    this.i.zzd((String) objArr[2]);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
