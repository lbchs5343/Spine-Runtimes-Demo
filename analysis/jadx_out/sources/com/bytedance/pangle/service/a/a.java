package com.bytedance.pangle.service.a;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.e;
import com.bytedance.pangle.g;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.plugin.Plugin;
import com.bytedance.pangle.plugin.PluginManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class a extends e.a {

    /* renamed from: c, reason: collision with root package name */
    private static volatile a f1586c;

    /* renamed from: d, reason: collision with root package name */
    private final HashMap<ComponentName, IBinder> f1589d = new HashMap<>();

    /* renamed from: e, reason: collision with root package name */
    private final HashMap<ComponentName, b> f1590e = new HashMap<>();

    /* renamed from: f, reason: collision with root package name */
    private final C0102a<Intent> f1591f = new C0102a<>();

    /* renamed from: g, reason: collision with root package name */
    private final HashMap<ComponentName, com.bytedance.pangle.service.a> f1592g = new HashMap<>();
    private final HashSet<ComponentName> h = new HashSet<>();
    private final HashSet<ComponentName> i = new HashSet<>();

    /* renamed from: b, reason: collision with root package name */
    public final List<Runnable> f1588b = new ArrayList();

    /* renamed from: a, reason: collision with root package name */
    public final Handler f1587a = new Handler(Looper.getMainLooper());

    /* renamed from: com.bytedance.pangle.service.a.a$a, reason: collision with other inner class name */
    public class C0102a<T> extends HashMap<g, T> {
        public C0102a() {
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final boolean containsKey(Object obj) {
            if (super.containsKey(obj)) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            Iterator<g> it = keySet().iterator();
            while (it.hasNext()) {
                try {
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
                if (it.next().a() == ((g) obj).a()) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final T remove(Object obj) {
            g gVar;
            T t = (T) super.remove(obj);
            if (t != null) {
                return t;
            }
            Iterator<g> it = keySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    gVar = null;
                    break;
                }
                gVar = it.next();
                try {
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
                if (gVar.a() == ((g) obj).a()) {
                    break;
                }
            }
            return (T) super.remove(gVar);
        }
    }

    public class b extends HashSet<g> {
        public b() {
        }

        @Override // java.util.HashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (super.contains(obj)) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            Iterator<g> it = iterator();
            while (it.hasNext()) {
                try {
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
                if (it.next().a() == ((g) obj).a()) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.HashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            g gVar;
            if (super.remove(obj)) {
                return true;
            }
            Iterator it = iterator();
            while (true) {
                if (!it.hasNext()) {
                    gVar = null;
                    break;
                }
                gVar = (g) it.next();
                try {
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
                if (gVar.a() == ((g) obj).a()) {
                    break;
                }
            }
            return super.remove(gVar);
        }
    }

    private a() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean a(Intent intent, g gVar, String str) {
        try {
            ComponentName component = intent.getComponent();
            if (!this.f1592g.containsKey(component)) {
                com.bytedance.pangle.service.a d2 = d(intent, str);
                if (d2 == null) {
                    return false;
                }
                this.f1592g.put(component, d2);
            }
            com.bytedance.pangle.service.a aVar = this.f1592g.get(component);
            if (!this.f1589d.containsKey(component)) {
                this.f1589d.put(component, aVar.onBind(intent));
            }
            IBinder iBinder = this.f1589d.get(component);
            if (iBinder != null) {
                if (!this.f1590e.containsKey(component)) {
                    b bVar = new b();
                    bVar.add(gVar);
                    this.f1590e.put(component, bVar);
                    this.f1591f.put(gVar, intent);
                    gVar.a(component, iBinder);
                } else if (!this.f1590e.get(component).contains(gVar)) {
                    this.f1590e.get(component).add(gVar);
                    this.f1591f.put(gVar, intent);
                    gVar.a(component, iBinder);
                }
            }
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public static a b() {
        if (f1586c == null) {
            synchronized (a.class) {
                try {
                    if (f1586c == null) {
                        f1586c = new a();
                    }
                } finally {
                }
            }
        }
        return f1586c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(g gVar) {
        try {
            for (ComponentName componentName : this.f1590e.keySet()) {
                b bVar = this.f1590e.get(componentName);
                if (bVar.contains(gVar)) {
                    bVar.remove(gVar);
                    Intent remove = this.f1591f.remove(gVar);
                    if (bVar.size() == 0) {
                        this.f1590e.remove(componentName);
                        com.bytedance.pangle.service.a aVar = this.f1592g.get(componentName);
                        if (aVar != null) {
                            aVar.onUnbind(remove);
                        }
                    }
                    b(componentName);
                    return;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private boolean b(ComponentName componentName) {
        if (!this.h.contains(componentName)) {
            if (this.f1590e.get(componentName) != null) {
                return false;
            }
            c(componentName);
            return true;
        }
        if (!this.i.contains(componentName) || this.f1590e.containsKey(componentName)) {
            return false;
        }
        c(componentName);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized ComponentName c(Intent intent, String str) {
        try {
            ComponentName component = intent.getComponent();
            if (!this.f1592g.containsKey(component)) {
                com.bytedance.pangle.service.a d2 = d(intent, str);
                if (d2 == null) {
                    return component;
                }
                this.f1592g.put(component, d2);
                this.h.add(component);
            }
            com.bytedance.pangle.service.a aVar = this.f1592g.get(component);
            if (aVar != null) {
                aVar.onStartCommand(intent, 0, 0);
            }
            return component;
        } catch (Throwable th) {
            throw th;
        }
    }

    private void c(ComponentName componentName) {
        com.bytedance.pangle.service.a remove = this.f1592g.remove(componentName);
        this.i.remove(componentName);
        this.f1589d.remove(componentName);
        this.h.remove(componentName);
        if (remove != null) {
            remove.onDestroy();
        }
    }

    private static com.bytedance.pangle.service.a d(Intent intent, String str) {
        com.bytedance.pangle.service.a e2 = e(intent, str);
        if (e2 != null) {
            e2.onCreate();
        }
        return e2;
    }

    private static com.bytedance.pangle.service.a e(Intent intent, String str) {
        boolean z;
        ComponentName component = intent.getComponent();
        Plugin plugin = PluginManager.getInstance().getPlugin(str);
        try {
            z = Zeus.loadPlugin(str);
        } catch (Exception e2) {
            e = e2;
            z = false;
        }
        try {
            com.bytedance.pangle.service.a aVar = (com.bytedance.pangle.service.a) plugin.mClassLoader.loadClass(component.getClassName()).newInstance();
            aVar.attach(plugin);
            return aVar;
        } catch (Exception e3) {
            e = e3;
            ZeusLogger.errReport(ZeusLogger.TAG_SERVICE, "newServiceInstance failed! loadPlugin = ".concat(String.valueOf(z)), e);
            return null;
        }
    }

    @Override // com.bytedance.pangle.e
    public final ComponentName a(final Intent intent, final String str) {
        if (!Zeus.hasInit()) {
            this.f1588b.add(new Runnable() { // from class: com.bytedance.pangle.service.a.a.2
                @Override // java.lang.Runnable
                public final void run() {
                    a.this.c(intent, str);
                }
            });
        } else {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                return c(intent, str);
            }
            this.f1587a.post(new Runnable() { // from class: com.bytedance.pangle.service.a.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    a.this.c(intent, str);
                }
            });
        }
        return intent.getComponent();
    }

    @Override // com.bytedance.pangle.e
    public final void a(final g gVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            b(gVar);
        } else {
            this.f1587a.post(new Runnable() { // from class: com.bytedance.pangle.service.a.a.6
                @Override // java.lang.Runnable
                public final void run() {
                    a.this.b(gVar);
                }
            });
        }
    }

    public final synchronized boolean a(ComponentName componentName) {
        if (!this.f1592g.containsKey(componentName)) {
            return false;
        }
        this.i.add(componentName);
        return b(componentName);
    }

    @Override // com.bytedance.pangle.e
    public final boolean a(final Intent intent, final g gVar, final int i, final String str) {
        if (!Zeus.hasInit()) {
            this.f1588b.add(new Runnable() { // from class: com.bytedance.pangle.service.a.a.5
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        a.this.a(intent, gVar, str);
                    } catch (RemoteException e2) {
                        ZeusLogger.errReport(ZeusLogger.TAG_SERVICE, "pending bindService failed", e2);
                    }
                }
            });
            return true;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return a(intent, gVar, str);
        }
        this.f1587a.post(new Runnable() { // from class: com.bytedance.pangle.service.a.a.4
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    a.this.a(intent, gVar, str);
                } catch (RemoteException e2) {
                    ZeusLogger.errReport(ZeusLogger.TAG_SERVICE, "bindService failed", e2);
                }
            }
        });
        return true;
    }

    @Override // com.bytedance.pangle.e.a, android.os.IInterface
    public IBinder asBinder() {
        return null;
    }

    @Override // com.bytedance.pangle.e
    public final boolean b(final Intent intent, String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            b().a(intent.getComponent());
            return true;
        }
        this.f1587a.post(new Runnable() { // from class: com.bytedance.pangle.service.a.a.3
            @Override // java.lang.Runnable
            public final void run() {
                a.b().a(intent.getComponent());
            }
        });
        return true;
    }
}
