package g;

import android.content.Context;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class bst {

    /* renamed from: a, reason: collision with root package name */
    public aoi f12143a;

    /* renamed from: f, reason: collision with root package name */
    public boolean f12148f;
    public final Context h;
    public Executor i;
    public HashSet j;
    public boolean l;
    public final String m;
    public Executor p;
    public final ArrayList o = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f12147e = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f12149g = new ArrayList();
    public final bjg n = bjg.AUTOMATIC;

    /* renamed from: b, reason: collision with root package name */
    public boolean f12144b = true;
    public final long k = -1;

    /* renamed from: d, reason: collision with root package name */
    public final frk f12146d = new frk(0);

    /* renamed from: c, reason: collision with root package name */
    public final LinkedHashSet f12145c = new LinkedHashSet();

    public bst(Context context, String str) {
        this.h = context;
        this.m = str;
    }

    public final void q(hbi... hbiVarArr) {
        if (this.j == null) {
            this.j = new HashSet();
        }
        for (hbi hbiVar : hbiVarArr) {
            HashSet hashSet = this.j;
            bff.d(hashSet);
            hashSet.add(Integer.valueOf(hbiVar.f19169d));
            HashSet hashSet2 = this.j;
            bff.d(hashSet2);
            hashSet2.add(Integer.valueOf(hbiVar.f19170e));
        }
        this.f12146d.c((hbi[]) Arrays.copyOf(hbiVarArr, hbiVarArr.length));
    }
}
