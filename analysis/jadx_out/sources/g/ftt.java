package g;

import androidx.work.impl.WorkDatabase;

/* loaded from: classes.dex */
public final class ftt extends axr implements cvw {
    final /* synthetic */ String $tag;
    final /* synthetic */ fxb $workManagerImpl;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ftt(fxb fxbVar, String str) {
        super(0);
        this.$workManagerImpl = fxbVar;
        this.$tag = str;
    }

    @Override // g.cvw
    public final Object invoke() {
        WorkDatabase workDatabase = this.$workManagerImpl.az;
        bff.e(workDatabase, "workManagerImpl.workDatabase");
        workDatabase.ak(new grk(workDatabase, this.$tag, this.$workManagerImpl, 1));
        fxb fxbVar = this.$workManagerImpl;
        fje.c(fxbVar.aw, fxbVar.az, fxbVar.ay);
        return dgi.f14134a;
    }
}
