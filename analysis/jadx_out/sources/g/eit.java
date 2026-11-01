package g;

import android.accounts.Account;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Scope;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes3.dex */
public abstract class eit extends adw implements cqh {
    public final Set as;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public eit(Context context, Looper looper, int i, daw dawVar, fwr fwrVar, dko dkoVar) {
        super(context, looper, r3, r4, i, new eie(23, fwrVar), new emr(23, dkoVar), (String) dawVar.f13883b);
        bxk j = bxk.j(context);
        awe aweVar = awe.f10970a;
        ckd.k(fwrVar);
        ckd.k(dkoVar);
        Set set = (Set) dawVar.f13887f;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (!set.contains((Scope) it.next())) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        this.as = set;
    }

    @Override // g.cqh
    public final Set _bd() {
        return requiresSignIn() ? this.as : Collections.EMPTY_SET;
    }

    @Override // g.adw
    public final Set am() {
        return this.as;
    }

    @Override // g.adw
    public final Account getAccount() {
        return null;
    }
}
