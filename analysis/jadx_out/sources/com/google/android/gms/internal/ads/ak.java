package com.google.android.gms.internal.ads;

import g.csz;
import g.ctm;
import g.eg;
import g.gwm;
import g.kc;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;

/* loaded from: classes3.dex */
public abstract class ak extends gwm {
    public static final eg n;
    public static final ctm o = new ctm(1, ak.class);
    public volatile Set p;
    public volatile int q;

    static {
        Throwable th;
        eg cszVar;
        try {
            cszVar = new kc(AtomicReferenceFieldUpdater.newUpdater(ak.class, Set.class, "O00O000O"), AtomicIntegerFieldUpdater.newUpdater(ak.class, "oOOOO0o0oo"));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            cszVar = new csz();
        }
        Throwable th3 = th;
        n = cszVar;
        if (th3 != null) {
            o.e().logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", "<clinit>", "SafeAtomicHelper is broken!", th3);
        }
    }
}
