package g;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class eyx implements boj, Serializable {
    private final erz element;
    private final boj left;

    public eyx(boj bojVar, erz erzVar) {
        bff.p(bojVar, "left");
        bff.p(erzVar, "element");
        this.left = bojVar;
        this.element = erzVar;
    }

    private final Object writeReplace() {
        int a2 = a();
        final boj[] bojVarArr = new boj[a2];
        final epv epvVar = new epv();
        c(dgi.f14134a, new bto() { // from class: g.chz
            @Override // g.bto
            public final Object d(Object obj, Object obj2) {
                erz erzVar = (erz) obj2;
                bff.p((dgi) obj, "<unused var>");
                bff.p(erzVar, "element");
                epv epvVar2 = epvVar;
                int i = epvVar2.element;
                epvVar2.element = i + 1;
                bojVarArr[i] = erzVar;
                return dgi.f14134a;
            }
        });
        if (epvVar.element == a2) {
            return new eex(bojVarArr);
        }
        throw new IllegalStateException("Check failed.");
    }

    @Override // g.boj
    public final boj _w(efi efiVar) {
        bff.p(efiVar, "key");
        if (this.element._x(efiVar) != null) {
            return this.left;
        }
        boj _w = this.left._w(efiVar);
        return _w == this.left ? this : _w == cgq.f12850a ? this.element : new eyx(_w, this.element);
    }

    @Override // g.boj
    public final erz _x(efi efiVar) {
        bff.p(efiVar, "key");
        eyx eyxVar = this;
        while (true) {
            erz _x = eyxVar.element._x(efiVar);
            if (_x != null) {
                return _x;
            }
            boj bojVar = eyxVar.left;
            if (!(bojVar instanceof eyx)) {
                return bojVar._x(efiVar);
            }
            eyxVar = (eyx) bojVar;
        }
    }

    @Override // g.boj
    public final boj _y(boj bojVar) {
        bff.p(bojVar, "context");
        return bojVar == cgq.f12850a ? this : (boj) bojVar.c(this, new ctu(1));
    }

    public final int a() {
        int i = 2;
        eyx eyxVar = this;
        while (true) {
            boj bojVar = eyxVar.left;
            eyxVar = bojVar instanceof eyx ? (eyx) bojVar : null;
            if (eyxVar == null) {
                return i;
            }
            i++;
        }
    }

    @Override // g.boj
    public final Object c(Object obj, bto btoVar) {
        return btoVar.d(this.left.c(obj, btoVar), this.element);
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            return true;
        }
        if (obj instanceof eyx) {
            eyx eyxVar = (eyx) obj;
            if (eyxVar.a() == a()) {
                eyx eyxVar2 = this;
                while (true) {
                    erz erzVar = eyxVar2.element;
                    if (!bff.n(eyxVar._x(erzVar.getKey()), erzVar)) {
                        z = false;
                        break;
                    }
                    boj bojVar = eyxVar2.left;
                    if (!(bojVar instanceof eyx)) {
                        bff.ag(bojVar, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                        erz erzVar2 = (erz) bojVar;
                        z = bff.n(eyxVar._x(erzVar2.getKey()), erzVar2);
                        break;
                    }
                    eyxVar2 = (eyx) bojVar;
                }
                if (z) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.element.hashCode() + this.left.hashCode();
    }

    public final String toString() {
        return "[" + ((String) c("", new ctu(0))) + ']';
    }
}
