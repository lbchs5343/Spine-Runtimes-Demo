package g;

import android.content.Intent;
import android.os.Handler;
import android.view.View;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;

/* loaded from: classes.dex */
public final class bis implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11668a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ka f11669b;

    public /* synthetic */ bis(ka kaVar, int i) {
        this.f11668a = i;
        this.f11669b = kaVar;
    }

    private final void c(View view) {
        synchronized (ka.class) {
            ka kaVar = this.f11669b;
            kaVar.ab();
            new dyy(kaVar.p).f15114g.cancel(null, 30021);
            kaVar.stopSelf();
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        final hdb hdbVar;
        switch (this.f11668a) {
            case 0:
                final ka kaVar = this.f11669b;
                if (ka.y(kaVar)) {
                    return;
                }
                final ert ae = acr.ae(kaVar.p, "layout_inspector");
                if (ae == null || (hdbVar = ae.r) == null) {
                    gm.f(kaVar.p, R.string.error_no_processor);
                    return;
                }
                final int i = kaVar.o + 1;
                kaVar.o = i;
                bew.p(kaVar.p, new bky(i, hdbVar, ae) { // from class: g.hdq

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ int f19290b;

                    /* renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ hdb f19291c;

                    @Override // g.bky
                    public final void d(he heVar, boolean z) {
                        ka kaVar2 = ka.this;
                        int i2 = this.f19290b;
                        hdb hdbVar2 = this.f19291c;
                        if (i2 == kaVar2.o && kaVar2.f19527g) {
                            if (baq.f11185e.get() > 0) {
                                fzn.l(kaVar2.getApplicationContext()).q(new Intent("inspector_refresh"));
                            }
                            if (heVar == null) {
                                ka kaVar3 = kaVar2.p;
                                Handler handler = bew.f11418f;
                                gm.f(kaVar3, z ? R.string.shizuku_capture_failed : R.string.li_export_no);
                            } else {
                                if (hdbVar2 instanceof gdm) {
                                    fgj.e().f(kaVar2.p, ((gdm) hdbVar2).c(kaVar2.p));
                                }
                                fnp.g(kaVar2, kaVar2.getString(R.string.app_name));
                            }
                        }
                    }
                });
                return;
            case 1:
                ka kaVar2 = this.f11669b;
                if (ka.y(kaVar2)) {
                    return;
                }
                int i2 = kaVar2.o + 1;
                kaVar2.o = i2;
                bew.p(kaVar2.p, new bf(kaVar2, i2, 0));
                return;
            case 2:
                ka kaVar3 = this.f11669b;
                he z = ka.z(false, true);
                if (z == null) {
                    gm.f(kaVar3.p, R.string.li_export_no);
                    return;
                } else {
                    fgj.e().f(kaVar3.p, new Intent(kaVar3.p, (Class<?>) b.a.a.class).putExtra("package_name", z.getPackageName()).setFlags(C.ENCODING_PCM_MU_LAW));
                    fnp.g(kaVar3, kaVar3.getString(R.string.app_name));
                    return;
                }
            case 3:
                synchronized (ka.class) {
                    this.f11669b.ab();
                }
                return;
            case 4:
                c(view);
                return;
            default:
                this.f11669b.l.b();
                return;
        }
    }
}
