package g;

/* loaded from: classes.dex */
public abstract class ecs {
    public final anp i;
    public oi[] j;

    public ecs() {
        this(new anp());
    }

    public ecs(anp anpVar) {
        this.i = anpVar;
    }

    public void a(int i, oi oiVar) {
        if (this.j == null) {
            this.j = new oi[10];
        }
        for (int i2 = 1; i2 <= 512; i2 <<= 1) {
            if ((i & i2) != 0) {
                this.j[cux.am(i2)] = oiVar;
            }
        }
    }

    public void c(oi oiVar) {
    }

    public void d(oi oiVar) {
    }

    public abstract void e(oi oiVar);

    public void f(oi oiVar) {
    }

    public abstract anp g();

    public abstract void h(oi oiVar);

    public final void k() {
        oi[] oiVarArr = this.j;
        if (oiVarArr != null) {
            oi oiVar = oiVarArr[0];
            oi oiVar2 = oiVarArr[1];
            anp anpVar = this.i;
            if (oiVar2 == null) {
                oiVar2 = anpVar.f10526b.i(2);
            }
            if (oiVar == null) {
                oiVar = anpVar.f10526b.i(1);
            }
            h(oi.f(oiVar, oiVar2));
            oi oiVar3 = this.j[cux.am(16)];
            if (oiVar3 != null) {
                f(oiVar3);
            }
            oi oiVar4 = this.j[cux.am(32)];
            if (oiVar4 != null) {
                d(oiVar4);
            }
            oi oiVar5 = this.j[cux.am(64)];
            if (oiVar5 != null) {
                c(oiVar5);
            }
        }
    }
}
