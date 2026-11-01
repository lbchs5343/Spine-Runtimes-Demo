package g;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.internal.ads.zzbce;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzfqq;
import com.google.android.gms.internal.ads.zzfqu;
import com.google.android.gms.internal.ads.zzfqw;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class aga implements bjb, lb {

    /* renamed from: a, reason: collision with root package name */
    public Object f10169a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f10170b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f10171c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f10172d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f10173e;

    public aga() {
        this.f10172d = false;
        this.f10171c = new WeakHashMap();
        this.f10170b = new sr(14, this);
    }

    public aga(Context context, Looper looper, zzfqq zzfqqVar) {
        this.f10171c = new Object();
        this.f10172d = false;
        this.f10173e = false;
        this.f10170b = zzfqqVar;
        this.f10169a = new zzfqw(context, looper, this, this, 12800000);
    }

    public aga(Context context, String str, dsg dsgVar, boolean z, boolean z2) {
        bff.p(dsgVar, "callback");
        this.f10169a = context;
        this.f10170b = str;
        this.f10171c = dsgVar;
        this.f10172d = z;
        this.f10173e = z2;
    }

    public synchronized void f(Context context) {
        try {
            if (this.f10172d) {
                return;
            }
            Context applicationContext = context.getApplicationContext();
            this.f10169a = applicationContext;
            if (applicationContext == null) {
                this.f10169a = context;
            }
            zzbcn.zza((Context) this.f10169a);
            zzbce zzbceVar = zzbcn.zzdT;
            edt edtVar = edt.f15376a;
            this.f10173e = ((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            if (!((Boolean) edtVar.f15379d.zza(zzbcn.zzkG)).booleanValue() || Build.VERSION.SDK_INT < 33) {
                ((Context) this.f10169a).registerReceiver((sr) this.f10170b, intentFilter);
            } else {
                ((Context) this.f10169a).registerReceiver((sr) this.f10170b, intentFilter, 4);
            }
            this.f10172d = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public void g() {
        synchronized (this.f10171c) {
            try {
                if (!((zzfqw) this.f10169a).isConnected()) {
                    if (((zzfqw) this.f10169a).isConnecting()) {
                    }
                    Binder.flushPendingCommands();
                }
                ((zzfqw) this.f10169a).disconnect();
                Binder.flushPendingCommands();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public synchronized void h(Context context, sr srVar) {
        if (this.f10173e) {
            ((WeakHashMap) this.f10171c).remove(srVar);
        } else {
            context.unregisterReceiver(srVar);
        }
    }

    @Override // g.bjb
    public void onConnected(Bundle bundle) {
        synchronized (this.f10171c) {
            try {
                if (this.f10173e) {
                    return;
                }
                this.f10173e = true;
                try {
                    ((zzfqw) this.f10169a).zzp().zzg(new zzfqu(((zzfqq) this.f10170b).zzaV()));
                } catch (Exception unused) {
                } catch (Throwable th) {
                    g();
                    throw th;
                }
                g();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // g.lb
    public void onConnectionFailed(nk nkVar) {
    }

    @Override // g.bjb
    public void onConnectionSuspended(int i) {
    }
}
