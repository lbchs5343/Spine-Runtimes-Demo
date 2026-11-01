package b.a;

import android.content.Intent;
import com.google.android.accessibility.selecttospeak.SelectToSpeakService;
import g.aoi;
import g.csm;
import g.dis;
import g.efx;
import g.fml;

/* loaded from: classes.dex */
public class b extends efx {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f351d = 0;

    @Override // g.efx
    public final csm e(efx efxVar, boolean z) {
        Class cls = this.bc;
        dis disVar = new dis(this, z);
        disVar.j = 0;
        disVar.i = this;
        disVar.h = cls;
        disVar.l = this.ap;
        disVar.k = this.bh;
        return disVar;
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
        this.ap = new aoi(24, this);
        this.am = false;
    }

    @Override // g.efx
    public final String i() {
        return fml.f(this.bb);
    }
}
