package g;

import j$.util.Objects;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class atj {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f10800a = dsr.k(atj.class);

    /* renamed from: b, reason: collision with root package name */
    public static final eem f10801b;

    static {
        aud ap = acr.ap();
        fvw fvwVar = fvw.LOWER_CASE_WITH_DASHES;
        Objects.requireNonNull(fvwVar);
        ap.n = fvwVar;
        ap.k = false;
        f10801b = ap.p();
    }

    public static void c(dwg dwgVar) {
        emk emkVar = new emk();
        ArrayList arrayList = dwgVar.f14933e;
        emkVar.f15801a = new ArrayList(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            cci cciVar = (cci) it.next();
            ve veVar = cciVar.ak;
            clx clxVar = new clx(7, false);
            veVar.f20149d.l();
            veVar.m();
            cciVar.bd().ak.o();
            if (veVar.n()) {
                String str = cciVar.bd().ak.f20147b;
            }
            cciVar.av();
            List<hcd> list = cciVar.ag;
            if (!list.isEmpty()) {
                clxVar.f13103e = new ArrayList(list.size());
                for (hcd hcdVar : list) {
                    cfg cfgVar = new cfg(6);
                    String str2 = hcdVar.f19217g.f14712e;
                    ((ArrayList) clxVar.f13103e).add(cfgVar);
                }
            }
            cciVar.av();
            List<hed> list2 = cciVar.aj;
            if (!list2.isEmpty()) {
                clxVar.f13101c = new ArrayList(list2.size());
                for (hed hedVar : list2) {
                    fbc fbcVar = new fbc(6);
                    String str3 = hedVar.al.f11077e;
                    Long.toHexString(hedVar.ar ? 0L : hedVar.f19333ab.j());
                    ((ArrayList) clxVar.f13101c).add(fbcVar);
                }
            }
            emkVar.f15801a.add(clxVar);
        }
        File file = new File(dwgVar.i.s.getAbsoluteFile(), "mapping.json");
        dba dbaVar = bqu.f12045c;
        bqu.f(file.getParentFile());
        try {
            FileWriter fileWriter = new FileWriter(file);
            try {
                eem eemVar = f10801b;
                eemVar.getClass();
                try {
                    eemVar.m(emkVar, emk.class, eemVar.o(fileWriter));
                    f10800a.g(file.getAbsolutePath(), "Save mappings to {}");
                    fileWriter.close();
                } catch (IOException e2) {
                    throw new gyr(e2);
                }
            } finally {
            }
        } catch (Exception e3) {
            throw new gck("Failed to save mapping json", e3);
        }
    }
}
