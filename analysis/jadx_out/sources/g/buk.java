package g;

import android.content.Context;
import java.util.HashMap;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class buk implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f12226a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ gkb f12227b;

    public buk(gkb gkbVar, String str) {
        this.f12227b = gkbVar;
        this.f12226a = str;
    }

    @Override // java.util.concurrent.Callable
    public caa call() throws Exception {
        boolean z;
        gkb gkbVar = this.f12227b;
        z = gkbVar.mp;
        String str = this.f12226a;
        Context context = gkbVar.getContext();
        if (!z) {
            return ahz.c(context, str, null);
        }
        HashMap hashMap = ahz.f10249a;
        return ahz.c(context, str, "asset_" + str);
    }
}
