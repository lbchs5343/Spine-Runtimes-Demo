package g;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes3.dex */
public final class xa extends erl {

    /* renamed from: e, reason: collision with root package name */
    public final Set f20266e;

    /* renamed from: f, reason: collision with root package name */
    public final se f20267f;

    /* renamed from: g, reason: collision with root package name */
    public final Set f20268g;
    public final Set h;
    public final Set i;

    public xa(bdf bdfVar, se seVar) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        Set<djj> set = bdfVar.f11314e;
        Set set2 = bdfVar.f11313d;
        for (djj djjVar : set) {
            int i = djjVar.f14278c;
            int i2 = djjVar.f14277b;
            boolean z = i == 0;
            Class cls = djjVar.f14276a;
            if (z) {
                if (i2 == 2) {
                    hashSet4.add(cls);
                } else {
                    hashSet.add(cls);
                }
            } else if (i == 2) {
                hashSet3.add(cls);
            } else if (i2 == 2) {
                hashSet5.add(cls);
            } else {
                hashSet2.add(cls);
            }
        }
        if (!set2.isEmpty()) {
            hashSet.add(gpm.class);
        }
        this.i = Collections.unmodifiableSet(hashSet);
        this.f20266e = Collections.unmodifiableSet(hashSet2);
        Collections.unmodifiableSet(hashSet3);
        this.f20268g = Collections.unmodifiableSet(hashSet4);
        this.h = Collections.unmodifiableSet(hashSet5);
        this.f20267f = seVar;
    }

    @Override // g.erl, g.se
    public final Set a(Class cls) {
        if (this.f20268g.contains(cls)) {
            return this.f20267f.a(cls);
        }
        throw new dwb("Attempting to request an undeclared dependency Set<" + cls + ">.");
    }

    @Override // g.erl, g.se
    public final Object b(Class cls) {
        if (!this.i.contains(cls)) {
            throw new dwb("Attempting to request an undeclared dependency " + cls + ".");
        }
        Object b2 = this.f20267f.b(cls);
        if (!cls.equals(gpm.class)) {
            return b2;
        }
        return new fdu();
    }

    @Override // g.se
    public final boa c(Class cls) {
        if (this.f20266e.contains(cls)) {
            return this.f20267f.c(cls);
        }
        throw new dwb("Attempting to request an undeclared dependency Provider<" + cls + ">.");
    }

    @Override // g.se
    public final boa d(Class cls) {
        if (this.h.contains(cls)) {
            return this.f20267f.d(cls);
        }
        throw new dwb("Attempting to request an undeclared dependency Provider<Set<" + cls + ">>.");
    }
}
