package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class zzaws extends zzaxt {

    /* renamed from: a, reason: collision with root package name */
    public static final zzaxu f4560a = new zzaxu();

    /* renamed from: b, reason: collision with root package name */
    public final Context f4561b;

    public zzaws(zzawf zzawfVar, String str, String str2, zzasf zzasfVar, int i, int i2, Context context) {
        super(zzawfVar, "lIDPVUPkMEk1KnSIojzWRzc28dDnPbiGtgyxpW7TpbmhRjdqd91I/FiR+wuEiwMR", "KJxrJ6uU/9eq7G+RMyslIXmSG1J2c6lM89WgXCr+3Fk=", zzasfVar, i, 29);
        this.f4561b = context;
    }

    @Override // com.google.android.gms.internal.ads.zzaxt
    public final void c() {
        this.i.zzn("E");
        AtomicReference zza = f4560a.zza(this.f4561b.getPackageName());
        if (zza.get() == null) {
            synchronized (zza) {
                try {
                    if (zza.get() == null) {
                        zza.set((String) this.j.invoke(null, this.f4561b));
                    }
                } finally {
                }
            }
        }
        String str = (String) zza.get();
        synchronized (this.i) {
            this.i.zzn(zzatt.zza(str.getBytes(), true));
        }
    }
}
