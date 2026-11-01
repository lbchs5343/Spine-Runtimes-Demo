package g;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzapp;

/* loaded from: classes3.dex */
public final class did implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f14212a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f14213b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f14214c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ long f14215d;

    public /* synthetic */ did(csp cspVar, Bundle bundle, long j) {
        this.f14214c = 1;
        this.f14212a = cspVar;
        this.f14213b = bundle;
        this.f14215d = j;
    }

    public /* synthetic */ did(Object obj, Object obj2, long j, int i) {
        this.f14214c = i;
        this.f14212a = obj2;
        this.f14215d = j;
        this.f14213b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f14214c) {
            case 0:
                zzapp zzappVar = (zzapp) this.f14213b;
                zzappVar.i.d(this.f14215d, (String) this.f14212a);
                zzappVar.i.e(zzappVar.toString());
                break;
            case 1:
                csp cspVar = (csp) this.f14212a;
                Bundle bundle = (Bundle) this.f14213b;
                if (!TextUtils.isEmpty(((cyg) cspVar.z).at().v())) {
                    bgm bgmVar = ((cyg) cspVar.z).z;
                    cyg.ak(bgmVar);
                    bgmVar.h.h("Using developer consent only; google app id found");
                    break;
                } else {
                    cspVar.ap(bundle, 0, this.f14215d);
                    break;
                }
            default:
                bcm bcmVar = (bcm) this.f14213b;
                bcmVar.t((ein) this.f14212a, false, this.f14215d);
                bcmVar.q = null;
                dbb ao = ((cyg) bcmVar.z).ao();
                ao._e();
                ao.zza();
                int i = 12;
                ao.s(new fuy(i, ao, null, false));
                break;
        }
    }
}
