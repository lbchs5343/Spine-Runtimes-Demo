package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes3.dex */
public abstract class dsr {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f14732a;

    /* renamed from: b, reason: collision with root package name */
    public static volatile bad f14733b;

    /* renamed from: c, reason: collision with root package name */
    public static volatile int f14734c;

    /* renamed from: d, reason: collision with root package name */
    public static final String[] f14735d;

    /* renamed from: e, reason: collision with root package name */
    public static final bad f14736e = new bad(1);

    /* renamed from: f, reason: collision with root package name */
    public static final bad f14737f = new bad(0);

    static {
        String str;
        try {
            str = System.getProperty("slf4j.detectLoggerNameMismatch");
        } catch (SecurityException unused) {
            str = null;
        }
        f14732a = str == null ? false : str.equalsIgnoreCase("true");
        f14735d = new String[]{"2.0"};
    }

    public static final void g() {
        try {
            ArrayList i = i();
            m(i);
            if (i.isEmpty()) {
                f14734c = 4;
                cot.c("No SLF4J providers were found.");
                cot.c("Defaulting to no-operation (NOP) logger implementation");
                cot.c("See https://www.slf4j.org/codes.html#noProviders for further details.");
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                try {
                    ClassLoader classLoader = dsr.class.getClassLoader();
                    Enumeration<URL> systemResources = classLoader == null ? ClassLoader.getSystemResources("org/slf4j/impl/StaticLoggerBinder.class") : classLoader.getResources("org/slf4j/impl/StaticLoggerBinder.class");
                    while (systemResources.hasMoreElements()) {
                        linkedHashSet.add(systemResources.nextElement());
                    }
                } catch (IOException e2) {
                    cot.d("Error getting resources from path", e2);
                }
                j(linkedHashSet);
            } else {
                f14733b = (bad) i.get(0);
                f14733b.getClass();
                f14734c = 3;
                if (!i.isEmpty() && i.size() > 1) {
                    cot.f("Actual provider is of type [" + i.get(0) + "]");
                }
            }
            h();
            if (f14734c == 3) {
                try {
                    switch (f14733b.f11154a) {
                        case 0:
                            boolean z = false;
                            for (String str : f14735d) {
                                if ("2.0.99".startsWith(str)) {
                                    z = true;
                                }
                            }
                            if (z) {
                                return;
                            }
                            cot.c("The requested version 2.0.99 by your slf4j provider is not compatible with " + Arrays.asList(f14735d).toString());
                            cot.c("See https://www.slf4j.org/codes.html#version_mismatch for further details.");
                            return;
                        default:
                            throw new UnsupportedOperationException();
                    }
                } catch (Throwable th) {
                    cot.d("Unexpected problem occurred during version sanity check", th);
                }
            }
        } catch (Exception e3) {
            f14734c = 2;
            cot.d("Failed to instantiate SLF4J LoggerFactory", e3);
            throw new IllegalStateException("Unexpected initialization failure", e3);
        }
    }

    public static void h() {
        bad badVar = f14736e;
        synchronized (badVar) {
            try {
                ((fgo) badVar.f11155b).f16748b = true;
                fgo fgoVar = (fgo) badVar.f11155b;
                fgoVar.getClass();
                Iterator it = new ArrayList(fgoVar.f16749c.values()).iterator();
                while (it.hasNext()) {
                    ani aniVar = (ani) it.next();
                    aniVar.aa = l(aniVar.z);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        LinkedBlockingQueue linkedBlockingQueue = ((fgo) f14736e.f11155b).f16747a;
        int size = linkedBlockingQueue.size();
        ArrayList arrayList = new ArrayList(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
        int i = 0;
        while (linkedBlockingQueue.drainTo(arrayList, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                cae caeVar = (cae) it2.next();
                if (caeVar != null) {
                    ani aniVar2 = caeVar.f12539b;
                    String str = aniVar2.z;
                    if (aniVar2.aa == null) {
                        throw new IllegalStateException("Delegate logger cannot be null at this state.");
                    }
                    if (!(aniVar2.aa instanceof eir)) {
                        if (!aniVar2.ag()) {
                            cot.c(str);
                        } else if (aniVar2.u(caeVar.f12538a) && aniVar2.ag()) {
                            try {
                                aniVar2.s.invoke(aniVar2.aa, caeVar);
                            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
                            }
                        }
                    }
                }
                int i2 = i + 1;
                if (i == 0) {
                    if (caeVar.f12539b.ag()) {
                        cot.c("A number (" + size + ") of logging calls during the initialization phase have been intercepted and are");
                        cot.c("now being replayed. These are subject to the filtering rules of the underlying logging system.");
                        cot.c("See also https://www.slf4j.org/codes.html#replay");
                    } else if (!(caeVar.f12539b.aa instanceof eir)) {
                        cot.c("The following set of substitute loggers may have been accessed");
                        cot.c("during the initialization phase. Logging calls during this");
                        cot.c("phase were not honored. However, subsequent logging calls to these");
                        cot.c("loggers will work as normally expected.");
                        cot.c("See also https://www.slf4j.org/codes.html#substituteLogger");
                    }
                }
                i = i2;
            }
            arrayList.clear();
        }
        fgo fgoVar2 = (fgo) f14736e.f11155b;
        fgoVar2.f16749c.clear();
        fgoVar2.f16747a.clear();
    }

    public static ArrayList i() {
        ArrayList arrayList = new ArrayList();
        final ClassLoader classLoader = dsr.class.getClassLoader();
        String property = System.getProperty("slf4j.provider");
        bad badVar = null;
        if (property != null && !property.isEmpty()) {
            try {
                cot.f("Attempting to load provider \"" + property + "\" specified via \"slf4j.provider\" system property");
                badVar = (bad) classLoader.loadClass(property).getConstructor(null).newInstance(null);
            } catch (ClassCastException e2) {
                cot.d("Specified SLF4JServiceProvider (" + property + ") does not implement SLF4JServiceProvider interface", e2);
            } catch (ClassNotFoundException e3) {
                e = e3;
                cot.d("Failed to instantiate the specified SLF4JServiceProvider (" + property + ")", e);
            } catch (IllegalAccessException e4) {
                e = e4;
                cot.d("Failed to instantiate the specified SLF4JServiceProvider (" + property + ")", e);
            } catch (InstantiationException e5) {
                e = e5;
                cot.d("Failed to instantiate the specified SLF4JServiceProvider (" + property + ")", e);
            } catch (NoSuchMethodException e6) {
                e = e6;
                cot.d("Failed to instantiate the specified SLF4JServiceProvider (" + property + ")", e);
            } catch (InvocationTargetException e7) {
                e = e7;
                cot.d("Failed to instantiate the specified SLF4JServiceProvider (" + property + ")", e);
            }
        }
        if (badVar != null) {
            arrayList.add(badVar);
            return arrayList;
        }
        Iterator it = (System.getSecurityManager() == null ? ServiceLoader.load(bad.class, classLoader) : (ServiceLoader) AccessController.doPrivileged(new PrivilegedAction() { // from class: g.fmn
            @Override // java.security.PrivilegedAction
            public final Object run() {
                return ServiceLoader.load(bad.class, classLoader);
            }
        })).iterator();
        while (it.hasNext()) {
            try {
                arrayList.add((bad) it.next());
            } catch (ServiceConfigurationError e8) {
                String str = "A service provider failed to instantiate:\n" + e8.getMessage();
                cot.e().println("SLF4J(E): " + str);
            }
        }
        return arrayList;
    }

    public static void j(LinkedHashSet linkedHashSet) {
        if (linkedHashSet.isEmpty()) {
            return;
        }
        cot.c("Class path contains SLF4J bindings targeting slf4j-api versions 1.7.x or earlier.");
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            cot.c("Ignoring binding found at [" + ((URL) it.next()) + "]");
        }
        cot.c("See https://www.slf4j.org/codes.html#ignoredBindings for an explanation.");
    }

    public static dba k(Class cls) {
        int i;
        dba l = l(cls.getName());
        if (f14732a) {
            gcd gcdVar = afo.aa;
            Class cls2 = null;
            if (gcdVar == null) {
                if (afo.ac) {
                    gcdVar = null;
                } else {
                    try {
                        gcdVar = new gcd();
                    } catch (SecurityException unused) {
                        gcdVar = null;
                    }
                    afo.aa = gcdVar;
                    afo.ac = true;
                }
            }
            if (gcdVar != null) {
                Class[] classContext = gcdVar.getClassContext();
                String name = afo.class.getName();
                int i2 = 0;
                while (i2 < classContext.length && !name.equals(classContext[i2].getName())) {
                    i2++;
                }
                if (i2 >= classContext.length || (i = i2 + 2) >= classContext.length) {
                    throw new IllegalStateException("Failed to find org.slf4j.helpers.Util or its caller in the stack; this should not happen");
                }
                cls2 = classContext[i];
            }
            if (cls2 != null && !cls2.isAssignableFrom(cls)) {
                cot.c("Detected logger name mismatch. Given name: \"" + l.getName() + "\"; computed name: \"" + cls2.getName() + "\".");
                cot.c("See https://www.slf4j.org/codes.html#loggerNameMismatch for an explanation");
            }
        }
        return l;
    }

    public static dba l(String str) {
        bad badVar;
        dym dymVar;
        if (f14734c == 0) {
            synchronized (dsr.class) {
                try {
                    if (f14734c == 0) {
                        f14734c = 1;
                        g();
                    }
                } finally {
                }
            }
        }
        int i = f14734c;
        if (i == 1) {
            badVar = f14736e;
        } else {
            if (i == 2) {
                throw new IllegalStateException("org.slf4j.LoggerFactory in failed state. Original exception was thrown EARLIER. See also https://www.slf4j.org/codes.html#unsuccessfulInit");
            }
            if (i == 3) {
                badVar = f14733b;
            } else {
                if (i != 4) {
                    throw new IllegalStateException("Unreachable code");
                }
                badVar = f14737f;
            }
        }
        switch (badVar.f11154a) {
            case 0:
                dymVar = (gpu) badVar.f11155b;
                break;
            default:
                dymVar = (fgo) badVar.f11155b;
                break;
        }
        return dymVar.e(str);
    }

    public static void m(ArrayList arrayList) {
        if (arrayList.size() > 1) {
            cot.c("Class path contains multiple SLF4J providers.");
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                cot.c("Found provider [" + ((bad) it.next()) + "]");
            }
            cot.c("See https://www.slf4j.org/codes.html#multiple_bindings for an explanation.");
        }
    }
}
