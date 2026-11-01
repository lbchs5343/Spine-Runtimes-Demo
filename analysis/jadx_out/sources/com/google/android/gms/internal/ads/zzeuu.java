package com.google.android.gms.internal.ads;

import android.content.Context;
import g.akx;
import g.cmo;
import g.dcy;
import g.edt;
import g.ti;
import java.io.IOException;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzeuu implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final akx f7574a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f7575b;

    /* renamed from: c, reason: collision with root package name */
    public final zzges f7576c;

    /* renamed from: d, reason: collision with root package name */
    public final zzffo f7577d;

    public zzeuu(Context context, zzges zzgesVar, zzffo zzffoVar, akx akxVar) {
        this.f7575b = context;
        this.f7576c = zzgesVar;
        this.f7577d = zzffoVar;
        this.f7574a = akxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 53;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return this.f7576c.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeut
            /* JADX WARN: Code restructure failed: missing block: B:12:0x0046, code lost:
            
                if (((java.lang.Boolean) g.edt.f15376a.f15379d.zza(com.google.android.gms.internal.ads.zzbcn.zzdd)).booleanValue() == false) goto L14;
             */
            /* JADX WARN: Code restructure failed: missing block: B:13:0x005c, code lost:
            
                r3 = com.google.android.gms.internal.ads.zzftl.zzj(r0).zzh(((java.lang.Long) g.edt.f15376a.f15379d.zza(com.google.android.gms.internal.ads.zzbcn.zzdo)).longValue(), ((g.cmo) g.ti.f20033a.f20034ab.zzi()).ax());
             */
            /* JADX WARN: Code restructure failed: missing block: B:35:0x005a, code lost:
            
                if (((java.lang.Boolean) g.edt.f15376a.f15379d.zza(com.google.android.gms.internal.ads.zzbcn.zzdf)).booleanValue() != false) goto L17;
             */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object call() {
                zzfth zzfthVar;
                boolean z;
                boolean z2;
                zzeuu zzeuuVar = zzeuu.this;
                akx akxVar = zzeuuVar.f7574a;
                zzffo zzffoVar = zzeuuVar.f7577d;
                try {
                    Context context = zzeuuVar.f7575b;
                    boolean zzb = zzffoVar.zzb();
                    zzfth zzfthVar2 = new zzfth();
                    zzfth zzfthVar3 = new zzfth();
                    boolean z3 = true;
                    if (zzb) {
                        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzdh)).booleanValue()) {
                            return new zzeuv(true);
                        }
                    }
                    if (!zzb) {
                    }
                    if (zzb) {
                    }
                    zzbce zzbceVar = zzbcn.zzdl;
                    edt edtVar = edt.f15376a;
                    zzbcl zzbclVar = edtVar.f15379d;
                    zzbcl zzbclVar2 = edtVar.f15379d;
                    if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue() && akxVar.clientJarVersion < ((Integer) zzbclVar2.zza(zzbcn.zzdk)).intValue()) {
                        zzftm.zzi(context).zzj();
                    }
                    if ((zzb || !((Boolean) zzbclVar2.zza(zzbcn.zzde)).booleanValue()) && !(zzb && ((Boolean) zzbclVar2.zza(zzbcn.zzdg)).booleanValue())) {
                        zzfthVar = zzfthVar3;
                        z = true;
                        z2 = true;
                    } else {
                        zzftm zzi = zzftm.zzi(context);
                        zzfti zza = zzfti.zza(context);
                        if (akxVar.clientJarVersion >= ((Integer) zzbclVar2.zza(zzbcn.zzdk)).intValue()) {
                            zzfthVar3 = zzi.zzh(((Long) zzbclVar2.zza(zzbcn.zzdp)).longValue(), ((cmo) ti.f20033a.f20034ab.zzi()).ax());
                            z3 = zza.zzd();
                        }
                        z2 = zza.zze();
                        z = z3;
                        zzfthVar = zzfthVar3;
                    }
                    return new zzeuv(zzfthVar2, zzfthVar, z, z2, zzb);
                } catch (IOException e2) {
                    ti.f20033a.f20034ab.zzw(e2, "PerAppIdSignal");
                    return new zzeuv(zzffoVar.zzb());
                }
            }
        });
    }
}
