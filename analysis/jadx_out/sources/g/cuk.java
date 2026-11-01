package g;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import androidx.appcompat.view.menu.ExpandedMenuView;

/* loaded from: classes.dex */
public final class cuk implements us, AdapterView.OnItemClickListener {
    public ftn i;
    public ExpandedMenuView j;
    public caf k;
    public Context l;
    public LayoutInflater m;
    public aih n;

    public cuk(ContextWrapper contextWrapper) {
        this.l = contextWrapper;
        this.m = LayoutInflater.from(contextWrapper);
    }

    @Override // g.us
    public final boolean a(far farVar) {
        return false;
    }

    @Override // g.us
    public final void b(caf cafVar) {
        throw null;
    }

    @Override // g.us
    public final void c() {
        aih aihVar = this.n;
        if (aihVar != null) {
            aihVar.notifyDataSetChanged();
        }
    }

    @Override // g.us
    public final void d(ftn ftnVar, boolean z) {
        caf cafVar = this.k;
        if (cafVar != null) {
            cafVar.x(ftnVar, z);
        }
    }

    @Override // g.us
    public final boolean e(gyg gygVar) {
        boolean hasVisibleItems = gygVar.hasVisibleItems();
        Context context = gygVar.i;
        if (!hasVisibleItems) {
            return false;
        }
        dgg dggVar = new dgg();
        dggVar.f14128b = gygVar;
        gqc gqcVar = new gqc(context);
        die dieVar = (die) gqcVar.z;
        cuk cukVar = new cuk(dieVar.i);
        dggVar.f14127a = cukVar;
        cukVar.k = dggVar;
        gygVar.ap(cukVar, context);
        cuk cukVar2 = dggVar.f14127a;
        if (cukVar2.n == null) {
            cukVar2.n = new aih(cukVar2);
        }
        dieVar.t = cukVar2.n;
        dieVar.y = dggVar;
        View view = gygVar.f17393d;
        if (view != null) {
            dieVar.h = view;
        } else {
            dieVar.v = gygVar.f17394e;
            dieVar.f14221f = gygVar.p;
        }
        dieVar.f14218c = dggVar;
        fpl r = gqcVar.r();
        dggVar.f14129c = r;
        r.setOnDismissListener(dggVar);
        WindowManager.LayoutParams attributes = dggVar.f14129c.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        dggVar.f14129c.show();
        caf cafVar = this.k;
        if (cafVar == null) {
            return true;
        }
        cafVar.r(gygVar);
        return true;
    }

    @Override // g.us
    public final void f(Context context, ftn ftnVar) {
        if (this.l != null) {
            this.l = context;
            if (this.m == null) {
                this.m = LayoutInflater.from(context);
            }
        }
        this.i = ftnVar;
        aih aihVar = this.n;
        if (aihVar != null) {
            aihVar.notifyDataSetChanged();
        }
    }

    @Override // g.us
    public final boolean g(far farVar) {
        return false;
    }

    @Override // g.us
    public final boolean h() {
        return false;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        this.i.ar(this.n.getItem(i), this, 0);
    }
}
