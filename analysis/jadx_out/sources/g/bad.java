package g;

import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class bad {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11154a;

    /* renamed from: b, reason: collision with root package name */
    public final dym f11155b;

    public bad(int i) {
        this.f11154a = i;
        switch (i) {
            case 1:
                this.f11155b = new fgo();
                new ConcurrentHashMap();
                new ThreadLocal();
                new cix();
                break;
            default:
                this.f11155b = new gpu(8);
                new ConcurrentHashMap();
                break;
        }
    }
}
