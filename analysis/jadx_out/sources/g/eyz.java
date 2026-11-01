package g;

import android.view.View;

/* loaded from: classes.dex */
public final class eyz implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16395a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ fri f16396b;

    public /* synthetic */ eyz(fri friVar, int i) {
        this.f16395a = i;
        this.f16396b = friVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f16395a) {
            case 0:
                this.f16396b.q(false);
                return;
            case 1:
                this.f16396b.q(true);
                return;
            case 2:
                synchronized (fri.class) {
                    this.f16396b.p();
                }
                return;
            case 3:
                fri friVar = this.f16396b;
                friVar.p();
                new dyy(friVar.j).f15114g.cancel(null, 30020);
                friVar.stopSelf();
                return;
            default:
                this.f16396b.m.b();
                return;
        }
    }
}
