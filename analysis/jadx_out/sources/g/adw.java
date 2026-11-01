package g;

import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Scope;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public abstract class adw {
    public static final int CONNECT_STATE_CONNECTED = 4;
    public static final int CONNECT_STATE_DISCONNECTED = 1;
    public static final int CONNECT_STATE_DISCONNECTING = 5;
    public static final String DEFAULT_ACCOUNT = "<<default account>>";
    public static final String KEY_PENDING_INTENT = "pendingIntent";
    public final Looper aa;

    /* renamed from: ab, reason: collision with root package name */
    public long f10064ab;
    public final Object ac;
    public final int ad;
    public boolean ae;
    public IInterface af;
    public final Object ag;
    public volatile String ah;

    /* renamed from: f, reason: collision with root package name */
    public final Context f10065f;

    /* renamed from: g, reason: collision with root package name */
    public fnt f10066g;
    public int h;
    public agu i;
    public volatile String j;
    public final lb k;
    public ctd l;
    public final bxk m;
    public final AtomicInteger n;
    public long o;
    public final bmp p;
    public final gna q;
    public final bjb r;
    public ckl s;
    public int t;
    public long u;
    public final ArrayList v;
    public int w;
    public nk x;
    public final String y;
    public volatile gus z;

    /* renamed from: e, reason: collision with root package name */
    public static final cqg[] f10063e = new cqg[0];
    public static final String[] GOOGLE_PLUS_REQUIRED_FEATURES = {"service_esmobile", "service_googleme"};

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public adw(Context context, Looper looper, bjb bjbVar, lb lbVar, int i) {
        this(context, looper, r3, r4, i, bjbVar, lbVar, null);
        bxk j = bxk.j(context);
        gna gnaVar = gna.i;
        ckd.k(bjbVar);
        ckd.k(lbVar);
    }

    public adw(Context context, Looper looper, bxk bxkVar, gna gnaVar, int i, bjb bjbVar, lb lbVar, String str) {
        this.ah = null;
        this.ag = new Object();
        this.ac = new Object();
        this.v = new ArrayList();
        this.h = 1;
        this.x = null;
        this.ae = false;
        this.z = null;
        this.n = new AtomicInteger(0);
        ckd.w(context, "Context must not be null");
        this.f10065f = context;
        ckd.w(looper, "Looper must not be null");
        this.aa = looper;
        ckd.w(bxkVar, "Supervisor must not be null");
        this.m = bxkVar;
        ckd.w(gnaVar, "API availability must not be null");
        this.q = gnaVar;
        this.p = new bmp(this, looper);
        this.ad = i;
        this.r = bjbVar;
        this.k = lbVar;
        this.y = str;
    }

    public static /* bridge */ /* synthetic */ void ai(adw adwVar) {
        int i;
        int i2;
        synchronized (adwVar.ag) {
            i = adwVar.h;
        }
        if (i == 3) {
            adwVar.ae = true;
            i2 = 5;
        } else {
            i2 = 4;
        }
        bmp bmpVar = adwVar.p;
        bmpVar.sendMessage(bmpVar.obtainMessage(i2, adwVar.n.get(), 16));
    }

    public static /* bridge */ /* synthetic */ boolean aj(adw adwVar, int i, int i2, IInterface iInterface) {
        synchronized (adwVar.ag) {
            try {
                if (adwVar.h != i) {
                    return false;
                }
                adwVar.al(i2, iInterface);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract String a();

    public final void ak(nk nkVar) {
        this.t = nkVar.getErrorCode();
        this.u = System.currentTimeMillis();
    }

    public final void al(int i, IInterface iInterface) {
        agu aguVar;
        ckd.u((i == 4) == (iInterface != null));
        synchronized (this.ag) {
            try {
                this.h = i;
                this.af = iInterface;
                if (i == 1) {
                    ckl cklVar = this.s;
                    if (cklVar != null) {
                        bxk bxkVar = this.m;
                        String str = this.i.f10197a;
                        ckd.k(str);
                        this.i.getClass();
                        if (this.y == null) {
                            this.f10065f.getClass();
                        }
                        bxkVar.m(str, cklVar, this.i.f10198b);
                        this.s = null;
                    }
                } else if (i == 2 || i == 3) {
                    ckl cklVar2 = this.s;
                    if (cklVar2 != null && (aguVar = this.i) != null) {
                        Log.e("GmsClient", "Calling connect() while still connected, missing disconnect() for " + aguVar.f10197a + " on com.google.android.gms");
                        bxk bxkVar2 = this.m;
                        String str2 = this.i.f10197a;
                        ckd.k(str2);
                        this.i.getClass();
                        if (this.y == null) {
                            this.f10065f.getClass();
                        }
                        bxkVar2.m(str2, cklVar2, this.i.f10198b);
                        this.n.incrementAndGet();
                    }
                    ckl cklVar3 = new ckl(this, this.n.get());
                    this.s = cklVar3;
                    String b2 = b();
                    boolean ao = ao();
                    this.i = new agu(b2, ao);
                    if (ao && getMinApkVersion() < 17895000) {
                        throw new IllegalStateException("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(String.valueOf(this.i.f10197a)));
                    }
                    bxk bxkVar3 = this.m;
                    String str3 = this.i.f10197a;
                    ckd.k(str3);
                    this.i.getClass();
                    String str4 = this.y;
                    if (str4 == null) {
                        str4 = this.f10065f.getClass().getName();
                    }
                    if (!bxkVar3.l(new egn(str3, this.i.f10198b), cklVar3, str4, null)) {
                        String str5 = this.i.f10197a;
                        int i2 = this.n.get();
                        pt ptVar = new pt(this, 16);
                        bmp bmpVar = this.p;
                        bmpVar.sendMessage(bmpVar.obtainMessage(7, i2, -1, ptVar));
                    }
                } else if (i == 4) {
                    ckd.k(iInterface);
                    this.o = System.currentTimeMillis();
                }
            } finally {
            }
        }
    }

    public Set am() {
        return Collections.EMPTY_SET;
    }

    public Bundle an() {
        return new Bundle();
    }

    public boolean ao() {
        return getMinApkVersion() >= 211700000;
    }

    public abstract String b();

    public abstract IInterface c(IBinder iBinder);

    public void checkAvailabilityAndConnect() {
        int l = this.q.l(this.f10065f, getMinApkVersion());
        if (l == 0) {
            connect(new dcq(5, this));
            return;
        }
        al(1, null);
        this.f10066g = new dcq(5, this);
        int i = this.n.get();
        bmp bmpVar = this.p;
        bmpVar.sendMessage(bmpVar.obtainMessage(3, i, l, null));
    }

    public void connect(fnt fntVar) {
        ckd.w(fntVar, "Connection progress callbacks cannot be null.");
        this.f10066g = fntVar;
        al(2, null);
    }

    public void disconnect() {
        this.n.incrementAndGet();
        synchronized (this.v) {
            try {
                int size = this.v.size();
                for (int i = 0; i < size; i++) {
                    ((haf) this.v.get(i)).l();
                }
                this.v.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.ac) {
            this.l = null;
        }
        al(1, null);
    }

    public void disconnect(String str) {
        this.ah = str;
        disconnect();
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i;
        IInterface iInterface;
        ctd ctdVar;
        synchronized (this.ag) {
            i = this.h;
            iInterface = this.af;
        }
        synchronized (this.ac) {
            ctdVar = this.l;
        }
        printWriter.append((CharSequence) str).append("mConnectState=");
        if (i == 1) {
            printWriter.print("DISCONNECTED");
        } else if (i == 2) {
            printWriter.print("REMOTE_CONNECTING");
        } else if (i == 3) {
            printWriter.print("LOCAL_CONNECTING");
        } else if (i == 4) {
            printWriter.print("CONNECTED");
        } else if (i != 5) {
            printWriter.print("UNKNOWN");
        } else {
            printWriter.print("DISCONNECTING");
        }
        printWriter.append(" mService=");
        if (iInterface == null) {
            printWriter.append("null");
        } else {
            printWriter.append((CharSequence) a()).append("@").append((CharSequence) Integer.toHexString(System.identityHashCode(iInterface.asBinder())));
        }
        printWriter.append(" mServiceBroker=");
        if (ctdVar == null) {
            printWriter.println("null");
        } else {
            printWriter.append("IGmsServiceBroker@").println(Integer.toHexString(System.identityHashCode(ctdVar.f13459a)));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        if (this.o > 0) {
            PrintWriter append = printWriter.append((CharSequence) str).append("lastConnectedTime=");
            long j = this.o;
            append.println(j + " " + simpleDateFormat.format(new Date(j)));
        }
        if (this.f10064ab > 0) {
            printWriter.append((CharSequence) str).append("lastSuspendedCause=");
            int i2 = this.w;
            if (i2 == 1) {
                printWriter.append("CAUSE_SERVICE_DISCONNECTED");
            } else if (i2 == 2) {
                printWriter.append("CAUSE_NETWORK_LOST");
            } else if (i2 != 3) {
                printWriter.append((CharSequence) String.valueOf(i2));
            } else {
                printWriter.append("CAUSE_DEAD_OBJECT_EXCEPTION");
            }
            PrintWriter append2 = printWriter.append(" lastSuspendedTime=");
            long j2 = this.f10064ab;
            append2.println(j2 + " " + simpleDateFormat.format(new Date(j2)));
        }
        if (this.u > 0) {
            printWriter.append((CharSequence) str).append("lastFailedStatus=").append((CharSequence) erl.v(this.t));
            PrintWriter append3 = printWriter.append(" lastFailedTime=");
            long j3 = this.u;
            append3.println(j3 + " " + simpleDateFormat.format(new Date(j3)));
        }
    }

    public Account getAccount() {
        return null;
    }

    public cqg[] getApiFeatures() {
        return f10063e;
    }

    public final cqg[] getAvailableFeatures() {
        gus gusVar = this.z;
        if (gusVar == null) {
            return null;
        }
        return gusVar.zzb;
    }

    public Bundle getConnectionHint() {
        return null;
    }

    public final Context getContext() {
        return this.f10065f;
    }

    public String getEndpointPackageName() {
        if (!isConnected() || this.i == null) {
            throw new RuntimeException("Failed to connect when checking package");
        }
        return "com.google.android.gms";
    }

    public int getGCoreServiceId() {
        return this.ad;
    }

    public String getLastDisconnectMessage() {
        return this.ah;
    }

    public final Looper getLooper() {
        return this.aa;
    }

    public int getMinApkVersion() {
        return gna.h;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void getRemoteService(fmp fmpVar, Set<Scope> set) {
        Bundle an = an();
        String str = this.j;
        int i = gna.h;
        Scope[] scopeArr = dhw.zza;
        Bundle bundle = new Bundle();
        int i2 = this.ad;
        cqg[] cqgVarArr = dhw.zzb;
        dhw dhwVar = new dhw(6, i2, i, null, null, scopeArr, bundle, null, cqgVarArr, cqgVarArr, true, 0, false, str);
        dhwVar.zzf = this.f10065f.getPackageName();
        dhwVar.zzi = an;
        if (set != null) {
            dhwVar.zzh = (Scope[]) set.toArray(new Scope[0]);
        }
        if (requiresSignIn()) {
            Account account = getAccount();
            if (account == null) {
                account = new Account(DEFAULT_ACCOUNT, "com.google");
            }
            dhwVar.zzj = account;
            if (fmpVar != 0) {
                dhwVar.zzg = ((ob) fmpVar)._cb;
            }
        } else if (requiresAccount()) {
            dhwVar.zzj = getAccount();
        }
        dhwVar.zzk = f10063e;
        dhwVar.zzl = getApiFeatures();
        if (usesClientTelemetry()) {
            dhwVar.zzo = true;
        }
        try {
            try {
                synchronized (this.ac) {
                    try {
                        ctd ctdVar = this.l;
                        if (ctdVar != null) {
                            ctdVar.b(new cj(this, this.n.get()), dhwVar);
                        }
                    } finally {
                    }
                }
            } catch (RemoteException | RuntimeException unused) {
                int i3 = this.n.get();
                qv qvVar = new qv(this, 8, null, null);
                bmp bmpVar = this.p;
                bmpVar.sendMessage(bmpVar.obtainMessage(1, i3, -1, qvVar));
            }
        } catch (DeadObjectException unused2) {
            triggerConnectionSuspended(3);
        } catch (SecurityException e2) {
            throw e2;
        }
    }

    public final IInterface getService() throws DeadObjectException {
        IInterface iInterface;
        synchronized (this.ag) {
            try {
                if (this.h == 5) {
                    throw new DeadObjectException();
                }
                if (!isConnected()) {
                    throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
                }
                iInterface = this.af;
                ckd.w(iInterface, "Client is connected but service is null");
            } catch (Throwable th) {
                throw th;
            }
        }
        return iInterface;
    }

    public IBinder getServiceBrokerBinder() {
        synchronized (this.ac) {
            try {
                ctd ctdVar = this.l;
                if (ctdVar == null) {
                    return null;
                }
                return ctdVar.f13459a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Intent getSignInIntent() {
        throw new UnsupportedOperationException("Not a sign in API");
    }

    public csf getTelemetryConfiguration() {
        gus gusVar = this.z;
        if (gusVar == null) {
            return null;
        }
        return gusVar.zzd;
    }

    public boolean hasConnectionInfo() {
        return this.z != null;
    }

    public boolean isConnected() {
        boolean z;
        synchronized (this.ag) {
            z = this.h == 4;
        }
        return z;
    }

    public boolean isConnecting() {
        boolean z;
        synchronized (this.ag) {
            int i = this.h;
            z = true;
            if (i != 2 && i != 3) {
                z = false;
            }
        }
        return z;
    }

    public void onUserSignOut(bsf bsfVar) {
        evf evfVar = (evf) bsfVar;
        ((fbd) evfVar.f16224f).m.q.post(new dyn(19, evfVar));
    }

    public boolean providesSignIn() {
        return false;
    }

    public boolean requiresAccount() {
        return false;
    }

    public boolean requiresGooglePlayServices() {
        return true;
    }

    public boolean requiresSignIn() {
        return false;
    }

    public void setAttributionTag(String str) {
        this.j = str;
    }

    public void triggerConnectionSuspended(int i) {
        int i2 = this.n.get();
        bmp bmpVar = this.p;
        bmpVar.sendMessage(bmpVar.obtainMessage(6, i2, i));
    }

    public boolean usesClientTelemetry() {
        return false;
    }
}
