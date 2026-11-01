package g;

import android.graphics.drawable.Animatable;

/* loaded from: classes.dex */
public final class cft extends acr {
    public final Animatable ck;
    public final /* synthetic */ int cl;

    public /* synthetic */ cft(Animatable animatable, int i) {
        this.cl = i;
        this.ck = animatable;
    }

    @Override // g.acr
    public final void cb() {
        switch (this.cl) {
            case 0:
                this.ck.start();
                break;
            default:
                ((ahf) this.ck).start();
                break;
        }
    }

    @Override // g.acr
    public final void cg() {
        switch (this.cl) {
            case 0:
                this.ck.stop();
                break;
            default:
                ((ahf) this.ck).stop();
                break;
        }
    }
}
