package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import g.egh;
import g.exk;
import java.io.InputStream;

/* loaded from: classes3.dex */
public final class zzbau extends exk {
    public static final Parcelable.Creator<zzbau> CREATOR = new zzbav();
    private ParcelFileDescriptor zza;
    private final boolean zzb;
    private final boolean zzc;
    private final long zzd;
    private final boolean zze;

    public zzbau() {
        this(null, false, false, 0L, false);
    }

    public zzbau(ParcelFileDescriptor parcelFileDescriptor, boolean z, boolean z2, long j, boolean z3) {
        this.zza = parcelFileDescriptor;
        this.zzb = z;
        this.zzc = z2;
        this.zzd = j;
        this.zze = z3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int af = egh.af(parcel, 20293);
        egh.u(parcel, 2, zzb(), i);
        boolean zzd = zzd();
        egh.aq(parcel, 3, 4);
        parcel.writeInt(zzd ? 1 : 0);
        boolean zzf = zzf();
        egh.aq(parcel, 4, 4);
        parcel.writeInt(zzf ? 1 : 0);
        long zza = zza();
        egh.aq(parcel, 5, 8);
        parcel.writeLong(zza);
        boolean zzg = zzg();
        egh.aq(parcel, 6, 4);
        parcel.writeInt(zzg ? 1 : 0);
        egh.s(parcel, af);
    }

    public final synchronized long zza() {
        return this.zzd;
    }

    public final synchronized ParcelFileDescriptor zzb() {
        return this.zza;
    }

    public final synchronized InputStream zzc() {
        if (this.zza == null) {
            return null;
        }
        ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(this.zza);
        this.zza = null;
        return autoCloseInputStream;
    }

    public final synchronized boolean zzd() {
        return this.zzb;
    }

    public final synchronized boolean zze() {
        return this.zza != null;
    }

    public final synchronized boolean zzf() {
        return this.zzc;
    }

    public final synchronized boolean zzg() {
        return this.zze;
    }
}
