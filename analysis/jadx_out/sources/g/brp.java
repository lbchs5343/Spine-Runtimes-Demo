package g;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class brp extends aly {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ androidx.activity.result.a f12083b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f12084c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f12085d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ehj f12086e;

    public /* synthetic */ brp(androidx.activity.result.a aVar, String str, ehj ehjVar, int i) {
        this.f12084c = i;
        this.f12083b = aVar;
        this.f12085d = str;
        this.f12086e = ehjVar;
    }

    @Override // g.aly
    public final void a(Object obj) {
        switch (this.f12084c) {
            case 0:
                androidx.activity.result.a aVar = this.f12083b;
                HashMap hashMap = aVar.f37e;
                String str = this.f12085d;
                Integer num = (Integer) hashMap.get(str);
                ehj ehjVar = this.f12086e;
                if (num != null) {
                    aVar.f33a.add(str);
                    try {
                        aVar.l(num.intValue(), ehjVar, obj);
                        return;
                    } catch (Exception e2) {
                        aVar.f33a.remove(str);
                        throw e2;
                    }
                }
                throw new IllegalStateException("Attempting to launch an unregistered ActivityResultLauncher with contract " + ehjVar + " and input " + obj + ". You must ensure the ActivityResultLauncher is registered before calling launch().");
            default:
                androidx.activity.result.a aVar2 = this.f12083b;
                HashMap hashMap2 = aVar2.f37e;
                String str2 = this.f12085d;
                Integer num2 = (Integer) hashMap2.get(str2);
                ehj ehjVar2 = this.f12086e;
                if (num2 != null) {
                    aVar2.f33a.add(str2);
                    try {
                        aVar2.l(num2.intValue(), ehjVar2, obj);
                        return;
                    } catch (Exception e3) {
                        aVar2.f33a.remove(str2);
                        throw e3;
                    }
                }
                throw new IllegalStateException("Attempting to launch an unregistered ActivityResultLauncher with contract " + ehjVar2 + " and input " + obj + ". You must ensure the ActivityResultLauncher is registered before calling launch().");
        }
    }

    public void f() {
        this.f12083b.k(this.f12085d);
    }
}
