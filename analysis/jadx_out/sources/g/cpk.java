package g;

/* loaded from: classes.dex */
public abstract class cpk extends ggd implements dic {
    public static final fic v = new fic(bmr.j, vi.f20160c);

    public cpk() {
        super(bmr.j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001d, code lost:
    
        if (((g.erz) r3.f16826a.invoke(r2)) == null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0027, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0026, code lost:
    
        return g.cgq.f12850a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0022, code lost:
    
        if (g.bmr.j == r3) goto L15;
     */
    /* JADX WARN: Type inference failed for: r3v3, types: [g.and, g.axr] */
    @Override // g.ggd, g.boj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boj _w(efi efiVar) {
        bff.p(efiVar, "key");
        if (efiVar instanceof fic) {
            fic ficVar = (fic) efiVar;
            efi efiVar2 = this.x;
            if (efiVar2 != ficVar) {
                if (ficVar.f16827b != efiVar2) {
                    return this;
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [g.and, g.axr] */
    @Override // g.ggd, g.boj
    public final erz _x(efi efiVar) {
        erz erzVar;
        bff.p(efiVar, "key");
        if (!(efiVar instanceof fic)) {
            if (bmr.j == efiVar) {
                return this;
            }
            return null;
        }
        fic ficVar = (fic) efiVar;
        efi efiVar2 = this.x;
        if ((efiVar2 == ficVar || ficVar.f16827b == efiVar2) && (erzVar = (erz) ficVar.f16826a.invoke(this)) != null) {
            return erzVar;
        }
        return null;
    }

    public void g(boj bojVar, Runnable runnable) {
        i(bojVar, runnable);
    }

    public abstract void i(boj bojVar, Runnable runnable);

    public String toString() {
        return getClass().getSimpleName() + '@' + fso.o(this);
    }

    public boolean w(boj bojVar) {
        return !(this instanceof bln);
    }
}
