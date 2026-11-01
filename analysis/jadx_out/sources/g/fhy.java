package g;

import java.util.concurrent.FutureTask;

/* loaded from: classes3.dex */
public final class fhy extends FutureTask implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final awa f16820a;

    public fhy(awa awaVar) {
        super(awaVar, null);
        this.f16820a = awaVar;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        awa awaVar = this.f16820a;
        je jeVar = awaVar.o;
        awa awaVar2 = ((fhy) obj).f16820a;
        je jeVar2 = awaVar2.o;
        return jeVar == jeVar2 ? awaVar.p - awaVar2.p : jeVar2.ordinal() - jeVar.ordinal();
    }
}
