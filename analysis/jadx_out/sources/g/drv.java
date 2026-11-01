package g;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayc;
import com.google.android.gms.internal.ads.zzaye;
import com.google.android.gms.internal.ads.zzbpg;

/* loaded from: classes3.dex */
public final class drv extends zzayc {
    public drv(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.client.IAdManagerCreator", iBinder);
    }

    public final IBinder a(bpp bppVar, eno enoVar, String str, zzbpg zzbpgVar, int i) {
        Parcel r = r();
        zzaye.zzf(r, bppVar);
        zzaye.zzd(r, enoVar);
        r.writeString(str);
        zzaye.zzf(r, zzbpgVar);
        r.writeInt(243799000);
        r.writeInt(i);
        Parcel p = p(r, 2);
        IBinder readStrongBinder = p.readStrongBinder();
        p.recycle();
        return readStrongBinder;
    }
}
