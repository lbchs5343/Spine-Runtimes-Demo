package c.c;

import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import g.acw;
import g.auj;
import g.awf;
import g.csm;
import g.doq;
import g.eas;
import g.efx;
import g.ffb;
import g.fml;
import g.gfh;
import g.gm;
import g.hca;
import java.io.File;

/* loaded from: classes.dex */
public class b extends doq {
    public static final /* synthetic */ int j = 0;

    @Override // g.doq
    public final String ab() {
        return "apk";
    }

    @Override // g.efx
    public final csm e(efx efxVar, boolean z) {
        eas easVar = new eas(efxVar, z, this.ah, 0);
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
        return awf.ad(sb, File.separator, "apk");
    }

    @Override // g.doq
    public final void t() {
        gm.f(this.bb, R.string.apk_dev_tool);
    }

    @Override // g.doq
    public final void u() {
        auj aujVar = this.ae;
        if (aujVar != null && hca.g(aujVar.h)) {
            t();
            return;
        }
        s();
        auj aujVar2 = this.ae;
        if (aujVar2 != null) {
            String str = aujVar2.f10868d;
            if (!TextUtils.isEmpty(str)) {
                ffb.as().execute(new gfh(8, this, str, false));
                return;
            }
        }
        x();
        x();
        gm.f(this.bb, R.string.save_failed);
    }
}
