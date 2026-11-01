package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public class fzo extends exk {
    public static final Parcelable.Creator<fzo> CREATOR = new fbe(5);
    private final int zza;
    private final boolean zzb;
    private final boolean zzc;
    private final int zzd;
    private final int zze;

    public fzo(int i, boolean z, boolean z2, int i2, int i3) {
        this.zza = i;
        this.zzb = z;
        this.zzc = z2;
        this.zzd = i2;
        this.zze = i3;
    }

    public int getBatchPeriodMillis() {
        return this.zzd;
    }

    public int getMaxMethodInvocationsInBatch() {
        return this.zze;
    }

    public boolean getMethodInvocationTelemetryEnabled() {
        return this.zzb;
    }

    public boolean getMethodTimingTelemetryEnabled() {
        return this.zzc;
    }

    public int getVersion() {
        return this.zza;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int af = egh.af(parcel, 20293);
        int version = getVersion();
        egh.aq(parcel, 1, 4);
        parcel.writeInt(version);
        boolean methodInvocationTelemetryEnabled = getMethodInvocationTelemetryEnabled();
        egh.aq(parcel, 2, 4);
        parcel.writeInt(methodInvocationTelemetryEnabled ? 1 : 0);
        boolean methodTimingTelemetryEnabled = getMethodTimingTelemetryEnabled();
        egh.aq(parcel, 3, 4);
        parcel.writeInt(methodTimingTelemetryEnabled ? 1 : 0);
        int batchPeriodMillis = getBatchPeriodMillis();
        egh.aq(parcel, 4, 4);
        parcel.writeInt(batchPeriodMillis);
        int maxMethodInvocationsInBatch = getMaxMethodInvocationsInBatch();
        egh.aq(parcel, 5, 4);
        parcel.writeInt(maxMethodInvocationsInBatch);
        egh.s(parcel, af);
    }
}
