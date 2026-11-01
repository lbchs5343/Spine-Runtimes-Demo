package g;

import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.Comparator;
import j$.util.List;
import j$.util.Map;
import j$.util.Objects;
import j$.util.stream.Collectors;
import j$.util.stream.Stream;
import java.io.Closeable;
import java.io.File;
import java.nio.file.FileVisitOption;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final class cqc implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f13320a = dsr.k(cqc.class);

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f13322c;
    public final eie i;
    public dwg j;
    public final ur k;
    public List p;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f13325f = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final chm f13321b = new chm();

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f13324e = new ArrayList();
    public final ArrayList h = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public final HashMap f13326g = new HashMap();
    public final ArrayList o = new ArrayList();
    public final erf n = new erf();

    /* renamed from: d, reason: collision with root package name */
    public final AtomicReference f13323d = new AtomicReference("");
    public final cln m = new cln(this);
    public final cvm l = new cvm(this);

    public cqc(ur urVar) {
        this.k = urVar;
        this.i = new eie(21, new fdy(urVar.am, 17, EnumSet.noneOf(evu.class)));
    }

    public static void q(ArrayList arrayList) {
        try {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Closeable closeable = (Closeable) it.next();
                try {
                    closeable.close();
                } catch (Exception e2) {
                    f13320a.t(closeable, "Fail to close '{}'", e2);
                }
            }
        } finally {
            arrayList.clear();
        }
    }

    public final void aa(eie eieVar) {
        Path resolve;
        File file;
        z();
        yf.c(this);
        f13320a.j("loading (resources only) ...");
        eieVar.u(5L, 100L, "MSG:init_engine");
        this.k.i.getClass();
        resolve = fvm.f17482a.resolve("tmp");
        dba dbaVar = bqu.f12045c;
        if (resolve != null) {
            file = resolve.toFile();
            bqu.f(file);
        }
        bqu.g(resolve);
        x();
        eieVar.u(15L, 100L, "MSG:read_dex");
        r();
        eieVar.u(30L, 100L, "MSG:prepare_class_map");
        dwg dwgVar = new dwg(this);
        this.j = dwgVar;
        ur urVar = dwgVar.i;
        urVar.getClass();
        if (!urVar.r.isEmpty()) {
            urVar.af.getClass();
        }
        this.j.y(this.f13325f, eieVar);
        eieVar.u(60L, 100L, "MSG:extract_res");
        this.j.aa(this.l, s());
        eieVar.u(100L, 100L, "MSG:load_complete");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Path resolve;
        boolean exists;
        Path absolutePath;
        boolean isDirectory;
        File file;
        z();
        q(this.f13325f);
        q(this.f13324e);
        q(this.h);
        q(this.o);
        ur urVar = this.k;
        urVar.i.getClass();
        resolve = fvm.f17482a.resolve("tmp");
        dba dbaVar = bqu.f12045c;
        if (resolve != null) {
            file = resolve.toFile();
            bqu.f(file);
        }
        exists = Files.exists(resolve, new LinkOption[0]);
        if (exists) {
            try {
                bqu.j(resolve, false);
            } catch (Exception e2) {
                dba dbaVar2 = bqu.f12045c;
                absolutePath = resolve.toAbsolutePath();
                dbaVar2.b(absolutePath, "Failed to delete dir: {}", e2);
            }
        }
        urVar.close();
        isDirectory = Files.isDirectory(bqu.f12046d, new LinkOption[0]);
        if (isDirectory) {
            Path path = bqu.f12046d;
            try {
                bqu.j(path, true);
            } catch (Exception e3) {
                throw new gck("Failed to clear directory " + path, e3);
            }
        }
    }

    public final void r() {
        dba dbaVar;
        boolean isDirectory;
        FileVisitOption fileVisitOption;
        Stream convert;
        ArrayList arrayList = this.f13325f;
        arrayList.clear();
        List g2 = evh.g(this.k.ad, new gpn(7));
        dba dbaVar2 = bqu.f12045c;
        final ArrayList arrayList2 = new ArrayList(g2.size());
        Iterator it = g2.iterator();
        while (it.hasNext()) {
            Path i = cnf.i(it.next());
            isDirectory = Files.isDirectory(i, new LinkOption[0]);
            if (isDirectory) {
                try {
                    fileVisitOption = FileVisitOption.FOLLOW_LINKS;
                    convert = Stream.VivifiedWrapper.convert(Files.walk(i, fileVisitOption));
                    try {
                        convert.filter(new eck()).forEach(new Consumer() { // from class: g.gcg
                            @Override // java.util.function.Consumer
                            /* renamed from: accept */
                            public final void n(Object obj) {
                                arrayList2.add((Path) obj);
                            }

                            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                                return j$.util.function.j.$default$andThen(this, consumer);
                            }
                        });
                        convert.close();
                    } catch (Throwable th) {
                        if (convert != null) {
                            try {
                                convert.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                } catch (Exception e2) {
                    bqu.f12045c.b(i, "Failed to list files in directory: {}", e2);
                }
            } else {
                arrayList2.add(i);
            }
        }
        long currentTimeMillis = System.currentTimeMillis();
        Iterator it2 = this.m.f13069b.iterator();
        while (true) {
            boolean hasNext = it2.hasNext();
            dbaVar = f13320a;
            if (!hasNext) {
                break;
            }
            gay gayVar = (gay) it2.next();
            Iterator it3 = gayVar.h.iterator();
            while (it3.hasNext()) {
                try {
                    iu c2 = ((gpy) it3.next()).c(arrayList2);
                    if (!c2.isEmpty()) {
                        arrayList.add(c2);
                    }
                } catch (Exception e3) {
                    dbaVar.t(gayVar, "Failed to load code for plugin: {}", e3);
                }
            }
        }
        arrayList.addAll(this.f13324e);
        if (dbaVar.af()) {
            dbaVar.a(Integer.valueOf(arrayList.size()), "Loaded using {} inputs plugin in {} ms", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
        }
    }

    public final synchronized List s() {
        if (this.f13322c == null) {
            dwg dwgVar = this.j;
            if (dwgVar == null) {
                return Collections.EMPTY_LIST;
            }
            this.f13322c = this.l.h(dwgVar);
        }
        return this.f13322c;
    }

    public final fuo t(boolean z, boolean z2) {
        List<cno> list;
        int lastIndexOf;
        if (this.j == null) {
            throw new gck("No loaded files");
        }
        this.k.getClass();
        ur urVar = this.k;
        File file = urVar.s;
        File file2 = urVar.z;
        bqu.f(file);
        bqu.f(file2);
        fuo fuoVar = new fuo();
        fuoVar.f17444g.set(this.k.f20119d);
        if (z2) {
            ur urVar2 = this.k;
            urVar2.getClass();
            Iterator it = s().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                awr awrVar = (awr) it.next();
                if (awrVar.f10993e == ag.MANIFEST) {
                    new oj(this, file2, awrVar).run();
                    break;
                }
            }
            Set set = (Set) Collection.b.stream(urVar2.ad).map(new gpn(8)).collect(Collectors.toSet());
            HashSet hashSet = new HashSet();
            Iterator it2 = this.j.f14933e.iterator();
            while (it2.hasNext()) {
                cci cciVar = (cci) it2.next();
                if (cciVar.ac != null) {
                    String str = cciVar.x;
                    if (str.endsWith(".class") && (lastIndexOf = str.lastIndexOf(58)) != -1) {
                        str = str.substring(str.lastIndexOf(58, lastIndexOf - 1) + 1, lastIndexOf);
                    }
                    hashSet.add(str);
                }
            }
            ArrayList arrayList = new ArrayList();
            for (awr awrVar2 : s()) {
                ag agVar = awrVar2.f10993e;
                if (agVar != ag.MANIFEST) {
                    String str2 = awrVar2.f10992d;
                    if (agVar == ag.ARSC || !set.contains(str2)) {
                        if (!hashSet.contains(str2)) {
                            arrayList.add(new gtt(this, awrVar2, file2, 4));
                        }
                    }
                }
            }
            fuoVar.k(arrayList);
        }
        if (!z) {
            return fuoVar;
        }
        synchronized (this) {
            dwg dwgVar = this.j;
            if (dwgVar == null) {
                list = Collections.EMPTY_LIST;
            } else {
                if (this.p == null) {
                    ArrayList arrayList2 = dwgVar.f14933e;
                    ArrayList arrayList3 = new ArrayList(arrayList2.size());
                    Iterator it3 = arrayList2.iterator();
                    while (it3.hasNext()) {
                        cci cciVar2 = (cci) it3.next();
                        if (!cciVar2.l.g(csv.DONT_GENERATE) && !cciVar2.bk()) {
                            arrayList3.add(y(cciVar2));
                        }
                    }
                    this.p = Collections.unmodifiableList(arrayList3);
                }
                list = this.p;
            }
        }
        ry ryVar = this.k.ac;
        ArrayList arrayList4 = new ArrayList(list.size());
        for (cno cnoVar : list) {
            cci cciVar3 = cnoVar.f13186e;
            csv csvVar = csv.DONT_GENERATE;
            if (!cciVar3.l.g(csvVar)) {
                if (ryVar == null || ryVar.test(cciVar3.ak.f20147b)) {
                    arrayList4.add(cnoVar);
                } else {
                    cciVar3.w(csvVar);
                }
            }
        }
        try {
            List c2 = this.f13321b.c(arrayList4);
            ArrayList arrayList5 = new ArrayList(c2.size());
            Iterator it4 = c2.iterator();
            while (it4.hasNext()) {
                arrayList5.add(new gtt(this, (List) it4.next(), file, 3));
            }
            fuoVar.k(arrayList5);
            return fuoVar;
        } catch (Exception e2) {
            throw new gck("Decompilation batches build failed", e2);
        }
    }

    public final String toString() {
        return "jadx decompiler " + bcv.d();
    }

    public final void u(emr emrVar) {
        try {
            fuo t = t(false, true);
            t.l();
            long j = t.f17439b;
            while (t.f17440c.get()) {
                emr emrVar2 = emrVar;
                emrVar2.ae(t.h.get(), j, (String) this.f13323d.get());
                Thread.sleep(200);
                emrVar = emrVar2;
            }
        } catch (InterruptedException e2) {
            f13320a.l("Save resources interrupted", e2);
            Thread.currentThread().interrupt();
        }
    }

    public final void v(eie eieVar) {
        Path resolve;
        String str;
        int lastIndexOf;
        File file;
        z();
        yf.c(this);
        dba dbaVar = f13320a;
        dbaVar.j("loading ...");
        eieVar.u(5L, 100L, "MSG:init_engine");
        this.k.i.getClass();
        resolve = fvm.f17482a.resolve("tmp");
        dba dbaVar2 = bqu.f12045c;
        if (resolve != null) {
            file = resolve.toFile();
            bqu.f(file);
        }
        bqu.g(resolve);
        x();
        eieVar.u(15L, 100L, "MSG:read_dex");
        r();
        eieVar.u(30L, 100L, "MSG:prepare_class_map");
        dwg dwgVar = new dwg(this);
        this.j = dwgVar;
        ur urVar = dwgVar.i;
        urVar.getClass();
        if (!urVar.r.isEmpty()) {
            urVar.af.getClass();
        }
        this.j.y(this.f13325f, eieVar);
        eieVar.u(60L, 100L, "MSG:extract_res");
        this.j.aa(this.l, s());
        eieVar.u(70L, 100L, "MSG:integrate_class_ref");
        dwg dwgVar2 = this.j;
        ArrayList arrayList = dwgVar2.m;
        int size = dwgVar2.f14933e.size();
        HashMap hashMap = dwgVar2.f14935g;
        int i = 0;
        if (size != hashMap.size()) {
            Collection.b.stream(((Map) Collection.b.stream(dwgVar2.f14933e).collect(Collectors.groupingBy(new coq(i)))).entrySet()).filter(new brj(18)).forEach(new agx(20, dwgVar2));
        }
        ArrayList arrayList2 = new ArrayList(hashMap.values());
        dwgVar2.f14933e = arrayList2;
        dwg.f14929a.g(Integer.valueOf(arrayList2.size()), "Loaded classes: {}");
        List.b.sort(dwgVar2.f14933e, Comparator.a.comparing(new gpn(26)));
        int i2 = 1;
        if (dwgVar2.i.m) {
            ArrayList arrayList3 = new ArrayList();
            Iterator it = dwgVar2.f14933e.iterator();
            while (it.hasNext()) {
                cci cciVar = (cci) it.next();
                if (cciVar.ak.n()) {
                    arrayList3.add(cciVar);
                }
            }
            ArrayList arrayList4 = new ArrayList();
            Iterator it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                cci cciVar2 = (cci) it2.next();
                ve veVar = cciVar2.ak;
                ve veVar2 = veVar.f20148c;
                cci ae = dwgVar2.ae(veVar2);
                if (ae == null && veVar2 != null && (lastIndexOf = (str = veVar2.f20147b).lastIndexOf(46)) > 0 && lastIndexOf != str.length() - 1) {
                    String substring = str.substring(lastIndexOf + 1);
                    cci ae2 = dwgVar2.ae(ve.g(dwgVar2, str.substring(0, lastIndexOf)));
                    if (ae2 != null && ae2.at(substring) != null) {
                        veVar.k(ae2.f12631ab, veVar.f20149d, true);
                        veVar.f20148c = ae2.ak;
                        ae = ae2;
                    }
                }
                if (ae == null) {
                    arrayList4.add(cciVar2);
                    ve veVar3 = cciVar2.ak;
                    veVar3.k(cciVar2.f12631ab, veVar3.f20149d, false);
                    veVar3.f20148c = null;
                    cciVar2.ai = cciVar2;
                } else {
                    if (ae.i.isEmpty()) {
                        ae.i = new ArrayList(5);
                    }
                    ae.i.add(cciVar2);
                    cciVar2.ai = ae;
                }
            }
            Iterator it3 = arrayList4.iterator();
            while (it3.hasNext()) {
                Iterator it4 = ((cci) it3.next()).i.iterator();
                while (it4.hasNext()) {
                    ve veVar4 = ((cci) it4.next()).ak;
                    veVar4.k(dwgVar2, veVar4.f20149d, veVar4.n());
                }
            }
            Iterator it5 = arrayList.iterator();
            while (it5.hasNext()) {
                Collection.b.removeIf(((hbb) it5.next()).f19156d, new brj(17));
            }
        }
        Collections.sort(arrayList);
        dwg dwgVar3 = this.j;
        dwgVar3.getClass();
        try {
            if (dwgVar3.l == null) {
                cut cutVar = new cut(dwgVar3);
                if (dwgVar3.i.ao) {
                    cutVar.j();
                }
                cutVar.i(dwgVar3.f14933e);
                cutVar.h();
                dwgVar3.l = cutVar;
            }
            eieVar.u(80L, 100L, "MSG:start_ast");
            dwg dwgVar4 = this.j;
            ur urVar2 = dwgVar4.i;
            qp qpVar = urVar2.aa;
            qp qpVar2 = qp.FALLBACK;
            HashMap hashMap2 = this.f13326g;
            if (qpVar != qpVar2 && qpVar != qp.SIMPLE) {
                int i3 = 9;
                new dzh(i3, dwgVar4.r).ae((java.util.List) hashMap2.get(hba.f19154a), new gpn(28));
                new dzh(i3, dwgVar4.v.f10790c).ae((java.util.List) hashMap2.get(gj.f18229a), new gpn(29));
                ArrayList arrayList5 = urVar2.ap;
                if (!arrayList5.isEmpty()) {
                    dcg dcgVar = new dcg(new HashSet(arrayList5), i2);
                    Collection.b.removeIf(dwgVar4.r, dcgVar);
                    Collection.b.removeIf(dwgVar4.v.f10790c, dcgVar);
                }
            }
            eieVar.u(95L, 100L, "MSG:init_core");
            dwg dwgVar5 = this.j;
            for (pj pjVar : dwgVar5.v.f10790c) {
                try {
                    pjVar.h(dwgVar5);
                } catch (Exception e2) {
                    at.f10788a.b(pjVar.getClass().getSimpleName(), "Visitor init failed: {}", e2);
                }
            }
            dbaVar.o("Load finished");
            java.util.List list = (java.util.List) hashMap2.get(fux.f17456a);
            if (list != null) {
                Iterator it6 = list.iterator();
                if (it6.hasNext()) {
                    throw tn.c(it6);
                }
            }
            eieVar.u(100L, 100L, "MSG:load_complete");
        } catch (Exception e3) {
            throw new gck("Error loading jadx class set", e3);
        }
    }

    public final void w(emr emrVar) {
        try {
            ur urVar = this.k;
            fuo t = t(!urVar.ar, !urVar.f20122g);
            t.l();
            long j = t.f17439b;
            while (t.f17440c.get()) {
                emr emrVar2 = emrVar;
                emrVar2.ae(t.h.get(), j, (String) this.f13323d.get());
                Thread.sleep(200);
                emrVar = emrVar2;
            }
        } catch (InterruptedException e2) {
            f13320a.l("Save interrupted", e2);
            Thread.currentThread().interrupt();
        }
    }

    public final void x() {
        cln clnVar = this.m;
        this.k.getClass();
        clnVar.f13070c.put("java-input", "java-input");
        cln clnVar2 = this.m;
        etc etcVar = this.k.f20120e;
        clnVar2.f13074g.clear();
        String d2 = bcv.d();
        d2.startsWith("r");
        d2.equals("dev");
        etcVar.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator it = ServiceLoader.load(cka.class).iterator();
        while (it.hasNext()) {
            arrayList.add((cka) it.next());
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            cka ckaVar = (cka) it2.next();
            gay gayVar = new gay(clnVar2.f13071d, ckaVar);
            if (!clnVar2.f13073f.contains((String) gayVar.f17830c.f14569g)) {
                cln.f13068a.v(gayVar, "Loading plugin: {}");
                if (!clnVar2.f13074g.add(gayVar)) {
                    throw new IllegalArgumentException("Duplicate plugin id: " + gayVar + ", class " + ckaVar.getClass());
                }
                Iterable.b.forEach(clnVar2.f13072e, new agx(16, gayVar));
            }
        }
        synchronized (clnVar2) {
            Map map = (Map) Collection.b.stream(clnVar2.f13074g).collect(Collectors.groupingBy(new gpn(9)));
            ArrayList arrayList2 = new ArrayList(map.size());
            Map.b.forEach(map, new jb(clnVar2, 1, arrayList2));
            clnVar2.f13069b.clear();
            clnVar2.f13069b.addAll(arrayList2);
        }
        dba dbaVar = f13320a;
        if (dbaVar.af()) {
            dbaVar.v(this.m.f13069b, "Resolved plugins: {}");
        }
        cln clnVar3 = this.m;
        TreeSet<gay> treeSet = clnVar3.f13069b;
        evf evfVar = new evf(3, false);
        evfVar.f16224f = clnVar3.f13071d.k.i;
        Iterator it3 = treeSet.iterator();
        while (it3.hasNext()) {
            gay gayVar2 = (gay) it3.next();
            try {
                if (gayVar2.f17832e == null) {
                    gayVar2.f17832e = evfVar;
                }
                Thread currentThread = Thread.currentThread();
                ClassLoader contextClassLoader = currentThread.getContextClassLoader();
                currentThread.setContextClassLoader(gayVar2.f17831d);
                try {
                    gayVar2.f17834g.b(gayVar2);
                    gayVar2.f17828a = true;
                    currentThread.setContextClassLoader(contextClassLoader);
                } catch (Throwable th) {
                    currentThread.setContextClassLoader(contextClassLoader);
                    throw th;
                }
            } catch (Exception e2) {
                cln.f13068a.b((String) gayVar2.f17830c.f14569g, "Failed to init plugin: {}", e2);
            }
        }
        for (gay gayVar3 : treeSet) {
            gez gezVar = gayVar3.f17829b;
            if (gezVar != null) {
                String str = (String) gayVar3.f17830c.f14569g;
                java.util.List unmodifiableList = Collections.unmodifiableList((ArrayList) gezVar.f18008e);
                if (unmodifiableList == null) {
                    throw new IllegalArgumentException("Null option descriptions in plugin id: ".concat(str));
                }
                Iterable.b.forEach(unmodifiableList, new esv(str.concat("."), 7, str));
            }
        }
        dba dbaVar2 = f13320a;
        if (dbaVar2.af()) {
            java.util.List list = (java.util.List) Collection.b.stream(this.f13326g.values()).flatMap(new gpn(5)).map(new gpn(6)).collect(Collectors.toList());
            dbaVar2.a(Integer.valueOf(list.size()), "Loaded custom passes: {} {}", list);
        }
    }

    public final synchronized cno y(cci cciVar) {
        cno cnoVar;
        try {
            cnoVar = cciVar.ae;
            if (cnoVar == null) {
                cnoVar = cciVar.bk() ? new cno(cciVar, y(cciVar.ai)) : new cno(cciVar, this);
                cciVar.ae = cnoVar;
            }
        } catch (Throwable th) {
            throw th;
        }
        return cnoVar;
    }

    public final void z() {
        Iterator it = this.m.f13069b.iterator();
        while (it.hasNext()) {
            gay gayVar = (gay) it.next();
            try {
                if (gayVar.f17828a) {
                    Objects.requireNonNull(gayVar.f17834g);
                    Thread currentThread = Thread.currentThread();
                    ClassLoader contextClassLoader = currentThread.getContextClassLoader();
                    currentThread.setContextClassLoader(gayVar.f17831d);
                    currentThread.setContextClassLoader(contextClassLoader);
                }
            } catch (Exception e2) {
                cln.f13068a.t((String) gayVar.f17830c.f14569g, "Failed to unload plugin: {}", e2);
            }
        }
        this.j = null;
        this.p = null;
        this.f13322c = null;
        akj akjVar = this.n.f16023a;
        synchronized (akjVar) {
            ((IdentityHashMap) akjVar.h).clear();
        }
    }
}
