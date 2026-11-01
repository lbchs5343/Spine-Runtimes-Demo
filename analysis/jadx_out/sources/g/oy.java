package g;

import java.lang.reflect.Type;
import java.util.TimeZone;

/* loaded from: classes3.dex */
public final class oy implements eeg, eya {

    /* renamed from: a, reason: collision with root package name */
    public final Type f19784a;

    public /* synthetic */ oy(Type type) {
        this.f19784a = type;
    }

    @Override // g.eya
    public Object ak(Object obj) {
        ehi ehiVar = (ehi) obj;
        try {
            TimeZone timeZone = ex.f16310d;
            return ex.h(ehiVar.h(), this.f19784a, mh.f19642a, ex.f16307a, new cbj[0]);
        } finally {
            ehiVar.close();
        }
    }

    @Override // g.eeg
    public Type b() {
        return this.f19784a;
    }

    @Override // g.eeg
    public Object c(fdw fdwVar) {
        aux auxVar = new aux(fdwVar);
        fdwVar.d(new eie(5, auxVar));
        return auxVar;
    }
}
