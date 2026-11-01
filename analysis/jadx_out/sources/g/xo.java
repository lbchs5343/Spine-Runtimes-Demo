package g;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.SystemClock;
import com.bykv.vk.component.ttvideo.utils.AVErrorInfo;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class xo {

    /* renamed from: a, reason: collision with root package name */
    public final Object f20298a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public cqa f20299b;

    /* renamed from: c, reason: collision with root package name */
    public dxy f20300c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f20301d;

    /* renamed from: e, reason: collision with root package name */
    public ggc f20302e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f20303f;

    /* renamed from: g, reason: collision with root package name */
    public final long f20304g;

    public xo(Context context, long j, boolean z) {
        Context applicationContext;
        ckd.k(context);
        if (z && (applicationContext = context.getApplicationContext()) != null) {
            context = applicationContext;
        }
        this.f20301d = context;
        this.f20303f = false;
        this.f20304g = j;
    }

    public static void h(dez dezVar, long j, Throwable th) {
        if (Math.random() <= 0.0d) {
            HashMap p = tn.p("app_context", "1");
            if (dezVar != null) {
                p.put("limit_ad_tracking", true != dezVar.f14079b ? "0" : "1");
                String str = dezVar.f14078a;
                if (str != null) {
                    p.put("ad_id_size", Integer.toString(str.length()));
                }
            }
            if (th != null) {
                p.put(AVErrorInfo.ERROR, th.getClass().getName());
            }
            p.put(TTDownloadField.TT_TAG, "AdvertisingIdClient");
            p.put("time_spent", Long.toString(j));
            new ebk(1, p).start();
        }
    }

    public static dez i(Context context) {
        xo xoVar = new xo(context, -1L, true);
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            xoVar.k(false);
            dez l = xoVar.l();
            h(l, SystemClock.elapsedRealtime() - elapsedRealtime, null);
            return l;
        } finally {
        }
    }

    public static boolean j(Context context) {
        boolean z;
        xo xoVar = new xo(context, -1L, false);
        try {
            xoVar.k(false);
            ckd.at("Calling this from your main thread can lead to deadlock");
            synchronized (xoVar) {
                try {
                    if (!xoVar.f20303f) {
                        synchronized (xoVar.f20298a) {
                            cqa cqaVar = xoVar.f20299b;
                            if (cqaVar == null || !cqaVar.f13317b) {
                                throw new IOException("AdvertisingIdClient is not connected.");
                            }
                        }
                        try {
                            xoVar.k(false);
                            if (!xoVar.f20303f) {
                                throw new IOException("AdvertisingIdClient cannot reconnect.");
                            }
                        } catch (Exception e2) {
                            throw new IOException("AdvertisingIdClient cannot reconnect.", e2);
                        }
                    }
                    ckd.k(xoVar.f20300c);
                    ckd.k(xoVar.f20302e);
                    try {
                        guw guwVar = (guw) xoVar.f20302e;
                        guwVar.getClass();
                        Parcel obtain = Parcel.obtain();
                        obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                        Parcel b2 = guwVar.b(obtain, 6);
                        int i = hbw.f19204a;
                        z = b2.readInt() != 0;
                        b2.recycle();
                    } catch (RemoteException unused) {
                        throw new IOException("Remote exception");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            xoVar.n();
            return z;
        } finally {
            xoVar.m();
        }
    }

    public final void finalize() {
        m();
        super.finalize();
    }

    public final void k(boolean z) {
        ckd.at("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                if (this.f20303f) {
                    m();
                }
                Context context = this.f20301d;
                try {
                    context.getPackageManager().getPackageInfo("com.android.vending", 0);
                    int l = gna.i.l(context, 12451000);
                    if (l != 0 && l != 2) {
                        throw new IOException("Google Play services not available");
                    }
                    dxy dxyVar = new dxy();
                    Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                    intent.setPackage("com.google.android.gms");
                    try {
                        if (!aoy.m().u(context, context.getClass().getName(), intent, dxyVar, 1, null)) {
                            throw new IOException("Connection failure");
                        }
                        this.f20300c = dxyVar;
                        try {
                            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                            IBinder c2 = dxyVar.c();
                            int i = gzq.f19063a;
                            IInterface queryLocalInterface = c2.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                            this.f20302e = queryLocalInterface instanceof ggc ? (ggc) queryLocalInterface : new guw(c2);
                            this.f20303f = true;
                            if (z) {
                                n();
                            }
                        } catch (InterruptedException unused) {
                            throw new IOException("Interrupted exception");
                        } catch (Throwable th) {
                            throw new IOException(th);
                        }
                    } finally {
                        IOException iOException = new IOException(th);
                    }
                } catch (PackageManager.NameNotFoundException unused2) {
                    throw new ctc();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final dez l() {
        dez dezVar;
        ckd.at("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                if (!this.f20303f) {
                    synchronized (this.f20298a) {
                        cqa cqaVar = this.f20299b;
                        if (cqaVar == null || !cqaVar.f13317b) {
                            throw new IOException("AdvertisingIdClient is not connected.");
                        }
                    }
                    try {
                        k(false);
                        if (!this.f20303f) {
                            throw new IOException("AdvertisingIdClient cannot reconnect.");
                        }
                    } catch (Exception e2) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.", e2);
                    }
                }
                ckd.k(this.f20300c);
                ckd.k(this.f20302e);
                try {
                    guw guwVar = (guw) this.f20302e;
                    guwVar.getClass();
                    Parcel obtain = Parcel.obtain();
                    obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    Parcel b2 = guwVar.b(obtain, 1);
                    String readString = b2.readString();
                    b2.recycle();
                    guw guwVar2 = (guw) this.f20302e;
                    guwVar2.getClass();
                    Parcel obtain2 = Parcel.obtain();
                    obtain2.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    int i = hbw.f19204a;
                    obtain2.writeInt(1);
                    Parcel b3 = guwVar2.b(obtain2, 2);
                    boolean z = b3.readInt() != 0;
                    b3.recycle();
                    dezVar = new dez(readString, z);
                } catch (RemoteException unused) {
                    throw new IOException("Remote exception");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        n();
        return dezVar;
    }

    public final void m() {
        ckd.at("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                if (this.f20301d == null || this.f20300c == null) {
                    return;
                }
                try {
                    if (this.f20303f) {
                        aoy.m().s(this.f20301d, this.f20300c);
                    }
                } catch (Throwable unused) {
                }
                this.f20303f = false;
                this.f20302e = null;
                this.f20300c = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void n() {
        synchronized (this.f20298a) {
            cqa cqaVar = this.f20299b;
            if (cqaVar != null) {
                cqaVar.f13316a.countDown();
                try {
                    this.f20299b.join();
                } catch (InterruptedException unused) {
                }
            }
            long j = this.f20304g;
            if (j > 0) {
                this.f20299b = new cqa(this, j);
            }
        }
    }
}
