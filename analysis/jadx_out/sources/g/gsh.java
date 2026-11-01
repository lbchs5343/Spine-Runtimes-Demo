package g;

import j$.util.Objects;

/* loaded from: classes.dex */
public abstract class gsh extends flv {
    public static final dba ad = dsr.k(gsh.class);
    public eek ae;

    public static gks af(int i, cwx cwxVar, boolean z) {
        gks gksVar = new gks(i, cwxVar);
        if (z) {
            gksVar.w(csv.IMMUTABLE_TYPE);
        }
        return gksVar;
    }

    public static ekh ag(long j, cwx cwxVar) {
        if (j != 0 && !cwxVar.h() && !cwxVar.o(bjt.LONG) && !cwxVar.o(bjt.DOUBLE)) {
            cwxVar = j == 1 ? cwx.r : j < 0 ? cwx.af : cwx.aa;
        }
        return new ekh(j, cwxVar);
    }

    public static gsh ah(eek eekVar) {
        hay hayVar = eekVar.ah;
        if (hayVar != hay.CONST && hayVar != hay.MOVE) {
            return aj(eekVar);
        }
        if (!eekVar.l.g(csv.FORCE_ASSIGN_INLINE)) {
            gsh j = eekVar.j(0);
            eekVar.w(csv.DONT_GENERATE);
            return j;
        }
        gks gksVar = eekVar.ai;
        eekVar.w(csv.WRAPPED);
        cly clyVar = new cly(eekVar);
        if (gksVar != null) {
            clyVar.h = gksVar.j();
        }
        return clyVar;
    }

    public static gks ai(yu yuVar, int i, cwx cwxVar) {
        return new gks(yuVar.m(i), cwxVar);
    }

    public static cly aj(eek eekVar) {
        gks gksVar = eekVar.ai;
        eekVar.w(csv.WRAPPED);
        cly clyVar = new cly(eekVar);
        int i = bfg.f11443a[eekVar.ah.ordinal()];
        if (i == 1 || i == 2) {
            throw new gck("Don't wrap MOVE or CONST insns: " + eekVar);
        }
        if (i == 3) {
            aog aogVar = cwx.al;
            clyVar.h = aogVar;
            if (gksVar != null) {
                gksVar.f(aogVar);
            }
        } else if (i == 4) {
            aog aogVar2 = cwx.f13657ab;
            clyVar.h = aogVar2;
            if (gksVar != null) {
                gksVar.f(aogVar2);
                return clyVar;
            }
        } else if (gksVar != null) {
            clyVar.h = gksVar.j();
            return clyVar;
        }
        return clyVar;
    }

    public static gks ak(yu yuVar, int i, cwx cwxVar) {
        return cwxVar.h() ? af(yuVar.m(i), cwxVar, true) : new gks(yuVar.m(i), cwxVar);
    }

    public void _bb(eek eekVar) {
        this.ae = eekVar;
    }

    public final boolean al() {
        return this.l.g(csv.THIS);
    }

    public final boolean am() {
        if (this instanceof ekh) {
            return true;
        }
        return (this instanceof cly) && ((cly) this).f13104a.as();
    }

    public final gsh an(hed hedVar, eek eekVar, boolean z) {
        String name;
        gks gksVar;
        eek eekVar2 = this.ae;
        if (eekVar2 != null) {
            if (eekVar2 == eekVar) {
                ad.v(eekVar, "Can't wrap instruction info itself: {}");
                return null;
            }
            int size = eekVar2.aj.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                }
                if (eekVar2.j(i) == this) {
                    break;
                }
                i++;
            }
            if (i != -1) {
                if (eekVar.ah == hay.MOVE && (this instanceof gks) && (name = ((gks) this).getName()) != null) {
                    gsh j = eekVar.j(0);
                    j.getClass();
                    if (j instanceof gks) {
                        gks gksVar2 = (gks) j;
                        if (gksVar2.getName() == null) {
                            gksVar2.c(name);
                        }
                    } else if ((j instanceof cly) && (gksVar = ((cly) j).f13104a.ai) != null && gksVar.getName() == null) {
                        gksVar.c(name);
                    }
                }
                gsh ah = ah(eekVar);
                gsh j2 = eekVar2.j(i);
                if (ah.j() == cwx.ad) {
                    ah.f(j2.j());
                }
                eekVar2.e(i, ah);
                fpd.h(hedVar, j2);
                if (z) {
                    fpd.h(hedVar, this);
                    fpd.j(hedVar, eekVar);
                    eekVar.ai = null;
                }
                return ah;
            }
        }
        return null;
    }

    public final boolean ao() {
        if (this.l.g(csv.THIS)) {
            return true;
        }
        eek eekVar = this instanceof cly ? ((cly) this).f13104a : null;
        if (eekVar == null || eekVar.ah != hay.IGET) {
            return false;
        }
        return eekVar.j(0).ao();
    }

    public final boolean ap() {
        if (!(this instanceof ekh)) {
            return false;
        }
        ekh ekhVar = (ekh) this;
        return ekhVar.f15702a == 1 && Objects.equals(ekhVar.h, cwx.at);
    }

    public final boolean aq(gks gksVar) {
        if (gksVar != null && (this instanceof gks)) {
            return ((gks) this).x(gksVar);
        }
        return false;
    }

    public final boolean ar() {
        if (!(this instanceof ekh)) {
            return false;
        }
        ekh ekhVar = (ekh) this;
        return ekhVar.f15702a == 0 && Objects.equals(ekhVar.h, cwx.at);
    }

    public final boolean as() {
        if (g()) {
            return true;
        }
        if (this instanceof cly) {
            eek eekVar = ((cly) this).f13104a;
            if (eekVar.ah == hay.CONST) {
                return eekVar.j(0).g();
            }
        }
        return false;
    }

    public abstract gsh b();

    public abstract String d();

    public boolean g() {
        return false;
    }
}
