package b.b;

import android.content.Intent;
import b.a.d;
import com.google.android.accessibility.selecttospeak.SelectToSpeakService;
import g.aoi;
import g.cgg;
import g.csm;
import g.efx;
import g.eha;
import g.fml;
import g.gmi;

/* loaded from: classes.dex */
public final class a extends efx implements eha {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f352d = 0;

    @Override // g.efx
    public final csm e(efx efxVar, boolean z) {
        cgg cggVar = this.ao;
        gmi gmiVar = new gmi(efxVar, z);
        gmiVar.h = cggVar;
        return gmiVar;
    }

    @Override // g.efx
    public final String f() {
        return fml.g(this.bb);
    }

    @Override // g.efx
    public final String g() {
        return fml.b(this.bb);
    }

    @Override // g.efx
    public final void h(Intent intent) {
        super.h(intent);
        this.bg = SelectToSpeakService.class.getName();
        this.bc = d.class;
        this.ap = new aoi(3, this);
        this.am = false;
    }

    @Override // g.efx
    public final String i() {
        return fml.f(this.bb);
    }
}
