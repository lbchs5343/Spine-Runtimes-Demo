package g;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;

/* loaded from: classes3.dex */
public final class cj extends cwp {

    /* renamed from: a, reason: collision with root package name */
    public final int f12963a;

    /* renamed from: b, reason: collision with root package name */
    public adw f12964b;

    public cj(adw adwVar, int i) {
        super("com.google.android.gms.common.internal.IGmsCallbacks");
        this.f12964b = adwVar;
        this.f12963a = i;
    }

    @Override // g.cwp
    public final boolean c(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            int readInt = parcel.readInt();
            IBinder readStrongBinder = parcel.readStrongBinder();
            Bundle bundle = (Bundle) bon.b(parcel, Bundle.CREATOR);
            bon.c(parcel);
            ckd.w(this.f12964b, "onPostInitComplete can be called only once per call to getRemoteService");
            adw adwVar = this.f12964b;
            int i2 = this.f12963a;
            adwVar.getClass();
            qv qvVar = new qv(adwVar, readInt, readStrongBinder, bundle);
            bmp bmpVar = adwVar.p;
            bmpVar.sendMessage(bmpVar.obtainMessage(1, i2, -1, qvVar));
            this.f12964b = null;
        } else if (i == 2) {
            parcel.readInt();
            bon.c(parcel);
            Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
        } else {
            if (i != 3) {
                return false;
            }
            int readInt2 = parcel.readInt();
            IBinder readStrongBinder2 = parcel.readStrongBinder();
            gus gusVar = (gus) bon.b(parcel, gus.CREATOR);
            bon.c(parcel);
            adw adwVar2 = this.f12964b;
            ckd.w(adwVar2, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
            ckd.k(gusVar);
            adwVar2.z = gusVar;
            if (adwVar2.usesClientTelemetry()) {
                csf csfVar = gusVar.zzd;
                cbn d2 = cbn.d();
                fzo zza = csfVar == null ? null : csfVar.zza();
                synchronized (d2) {
                    if (zza == null) {
                        zza = cbn.f12598b;
                    } else {
                        fzo fzoVar = d2.f12599c;
                        if (fzoVar != null) {
                            if (fzoVar.getVersion() < zza.getVersion()) {
                            }
                        }
                    }
                    d2.f12599c = zza;
                }
            }
            Bundle bundle2 = gusVar.zza;
            ckd.w(this.f12964b, "onPostInitComplete can be called only once per call to getRemoteService");
            adw adwVar3 = this.f12964b;
            int i3 = this.f12963a;
            adwVar3.getClass();
            qv qvVar2 = new qv(adwVar3, readInt2, readStrongBinder2, bundle2);
            bmp bmpVar2 = adwVar3.p;
            bmpVar2.sendMessage(bmpVar2.obtainMessage(1, i3, -1, qvVar2));
            this.f12964b = null;
        }
        parcel2.writeNoException();
        return true;
    }
}
