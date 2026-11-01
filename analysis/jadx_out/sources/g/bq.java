package g;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;

/* loaded from: classes3.dex */
public abstract class bq {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f11989a;

    /* renamed from: b, reason: collision with root package name */
    public static Context f11990b;

    /* renamed from: c, reason: collision with root package name */
    public static final chc f11991c;

    /* renamed from: d, reason: collision with root package name */
    public static final chc f11992d;

    /* renamed from: e, reason: collision with root package name */
    public static volatile gkq f11993e;

    static {
        new chc(cxm.h("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\bsù/\u008eQí"), 0);
        new chc(cxm.h("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014\u0003£²\u00ad×árÊkì"), 1);
        f11991c = new chc(cxm.h("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t\u0000Âà\u0087FdJ0\u008d0"), 2);
        f11992d = new chc(cxm.h("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t\u0000Õ\u0085¸l}ÓNõ0"), 3);
        f11989a = new Object();
    }

    public static synchronized void f(Context context) {
        synchronized (bq.class) {
            if (f11990b == null) {
                if (context != null) {
                    f11990b = context.getApplicationContext();
                }
            }
        }
    }

    public static gez g(String str, dig digVar, boolean z, boolean z2) {
        try {
            h();
            ckd.k(f11990b);
            aja ajaVar = new aja(str, (cxm) digVar, z, z2);
            try {
                gkq gkqVar = f11993e;
                bpp bppVar = new bpp(f11990b.getPackageManager());
                exy exyVar = (exy) gkqVar;
                Parcel _cd = exyVar._cd();
                int i = bon.f11910a;
                boolean z3 = true;
                _cd.writeInt(1);
                ajaVar.writeToParcel(_cd, 0);
                bon.d(_cd, bppVar);
                Parcel _ce = exyVar._ce(_cd, 5);
                if (_ce.readInt() == 0) {
                    z3 = false;
                }
                _ce.recycle();
                return z3 ? gez.f18007d : new bqx(new bsu(z, str, digVar));
            } catch (RemoteException e2) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
                return new gez(false, "module call", (Exception) e2);
            }
        } catch (eps e3) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e3);
            return new gez(false, "module init: ".concat(String.valueOf(e3.getMessage())), (Exception) e3);
        }
    }

    public static void h() {
        gkq exyVar;
        if (f11993e != null) {
            return;
        }
        ckd.k(f11990b);
        synchronized (f11989a) {
            try {
                if (f11993e == null) {
                    IBinder v = dxw.t(f11990b, dxw.f15045d, "com.google.android.gms.googlecertificates").v("com.google.android.gms.common.GoogleCertificatesImpl");
                    int i = rh.f19900a;
                    if (v == null) {
                        exyVar = null;
                    } else {
                        IInterface queryLocalInterface = v.queryLocalInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
                        exyVar = queryLocalInterface instanceof gkq ? (gkq) queryLocalInterface : new exy(v, "com.google.android.gms.common.internal.IGoogleCertificatesApi", 1);
                    }
                    f11993e = exyVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
