package com.google.android.gms.internal.ads;

import g.awf;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public abstract class zzgyp {
    public static zzgyh a() {
        String c2;
        ClassLoader classLoader = zzgyp.class.getClassLoader();
        if (zzgyh.class.equals(zzgyh.class)) {
            c2 = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";
        } else {
            if (!zzgyh.class.getPackage().equals(zzgyp.class.getPackage())) {
                throw new IllegalArgumentException(zzgyh.class.getName());
            }
            c2 = awf.c(zzgyh.class.getPackage().getName(), ".BlazeGeneratedzzgyhLoader");
        }
        try {
            try {
                try {
                    try {
                        return (zzgyh) zzgyh.class.cast(((zzgyp) Class.forName(c2, true, classLoader).getConstructor(null).newInstance(null)).b());
                    } catch (InvocationTargetException e2) {
                        throw new IllegalStateException(e2);
                    }
                } catch (IllegalAccessException e3) {
                    throw new IllegalStateException(e3);
                }
            } catch (InstantiationException e4) {
                throw new IllegalStateException(e4);
            } catch (NoSuchMethodException e5) {
                throw new IllegalStateException(e5);
            }
        } catch (ClassNotFoundException unused) {
            Iterator it = ServiceLoader.load(zzgyp.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    arrayList.add((zzgyh) zzgyh.class.cast(((zzgyp) it.next()).b()));
                } catch (ServiceConfigurationError e6) {
                    Logger.getLogger(zzgyc.class.getName()).logp(Level.SEVERE, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", "Unable to load ".concat("zzgyh"), (Throwable) e6);
                }
            }
            if (arrayList.size() == 1) {
                return (zzgyh) arrayList.get(0);
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (zzgyh) zzgyh.class.getMethod("combine", Collection.class).invoke(null, arrayList);
            } catch (IllegalAccessException e7) {
                throw new IllegalStateException(e7);
            } catch (NoSuchMethodException e8) {
                throw new IllegalStateException(e8);
            } catch (InvocationTargetException e9) {
                throw new IllegalStateException(e9);
            }
        }
    }

    public abstract zzgyh b();
}
