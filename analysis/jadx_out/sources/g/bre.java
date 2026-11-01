package g;

/* loaded from: classes.dex */
public final class bre implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12066a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ese f12067b;

    public /* synthetic */ bre(ese eseVar, int i) {
        this.f12066a = i;
        this.f12067b = eseVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        boolean z2;
        boolean z3;
        Runnable runnable;
        int i;
        Runnable runnable2;
        int i2;
        Runnable runnable3;
        int i3;
        switch (this.f12066a) {
            case 0:
                ese eseVar = this.f12067b;
                int currentItem = eseVar.f16078d.getCurrentItem() + 1;
                z = eseVar.ig;
                if (!z) {
                    if (currentItem < eseVar.f16078d.getAdapter().c()) {
                        eseVar.f16078d.br(currentItem, true);
                        break;
                    } else {
                        eseVar.f16078d.br(0, false);
                        break;
                    }
                } else if (currentItem < Integer.MAX_VALUE) {
                    eseVar.f16078d.br(currentItem, true);
                    break;
                } else {
                    eseVar.f16078d.br(1073741823, false);
                    break;
                }
            default:
                ese eseVar2 = this.f12067b;
                z2 = eseVar2.no;
                if (z2) {
                    int currentItem2 = eseVar2.f16078d.getCurrentItem() + 1;
                    z3 = eseVar2.ig;
                    if (!z3) {
                        if (currentItem2 < eseVar2.f16078d.getAdapter().c()) {
                            eseVar2.f16078d.br(currentItem2, true);
                            runnable = eseVar2.i;
                            i = eseVar2.ox;
                            eseVar2.postDelayed(runnable, i);
                            break;
                        } else {
                            eseVar2.f16078d.br(0, false);
                            runnable2 = eseVar2.i;
                            i2 = eseVar2.ox;
                            eseVar2.postDelayed(runnable2, i2);
                            break;
                        }
                    } else {
                        if (currentItem2 >= Integer.MAX_VALUE) {
                            eseVar2.f16078d.br(1073741823, false);
                        } else {
                            eseVar2.f16078d.br(currentItem2, true);
                        }
                        runnable3 = eseVar2.i;
                        i3 = eseVar2.ox;
                        eseVar2.postDelayed(runnable3, i3);
                        break;
                    }
                }
                break;
        }
    }
}
