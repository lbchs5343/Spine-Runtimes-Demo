package g;

import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class cpt extends byt {

    /* renamed from: d, reason: collision with root package name */
    public final dzh f13295d;

    public cpt(dzh dzhVar) {
        this.f13295d = dzhVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // g.byt, g.gey
    public final gey _ag(String str, dpa dpaVar, ArrayList arrayList) {
        char c2;
        switch (str.hashCode()) {
            case 21624207:
                if (str.equals("getEventName")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 45521504:
                if (str.equals("getTimestamp")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 146575578:
                if (str.equals("getParamValue")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 700587132:
                if (str.equals("getParams")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 920706790:
                if (str.equals("setParamValue")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 1570616835:
                if (str.equals("setEventName")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        dzh dzhVar = this.f13295d;
        if (c2 == 0) {
            byh.ah(0, "getEventName", arrayList);
            return new bsa(((guq) dzhVar.f15121f).f18780a);
        }
        if (c2 == 1) {
            byh.ah(1, "getParamValue", arrayList);
            String zzi = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0)).zzi();
            HashMap hashMap = ((guq) dzhVar.f15121f).f18782c;
            return cro.ah(hashMap.containsKey(zzi) ? hashMap.get(zzi) : null);
        }
        if (c2 == 2) {
            byh.ah(0, "getParams", arrayList);
            HashMap hashMap2 = ((guq) dzhVar.f15121f).f18782c;
            byt bytVar = new byt();
            for (String str2 : hashMap2.keySet()) {
                bytVar.a(str2, cro.ah(hashMap2.get(str2)));
            }
            return bytVar;
        }
        if (c2 == 3) {
            byh.ah(0, "getTimestamp", arrayList);
            return new hbz(Double.valueOf(((guq) dzhVar.f15121f).f18781b));
        }
        if (c2 == 4) {
            byh.ah(1, "setEventName", arrayList);
            gey aj = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0));
            if (gey.o.equals(aj) || gey.i.equals(aj)) {
                throw new IllegalArgumentException("Illegal event name");
            }
            ((guq) dzhVar.f15121f).f18780a = aj.zzi();
            return new bsa(aj.zzi());
        }
        if (c2 != 5) {
            return super._ag(str, dpaVar, arrayList);
        }
        byh.ah(2, "setParamValue", arrayList);
        String zzi2 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0)).zzi();
        gey aj2 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1));
        guq guqVar = (guq) dzhVar.f15121f;
        Object v = byh.v(aj2);
        HashMap hashMap3 = guqVar.f18782c;
        if (v == null) {
            hashMap3.remove(zzi2);
            return aj2;
        }
        hashMap3.put(zzi2, v);
        return aj2;
    }
}
