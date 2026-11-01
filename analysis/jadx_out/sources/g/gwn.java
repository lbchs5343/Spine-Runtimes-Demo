package g;

import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public abstract class gwn {

    /* renamed from: a, reason: collision with root package name */
    public static final bch f18884a;

    /* renamed from: b, reason: collision with root package name */
    public static final ArrayList f18885b;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f18886c = false;

    /* renamed from: d, reason: collision with root package name */
    public static final ArrayList f18887d;

    /* renamed from: e, reason: collision with root package name */
    public static boolean f18888e = false;

    /* renamed from: f, reason: collision with root package name */
    public static IBinder f18889f = null;

    /* renamed from: g, reason: collision with root package name */
    public static boolean f18890g = false;
    public static final Handler h;
    public static final emv i;
    public static gyu j = null;
    public static final ArrayList k;
    public static int l = -1;
    public static boolean m;

    static {
        bch bchVar = new bch();
        bchVar.attachInterface(bchVar, "moe.shizuku.server.IShizukuApplication");
        f18884a = bchVar;
        i = new emv();
        k = new ArrayList();
        f18885b = new ArrayList();
        f18887d = new ArrayList();
        h = new Handler(Looper.getMainLooper());
    }

    public static void n() {
        ArrayList arrayList = k;
        synchronized (arrayList) {
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    iv ivVar = (iv) it.next();
                    ivVar.getClass();
                    if (Looper.myLooper() == Looper.getMainLooper()) {
                        ((btk) ivVar.f19443a).b();
                    } else {
                        h.post(new fvi(19, (btk) ivVar.f19443a));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        m = true;
    }

    public static boolean o(String str, IBinder iBinder) {
        Bundle bundle = new Bundle();
        bundle.putInt("shizuku:attach-api-version", 13);
        bundle.putString("shizuku:attach-package-name", str);
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            bch bchVar = f18884a;
            bchVar.getClass();
            obtain.writeStrongBinder(bchVar);
            obtain.writeInt(1);
            bundle.writeToParcel(obtain, 0);
            boolean transact = iBinder.transact(18, obtain, obtain2, 0);
            obtain2.readException();
            return transact;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public static int p() {
        int i2 = l;
        if (i2 != -1) {
            return i2;
        }
        try {
            int g2 = ((bvh) w()).g();
            l = g2;
            return g2;
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        } catch (SecurityException unused) {
            return -1;
        }
    }

    public static void q(dah dahVar) {
        synchronized (k) {
            f18885b.add(new iv(dahVar));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [g.gyu] */
    public static void r(String str, IBinder iBinder) {
        bvh bvhVar;
        IBinder iBinder2 = f18889f;
        if (iBinder2 == iBinder) {
            return;
        }
        if (iBinder == null) {
            f18889f = null;
            j = null;
            l = -1;
            synchronized (k) {
                try {
                    Iterator it = f18885b.iterator();
                    while (it.hasNext()) {
                        iv ivVar = (iv) it.next();
                        ivVar.getClass();
                        if (Looper.myLooper() == Looper.getMainLooper()) {
                            ((dah) ivVar.f19443a).b();
                        } else {
                            h.post(new fvi(20, (dah) ivVar.f19443a));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        if (iBinder2 != null) {
            iBinder2.unlinkToDeath(i, 0);
        }
        f18889f = iBinder;
        int i2 = fat.f16491a;
        IInterface queryLocalInterface = iBinder.queryLocalInterface("moe.shizuku.server.IShizukuService");
        if (queryLocalInterface == null || !(queryLocalInterface instanceof gyu)) {
            bvh bvhVar2 = new bvh();
            bvhVar2.f12263a = iBinder;
            bvhVar = bvhVar2;
        } else {
            bvhVar = (gyu) queryLocalInterface;
        }
        j = bvhVar;
        try {
            f18889f.linkToDeath(i, 0);
        } catch (Throwable unused) {
        }
        try {
            if (!o(str, f18889f) && !v(str, f18889f)) {
                f18890g = true;
            }
        } catch (Throwable th2) {
            Log.getStackTraceString(th2);
        }
        if (f18890g) {
            m = true;
            n();
        }
    }

    public static boolean s() {
        if (f18886c) {
            return false;
        }
        if (f18888e) {
            return true;
        }
        try {
            boolean d2 = ((bvh) w()).d();
            f18888e = d2;
            return d2;
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static void t(cxq cxqVar) {
        synchronized (k) {
            f18887d.add(new iv(cxqVar));
        }
    }

    public static void u(ajy ajyVar) {
        try {
            gyu w = w();
            ajyVar.getClass();
            Bundle bundle = new Bundle();
            bundle.putParcelable("shizuku:user-service-arg-component", ajyVar.f10356c);
            String str = ajyVar.f10354a;
            if (str != null) {
                bundle.putString("shizuku:user-service-arg-tag", str);
            }
            bundle.putBoolean("shizuku:user-service-remove", true);
            ((bvh) w).e(null, bundle);
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static boolean v(String str, IBinder iBinder) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            bch bchVar = f18884a;
            bchVar.getClass();
            obtain.writeStrongBinder(bchVar);
            obtain.writeString(str);
            boolean transact = iBinder.transact(14, obtain, obtain2, 0);
            obtain2.readException();
            return transact;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public static gyu w() {
        gyu gyuVar = j;
        if (gyuVar != null) {
            return gyuVar;
        }
        throw new IllegalStateException("binder haven't been received");
    }
}
