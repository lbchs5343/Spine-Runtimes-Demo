package g;

import android.content.Context;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class dww implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14984a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ gkb f14985b;

    public dww(gkb gkbVar, int i) {
        this.f14985b = gkbVar;
        this.f14984a = i;
    }

    @Override // java.util.concurrent.Callable
    public caa call() throws Exception {
        boolean z;
        gkb gkbVar = this.f14985b;
        z = gkbVar.mp;
        int i = this.f14984a;
        if (!z) {
            return ahz.f(gkbVar.getContext(), i);
        }
        Context context = gkbVar.getContext();
        ahz.j(context, i);
        return ahz.f(context, i);
    }
}
