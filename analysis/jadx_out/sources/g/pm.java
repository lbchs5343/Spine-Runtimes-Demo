package g;

import java.util.Arrays;
import java.util.Comparator;

/* loaded from: classes3.dex */
public final class pm implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ fdk f19818a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ dpa f19819b;

    public pm(fdk fdkVar, dpa dpaVar) {
        this.f19818a = fdkVar;
        this.f19819b = dpaVar;
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        gey geyVar = (gey) obj;
        gey geyVar2 = (gey) obj2;
        if (geyVar instanceof gdz) {
            return !(geyVar2 instanceof gdz) ? 1 : 0;
        }
        if (geyVar2 instanceof gdz) {
            return -1;
        }
        fdk fdkVar = this.f19818a;
        return fdkVar == null ? geyVar.zzi().compareTo(geyVar2.zzi()) : (int) byh.ar(fdkVar.e(this.f19819b, Arrays.asList(geyVar, geyVar2)).zzh().doubleValue());
    }
}
