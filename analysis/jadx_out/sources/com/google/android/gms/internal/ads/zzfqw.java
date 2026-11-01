package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import g.bjb;
import g.etz;
import g.lb;

/* loaded from: classes3.dex */
public final class zzfqw extends etz {

    /* renamed from: d, reason: collision with root package name */
    public final int f8158d;

    public zzfqw(Context context, Looper looper, bjb bjbVar, lb lbVar, int i) {
        super(context, looper, bjbVar, lbVar, 116);
        this.f8158d = i;
    }

    @Override // g.adw
    public final String a() {
        return "com.google.android.gms.gass.internal.IGassService";
    }

    @Override // g.adw
    public final String b() {
        return "com.google.android.gms.gass.START";
    }

    @Override // g.adw
    public final IInterface c(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.gass.internal.IGassService");
        return queryLocalInterface instanceof zzfrb ? (zzfrb) queryLocalInterface : new zzfrb("com.google.android.gms.gass.internal.IGassService", iBinder);
    }

    @Override // g.adw
    public final int getMinApkVersion() {
        return this.f8158d;
    }

    public final zzfrb zzp() throws DeadObjectException {
        return (zzfrb) getService();
    }
}
