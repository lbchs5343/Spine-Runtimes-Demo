package g;

import a.v.ScrollViewWithMaxHeight;

/* loaded from: classes.dex */
public final class clt implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13090a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ edx f13091b;

    public /* synthetic */ clt(edx edxVar, int i) {
        this.f13090a = i;
        this.f13091b = edxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f13090a) {
            case 0:
                edx.al(this.f13091b);
                break;
            case 1:
                edx edxVar = this.f13091b;
                if (!edxVar.au()) {
                    if (ern.h(edxVar, edxVar.bb)) {
                        edxVar.ab();
                        break;
                    }
                } else {
                    edxVar.ab();
                    break;
                }
                break;
            default:
                edx edxVar2 = this.f13091b;
                if (!cro.an(edxVar2.bc, "tc_content_reverse", false)) {
                    if (edxVar2.r.getChildAt(0) != null) {
                        ScrollViewWithMaxHeight scrollViewWithMaxHeight = edxVar2.r;
                        scrollViewWithMaxHeight.scrollTo(0, scrollViewWithMaxHeight.getChildAt(0).getBottom());
                        break;
                    }
                } else {
                    edxVar2.r.scrollTo(0, 0);
                    break;
                }
                break;
        }
    }
}
