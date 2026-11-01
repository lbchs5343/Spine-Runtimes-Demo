package ms.bz.bd.c.Pgl;

import android.content.Context;
import ms.bz.bd.c.Pgl.n0;

/* loaded from: classes.dex */
public final class m0 implements n0.pgla {

    /* renamed from: a, reason: collision with root package name */
    public final long f21168a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f21169b;

    /* renamed from: c, reason: collision with root package name */
    public final a f21170c;

    public m0(a aVar, Context context, long j) {
        if (context == null) {
            throw new NullPointerException("context could not be null");
        }
        this.f21170c = aVar;
        this.f21169b = context.getApplicationContext();
        this.f21168a = j;
    }
}
