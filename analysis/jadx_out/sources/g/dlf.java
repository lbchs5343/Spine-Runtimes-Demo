package g;

import com.google.firebase.components.ComponentRegistrar;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class dlf extends erl {

    /* renamed from: e, reason: collision with root package name */
    public static final fdt f14357e = new fdt(0);
    public final bfy h;
    public final aiv j;
    public final HashMap k = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    public final HashMap f14358f = new HashMap();
    public final HashMap i = new HashMap();

    /* renamed from: g, reason: collision with root package name */
    public final AtomicReference f14359g = new AtomicReference();

    public dlf(Executor executor, ArrayList arrayList, ArrayList arrayList2, bfy bfyVar) {
        aiv aivVar = new aiv(executor);
        this.j = aivVar;
        this.h = bfyVar;
        ArrayList arrayList3 = new ArrayList();
        int i = 0;
        arrayList3.add(bdf.g(aivVar, aiv.class, oh.class, gpm.class));
        arrayList3.add(bdf.g(this, dlf.class, new Class[0]));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            bdf bdfVar = (bdf) it.next();
            if (bdfVar != null) {
                arrayList3.add(bdfVar);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList4.add(it2.next());
        }
        ArrayList arrayList5 = new ArrayList();
        synchronized (this) {
            Iterator it3 = arrayList4.iterator();
            while (it3.hasNext()) {
                try {
                    ComponentRegistrar componentRegistrar = (ComponentRegistrar) ((boa) it3.next()).get();
                    if (componentRegistrar != null) {
                        arrayList3.addAll(this.h.ah(componentRegistrar));
                        it3.remove();
                    }
                } catch (afd unused) {
                    it3.remove();
                }
            }
            if (this.k.isEmpty()) {
                fso.k(arrayList3);
            } else {
                ArrayList arrayList6 = new ArrayList(this.k.keySet());
                arrayList6.addAll(arrayList3);
                fso.k(arrayList6);
            }
            Iterator it4 = arrayList3.iterator();
            while (it4.hasNext()) {
                bdf bdfVar2 = (bdf) it4.next();
                this.k.put(bdfVar2, new dmg(new elu(this, i, bdfVar2)));
            }
            arrayList5.addAll(l(arrayList3));
            arrayList5.addAll(o());
            m();
        }
        Iterator it5 = arrayList5.iterator();
        while (it5.hasNext()) {
            ((Runnable) it5.next()).run();
        }
        Boolean bool = (Boolean) this.f14359g.get();
        if (bool != null) {
            n(this.k, bool.booleanValue());
        }
    }

    @Override // g.se
    public final synchronized boa c(Class cls) {
        return (boa) this.f14358f.get(cls);
    }

    @Override // g.se
    public final synchronized boa d(Class cls) {
        fjb fjbVar = (fjb) this.i.get(cls);
        if (fjbVar != null) {
            return fjbVar;
        }
        return f14357e;
    }

    public final ArrayList l(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            bdf bdfVar = (bdf) it.next();
            if (bdfVar.f11310a == 0) {
                boa boaVar = (boa) this.k.get(bdfVar);
                for (Class cls : bdfVar.f11312c) {
                    HashMap hashMap = this.f14358f;
                    if (hashMap.containsKey(cls)) {
                        arrayList2.add(new dsf((brw) ((boa) hashMap.get(cls)), 2, boaVar));
                    } else {
                        hashMap.put(cls, boaVar);
                    }
                }
            }
        }
        return arrayList2;
    }

    public final void m() {
        for (bdf bdfVar : this.k.keySet()) {
            for (djj djjVar : bdfVar.f11314e) {
                if (djjVar.f14277b == 2 && !this.i.containsKey(djjVar.f14276a)) {
                    HashMap hashMap = this.i;
                    Class cls = djjVar.f14276a;
                    Set set = Collections.EMPTY_SET;
                    fjb fjbVar = new fjb();
                    fjbVar.f16880b = null;
                    fjbVar.f16879a = Collections.newSetFromMap(new ConcurrentHashMap());
                    fjbVar.f16879a.addAll(set);
                    hashMap.put(cls, fjbVar);
                } else if (this.f14358f.containsKey(djjVar.f14276a)) {
                    continue;
                } else {
                    int i = djjVar.f14277b;
                    if (i == 1) {
                        throw new d("Unsatisfied dependency for component " + bdfVar + ": " + djjVar.f14276a);
                    }
                    if (i != 2) {
                        HashMap hashMap2 = this.f14358f;
                        Class cls2 = djjVar.f14276a;
                        kf kfVar = brw.f12096b;
                        fdt fdtVar = brw.f12095a;
                        brw brwVar = new brw();
                        brwVar.f12097c = kfVar;
                        brwVar.f12098d = fdtVar;
                        hashMap2.put(cls2, brwVar);
                    }
                }
            }
        }
    }

    public final void n(HashMap hashMap, boolean z) {
        ArrayDeque arrayDeque;
        for (Map.Entry entry : hashMap.entrySet()) {
            bdf bdfVar = (bdf) entry.getKey();
            boa boaVar = (boa) entry.getValue();
            int i = bdfVar.f11315f;
            if (i == 1 || (i == 2 && z)) {
                boaVar.get();
            }
        }
        aiv aivVar = this.j;
        synchronized (aivVar) {
            try {
                arrayDeque = aivVar.f10285b;
                if (arrayDeque != null) {
                    aivVar.f10285b = null;
                } else {
                    arrayDeque = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (arrayDeque != null) {
            Iterator it = arrayDeque.iterator();
            if (it.hasNext()) {
                throw tn.c(it);
            }
        }
    }

    public final ArrayList o() {
        HashMap hashMap = this.i;
        ArrayList arrayList = new ArrayList();
        HashMap hashMap2 = new HashMap();
        for (Map.Entry entry : this.k.entrySet()) {
            bdf bdfVar = (bdf) entry.getKey();
            if (bdfVar.f11310a != 0) {
                boa boaVar = (boa) entry.getValue();
                for (Class cls : bdfVar.f11312c) {
                    if (!hashMap2.containsKey(cls)) {
                        hashMap2.put(cls, new HashSet());
                    }
                    ((Set) hashMap2.get(cls)).add(boaVar);
                }
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (hashMap.containsKey(entry2.getKey())) {
                fjb fjbVar = (fjb) hashMap.get(entry2.getKey());
                Iterator it = ((Set) entry2.getValue()).iterator();
                while (it.hasNext()) {
                    arrayList.add(new dsf(fjbVar, 3, (boa) it.next()));
                }
            } else {
                Class cls2 = (Class) entry2.getKey();
                Set set = (Set) ((Collection) entry2.getValue());
                fjb fjbVar2 = new fjb();
                fjbVar2.f16880b = null;
                fjbVar2.f16879a = Collections.newSetFromMap(new ConcurrentHashMap());
                fjbVar2.f16879a.addAll(set);
                hashMap.put(cls2, fjbVar2);
            }
        }
        return arrayList;
    }
}
