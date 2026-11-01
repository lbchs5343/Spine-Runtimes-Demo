package g;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class eek extends ccm {
    public int ag;
    public final hay ah;
    public gks ai;
    public final List aj;

    public eek(hay hayVar, int i) {
        this(hayVar, i == 0 ? Collections.EMPTY_LIST : new ArrayList(i));
    }

    public eek(hay hayVar, List list) {
        this.ah = hayVar;
        this.aj = list;
        this.ag = -1;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ar((gsh) it.next());
        }
    }

    public gsh _am(int i) {
        List list = this.aj;
        gsh gshVar = (gsh) list.get(i);
        list.remove(i);
        fpd.h(null, gshVar);
        return gshVar;
    }

    public void _an(gsh gshVar) {
        this.aj.add(gshVar);
        ar(gshVar);
    }

    public void _be(Consumer consumer) {
        consumer.accept(this);
        for (gsh gshVar : this.aj) {
            gshVar.getClass();
            if (gshVar instanceof cly) {
                ((cly) gshVar).f13104a._be(consumer);
            }
        }
    }

    public void _bs() {
        gks gksVar = this.ai;
        if (gksVar != null) {
            vm vmVar = gksVar.f18326a;
            if (vmVar == null) {
                throw new gck("No SSA var for result arg: " + gksVar + " from " + gksVar.ae);
            }
            gks gksVar2 = vmVar.f20177c;
            if (gksVar2 == null) {
                vmVar.f20177c = gksVar;
            } else if (gksVar2 != gksVar) {
                gksVar2.f18326a = null;
                vmVar.f20177c = gksVar;
            }
        }
        for (gsh gshVar : this.aj) {
            if (gshVar instanceof gks) {
                gks gksVar3 = (gks) gshVar;
                vm vmVar2 = gksVar3.f18326a;
                vmVar2.r(gksVar3);
                vmVar2.k();
            } else if (gshVar instanceof cly) {
                ((cly) gshVar).f13104a._bs();
            }
        }
    }

    public eek _o() {
        if (getClass() != eek.class) {
            throw new gck("Copy method not implemented in insn class ".concat(getClass().getSimpleName()));
        }
        eek eekVar = new eek(this.ah, this.aj.size());
        am(eekVar);
        return eekVar;
    }

    public boolean _p(eek eekVar) {
        List list;
        int size;
        if (this == eekVar) {
            return true;
        }
        hay hayVar = eekVar.ah;
        List list2 = eekVar.aj;
        if (this.ah != hayVar || (size = (list = this.aj).size()) != list2.size()) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            gsh gshVar = (gsh) list.get(i);
            gsh gshVar2 = (gsh) list2.get(i);
            gshVar.getClass();
            if (gshVar instanceof cly) {
                gshVar2.getClass();
                if (!(gshVar2 instanceof cly) || !((cly) gshVar).f13104a._p(((cly) gshVar2).f13104a)) {
                    return false;
                }
            }
        }
        return true;
    }

    public final Object ak(fss fssVar) {
        Object ak;
        Object apply = fssVar.apply(this);
        if (apply != null) {
            return apply;
        }
        for (gsh gshVar : this.aj) {
            gshVar.getClass();
            if ((gshVar instanceof cly) && (ak = ((cly) gshVar).f13104a.ak(fssVar)) != null) {
                return ak;
            }
        }
        return null;
    }

    public final void al(StringBuilder sb) {
        if (!this.l.h()) {
            sb.append(' ');
            sb.append(this.l.toString());
        }
        if (this.bp != 0) {
            sb.append(" (LINE:");
            sb.append(this.bp);
            sb.append(')');
        }
    }

    public final void am(eek eekVar) {
        if (eekVar.aj.size() == 0) {
            Iterator it = this.aj.iterator();
            while (it.hasNext()) {
                eekVar._an(((gsh) it.next()).b());
            }
        }
        eekVar.s(this);
        eekVar.br(this);
        eekVar.bp = this.bp;
        eekVar.ag = this.ag;
    }

    public final String an() {
        StringBuilder sb = new StringBuilder();
        al(sb);
        return sb.toString();
    }

    public final String ao() {
        StringBuilder sb = new StringBuilder();
        int i = this.ag;
        if (i != -1) {
            sb.append(ack.d(i));
            sb.append(": ");
        }
        sb.append(this.ah);
        sb.append(' ');
        gks gksVar = this.ai;
        if (gksVar != null) {
            sb.append(gksVar);
            sb.append(" = ");
        }
        at(sb);
        return sb.toString();
    }

    public final void ap(esk eskVar) {
        for (gsh gshVar : this.aj) {
            gshVar.getClass();
            if (gshVar instanceof cly) {
                ((cly) gshVar).f13104a.ap(eskVar);
            } else {
                eskVar.accept(gshVar);
            }
        }
    }

    public final int aq(gsh gshVar) {
        List list = this.aj;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (gshVar == list.get(i)) {
                return i;
            }
        }
        return -1;
    }

    public final void ar(gsh gshVar) {
        gks gksVar;
        vm vmVar;
        gshVar._bb(this);
        if (!(gshVar instanceof gks) || (vmVar = (gksVar = (gks) gshVar).f18326a) == null) {
            return;
        }
        vmVar.r(gksVar);
    }

    public final boolean as() {
        int i = axo.f11031a[this.ah.ordinal()];
        return i == 1 || i == 2 || i == 3;
    }

    public final boolean at(StringBuilder sb) {
        List list = this.aj;
        if (list.isEmpty()) {
            return false;
        }
        String h = evh.h(", ", list);
        if (h.length() < 120) {
            sb.append(h);
            return false;
        }
        sb.append("\n  ");
        sb.append(evh.h("\n  ", list));
        sb.append('\n');
        return true;
    }

    public final void au(eek eekVar) {
        acq acqVar = acq.u;
        if (this.ah != hay.RETURN) {
            q(eekVar, acqVar);
            br(eekVar);
            return;
        }
        this.bp = eekVar.bp;
        if (!this.l.g(csv.SYNTHETIC)) {
            q(eekVar, acqVar);
            return;
        }
        this.ag = eekVar.ag;
        u(acqVar);
        q(eekVar, acqVar);
    }

    public final eek av(hed hedVar) {
        gks gksVar = this.ai;
        if (gksVar == null) {
            throw new gck("Result in null");
        }
        gks ab2 = gksVar.ab(gksVar.f18327e, gksVar.h, null);
        hedVar.bn(ab2);
        eek _o = _o();
        _o.ax(ab2);
        return _o;
    }

    public final boolean aw() {
        boolean g2 = this.l.g(csv.DONT_GENERATE);
        hay hayVar = this.ah;
        if (!g2) {
            for (gsh gshVar : this.aj) {
                gshVar.getClass();
                if ((gshVar instanceof cly) && !((cly) gshVar).f13104a.aw()) {
                    return false;
                }
            }
            int i = axo.f11031a[hayVar.ordinal()];
            if (i != 1 && i != 2 && i != 3) {
                switch (i) {
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                        break;
                    default:
                        return false;
                }
            }
        } else if (hayVar == hay.MONITOR_EXIT) {
            return false;
        }
        return true;
    }

    public final void ax(gks gksVar) {
        this.ai = gksVar;
        if (gksVar != null) {
            gksVar.ae = this;
            vm vmVar = gksVar.f18326a;
            if (vmVar != null) {
                gks gksVar2 = vmVar.f20177c;
                if (gksVar2 == null) {
                    vmVar.f20177c = gksVar;
                } else if (gksVar2 != gksVar) {
                    gksVar2.f18326a = null;
                    vmVar.f20177c = gksVar;
                }
            }
        }
    }

    public final eek ay() {
        eek _o = _o();
        gks gksVar = this.ai;
        if (gksVar == null) {
            return _o;
        }
        if (gksVar.f18326a != null) {
            throw new gck("Can't copy if SSA var is set");
        }
        _o.ax(gksVar.b());
        return _o;
    }

    public final Object az(edk edkVar) {
        for (gsh gshVar : this.aj) {
            gshVar.getClass();
            Object az = gshVar instanceof cly ? ((cly) gshVar).f13104a.az(edkVar) : edkVar.apply(gshVar);
            if (az != null) {
                return az;
            }
        }
        return null;
    }

    public final boolean ba() {
        int i = axo.f11031a[this.ah.ordinal()];
        return i == 4 || i == 5 || i == 6 || i == 7;
    }

    public void e(int i, gsh gshVar) {
        this.aj.set(i, gshVar);
        ar(gshVar);
    }

    public boolean f(gsh gshVar, gsh gshVar2) {
        List list = this.aj;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            gsh gshVar3 = (gsh) list.get(i);
            if (gshVar3 == gshVar) {
                fpd.h(null, gshVar3);
                e(i, gshVar2);
                return true;
            }
            gshVar3.getClass();
            if ((gshVar3 instanceof cly) && ((cly) gshVar3).f13104a.f(gshVar, gshVar2)) {
                return true;
            }
        }
        return false;
    }

    public void h(Collection collection) {
        for (gsh gshVar : this.aj) {
            gshVar.getClass();
            if (gshVar instanceof gks) {
                collection.add((gks) gshVar);
            } else if (gshVar instanceof cly) {
                ((cly) gshVar).f13104a.h(collection);
            }
        }
    }

    public gsh j(int i) {
        return (gsh) this.aj.get(i);
    }

    public String toString() {
        return ao() + an();
    }
}
