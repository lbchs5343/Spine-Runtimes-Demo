package g;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.HandlerThread;
import android.os.Looper;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import java.util.HashMap;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class bxk {

    /* renamed from: a, reason: collision with root package name */
    public static bxk f12382a;

    /* renamed from: b, reason: collision with root package name */
    public static HandlerThread f12383b;

    /* renamed from: c, reason: collision with root package name */
    public static final Object f12384c = new Object();

    /* renamed from: d, reason: collision with root package name */
    public final aoy f12385d;

    /* renamed from: e, reason: collision with root package name */
    public final long f12386e;

    /* renamed from: f, reason: collision with root package name */
    public final HashMap f12387f = new HashMap();

    /* renamed from: g, reason: collision with root package name */
    public final long f12388g;
    public final Context h;
    public volatile dae i;

    public bxk(Context context, Looper looper) {
        edi ediVar = new edi(1, this);
        this.h = context.getApplicationContext();
        dae daeVar = new dae(looper, ediVar, 6);
        Looper.getMainLooper();
        this.i = daeVar;
        this.f12385d = aoy.m();
        this.f12386e = PushUIConfig.dismissTime;
        this.f12388g = 300000L;
    }

    public static bxk j(Context context) {
        synchronized (f12384c) {
            try {
                if (f12382a == null) {
                    f12382a = new bxk(context.getApplicationContext(), context.getMainLooper());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f12382a;
    }

    public static HandlerThread k() {
        synchronized (f12384c) {
            try {
                HandlerThread handlerThread = f12383b;
                if (handlerThread != null) {
                    return handlerThread;
                }
                HandlerThread handlerThread2 = new HandlerThread("GoogleApiHandler", 9);
                f12383b = handlerThread2;
                handlerThread2.start();
                return f12383b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean l(egn egnVar, ckl cklVar, String str, Executor executor) {
        boolean z;
        synchronized (this.f12387f) {
            try {
                enc encVar = (enc) this.f12387f.get(egnVar);
                if (executor == null) {
                    executor = null;
                }
                if (encVar == null) {
                    encVar = new enc(this, egnVar);
                    encVar.f15845e.put(cklVar, cklVar);
                    encVar.h(str, executor);
                    this.f12387f.put(egnVar, encVar);
                } else {
                    this.i.removeMessages(0, egnVar);
                    if (encVar.f15845e.containsKey(cklVar)) {
                        throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  config=".concat(egnVar.toString()));
                    }
                    encVar.f15845e.put(cklVar, cklVar);
                    int i = encVar.f15846f;
                    if (i == 1) {
                        cklVar.onServiceConnected(encVar.f15847g, encVar.f15843c);
                    } else if (i == 2) {
                        encVar.h(str, executor);
                    }
                }
                z = encVar.f15842b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    public final void m(String str, ServiceConnection serviceConnection, boolean z) {
        egn egnVar = new egn(str, z);
        ckd.w(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f12387f) {
            try {
                enc encVar = (enc) this.f12387f.get(egnVar);
                if (encVar == null) {
                    throw new IllegalStateException("Nonexistent connection status for service config: ".concat(egnVar.toString()));
                }
                if (!encVar.f15845e.containsKey(serviceConnection)) {
                    throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  config=".concat(egnVar.toString()));
                }
                encVar.f15845e.remove(serviceConnection);
                if (encVar.f15845e.isEmpty()) {
                    this.i.sendMessageDelayed(this.i.obtainMessage(0, egnVar), this.f12386e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
