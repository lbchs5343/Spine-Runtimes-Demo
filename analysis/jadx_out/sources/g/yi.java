package g;

import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class yi implements dqx {

    /* renamed from: b, reason: collision with root package name */
    public final boj f20339b;

    /* renamed from: c, reason: collision with root package name */
    public final int f20340c;

    /* renamed from: d, reason: collision with root package name */
    public final bqt f20341d;

    public yi(boj bojVar, int i, bqt bqtVar) {
        this.f20339b = bojVar;
        this.f20340c = i;
        this.f20341d = bqtVar;
    }

    @Override // g.dqx
    public Object a(fjs fjsVar, w wVar) {
        fh fhVar = new fh(fjsVar, this, null);
        azc azcVar = new azc(wVar, wVar.getContext());
        Object ad = dzm.ad(azcVar, azcVar, fhVar);
        return ad == cxr.COROUTINE_SUSPENDED ? ad : dgi.f14134a;
    }

    public abstract Object e(ayw aywVar, bdp bdpVar);

    public abstract yi f(boj bojVar, int i, bqt bqtVar);

    public String toString() {
        ArrayList arrayList = new ArrayList(4);
        cgq cgqVar = cgq.f12850a;
        boj bojVar = this.f20339b;
        if (bojVar != cgqVar) {
            arrayList.add("context=" + bojVar);
        }
        int i = this.f20340c;
        if (i != -3) {
            arrayList.add("capacity=" + i);
        }
        bqt bqtVar = bqt.SUSPEND;
        bqt bqtVar2 = this.f20341d;
        if (bqtVar2 != bqtVar) {
            arrayList.add("onBufferOverflow=" + bqtVar2);
        }
        return getClass().getSimpleName() + '[' + gsv.bh(arrayList, ", ", null, 62) + ']';
    }
}
