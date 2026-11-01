package g;

/* loaded from: classes.dex */
public final class gum implements dle {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f18777a;

    public gum(boolean z) {
        this.f18777a = z;
    }

    @Override // g.dle
    public final void _bt(ggu gguVar) {
        gqc gqcVar = gguVar.f18131g;
        fce fceVar = gguVar.i;
        int ai = this.f18777a ? gqcVar.ai() : gqcVar.ap();
        gkr ac = fceVar.ac();
        fha y = ac.y(ai);
        gqc gqcVar2 = (gqc) ac.f18322b;
        switch (gbl.f17869a[y.ordinal()]) {
            case 1:
            case 2:
                fceVar.p = gqcVar2.bc();
                fceVar.aa = cqf.CONST;
                gguVar.j(0, cqz.NARROW);
                return;
            case 3:
            case 4:
                fceVar.p = gqcVar2.ax();
                fceVar.aa = cqf.CONST_WIDE;
                gguVar.j(0, cqz.WIDE);
                return;
            case 5:
                fceVar.w = gqcVar2.ai();
                fceVar.aa = cqf.CONST_STRING;
                gguVar.j(0, cqz.NARROW);
                return;
            case 6:
                fceVar.w = ai;
                fceVar.aa = cqf.CONST_STRING;
                gguVar.j(0, cqz.NARROW);
                return;
            case 7:
                fceVar.w = ai;
                fceVar.aa = cqf.CONST_CLASS;
                gguVar.j(0, cqz.NARROW);
                return;
            default:
                throw new cyf("Unsupported constant type: " + y);
        }
    }

    @Override // g.dle
    public final /* synthetic */ void _ct(ggu gguVar) {
    }
}
