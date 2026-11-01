package g;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.Message;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class elh extends dae {

    /* renamed from: a, reason: collision with root package name */
    public final Context f15753a;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ awe f15754c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public elh(awe aweVar, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper(), 3);
        this.f15754c = aweVar;
        this.f15753a = context.getApplicationContext();
    }

    @Override // g.dae, android.os.Handler
    public final void handleMessage(Message message) {
        if (message.what != 1) {
            return;
        }
        int i = gna.h;
        awe aweVar = this.f15754c;
        Context context = this.f15753a;
        int l = aweVar.l(context, i);
        AtomicBoolean atomicBoolean = evp.f16244c;
        if (l == 1 || l == 2 || l == 3 || l == 9) {
            Intent k = aweVar.k(context, l, "n");
            aweVar.g(context, l, k == null ? null : PendingIntent.getActivity(context, 0, k, dr.f14661a | 134217728));
        }
    }
}
