package androidx.fragment.app;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f185a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f186b = 1;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ a f187c;

    public g(y yVar, a aVar) {
        this.f185a = yVar;
        this.f187c = aVar;
    }

    public g(y yVar, ArrayList arrayList, a aVar) {
        this.f185a = arrayList;
        this.f187c = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f186b) {
            case 0:
                ArrayList arrayList = (ArrayList) this.f185a;
                a aVar = this.f187c;
                if (arrayList.contains(aVar)) {
                    arrayList.remove(aVar);
                    aVar.f173d.d(aVar.f176g.mView);
                    break;
                }
                break;
            default:
                ArrayList arrayList2 = ((y) this.f185a).f224d;
                a aVar2 = this.f187c;
                if (arrayList2.contains(aVar2)) {
                    aVar2.f173d.d(aVar2.f176g.mView);
                    break;
                }
                break;
        }
    }
}
