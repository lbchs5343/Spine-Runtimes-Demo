package g;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Trace;
import android.util.Base64;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.components.ComponentDiscoveryService;
import com.google.firebase.components.ComponentRegistrar;
import j$.util.Objects;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class rm {

    /* renamed from: d, reason: collision with root package name */
    public final boa f19910d;

    /* renamed from: e, reason: collision with root package name */
    public final dlf f19911e;

    /* renamed from: g, reason: collision with root package name */
    public final Context f19913g;
    public final String j;
    public final fpy k;
    public final dmg l;

    /* renamed from: c, reason: collision with root package name */
    public static final Object f19909c = new Object();

    /* renamed from: a, reason: collision with root package name */
    public static final bat f19907a = new bat();

    /* renamed from: b, reason: collision with root package name */
    public static final tl f19908b = new tl(0);

    /* renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f19912f = new AtomicBoolean(false);
    public final AtomicBoolean h = new AtomicBoolean();
    public final CopyOnWriteArrayList i = new CopyOnWriteArrayList();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v15, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r9v4, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r9v5, types: [java.util.List] */
    public rm(Context context, String str, fpy fpyVar) {
        ?? arrayList;
        new CopyOnWriteArrayList();
        this.f19913g = context;
        ckd.bf(str);
        this.j = str;
        this.k = fpyVar;
        Trace.beginSection("Firebase");
        Trace.beginSection("ComponentDiscovery");
        ArrayList arrayList2 = new ArrayList();
        Bundle bundle = null;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null) {
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, (Class<?>) ComponentDiscoveryService.class), TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                if (serviceInfo == null) {
                    Objects.toString(ComponentDiscoveryService.class);
                } else {
                    bundle = serviceInfo.metaData;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        if (bundle == null) {
            arrayList = Collections.EMPTY_LIST;
        } else {
            arrayList = new ArrayList();
            for (String str2 : bundle.keySet()) {
                if ("com.google.firebase.components.ComponentRegistrar".equals(bundle.get(str2)) && str2.startsWith("com.google.firebase.components:")) {
                    arrayList.add(str2.substring(31));
                }
            }
        }
        for (final String str3 : arrayList) {
            final int i = 0;
            arrayList2.add(new boa() { // from class: g.cjt
                @Override // g.boa
                public final Object get() {
                    switch (i) {
                        case 0:
                            String str4 = (String) str3;
                            try {
                                Class<?> cls = Class.forName(str4);
                                if (ComponentRegistrar.class.isAssignableFrom(cls)) {
                                    return (ComponentRegistrar) cls.getDeclaredConstructor(null).newInstance(null);
                                }
                                throw new afd("Class " + str4 + " is not an instance of com.google.firebase.components.ComponentRegistrar");
                            } catch (ClassNotFoundException unused2) {
                                return null;
                            } catch (IllegalAccessException e2) {
                                throw new afd(tn.ad("Could not instantiate ", str4, "."), e2);
                            } catch (InstantiationException e3) {
                                throw new afd(tn.ad("Could not instantiate ", str4, "."), e3);
                            } catch (NoSuchMethodException e4) {
                                throw new afd(tn.x("Could not instantiate ", str4), e4);
                            } catch (InvocationTargetException e5) {
                                throw new afd(tn.x("Could not instantiate ", str4), e5);
                            }
                        default:
                            return (FirebaseCommonRegistrar) str3;
                    }
                }
            });
        }
        Trace.endSection();
        Trace.beginSection("Runtime");
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        arrayList3.addAll(arrayList2);
        final FirebaseCommonRegistrar firebaseCommonRegistrar = new FirebaseCommonRegistrar();
        final int i2 = 1;
        arrayList3.add(new boa() { // from class: g.cjt
            @Override // g.boa
            public final Object get() {
                switch (i2) {
                    case 0:
                        String str4 = (String) firebaseCommonRegistrar;
                        try {
                            Class<?> cls = Class.forName(str4);
                            if (ComponentRegistrar.class.isAssignableFrom(cls)) {
                                return (ComponentRegistrar) cls.getDeclaredConstructor(null).newInstance(null);
                            }
                            throw new afd("Class " + str4 + " is not an instance of com.google.firebase.components.ComponentRegistrar");
                        } catch (ClassNotFoundException unused2) {
                            return null;
                        } catch (IllegalAccessException e2) {
                            throw new afd(tn.ad("Could not instantiate ", str4, "."), e2);
                        } catch (InstantiationException e3) {
                            throw new afd(tn.ad("Could not instantiate ", str4, "."), e3);
                        } catch (NoSuchMethodException e4) {
                            throw new afd(tn.x("Could not instantiate ", str4), e4);
                        } catch (InvocationTargetException e5) {
                            throw new afd(tn.x("Could not instantiate ", str4), e5);
                        }
                    default:
                        return (FirebaseCommonRegistrar) firebaseCommonRegistrar;
                }
            }
        });
        arrayList4.add(bdf.g(context, Context.class, new Class[0]));
        arrayList4.add(bdf.g(this, rm.class, new Class[0]));
        arrayList4.add(bdf.g(fpyVar, fpy.class, new Class[0]));
        dlf dlfVar = new dlf(f19907a, arrayList3, arrayList4, new bfy(27));
        this.f19911e = dlfVar;
        Trace.endSection();
        this.l = new dmg(new elu(this, 2, context));
        this.f19910d = dlfVar.c(bfq.class);
        gbz gbzVar = new gbz(this);
        p();
        if (this.f19912f.get()) {
            cwv.f13652a.f13655d.get();
        }
        this.i.add(gbzVar);
        Trace.endSection();
    }

    public static rm m(Context context, fpy fpyVar) {
        rm rmVar;
        AtomicReference atomicReference = anm.f10523a;
        if (context.getApplicationContext() instanceof Application) {
            Application application = (Application) context.getApplicationContext();
            AtomicReference atomicReference2 = anm.f10523a;
            if (atomicReference2.get() == null) {
                anm anmVar = new anm();
                while (true) {
                    if (atomicReference2.compareAndSet(null, anmVar)) {
                        cwv.f(application);
                        cwv.f13652a.g(anmVar);
                        break;
                    }
                    if (atomicReference2.get() != null) {
                        break;
                    }
                }
            }
        }
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (f19909c) {
            tl tlVar = f19908b;
            ckd.an("FirebaseApp name [DEFAULT] already exists!", !tlVar.containsKey("[DEFAULT]"));
            ckd.w(context, "Application context cannot be null.");
            rmVar = new rm(context, "[DEFAULT]", fpyVar);
            tlVar.put("[DEFAULT]", rmVar);
        }
        rmVar.o();
        return rmVar;
    }

    public static rm n() {
        rm rmVar;
        synchronized (f19909c) {
            try {
                rmVar = (rm) f19908b.get("[DEFAULT]");
                if (rmVar == null) {
                    throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + cux.an() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return rmVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof rm)) {
            return false;
        }
        rm rmVar = (rm) obj;
        rmVar.p();
        return this.j.equals(rmVar.j);
    }

    public final int hashCode() {
        return this.j.hashCode();
    }

    public final void o() {
        HashMap hashMap;
        if (!(Build.VERSION.SDK_INT >= 24 ? cml.a(this.f19913g) : true)) {
            p();
            Context context = this.f19913g;
            AtomicReference atomicReference = ewu.f16294a;
            if (atomicReference.get() == null) {
                ewu ewuVar = new ewu(context);
                while (!atomicReference.compareAndSet(null, ewuVar)) {
                    if (atomicReference.get() != null) {
                        return;
                    }
                }
                context.registerReceiver(ewuVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                return;
            }
            return;
        }
        p();
        dlf dlfVar = this.f19911e;
        p();
        boolean equals = "[DEFAULT]".equals(this.j);
        AtomicReference atomicReference2 = dlfVar.f14359g;
        Boolean valueOf = Boolean.valueOf(equals);
        while (true) {
            if (atomicReference2.compareAndSet(null, valueOf)) {
                synchronized (dlfVar) {
                    hashMap = new HashMap(dlfVar.k);
                }
                dlfVar.n(hashMap, equals);
                break;
            } else if (atomicReference2.get() != null) {
                break;
            }
        }
        ((bfq) this.f19910d.get()).h();
    }

    public final void p() {
        ckd.an("FirebaseApp was deleted", !this.h.get());
    }

    public final boolean q() {
        boolean z;
        p();
        epp eppVar = (epp) this.l.get();
        synchronized (eppVar) {
            z = eppVar.f15945a;
        }
        return z;
    }

    public final String r() {
        StringBuilder sb = new StringBuilder();
        p();
        byte[] bytes = this.j.getBytes(Charset.defaultCharset());
        sb.append(bytes == null ? null : Base64.encodeToString(bytes, 11));
        sb.append("+");
        p();
        byte[] bytes2 = this.k.f17220e.getBytes(Charset.defaultCharset());
        sb.append(bytes2 != null ? Base64.encodeToString(bytes2, 11) : null);
        return sb.toString();
    }

    public final String toString() {
        ffr ffrVar = new ffr(this);
        ffrVar.x(this.j, abn.EXTRA_UA_APP_NAME);
        ffrVar.x(this.k, "options");
        return ffrVar.toString();
    }
}
