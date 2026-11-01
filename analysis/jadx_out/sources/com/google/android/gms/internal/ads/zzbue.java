package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import g.bpp;
import g.egh;
import g.exk;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzbue extends exk {
    public static final Parcelable.Creator<zzbue> CREATOR = new zzbuf();
    public final View zza;
    public final Map zzb;

    public zzbue(IBinder iBinder, IBinder iBinder2) {
        this.zza = (View) bpp.b(bpp.d(iBinder));
        this.zzb = (Map) bpp.b(bpp.d(iBinder2));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        View view = this.zza;
        int af = egh.af(parcel, 20293);
        egh.az(parcel, 1, new bpp(view));
        egh.az(parcel, 2, new bpp(this.zzb));
        egh.s(parcel, af);
    }
}
