package g;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import ms.bz.bd.c.Pgl.m0;
import ms.bz.bd.c.Pgl.n0;
import ms.bz.bd.c.Pgl.pblb;
import ms.bz.bd.c.Pgl.pblk;

/* loaded from: classes.dex */
public final class cad implements n0.pgla {

    /* renamed from: a, reason: collision with root package name */
    public final m0 f12537a;

    public cad(m0 m0Var) {
        this.f12537a = m0Var;
    }

    public final void b(String str) {
        m0 m0Var = this.f12537a;
        if (m0Var.f21168a == -1 || TextUtils.isEmpty(str)) {
            return;
        }
        long j = m0Var.f21168a;
        Context context = m0Var.f21169b;
        SparseArray sparseArray = pblb.f21187a;
        pblk.a(33554433, 0, j, str, context);
    }
}
