package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import g.agd;
import g.bjq;
import g.bpp;
import g.dqn;
import g.gga;
import g.gqh;
import g.hl;
import g.xn;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzbhw {

    /* renamed from: c, reason: collision with root package name */
    public final zzbhv f4822c;

    /* renamed from: e, reason: collision with root package name */
    public final zzbfz f4824e;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f4823d = new ArrayList();

    /* renamed from: a, reason: collision with root package name */
    public final hl f4820a = new hl();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f4821b = new ArrayList();

    public zzbhw(zzbhv zzbhvVar) {
        zzbfy zzbfyVar;
        IBinder iBinder;
        this.f4822c = zzbhvVar;
        zzbfz zzbfzVar = null;
        try {
            List zzu = zzbhvVar.zzu();
            if (zzu != null) {
                for (Object obj : zzu) {
                    if (!(obj instanceof IBinder) || (iBinder = (IBinder) obj) == null) {
                        zzbfyVar = null;
                    } else {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                        zzbfyVar = queryLocalInterface instanceof zzbfy ? (zzbfy) queryLocalInterface : new zzbfw(iBinder);
                    }
                    if (zzbfyVar != null) {
                        this.f4823d.add(new zzbfz(zzbfyVar));
                    }
                }
            }
        } catch (RemoteException e2) {
            agd.f("", e2);
        }
        try {
            List zzv = this.f4822c.zzv();
            if (zzv != null) {
                for (Object obj2 : zzv) {
                    gga c2 = obj2 instanceof IBinder ? gqh.c((IBinder) obj2) : null;
                    if (c2 != null) {
                        this.f4821b.add(new xn(c2));
                    }
                }
            }
        } catch (RemoteException e3) {
            agd.f("", e3);
        }
        try {
            zzbfy zzk = this.f4822c.zzk();
            if (zzk != null) {
                zzbfzVar = new zzbfz(zzk);
            }
        } catch (RemoteException e4) {
            agd.f("", e4);
        }
        this.f4824e = zzbfzVar;
        try {
            if (this.f4822c.zzi() != null) {
                new zzbfs(this.f4822c.zzi());
            }
        } catch (RemoteException e5) {
            agd.f("", e5);
        }
    }

    public final void performClick(Bundle bundle) {
        try {
            this.f4822c.zzz(bundle);
        } catch (RemoteException e2) {
            agd.f("", e2);
        }
    }

    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.f4822c.zzJ(bundle);
        } catch (RemoteException e2) {
            agd.f("", e2);
            return false;
        }
    }

    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.f4822c.zzC(bundle);
        } catch (RemoteException e2) {
            agd.f("", e2);
        }
    }

    public final hl zza() {
        hl hlVar = this.f4820a;
        zzbhv zzbhvVar = this.f4822c;
        try {
            if (zzbhvVar.zzh() != null) {
                hlVar.c(zzbhvVar.zzh());
            }
        } catch (RemoteException e2) {
            agd.f("Exception occurred while getting video controller", e2);
        }
        return hlVar;
    }

    public final dqn zzb() {
        return this.f4824e;
    }

    public final Double zzc() {
        try {
            double zze = this.f4822c.zze();
            if (zze == -1.0d) {
                return null;
            }
            return Double.valueOf(zze);
        } catch (RemoteException e2) {
            agd.f("", e2);
            return null;
        }
    }

    public final Object zzd() {
        try {
            bjq zzl = this.f4822c.zzl();
            if (zzl != null) {
                return bpp.b(zzl);
            }
            return null;
        } catch (RemoteException e2) {
            agd.f("", e2);
            return null;
        }
    }

    public final String zze() {
        try {
            return this.f4822c.zzn();
        } catch (RemoteException e2) {
            agd.f("", e2);
            return null;
        }
    }

    public final String zzf() {
        try {
            return this.f4822c.zzo();
        } catch (RemoteException e2) {
            agd.f("", e2);
            return null;
        }
    }

    public final String zzg() {
        try {
            return this.f4822c.zzp();
        } catch (RemoteException e2) {
            agd.f("", e2);
            return null;
        }
    }

    public final String zzh() {
        try {
            return this.f4822c.zzq();
        } catch (RemoteException e2) {
            agd.f("", e2);
            return null;
        }
    }

    public final String zzi() {
        try {
            return this.f4822c.zzs();
        } catch (RemoteException e2) {
            agd.f("", e2);
            return null;
        }
    }

    public final String zzj() {
        try {
            return this.f4822c.zzt();
        } catch (RemoteException e2) {
            agd.f("", e2);
            return null;
        }
    }

    public final List zzk() {
        return this.f4823d;
    }
}
