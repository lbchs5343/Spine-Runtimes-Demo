package g;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* loaded from: classes.dex */
public abstract class eil extends cmh {

    /* renamed from: a, reason: collision with root package name */
    public final sr f15592a;

    public eil(Context context, gkr gkrVar) {
        super(context, gkrVar);
        this.f15592a = new sr(1, this);
    }

    public abstract IntentFilter b();

    @Override // g.cmh
    public final void c() {
        cyl f2 = cyl.f();
        int i = xb.f20269a;
        f2.getClass();
        this.i.unregisterReceiver(this.f15592a);
    }

    @Override // g.cmh
    public final void e() {
        cyl f2 = cyl.f();
        int i = xb.f20269a;
        f2.getClass();
        this.i.registerReceiver(this.f15592a, b());
    }

    public abstract void l(Intent intent);
}
