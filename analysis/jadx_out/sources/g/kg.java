package g;

import java.io.InputStream;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class kg implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ InputStream f19540a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f19541b;

    public kg(InputStream inputStream, String str) {
        this.f19540a = inputStream;
        this.f19541b = str;
    }

    @Override // java.util.concurrent.Callable
    public caa call() throws Exception {
        return ahz.i(this.f19540a, this.f19541b);
    }
}
