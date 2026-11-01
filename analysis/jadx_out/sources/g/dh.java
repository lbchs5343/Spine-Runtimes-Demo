package g;

import android.content.Context;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class dh implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f14160a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f14161b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f14162c;

    public dh(Context context, String str, String str2) {
        this.f14160a = context;
        this.f14161b = str;
        this.f14162c = str2;
    }

    @Override // java.util.concurrent.Callable
    public caa call() throws Exception {
        return ahz.c(this.f14160a, this.f14161b, this.f14162c);
    }
}
