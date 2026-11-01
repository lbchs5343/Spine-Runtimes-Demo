package g;

import android.os.HandlerThread;
import android.os.Looper;

/* loaded from: classes3.dex */
public final class yk {

    /* renamed from: a, reason: collision with root package name */
    public long f20344a;

    /* renamed from: b, reason: collision with root package name */
    public int f20345b;

    /* renamed from: c, reason: collision with root package name */
    public long f20346c;

    /* renamed from: d, reason: collision with root package name */
    public int f20347d;

    /* renamed from: e, reason: collision with root package name */
    public long f20348e;

    /* renamed from: f, reason: collision with root package name */
    public final fnq f20349f;

    /* renamed from: g, reason: collision with root package name */
    public long f20350g;
    public int h;
    public long i;
    public final eqi j;
    public long k;
    public long l;
    public long m;

    public yk(fnq fnqVar) {
        this.f20349f = fnqVar;
        HandlerThread handlerThread = new HandlerThread("Picasso-Stats", 10);
        handlerThread.start();
        Looper looper = handlerThread.getLooper();
        StringBuilder sb = dxc.f14999a;
        dae daeVar = new dae(looper, 2, false);
        daeVar.sendMessageDelayed(daeVar.obtainMessage(), 1000L);
        this.j = new eqi(handlerThread.getLooper(), this, 6);
    }

    public final dsl n() {
        cjm cjmVar = (cjm) this.f20349f.f17099f;
        return new dsl(cjmVar.maxSize(), cjmVar.size(), this.l, this.f20346c, this.f20348e, this.f20350g, this.m, this.f20344a, this.i, this.k, this.f20345b, this.f20347d, this.h, System.currentTimeMillis());
    }
}
