package g;

import androidx.work.impl.WorkDatabase;
import java.util.UUID;

/* loaded from: classes.dex */
public final class fdx extends axr implements cvw {
    final /* synthetic */ UUID $id;
    final /* synthetic */ fxb $workManagerImpl;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fdx(fxb fxbVar, UUID uuid) {
        super(0);
        this.$workManagerImpl = fxbVar;
        this.$id = uuid;
    }

    @Override // g.cvw
    public final Object invoke() {
        WorkDatabase workDatabase = this.$workManagerImpl.az;
        bff.e(workDatabase, "workManagerImpl.workDatabase");
        workDatabase.ak(new dsf(this.$workManagerImpl, 1, this.$id));
        fxb fxbVar = this.$workManagerImpl;
        fje.c(fxbVar.aw, fxbVar.az, fxbVar.ay);
        return dgi.f14134a;
    }
}
