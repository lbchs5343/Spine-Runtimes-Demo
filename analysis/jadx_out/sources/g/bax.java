package g;

import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class bax implements gao {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11200a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f11201b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AtomicBoolean f11202c;

    public /* synthetic */ bax(String str, AtomicBoolean atomicBoolean, int i) {
        this.f11200a = i;
        this.f11201b = str;
        this.f11202c = atomicBoolean;
    }

    @Override // g.gao
    public final void dq(Object obj) {
        switch (this.f11200a) {
            case 0:
                HashMap hashMap = ahz.f10249a;
                hashMap.remove(this.f11201b);
                this.f11202c.set(true);
                if (hashMap.size() == 0) {
                    ahz.d();
                    break;
                }
                break;
            default:
                HashMap hashMap2 = ahz.f10249a;
                hashMap2.remove(this.f11201b);
                this.f11202c.set(true);
                if (hashMap2.size() == 0) {
                    ahz.d();
                    break;
                }
                break;
        }
    }
}
