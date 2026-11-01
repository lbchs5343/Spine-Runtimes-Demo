package g;

import android.content.Context;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.firebase.installations.FirebaseInstallationsRegistrar;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

/* loaded from: classes3.dex */
public final /* synthetic */ class bfb implements ghx, tj, avn, dle {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11435a;

    public /* synthetic */ bfb(int i) {
        this.f11435a = i;
    }

    private final /* synthetic */ void g(ggu gguVar) {
    }

    private final /* synthetic */ void h(ggu gguVar) {
    }

    private final /* synthetic */ void i(ggu gguVar) {
    }

    private final /* synthetic */ void j(ggu gguVar) {
    }

    private final /* synthetic */ void l(ggu gguVar) {
    }

    private final /* synthetic */ void m(ggu gguVar) {
    }

    private final /* synthetic */ void n(ggu gguVar) {
    }

    private final /* synthetic */ void o(ggu gguVar) {
    }

    private final /* synthetic */ void p(ggu gguVar) {
    }

    @Override // g.dle
    public void _bt(ggu gguVar) {
        switch (this.f11435a) {
            case 21:
                gqc gqcVar = gguVar.f18131g;
                int i = gqcVar.f18566ab;
                byte b2 = ((byte[]) gqcVar.z)[i];
                gqcVar.f18566ab = i + 1;
                gguVar.i.p = b2;
                gguVar.s();
                break;
            case 22:
                gguVar.k(1, 0);
                gguVar.o();
                break;
            case 23:
                gguVar.i.p = gguVar.f18131g.ar();
                gguVar.s();
                break;
            case 24:
                gguVar.k(1, 1);
                gguVar.o();
                break;
            case 25:
                gguVar.k(1, 2);
                gguVar.o();
                break;
            case 26:
                gguVar.k(1, 3);
                gguVar.o();
                break;
            case 27:
                gguVar.k(1, 0);
                gguVar.s();
                break;
            case 28:
                gguVar.k(1, 1);
                gguVar.s();
                break;
            default:
                gguVar.k(1, 2);
                gguVar.s();
                break;
        }
    }

    @Override // g.dle
    public /* synthetic */ void _ct(ggu gguVar) {
        int i = this.f11435a;
    }

    @Override // g.tj
    public azo c(cmv cmvVar, gqc gqcVar) {
        switch (this.f11435a) {
            case 3:
                return new anl(gqcVar.f18566ab);
            case 4:
                return new gia(cmvVar.f13144g.x(gqcVar.ai()));
            case 17:
                return new wr(ckd.ak(cmvVar, gqcVar));
            case 18:
                int ai = gqcVar.ai();
                ArrayList arrayList = new ArrayList(ai);
                for (int i = 0; i < ai; i++) {
                    int ai2 = gqcVar.ai();
                    int ai3 = gqcVar.ai();
                    int[] iArr = new int[ai3];
                    for (int i2 = 0; i2 < ai3; i2++) {
                        iArr[i2] = gqcVar.ai();
                    }
                    arrayList.add(new ewv(ai2, iArr));
                }
                return new fke(arrayList);
            case 19:
                return new brs(gqcVar.av(cmvVar.f13144g));
            default:
                int ai4 = gqcVar.ai();
                gkr gkrVar = cmvVar.f13144g;
                HashMap hashMap = new HashMap(ai4);
                for (int i3 = 0; i3 < ai4; i3++) {
                    String h = gkrVar.h(gqcVar.ai());
                    int ai5 = gqcVar.ai();
                    hashMap.put(h, new dmk(gqcVar.ai(), h, ai5 == 0 ? null : gkrVar.h(ai5), gkrVar.r(gqcVar.ai())));
                }
                return new dut(hashMap);
        }
    }

    @Override // g.avn
    public Object e(xa xaVar) {
        gle lambda$getComponents$0;
        switch (this.f11435a) {
            case 5:
                return new bfq((Context) xaVar.b(Context.class), ((rm) xaVar.b(rm.class)).r(), xaVar.a(ao.class), xaVar.c(gbg.class));
            case 6:
                Set a2 = xaVar.a(aj.class);
                fc fcVar = fc.f16546b;
                if (fcVar == null) {
                    synchronized (fc.class) {
                        try {
                            fcVar = fc.f16546b;
                            if (fcVar == null) {
                                fcVar = new fc(0);
                                fc.f16546b = fcVar;
                            }
                        } finally {
                        }
                    }
                }
                return new gbg(a2, fcVar);
            default:
                lambda$getComponents$0 = FirebaseInstallationsRegistrar.lambda$getComponents$0(xaVar);
                return lambda$getComponents$0;
        }
    }

    public void f(gut gutVar, int i) {
        switch (this.f11435a) {
            case 14:
                fem.c((ebh) gutVar, i);
                break;
            case 15:
                fem.c((ebh) gutVar, i);
                break;
            default:
                fem.c((ebh) gutVar, i);
                break;
        }
    }

    @Override // g.ghx
    public anp k(View view, anp anpVar) {
        oi i = anpVar.f10526b.i(MediaPlayer.MEDIA_PLAYER_OPTION_POSITION_UPDATE_INTERVAL);
        view.setPadding(i.f19759c, i.f19760d, i.f19761e, i.f19758b);
        return anpVar;
    }
}
