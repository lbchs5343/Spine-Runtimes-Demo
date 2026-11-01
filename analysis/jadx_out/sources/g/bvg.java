package g;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayc;
import com.google.android.gms.internal.ads.zzaye;
import com.google.android.gms.internal.ads.zzbpc;

/* loaded from: classes3.dex */
public final class bvg extends zzayc {
    public final bhk a(bpp bppVar, zzbpc zzbpcVar) {
        bhk jjVar;
        Parcel r = r();
        zzaye.zzf(r, bppVar);
        zzaye.zzf(r, zzbpcVar);
        r.writeInt(243799000);
        Parcel p = p(r, 1);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            jjVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOutOfContextTester");
            jjVar = queryLocalInterface instanceof bhk ? (bhk) queryLocalInterface : new jj(readStrongBinder);
        }
        p.recycle();
        return jjVar;
    }
}
