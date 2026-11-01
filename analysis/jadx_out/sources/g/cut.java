package g;

import j$.util.Map;
import j$.util.stream.Stream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class cut {

    /* renamed from: a, reason: collision with root package name */
    public static final Set f13555a;

    /* renamed from: b, reason: collision with root package name */
    public HashMap f13556b;

    /* renamed from: c, reason: collision with root package name */
    public final HashSet f13557c = new HashSet();

    /* renamed from: d, reason: collision with root package name */
    public final dwg f13558d;

    /* renamed from: e, reason: collision with root package name */
    public HashMap f13559e;

    /* renamed from: f, reason: collision with root package name */
    public HashMap f13560f;

    static {
        dsr.k(cut.class);
        f13555a = Collections.singleton("java.lang.Object");
    }

    public cut(dwg dwgVar) {
        this.f13558d = dwgVar;
    }

    public final Set g(String str) {
        Set set = (Set) this.f13560f.get(str);
        return set == null ? Collections.EMPTY_SET : set;
    }

    public final void h() {
        Collection collection;
        HashMap hashMap = new HashMap(this.f13559e.size());
        HashSet hashSet = new HashSet();
        Iterator it = this.f13559e.entrySet().iterator();
        while (it.hasNext()) {
            aht ahtVar = (aht) ((Map.Entry) it.next()).getValue();
            hashSet.clear();
            k(ahtVar, hashSet);
            int size = hashSet.size();
            if (size == 0) {
                collection = Collections.EMPTY_SET;
            } else if (size != 1) {
                collection = new HashSet(hashSet);
            } else {
                String str = (String) hashSet.iterator().next();
                collection = str.equals("java.lang.Object") ? f13555a : Collections.singleton(str);
            }
            hashMap.put(ahtVar.f10238c.l(), collection);
        }
        this.f13560f = hashMap;
        HashMap hashMap2 = new HashMap(this.f13559e.size());
        ArrayList arrayList = new ArrayList(this.f13559e.keySet());
        Collections.sort(arrayList);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            String str2 = (String) it2.next();
            Iterator it3 = g(str2).iterator();
            while (it3.hasNext()) {
                ((List) Map.b.computeIfAbsent(hashMap2, (String) it3.next(), new fov(12))).add(str2);
            }
        }
        this.f13556b = hashMap2;
    }

    public final void i(ArrayList arrayList) {
        cwx[] cwxVarArr;
        if (this.f13559e == null) {
            this.f13559e = new HashMap(arrayList.size());
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            cci cciVar = (cci) it.next();
            cwx cwxVar = cciVar.ak.f20149d;
            String l = cwxVar.l();
            aht ahtVar = new aht(cciVar.f12632d.f18566ab, cwxVar);
            dba dbaVar = dpm.f14594a;
            cwx cwxVar2 = cciVar.af;
            if (cwxVar2 == null) {
                cwxVarArr = dpm.f14595b;
            } else {
                int size = cciVar.j.size();
                if (size == 0 && cwxVar2 == cwx.t) {
                    cwxVarArr = dpm.f14596c;
                } else {
                    cwx[] cwxVarArr2 = new cwx[size + 1];
                    cwxVarArr2[0] = cwxVar2;
                    Iterator it2 = cciVar.j.iterator();
                    int i = 1;
                    while (it2.hasNext()) {
                        cwxVarArr2[i] = (cwx) it2.next();
                        i++;
                    }
                    cwxVarArr = cwxVarArr2;
                }
            }
            ahtVar.f10240e = cwxVarArr;
            this.f13559e.put(l, ahtVar);
        }
    }

    public final void j() {
        dpm dpmVar = new dpm(this.f13558d);
        long currentTimeMillis = System.currentTimeMillis();
        InputStream resourceAsStream = dpm.class.getResourceAsStream("/clst/core.jcst");
        try {
            if (resourceAsStream == null) {
                throw new gck("Can't load classpath file: /clst/core.jcst");
            }
            dpmVar.i(resourceAsStream);
            resourceAsStream.close();
            dba dbaVar = dpm.f14594a;
            if (dbaVar.af()) {
                dbaVar.n("Clst file loaded in {}ms, android api: {}, classes: {}, methods: {}", Long.valueOf(System.currentTimeMillis() - currentTimeMillis), Integer.valueOf(dpmVar.f14598e), Integer.valueOf(dpmVar.f14599f.length), Integer.valueOf(Stream.a.of(dpmVar.f14599f).mapToInt(new dbm(4)).sum()));
            }
            if (this.f13559e != null) {
                throw new gck("Classpath already loaded");
            }
            HashMap hashMap = new HashMap(dpmVar.f14599f.length);
            this.f13559e = hashMap;
            for (aht ahtVar : dpmVar.f14599f) {
                hashMap.put(ahtVar.f10238c.l(), ahtVar);
            }
        } catch (Throwable th) {
            if (resourceAsStream != null) {
                try {
                    resourceAsStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public final void k(aht ahtVar, HashSet hashSet) {
        for (cwx cwxVar : ahtVar.f10240e) {
            if (cwxVar != null) {
                aht ahtVar2 = (aht) this.f13559e.get(cwxVar.l());
                if (ahtVar2 == null) {
                    this.f13557c.add(cwxVar.l());
                }
                if (ahtVar2 == null) {
                    hashSet.add(cwxVar.l());
                } else if (hashSet.add(ahtVar2.f10238c.l())) {
                    k(ahtVar2, hashSet);
                }
            }
        }
    }

    public final aht l(cwx cwxVar) {
        return (aht) this.f13559e.get(cwxVar.l());
    }
}
