package g;

import j$.util.Objects;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class ghc {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f18144a = dsr.k(ghc.class);

    /* renamed from: b, reason: collision with root package name */
    public static final Charset f18145b = StandardCharsets.UTF_8;

    /* renamed from: e, reason: collision with root package name */
    public final Path f18148e;

    /* renamed from: f, reason: collision with root package name */
    public final HashMap f18149f = new HashMap();

    /* renamed from: g, reason: collision with root package name */
    public final HashMap f18150g = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f18146c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f18147d = new HashMap();

    public ghc(Path path) {
        this.f18148e = path;
    }

    public final void h(dwg dwgVar) {
        Iterator it = dwgVar.m.iterator();
        while (it.hasNext()) {
            hbb hbbVar = (hbb) it.next();
            ArrayList arrayList = hbbVar.f19159g;
            gxr gxrVar = hbbVar.f19158f;
            if (arrayList.isEmpty()) {
                boolean z = gxrVar == hbbVar.f19155c ? false : !Objects.equals(gxrVar.f18968a, r2.f18968a);
                HashMap hashMap = this.f18149f;
                if (z) {
                    hashMap.put(gxrVar.f18969b, hbbVar.f19155c.f18969b);
                } else {
                    if (gxrVar != hbbVar.f19155c ? !gxrVar.f18970c.equals(r2.f18970c) : false) {
                        hashMap.put(gxrVar.f18969b, hbbVar.f19155c.f18970c);
                    }
                }
            }
        }
        Iterator it2 = dwgVar.f14933e.iterator();
        while (it2.hasNext()) {
            cci cciVar = (cci) it2.next();
            ve veVar = cciVar.ak;
            if (veVar.j()) {
                this.f18150g.put(veVar.l(), veVar.i());
            }
            cciVar.av();
            for (hcd hcdVar : cciVar.ag) {
                dsj dsjVar = hcdVar.f19217g;
                if (dsjVar.g()) {
                    this.f18146c.put(dsjVar.f14711d.l() + '.' + dsjVar.f14712e + ':' + pp.c(dsjVar.f14709a), hcdVar.f19217g.f14710b);
                }
            }
            cciVar.av();
            Iterator it3 = cciVar.aj.iterator();
            while (it3.hasNext()) {
                ayu ayuVar = ((hed) it3.next()).al;
                if (!ayuVar.f11078f.equals(ayuVar.f11073a)) {
                    this.f18147d.put(ayuVar.h, ayuVar.f11073a);
                }
            }
        }
    }

    public final void i() {
        StandardOpenOption standardOpenOption;
        StandardOpenOption standardOpenOption2;
        StandardOpenOption standardOpenOption3;
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : this.f18149f.entrySet()) {
            arrayList.add(String.format("p %s = %s", entry.getKey(), entry.getValue()));
        }
        for (Map.Entry entry2 : this.f18150g.entrySet()) {
            arrayList.add(String.format("c %s = %s", entry2.getKey(), entry2.getValue()));
        }
        for (Map.Entry entry3 : this.f18146c.entrySet()) {
            arrayList.add(String.format("f %s = %s", entry3.getKey(), entry3.getValue()));
        }
        for (Map.Entry entry4 : this.f18147d.entrySet()) {
            arrayList.add(String.format("m %s = %s", entry4.getKey(), entry4.getValue()));
        }
        Collections.sort(arrayList);
        boolean isEmpty = arrayList.isEmpty();
        dba dbaVar = f18144a;
        if (isEmpty) {
            if (dbaVar.af()) {
                dbaVar.o("Deobfuscation map is empty, not saving it");
            }
        } else {
            Path path = this.f18148e;
            standardOpenOption = StandardOpenOption.WRITE;
            standardOpenOption2 = StandardOpenOption.CREATE;
            standardOpenOption3 = StandardOpenOption.TRUNCATE_EXISTING;
            Files.write(path, arrayList, f18145b, standardOpenOption, standardOpenOption2, standardOpenOption3);
            dbaVar.g(this.f18148e, "Deobfuscation map file saved as: {}");
        }
    }
}
