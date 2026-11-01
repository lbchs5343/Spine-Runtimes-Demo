package g;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes3.dex */
public final class auf extends fdk {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f10860b = 3;

    /* renamed from: c, reason: collision with root package name */
    public final Object f10861c;

    public auf(apd apdVar) {
        super("internal.appMetadata");
        this.f10861c = apdVar;
    }

    public auf(bgb bgbVar) {
        super("internal.logger");
        this.f10861c = bgbVar;
        this.h.put("log", new lv(this, false, true));
        this.h.put("silent", new csn("silent", 1));
        ((fdk) this.h.get("silent")).a("log", new lv(this, true, true));
        this.h.put("unmonitored", new csn("unmonitored", 2));
        ((fdk) this.h.get("unmonitored")).a("log", new lv(this, false, false));
    }

    public auf(cis cisVar) {
        super("internal.registerCallback");
        this.f10861c = cisVar;
    }

    public auf(dzh dzhVar) {
        super("internal.eventLogger");
        this.f10861c = dzhVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public auf(ffm ffmVar) {
        super("getValue");
        this.f10861c = ffmVar;
    }

    @Override // g.fdk
    public final gey e(dpa dpaVar, List list) {
        TreeMap treeMap;
        switch (this.f10860b) {
            case 0:
                byh.ah(3, this.f16608g, list);
                String zzi = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) list.get(0)).zzi();
                gey geyVar = (gey) list.get(1);
                ffr ffrVar = (ffr) dpaVar.f14566d;
                long ar = (long) byh.ar(ffrVar.aj(dpaVar, geyVar).zzh().doubleValue());
                gey aj = ffrVar.aj(dpaVar, (gey) list.get(2));
                ((ArrayList) ((dzh) this.f10861c).f15122g).add(new guq(zzi, ar, aj instanceof byt ? byh.ak((byt) aj) : new HashMap()));
                return gey.o;
            case 1:
                byh.ah(2, "getValue", list);
                gey aj2 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) list.get(0));
                gey aj3 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) list.get(1));
                String zzi2 = aj2.zzi();
                ffm ffmVar = (ffm) this.f10861c;
                Map map = (Map) ((dqu) ffmVar.f16710b).p.get((String) ffmVar.f16709a);
                String str = (map == null || !map.containsKey(zzi2)) ? null : (String) map.get(zzi2);
                return str != null ? new bsa(str) : aj3;
            case 2:
                return gey.o;
            case 3:
                try {
                    return cro.ah(((apd) this.f10861c).call());
                } catch (Exception unused) {
                    return gey.o;
                }
            default:
                byh.ah(3, this.f16608g, list);
                ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) list.get(0)).zzi();
                gey geyVar2 = (gey) list.get(1);
                ffr ffrVar2 = (ffr) dpaVar.f14566d;
                gey aj4 = ffrVar2.aj(dpaVar, geyVar2);
                if (!(aj4 instanceof dxk)) {
                    throw new IllegalArgumentException("Invalid callback type");
                }
                gey aj5 = ffrVar2.aj(dpaVar, (gey) list.get(2));
                if (!(aj5 instanceof byt)) {
                    throw new IllegalArgumentException("Invalid callback params");
                }
                byt bytVar = (byt) aj5;
                if (!bytVar.f12467c.containsKey("type")) {
                    throw new IllegalArgumentException("Undefined rule type");
                }
                String zzi3 = bytVar.zzf("type").zzi();
                int az = bytVar.f12467c.containsKey("priority") ? byh.az(bytVar.zzf("priority").zzh().doubleValue()) : 1000;
                cis cisVar = (cis) this.f10861c;
                dxk dxkVar = (dxk) aj4;
                cisVar.getClass();
                if ("create".equals(zzi3)) {
                    treeMap = (TreeMap) cisVar.f12948b;
                } else {
                    if (!"edit".equals(zzi3)) {
                        throw new IllegalStateException("Unknown callback type: ".concat(String.valueOf(zzi3)));
                    }
                    treeMap = (TreeMap) cisVar.f12947a;
                }
                if (treeMap.containsKey(Integer.valueOf(az))) {
                    az = ((Integer) treeMap.lastKey()).intValue() + 1;
                }
                treeMap.put(Integer.valueOf(az), dxkVar);
                return gey.o;
        }
    }
}
