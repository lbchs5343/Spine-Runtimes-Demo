package g;

import java.io.IOException;

/* loaded from: classes3.dex */
public final class fbl extends axr implements and {
    final /* synthetic */ fxy this$0;
    final /* synthetic */ abv this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fbl(fxy fxyVar, abv abvVar) {
        super(1);
        this.this$0 = fxyVar;
        this.this$1 = abvVar;
    }

    @Override // g.and
    public final Object invoke(Object obj) {
        bff.p((IOException) obj, "it");
        fxy fxyVar = this.this$0;
        abv abvVar = this.this$1;
        synchronized (fxyVar) {
            abvVar.h();
        }
        return dgi.f14134a;
    }
}
