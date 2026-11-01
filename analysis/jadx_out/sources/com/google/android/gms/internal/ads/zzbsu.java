package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import g.agd;
import g.clr;
import g.dgy;
import g.eox;
import g.fxr;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzbsu {

    /* renamed from: a, reason: collision with root package name */
    public final zzbgs f4988a;

    /* renamed from: b, reason: collision with root package name */
    public zzbsn f4989b;

    public zzbsu(zzbgs zzbgsVar) {
        this.f4988a = zzbgsVar;
    }

    public final void destroy() {
        try {
            this.f4988a.zzl();
        } catch (RemoteException e2) {
            agd.f("", e2);
        }
    }

    public final List<String> getAvailableAssetNames() {
        try {
            return this.f4988a.zzk();
        } catch (RemoteException e2) {
            agd.f("", e2);
            return null;
        }
    }

    public final String getCustomFormatId() {
        try {
            return this.f4988a.zzi();
        } catch (RemoteException e2) {
            agd.f("", e2);
            return null;
        }
    }

    public final dgy getDisplayOpenMeasurement() {
        zzbgs zzbgsVar = this.f4988a;
        try {
            if (this.f4989b == null && zzbgsVar.zzq()) {
                this.f4989b = new zzbsn(zzbgsVar);
            }
        } catch (RemoteException e2) {
            agd.f("", e2);
        }
        return this.f4989b;
    }

    public final eox getImage(String str) {
        try {
            zzbfy zzg = this.f4988a.zzg(str);
            if (zzg != null) {
                return new zzbso(zzg);
            }
            return null;
        } catch (RemoteException e2) {
            agd.f("", e2);
            return null;
        }
    }

    public final fxr getMediaContent() {
        zzbgs zzbgsVar = this.f4988a;
        try {
            if (zzbgsVar.zzf() != null) {
                return new clr(zzbgsVar.zzf(), zzbgsVar);
            }
            return null;
        } catch (RemoteException e2) {
            agd.f("", e2);
            return null;
        }
    }

    public final CharSequence getText(String str) {
        try {
            return this.f4988a.zzj(str);
        } catch (RemoteException e2) {
            agd.f("", e2);
            return null;
        }
    }

    public final void performClick(String str) {
        try {
            this.f4988a.zzn(str);
        } catch (RemoteException e2) {
            agd.f("", e2);
        }
    }

    public final void recordImpression() {
        try {
            this.f4988a.zzo();
        } catch (RemoteException e2) {
            agd.f("", e2);
        }
    }
}
