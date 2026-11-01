package g;

import android.content.Context;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class hda {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f19250a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f19251b;

    /* renamed from: c, reason: collision with root package name */
    public final List f19252c;

    /* renamed from: d, reason: collision with root package name */
    public final frk f19253d;

    /* renamed from: e, reason: collision with root package name */
    public final Set f19254e;

    /* renamed from: f, reason: collision with root package name */
    public final List f19255f;

    /* renamed from: g, reason: collision with root package name */
    public final Context f19256g;
    public final boolean h;
    public final List i;
    public final Executor j;
    public final String k;
    public final boolean l;
    public final hs m;
    public final bjg n;

    public hda(Context context, String str, hs hsVar, frk frkVar, List list, boolean z, bjg bjgVar, Executor executor, Executor executor2, boolean z2, boolean z3, Set set, List list2, List list3) {
        bff.p(frkVar, "migrationContainer");
        bff.p(bjgVar, "journalMode");
        bff.p(executor, "queryExecutor");
        bff.p(executor2, "transactionExecutor");
        bff.p(list2, "typeConverters");
        bff.p(list3, "autoMigrationSpecs");
        this.f19256g = context;
        this.k = str;
        this.m = hsVar;
        this.f19253d = frkVar;
        this.f19255f = list;
        this.h = z;
        this.n = bjgVar;
        this.f19250a = executor;
        this.j = executor2;
        this.l = z2;
        this.f19251b = z3;
        this.f19254e = set;
        this.i = list2;
        this.f19252c = list3;
    }
}
