package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public class csf extends exk {
    public static final Parcelable.Creator<csf> CREATOR = new cqu(3);
    private final fzo zza;
    private final boolean zzb;
    private final boolean zzc;
    private final int[] zzd;
    private final int zze;
    private final int[] zzf;

    public csf(fzo fzoVar, boolean z, boolean z2, int[] iArr, int i, int[] iArr2) {
        this.zza = fzoVar;
        this.zzb = z;
        this.zzc = z2;
        this.zzd = iArr;
        this.zze = i;
        this.zzf = iArr2;
    }

    public int getMaxMethodInvocationsLogged() {
        return this.zze;
    }

    public int[] getMethodInvocationMethodKeyAllowlist() {
        return this.zzd;
    }

    public int[] getMethodInvocationMethodKeyDisallowlist() {
        return this.zzf;
    }

    public boolean getMethodInvocationTelemetryEnabled() {
        return this.zzb;
    }

    public boolean getMethodTimingTelemetryEnabled() {
        return this.zzc;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int af = egh.af(parcel, 20293);
        egh.u(parcel, 1, this.zza, i);
        boolean methodInvocationTelemetryEnabled = getMethodInvocationTelemetryEnabled();
        egh.aq(parcel, 2, 4);
        parcel.writeInt(methodInvocationTelemetryEnabled ? 1 : 0);
        boolean methodTimingTelemetryEnabled = getMethodTimingTelemetryEnabled();
        egh.aq(parcel, 3, 4);
        parcel.writeInt(methodTimingTelemetryEnabled ? 1 : 0);
        int[] methodInvocationMethodKeyAllowlist = getMethodInvocationMethodKeyAllowlist();
        if (methodInvocationMethodKeyAllowlist != null) {
            int af2 = egh.af(parcel, 4);
            parcel.writeIntArray(methodInvocationMethodKeyAllowlist);
            egh.s(parcel, af2);
        }
        int maxMethodInvocationsLogged = getMaxMethodInvocationsLogged();
        egh.aq(parcel, 5, 4);
        parcel.writeInt(maxMethodInvocationsLogged);
        int[] methodInvocationMethodKeyDisallowlist = getMethodInvocationMethodKeyDisallowlist();
        if (methodInvocationMethodKeyDisallowlist != null) {
            int af3 = egh.af(parcel, 6);
            parcel.writeIntArray(methodInvocationMethodKeyDisallowlist);
            egh.s(parcel, af3);
        }
        egh.s(parcel, af);
    }

    public final fzo zza() {
        return this.zza;
    }
}
