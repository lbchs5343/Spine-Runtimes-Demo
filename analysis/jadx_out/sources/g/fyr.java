package g;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.util.Log;
import j$.util.Objects;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class fyr implements Handler.Callback, ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f17656a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public HashSet f17657b = new HashSet();

    /* renamed from: c, reason: collision with root package name */
    public final Context f17658c;

    /* renamed from: d, reason: collision with root package name */
    public final Handler f17659d;

    public fyr(Context context) {
        this.f17658c = context;
        HandlerThread handlerThread = new HandlerThread("NotificationManagerCompat");
        handlerThread.start();
        this.f17659d = new Handler(handlerThread.getLooper(), this);
    }

    public final void e(arx arxVar) {
        boolean z;
        ComponentName componentName = arxVar.f10734c;
        if (Log.isLoggable("NotifManCompat", 3)) {
            Objects.toString(componentName);
            arxVar.f10732a.size();
        }
        ArrayDeque arrayDeque = arxVar.f10732a;
        if (arrayDeque.isEmpty()) {
            return;
        }
        if (arxVar.f10735d) {
            z = true;
        } else {
            Intent component = new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(componentName);
            Context context = this.f17658c;
            boolean bindService = context.bindService(component, this, 33);
            arxVar.f10735d = bindService;
            if (bindService) {
                arxVar.f10733b = 0;
            } else {
                Objects.toString(componentName);
                context.unbindService(this);
            }
            z = arxVar.f10735d;
        }
        if (!z || arxVar.f10736e == null) {
            f(arxVar);
            return;
        }
        while (true) {
            afb afbVar = (afb) arrayDeque.peek();
            if (afbVar == null) {
                break;
            }
            try {
                if (Log.isLoggable("NotifManCompat", 3)) {
                    afbVar.toString();
                }
                afbVar.d(arxVar.f10736e);
                arrayDeque.remove();
            } catch (DeadObjectException unused) {
                if (Log.isLoggable("NotifManCompat", 3)) {
                    Objects.toString(componentName);
                }
            } catch (RemoteException unused2) {
                Objects.toString(componentName);
            }
        }
        if (arrayDeque.isEmpty()) {
            return;
        }
        f(arxVar);
    }

    public final void f(arx arxVar) {
        ComponentName componentName = arxVar.f10734c;
        ArrayDeque arrayDeque = arxVar.f10732a;
        Handler handler = this.f17659d;
        if (handler.hasMessages(3, componentName)) {
            return;
        }
        int i = arxVar.f10733b + 1;
        arxVar.f10733b = i;
        if (i <= 6) {
            handler.sendMessageDelayed(handler.obtainMessage(3, componentName), (1 << r4) * 1000);
            return;
        }
        arrayDeque.size();
        Objects.toString(componentName);
        arrayDeque.clear();
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        HashSet hashSet;
        int i = message.what;
        rc rcVar = null;
        if (i == 0) {
            afb afbVar = (afb) message.obj;
            String string = Settings.Secure.getString(this.f17658c.getContentResolver(), "enabled_notification_listeners");
            synchronized (dyy.f15111d) {
                if (string != null) {
                    try {
                        if (!string.equals(dyy.f15108a)) {
                            String[] split = string.split(":", -1);
                            HashSet hashSet2 = new HashSet(split.length);
                            for (String str : split) {
                                ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
                                if (unflattenFromString != null) {
                                    hashSet2.add(unflattenFromString.getPackageName());
                                }
                            }
                            dyy.f15109b = hashSet2;
                            dyy.f15108a = string;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                hashSet = dyy.f15109b;
            }
            if (!hashSet.equals(this.f17657b)) {
                this.f17657b = hashSet;
                List<ResolveInfo> queryIntentServices = this.f17658c.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 0);
                HashSet hashSet3 = new HashSet();
                for (ResolveInfo resolveInfo : queryIntentServices) {
                    if (hashSet.contains(resolveInfo.serviceInfo.packageName)) {
                        ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                        ComponentName componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
                        if (resolveInfo.serviceInfo.permission != null) {
                            componentName.toString();
                        } else {
                            hashSet3.add(componentName);
                        }
                    }
                }
                Iterator it = hashSet3.iterator();
                while (it.hasNext()) {
                    ComponentName componentName2 = (ComponentName) it.next();
                    if (!this.f17656a.containsKey(componentName2)) {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            Objects.toString(componentName2);
                        }
                        this.f17656a.put(componentName2, new arx(componentName2));
                    }
                }
                Iterator it2 = this.f17656a.entrySet().iterator();
                while (it2.hasNext()) {
                    Map.Entry entry = (Map.Entry) it2.next();
                    if (!hashSet3.contains(entry.getKey())) {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            Objects.toString(entry.getKey());
                        }
                        arx arxVar = (arx) entry.getValue();
                        if (arxVar.f10735d) {
                            this.f17658c.unbindService(this);
                            arxVar.f10735d = false;
                        }
                        arxVar.f10736e = null;
                        it2.remove();
                    }
                }
            }
            for (arx arxVar2 : this.f17656a.values()) {
                arxVar2.f10732a.add(afbVar);
                e(arxVar2);
            }
        } else if (i == 1) {
            gdj gdjVar = (gdj) message.obj;
            ComponentName componentName3 = gdjVar.f17934a;
            IBinder iBinder = gdjVar.f17935b;
            arx arxVar3 = (arx) this.f17656a.get(componentName3);
            if (arxVar3 != null) {
                int i2 = elk.f15759b;
                if (iBinder != null) {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface(rc.f19892a);
                    if (queryLocalInterface == null || !(queryLocalInterface instanceof rc)) {
                        bxz bxzVar = new bxz();
                        bxzVar.f12424b = iBinder;
                        rcVar = bxzVar;
                    } else {
                        rcVar = (rc) queryLocalInterface;
                    }
                }
                arxVar3.f10736e = rcVar;
                arxVar3.f10733b = 0;
                e(arxVar3);
                return true;
            }
        } else if (i == 2) {
            arx arxVar4 = (arx) this.f17656a.get((ComponentName) message.obj);
            if (arxVar4 != null) {
                if (arxVar4.f10735d) {
                    this.f17658c.unbindService(this);
                    arxVar4.f10735d = false;
                }
                arxVar4.f10736e = null;
                return true;
            }
        } else {
            if (i != 3) {
                return false;
            }
            arx arxVar5 = (arx) this.f17656a.get((ComponentName) message.obj);
            if (arxVar5 != null) {
                e(arxVar5);
                return true;
            }
        }
        return true;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (Log.isLoggable("NotifManCompat", 3)) {
            Objects.toString(componentName);
        }
        this.f17659d.obtainMessage(1, new gdj(componentName, iBinder)).sendToTarget();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("NotifManCompat", 3)) {
            Objects.toString(componentName);
        }
        this.f17659d.obtainMessage(2, componentName).sendToTarget();
    }
}
