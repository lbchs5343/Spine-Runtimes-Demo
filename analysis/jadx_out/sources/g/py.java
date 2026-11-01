package g;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayc;
import com.google.android.gms.internal.ads.zzaye;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class py extends zzayc implements gcq {
    public py(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.client.IResponseInfo", iBinder);
    }

    @Override // g.gcq
    public final Bundle zze() {
        Parcel p = p(r(), 5);
        Bundle bundle = (Bundle) zzaye.zza(p, Bundle.CREATOR);
        p.recycle();
        return bundle;
    }

    @Override // g.gcq
    public final uf zzf() {
        Parcel p = p(r(), 4);
        uf ufVar = (uf) zzaye.zza(p, uf.CREATOR);
        p.recycle();
        return ufVar;
    }

    @Override // g.gcq
    public final String zzg() {
        Parcel p = p(r(), 1);
        String readString = p.readString();
        p.recycle();
        return readString;
    }

    @Override // g.gcq
    public final String zzh() {
        Parcel p = p(r(), 6);
        String readString = p.readString();
        p.recycle();
        return readString;
    }

    @Override // g.gcq
    public final String zzi() {
        Parcel p = p(r(), 2);
        String readString = p.readString();
        p.recycle();
        return readString;
    }

    @Override // g.gcq
    public final List zzj() {
        Parcel p = p(r(), 3);
        ArrayList createTypedArrayList = p.createTypedArrayList(uf.CREATOR);
        p.recycle();
        return createTypedArrayList;
    }
}
