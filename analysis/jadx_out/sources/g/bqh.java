package g;

import android.view.View;

/* loaded from: classes.dex */
public final class bqh implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12010a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ dlv f12011b;

    public /* synthetic */ bqh(dlv dlvVar, int i) {
        this.f12010a = i;
        this.f12011b = dlvVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        boolean z;
        boolean z2;
        switch (this.f12010a) {
            case 0:
                dlv dlvVar = this.f12011b;
                if (dlvVar.f14391b != null) {
                    z = dlvVar.oh;
                    if (z) {
                        dlvVar.f14391b.dq(dlvVar);
                        break;
                    }
                }
                break;
            default:
                dlv dlvVar2 = this.f12011b;
                if (dlvVar2.tl != null) {
                    z2 = dlvVar2.oh;
                    if (z2) {
                        dlvVar2.tl.dq(dlvVar2.bf.get(1), dlvVar2, dlvVar2);
                        break;
                    }
                }
                break;
        }
    }
}
