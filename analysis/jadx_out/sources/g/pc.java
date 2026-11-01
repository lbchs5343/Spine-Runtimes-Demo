package g;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes.dex */
public final class pc extends baf {
    public final ArrayList _aq;

    /* renamed from: a, reason: collision with root package name */
    public boolean f19798a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f19799b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final fxb f19800c;

    /* renamed from: d, reason: collision with root package name */
    public final dne f19801d;

    /* renamed from: e, reason: collision with root package name */
    public final String f19802e;

    /* renamed from: g, reason: collision with root package name */
    public gev f19803g;
    public final List h;

    static {
        cyl.g("WorkContinuationImpl");
    }

    public pc(fxb fxbVar, String str, dne dneVar, List list, int i) {
        this.f19800c = fxbVar;
        this.f19802e = str;
        this.f19801d = dneVar;
        this.h = list;
        this._aq = new ArrayList(list.size());
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (dneVar == dne.REPLACE && ((dze) list.get(i2)).f15118b.i != Long.MAX_VALUE) {
                throw new IllegalArgumentException("Next Schedule Time Override must be used with ExistingPeriodicWorkPolicyUPDATE (preferably) or KEEP");
            }
            String uuid = ((dze) list.get(i2)).f15117a.toString();
            bff.e(uuid, "id.toString()");
            this._aq.add(uuid);
            this.f19799b.add(uuid);
        }
    }

    public static HashSet i(pc pcVar) {
        HashSet hashSet = new HashSet();
        pcVar.getClass();
        return hashSet;
    }

    public final gev j() {
        if (this.f19798a) {
            cyl f2 = cyl.f();
            TextUtils.join(", ", this._aq);
            f2.getClass();
        } else {
            fxb fxbVar = this.f19800c;
            this.f19803g = afo.ag(fxbVar.aw.h, "EnqueueRunnable_" + this.f19801d.name(), (aqv) ((gkr) fxbVar.bb).f18325e, new hv(1, this));
        }
        return this.f19803g;
    }
}
