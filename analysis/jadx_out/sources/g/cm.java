package g;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class cm implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ cgf f13105a;

    public cm(cgf cgfVar) {
        this.f13105a = cgfVar;
    }

    @Override // java.util.concurrent.Callable
    public caa call() throws Exception {
        return new caa(this.f13105a);
    }
}
