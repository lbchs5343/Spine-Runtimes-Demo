package g;

import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

/* loaded from: classes3.dex */
public abstract class cxm extends cwp implements ddw {

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f13694f = 0;

    /* renamed from: g, reason: collision with root package name */
    public final int f13695g;

    public cxm(byte[] bArr) {
        super("com.google.android.gms.common.internal.ICertData");
        ckd.u(bArr.length == 25);
        this.f13695g = Arrays.hashCode(bArr);
    }

    public static byte[] h(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // g.cwp
    public final boolean c(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            bjq zzd = zzd();
            parcel2.writeNoException();
            bon.d(parcel2, zzd);
            return true;
        }
        if (i != 2) {
            return false;
        }
        parcel2.writeNoException();
        parcel2.writeInt(this.f13695g);
        return true;
    }

    public abstract byte[] e();

    public final boolean equals(Object obj) {
        bjq zzd;
        if (obj != null && (obj instanceof ddw)) {
            try {
                ddw ddwVar = (ddw) obj;
                if (ddwVar.zzc() == this.f13695g && (zzd = ddwVar.zzd()) != null) {
                    return Arrays.equals(e(), (byte[]) bpp.b(zzd));
                }
            } catch (RemoteException e2) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f13695g;
    }

    @Override // g.ddw
    public final int zzc() {
        return this.f13695g;
    }

    @Override // g.ddw
    public final bjq zzd() {
        return new bpp(e());
    }
}
