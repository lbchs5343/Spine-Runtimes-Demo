package b.b;

import android.content.Intent;
import b.c.d;
import cn.trinea.android.developertools.R;
import g.acw;
import g.awf;
import g.csm;
import g.doq;
import g.eas;
import g.efx;
import g.fgj;
import g.fml;
import g.gm;
import java.io.File;

/* loaded from: classes.dex */
public class c extends doq {
    @Override // g.doq
    public final void _a() {
        fgj.e().f(this, new Intent(this, (Class<?>) d.class).putExtra("package_name", this.ae.h));
    }

    @Override // g.doq
    public final String ab() {
        return "so";
    }

    @Override // g.efx
    public final csm e(efx efxVar, boolean z) {
        eas easVar = new eas(efxVar, z, this.ah, 2);
        ((doq) this).ad = easVar;
        return easVar;
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
    public final String i() {
        return fml.f(this.bb);
    }

    @Override // g.doq
    public final String r() {
        StringBuilder sb = new StringBuilder();
        sb.append(acw.bk(this.bb));
        return awf.ad(sb, File.separator, "so");
    }

    @Override // g.doq
    public final void t() {
        gm.f(this.bb, R.string.so_dev_tool);
    }

    @Override // g.doq
    public final void u() {
    }
}
