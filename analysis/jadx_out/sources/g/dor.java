package g;

import com.bytedance.android.live.base.api.push.model.PushUIConfig;

/* loaded from: classes.dex */
public final class dor implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14538a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.tencent.bugly.proguard.r f14539b;

    public /* synthetic */ dor(com.tencent.bugly.proguard.r rVar, int i) {
        this.f14538a = i;
        this.f14539b = rVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long j;
        long j2;
        switch (this.f14538a) {
            case 0:
                try {
                    this.f14539b.a(false);
                    break;
                } catch (Throwable th) {
                    com.tencent.bugly.proguard.al.a(th);
                    return;
                }
            default:
                long currentTimeMillis = System.currentTimeMillis();
                com.tencent.bugly.proguard.r rVar = this.f14539b;
                j = rVar.f9785b;
                if (currentTimeMillis >= j) {
                    rVar.a(3, false);
                    rVar.a();
                    break;
                } else {
                    com.tencent.bugly.proguard.ak a2 = com.tencent.bugly.proguard.ak.a();
                    dor dorVar = new dor(rVar, 1);
                    j2 = rVar.f9785b;
                    a2.a(dorVar, (j2 - currentTimeMillis) + PushUIConfig.dismissTime);
                    break;
                }
        }
    }
}
