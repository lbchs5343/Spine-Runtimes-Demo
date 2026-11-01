package g;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class cde extends exk implements Iterable {
    public static final Parcelable.Creator<cde> CREATOR = new fbe(6);
    private final Bundle zza;

    public cde(Bundle bundle) {
        this.zza = bundle;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new nw(this);
    }

    public final String toString() {
        return this.zza.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int af = egh.af(parcel, 20293);
        egh.ac(parcel, 2, zzc());
        egh.s(parcel, af);
    }

    public final int zza() {
        return this.zza.size();
    }

    public final Bundle zzc() {
        return new Bundle(this.zza);
    }

    public final Double zzd(String str) {
        return Double.valueOf(this.zza.getDouble("value"));
    }

    public final Long zze(String str) {
        return Long.valueOf(this.zza.getLong("value"));
    }

    public final Object zzf(String str) {
        return this.zza.get(str);
    }

    public final String zzg(String str) {
        return this.zza.getString(str);
    }
}
