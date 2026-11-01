package g;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class fce implements yu {
    public cqf aa;

    /* renamed from: ab, reason: collision with root package name */
    public int f16553ab;
    public int o;
    public long p;
    public gqi q;
    public boolean r;
    public int s;
    public int t;
    public final ggu u;
    public int v;
    public int w;
    public int[] x = new int[16];
    public ahb y;
    public int z;

    public fce(ggu gguVar) {
        this.u = gguVar;
    }

    @Override // g.yu
    public final long a() {
        return this.p;
    }

    public final gkr ac() {
        return this.u.f18128d.f13144g;
    }

    public final void ad(int i) {
        this.o = i;
        if (this.x.length < i) {
            this.x = new int[i];
        }
    }

    @Override // g.yu
    public final void b() {
        dle dleVar = this.y.f10209g;
        if (dleVar != null) {
            ggu gguVar = this.u;
            dleVar._bt(gguVar);
            if (gguVar.f18130f) {
                fce fceVar = gguVar.i;
                if (fceVar.aa == cqf.MOVE) {
                    fceVar.aa = cqf.MOVE_EXCEPTION;
                    fceVar.ad(1);
                }
            }
        }
        this.r = true;
    }

    @Override // g.yu
    public final fw c(int i) {
        return null;
    }

    @Override // g.yu
    public final ful d() {
        return ac().j(this.w);
    }

    @Override // g.yu
    public final enn e() {
        return this.y.f10206d;
    }

    @Override // g.yu
    public final cba f() {
        return ac().z(this.w);
    }

    @Override // g.yu
    public final String g() {
        if (this.y.f10205c != 188) {
            return ac().h(this.w);
        }
        int i = this.w;
        switch (i) {
            case 4:
                return "Z";
            case 5:
                return "C";
            case 6:
                return "F";
            case 7:
                return "D";
            case 8:
                return "B";
            case 9:
                return "S";
            case 10:
                return "I";
            case 11:
                return "J";
            default:
                throw new cyf(awf.ac(i, "Unknown array type value: "));
        }
    }

    @Override // g.yu
    public final int getOffset() {
        return this.f16553ab;
    }

    @Override // g.yu
    public final int getTarget() {
        return this.s;
    }

    @Override // g.yu
    public final String h() {
        return ac().r(this.w);
    }

    @Override // g.yu
    public final int i() {
        return this.o;
    }

    @Override // g.yu
    public final dkb j() {
        gkr ac = ac();
        int i = this.w;
        gqc gqcVar = (gqc) ac.f18322b;
        fha y = ac.y(i);
        int i2 = gls.f18369a[y.ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                throw new cyf("Field call site not yet implemented");
            }
            throw new cyf("Unexpected tag type for call site: " + y);
        }
        int ai = gqcVar.ai();
        ac.k(gqcVar.ai());
        int ai2 = gqcVar.ai();
        int ai3 = gqcVar.ai();
        cmv cmvVar = (cmv) ac.f18321a;
        zz zzVar = zz.i;
        gqcVar.f18566ab = cmvVar.k.f10053a;
        fke fkeVar = (fke) cmvVar.h.g(gqcVar, zzVar);
        if (fkeVar == null) {
            throw new cyf("Unexpected missing BootstrapMethods attribute");
        }
        ewv ewvVar = (ewv) fkeVar.f16916a.get(ai);
        ArrayList arrayList = new ArrayList(6);
        arrayList.add(new ghr(dnd.ENCODED_METHOD_HANDLE, ac.ab(ewvVar.f16296a)));
        arrayList.add(new ghr(dnd.ENCODED_STRING, ac.r(ai2)));
        dnd dndVar = dnd.ENCODED_METHOD_TYPE;
        String r = ac.r(ai3);
        dnp dnpVar = new dnp();
        new erd(r, 0).c(dnpVar);
        arrayList.add(new ghr(dndVar, dnpVar));
        for (int i3 : ewvVar.f16297b) {
            arrayList.add(ac.x(i3));
        }
        return new dkb(arrayList);
    }

    @Override // g.yu
    public final int k() {
        return this.z;
    }

    @Override // g.yu
    public final gqi l() {
        return this.q;
    }

    @Override // g.yu
    public final int m(int i) {
        return this.x[i];
    }

    @Override // g.yu
    public final cqf n() {
        return this.aa;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(String.format("0x%04X", Integer.valueOf(this.f16553ab)));
        sb.append(": ");
        sb.append(this.aa);
        if (this.y == null) {
            sb.append(String.format("(0x%04X)", Integer.valueOf(this.t)));
        } else {
            int i = this.o;
            if (this.r) {
                sb.append(' ');
                for (int i2 = 0; i2 < i; i2++) {
                    if (i2 != 0) {
                        sb.append(", ");
                    }
                    sb.append("r");
                    sb.append(this.x[i2]);
                }
            }
        }
        return sb.toString();
    }
}
