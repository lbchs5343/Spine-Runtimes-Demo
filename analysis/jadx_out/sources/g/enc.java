package g;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.IBinder;
import android.os.StrictMode;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class enc implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ bxk f15841a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f15842b;

    /* renamed from: c, reason: collision with root package name */
    public IBinder f15843c;

    /* renamed from: d, reason: collision with root package name */
    public final egn f15844d;

    /* renamed from: e, reason: collision with root package name */
    public final HashMap f15845e = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    public int f15846f = 2;

    /* renamed from: g, reason: collision with root package name */
    public ComponentName f15847g;

    public enc(bxk bxkVar, egn egnVar) {
        this.f15841a = bxkVar;
        this.f15844d = egnVar;
    }

    public final void h(String str, Executor executor) {
        aoy aoyVar;
        Context context;
        StrictMode.VmPolicy.Builder permitUnsafeIntentLaunch;
        this.f15846f = 3;
        StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
        if (Build.VERSION.SDK_INT >= 31) {
            permitUnsafeIntentLaunch = new StrictMode.VmPolicy.Builder(vmPolicy).permitUnsafeIntentLaunch();
            StrictMode.setVmPolicy(permitUnsafeIntentLaunch.build());
        }
        try {
            bxk bxkVar = this.f15841a;
            aoyVar = bxkVar.f12385d;
            context = bxkVar.h;
        } catch (Throwable th) {
            th = th;
        }
        try {
            boolean u = aoyVar.u(context, str, this.f15844d.e(context), this, 4225, executor);
            this.f15842b = u;
            if (u) {
                this.f15841a.i.sendMessageDelayed(this.f15841a.i.obtainMessage(1, this.f15844d), this.f15841a.f12388g);
            } else {
                this.f15846f = 2;
                try {
                    bxk bxkVar2 = this.f15841a;
                    bxkVar2.f12385d.s(bxkVar2.h, this);
                } catch (IllegalArgumentException unused) {
                }
            }
            StrictMode.setVmPolicy(vmPolicy);
        } catch (Throwable th2) {
            th = th2;
            Throwable th3 = th;
            StrictMode.setVmPolicy(vmPolicy);
            throw th3;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        onServiceDisconnected(componentName);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.f15841a.f12387f) {
            try {
                this.f15841a.i.removeMessages(1, this.f15844d);
                this.f15843c = iBinder;
                this.f15847g = componentName;
                Iterator it = this.f15845e.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceConnected(componentName, iBinder);
                }
                this.f15846f = 1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.f15841a.f12387f) {
            try {
                this.f15841a.i.removeMessages(1, this.f15844d);
                this.f15843c = null;
                this.f15847g = componentName;
                Iterator it = this.f15845e.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceDisconnected(componentName);
                }
                this.f15846f = 2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
