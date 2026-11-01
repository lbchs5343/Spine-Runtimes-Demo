package g;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class hac {

    /* renamed from: b, reason: collision with root package name */
    public final brh f19102b;

    /* renamed from: c, reason: collision with root package name */
    public final dih f19103c;

    /* renamed from: e, reason: collision with root package name */
    public hac f19105e;

    /* renamed from: f, reason: collision with root package name */
    public crb f19106f;

    /* renamed from: g, reason: collision with root package name */
    public int f19107g;
    public boolean h;

    /* renamed from: d, reason: collision with root package name */
    public HashSet f19104d = null;
    public int i = 0;

    /* renamed from: a, reason: collision with root package name */
    public int f19101a = Integer.MIN_VALUE;

    public hac(brh brhVar, dih dihVar) {
        this.f19102b = brhVar;
        this.f19103c = dihVar;
    }

    public final boolean j() {
        return this.f19105e != null;
    }

    public final void k() {
        crb crbVar = this.f19106f;
        if (crbVar == null) {
            this.f19106f = new crb(gdo.UNRESTRICTED);
        } else {
            crbVar.q();
        }
    }

    public final int l() {
        if (this.h) {
            return this.f19107g;
        }
        return 0;
    }

    public final void m(int i) {
        this.f19107g = i;
        this.h = true;
    }

    public final int n() {
        hac hacVar;
        if (this.f19102b.aq == 8) {
            return 0;
        }
        int i = this.f19101a;
        return (i == Integer.MIN_VALUE || (hacVar = this.f19105e) == null || hacVar.f19102b.aq != 8) ? this.i : i;
    }

    public final void o(hac hacVar, int i) {
        r(hacVar, i, Integer.MIN_VALUE, false);
    }

    public final hac p() {
        dih dihVar = this.f19103c;
        int ordinal = dihVar.ordinal();
        brh brhVar = this.f19102b;
        switch (ordinal) {
            case 0:
            case 5:
            case 6:
            case 7:
            case 8:
                return null;
            case 1:
                return brhVar.br;
            case 2:
                return brhVar.as;
            case 3:
                return brhVar.cw;
            case 4:
                return brhVar.bx;
            default:
                throw new AssertionError(dihVar.name());
        }
    }

    public final boolean q(hac hacVar) {
        if (hacVar == null) {
            return false;
        }
        brh brhVar = hacVar.f19102b;
        dih dihVar = hacVar.f19103c;
        dih dihVar2 = this.f19103c;
        if (dihVar == dihVar2) {
            return dihVar2 != dih.BASELINE || (brhVar.cx && this.f19102b.cx);
        }
        switch (dihVar2.ordinal()) {
            case 0:
            case 7:
            case 8:
                return false;
            case 1:
            case 3:
                boolean z = dihVar == dih.LEFT || dihVar == dih.RIGHT;
                return brhVar instanceof aar ? z || dihVar == dih.CENTER_X : z;
            case 2:
            case 4:
                boolean z2 = dihVar == dih.TOP || dihVar == dih.BOTTOM;
                return brhVar instanceof aar ? z2 || dihVar == dih.CENTER_Y : z2;
            case 5:
                return (dihVar == dih.LEFT || dihVar == dih.RIGHT) ? false : true;
            case 6:
                return (dihVar == dih.BASELINE || dihVar == dih.CENTER_X || dihVar == dih.CENTER_Y) ? false : true;
            default:
                throw new AssertionError(dihVar2.name());
        }
    }

    public final boolean r(hac hacVar, int i, int i2, boolean z) {
        if (hacVar == null) {
            s();
            return true;
        }
        if (!z && !q(hacVar)) {
            return false;
        }
        this.f19105e = hacVar;
        if (hacVar.f19104d == null) {
            hacVar.f19104d = new HashSet();
        }
        HashSet hashSet = this.f19105e.f19104d;
        if (hashSet != null) {
            hashSet.add(this);
        }
        this.i = i;
        this.f19101a = i2;
        return true;
    }

    public final void s() {
        HashSet hashSet;
        hac hacVar = this.f19105e;
        if (hacVar != null && (hashSet = hacVar.f19104d) != null) {
            hashSet.remove(this);
            if (this.f19105e.f19104d.size() == 0) {
                this.f19105e.f19104d = null;
            }
        }
        this.f19104d = null;
        this.f19105e = null;
        this.i = 0;
        this.f19101a = Integer.MIN_VALUE;
        this.h = false;
        this.f19107g = 0;
    }

    public final void t(int i, ArrayList arrayList, ic icVar) {
        HashSet hashSet = this.f19104d;
        if (hashSet != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                dzm.ab(((hac) it.next()).f19102b, i, arrayList, icVar);
            }
        }
    }

    public final String toString() {
        return this.f19102b.an + ":" + this.f19103c.toString();
    }

    public final boolean u() {
        HashSet hashSet = this.f19104d;
        if (hashSet == null) {
            return false;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (((hac) it.next()).p().j()) {
                return true;
            }
        }
        return false;
    }
}
