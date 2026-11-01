package c.c;

import android.content.Intent;
import b.a.d;
import com.google.android.accessibility.selecttospeak.SelectToSpeakService;
import g.aoi;
import g.bau;
import g.csm;
import g.efx;
import g.fml;

/* loaded from: classes.dex */
public final class c extends efx {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f386d = 0;

    @Override // g.efx
    public final csm e(efx efxVar, boolean z) {
        return new bau(efxVar, z);
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
        this.ap = new aoi(4, this);
        this.am = false;
    }

    @Override // g.efx
    public final String i() {
        return fml.f(this.bb);
    }
}
