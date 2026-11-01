package g;

import java.util.HashSet;
import java.util.function.Consumer;
import java.util.function.Supplier;

/* loaded from: classes.dex */
public final class fdl extends baf {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16609a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f16610b;

    public /* synthetic */ fdl(int i, Object obj) {
        this.f16609a = i;
        this.f16610b = obj;
    }

    @Override // g.baf, g.byr
    public void _ar(hed hedVar, cfm cfmVar) {
        boolean z;
        switch (this.f16609a) {
            case 4:
                if (cfmVar instanceof eln) {
                    eln elnVar = (eln) cfmVar;
                    ald aldVar = (ald) ((Supplier) this.f16610b).get();
                    aldVar.f10436b = elnVar;
                    int i = 0;
                    while (true) {
                        buj.bb(hedVar, aldVar, elnVar);
                        if (aldVar.f10439e) {
                            aldVar.f10439e = false;
                            aldVar.f10435a.clear();
                            aldVar.f10437c.clear();
                            z = true;
                        } else {
                            z = false;
                        }
                        int i2 = i + 1;
                        if (i > 20) {
                            hedVar.bu("Unexpected iteration count in SwitchBreakVisitor. Please report as an issue");
                            break;
                        } else if (!z) {
                            break;
                        } else {
                            i = i2;
                        }
                    }
                }
                break;
        }
    }

    @Override // g.baf, g.byr
    public boolean _cs(hed hedVar, cfm cfmVar) {
        switch (this.f16609a) {
            case 3:
                return ((ry) this.f16610b).test(cfmVar);
            default:
                return super._cs(hedVar, cfmVar);
        }
    }

    @Override // g.baf, g.byr
    public void bq(hed hedVar, cih cihVar) {
        switch (this.f16609a) {
            case 0:
                if (cihVar instanceof fza) {
                    ((HashSet) this.f16610b).add((fza) cihVar);
                    break;
                }
                break;
            case 1:
                ((Consumer) this.f16610b).n(cihVar);
                break;
            case 2:
                if (cihVar instanceof fza) {
                    ((agx) this.f16610b).n((fza) cihVar);
                    break;
                }
                break;
        }
    }
}
