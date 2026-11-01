package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import g.dcy;
import g.esy;
import g.ti;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzewo implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final zzges f7640a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f7641b;

    public zzewo(zzges zzgesVar, Context context) {
        this.f7640a = zzgesVar;
        this.f7641b = context;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 39;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return this.f7640a.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzewn
            @Override // java.util.concurrent.Callable
            public final Object call() {
                int i;
                boolean z;
                int i2;
                int i3;
                Context context = zzewo.this.f7641b;
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                String networkOperator = telephonyManager.getNetworkOperator();
                int phoneType = telephonyManager.getPhoneType();
                ti tiVar = ti.f20033a;
                esy esyVar = tiVar.z;
                int i4 = -1;
                if (esy.w(context, "android.permission.ACCESS_NETWORK_STATE")) {
                    ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                    NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                    if (activeNetworkInfo != null) {
                        int type = activeNetworkInfo.getType();
                        int ordinal = activeNetworkInfo.getDetailedState().ordinal();
                        i3 = type;
                        i4 = ordinal;
                    } else {
                        i3 = -1;
                    }
                    z = connectivityManager.isActiveNetworkMetered();
                    i2 = i4;
                    i = i3;
                } else {
                    i = -2;
                    z = false;
                    i2 = -1;
                }
                return new zzewm(networkOperator, i, tiVar.k.f(context), phoneType, z, i2);
            }
        });
    }
}
