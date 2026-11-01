package g;

import android.content.Context;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class dq implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14621a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f14622b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f14623c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f14624d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f14625e;

    public /* synthetic */ dq(String str, Context context, Object obj, int i, int i2) {
        this.f14623c = i2;
        this.f14624d = str;
        this.f14625e = context;
        this.f14622b = obj;
        this.f14621a = i;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.f14623c;
        int i2 = this.f14621a;
        Object obj = this.f14622b;
        Context context = this.f14625e;
        String str = this.f14624d;
        switch (i) {
            case 0:
                Object[] objArr = {(bui) obj};
                ArrayList arrayList = new ArrayList(1);
                Object obj2 = objArr[0];
                Objects.requireNonNull(obj2);
                arrayList.add(obj2);
                return anc.f(str, context, Collections.unmodifiableList(arrayList), i2);
            default:
                try {
                    return anc.f(str, context, (ArrayList) obj, i2);
                } catch (Throwable unused) {
                    return new cgr(-3);
                }
        }
    }
}
