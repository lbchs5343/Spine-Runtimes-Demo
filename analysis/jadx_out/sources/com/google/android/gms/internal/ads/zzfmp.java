package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.ClientApi;
import g.aik;
import g.akx;
import g.bme;
import g.cvb;
import g.edt;
import g.ghd;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzfmp {

    /* renamed from: a, reason: collision with root package name */
    public final ClientApi f8019a = new ClientApi();

    /* renamed from: b, reason: collision with root package name */
    public zzbpg f8020b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f8021c;

    /* renamed from: d, reason: collision with root package name */
    public final cvb f8022d;

    /* renamed from: e, reason: collision with root package name */
    public final akx f8023e;

    /* renamed from: f, reason: collision with root package name */
    public final ScheduledExecutorService f8024f;

    public zzfmp(Context context, akx akxVar, ScheduledExecutorService scheduledExecutorService, cvb cvbVar) {
        this.f8021c = context;
        this.f8023e = akxVar;
        this.f8024f = scheduledExecutorService;
        this.f8022d = cvbVar;
    }

    public static zzflx g() {
        zzbce zzbceVar = zzbcn.zzu;
        edt edtVar = edt.f15376a;
        return new zzflx(((Long) edtVar.f15379d.zza(zzbceVar)).longValue(), 2.0d, ((Long) edtVar.f15379d.zza(zzbcn.zzv)).longValue(), 0.2d);
    }

    public final zzfmo zza(ghd ghdVar, aik aikVar) {
        bme b2 = bme.b(ghdVar.zzb);
        if (b2 == null) {
            return null;
        }
        int ordinal = b2.ordinal();
        akx akxVar = this.f8023e;
        if (ordinal == 1) {
            int i = akxVar.clientJarVersion;
            zzbpg zzbpgVar = this.f8020b;
            cvb cvbVar = this.f8022d;
            return new zzflz(this.f8019a, this.f8021c, i, zzbpgVar, ghdVar, aikVar, this.f8024f, g(), cvbVar);
        }
        if (ordinal == 2) {
            int i2 = akxVar.clientJarVersion;
            zzbpg zzbpgVar2 = this.f8020b;
            cvb cvbVar2 = this.f8022d;
            return new zzfms(this.f8019a, this.f8021c, i2, zzbpgVar2, ghdVar, aikVar, this.f8024f, g(), cvbVar2);
        }
        if (ordinal != 5) {
            return null;
        }
        int i3 = akxVar.clientJarVersion;
        zzbpg zzbpgVar3 = this.f8020b;
        cvb cvbVar3 = this.f8022d;
        return new zzflw(this.f8019a, this.f8021c, i3, zzbpgVar3, ghdVar, aikVar, this.f8024f, g(), cvbVar3);
    }

    public final void zzb(zzbpg zzbpgVar) {
        this.f8020b = zzbpgVar;
    }
}
