package g;

import android.content.Context;

/* loaded from: classes3.dex */
public final class avo {

    /* renamed from: a, reason: collision with root package name */
    public final Context f10927a;

    /* renamed from: b, reason: collision with root package name */
    public final dvf f10928b;

    public avo(Context context, dvf dvfVar) {
        this.f10927a = context;
        this.f10928b = dvfVar;
    }

    public final boolean equals(Object obj) {
        dvf dvfVar;
        if (obj == this) {
            return true;
        }
        if (obj instanceof avo) {
            avo avoVar = (avo) obj;
            Context context = avoVar.f10927a;
            dvf dvfVar2 = avoVar.f10928b;
            if (this.f10927a.equals(context) && ((dvfVar = this.f10928b) != null ? dvfVar.equals(dvfVar2) : dvfVar2 == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.f10927a.hashCode() ^ 1000003) * 1000003;
        dvf dvfVar = this.f10928b;
        return hashCode ^ (dvfVar == null ? 0 : dvfVar.hashCode());
    }

    public final String toString() {
        return tn.r("FlagsContext{context=", this.f10927a.toString(), ", hermeticFileOverrides=", String.valueOf(this.f10928b), "}");
    }
}
