package g;

import android.view.DisplayCutout;
import android.view.WindowInsets;
import j$.util.Objects;

/* loaded from: classes.dex */
public class ask extends u {
    public ask(anp anpVar, WindowInsets windowInsets) {
        super(anpVar, windowInsets);
    }

    @Override // g.efp, g.dif
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ask)) {
            return false;
        }
        ask askVar = (ask) obj;
        return Objects.equals(this.ag, askVar.ag) && Objects.equals(this.ah, askVar.ah) && efp.ai(this.ac, askVar.ac);
    }

    @Override // g.dif
    public int hashCode() {
        return this.ag.hashCode();
    }

    @Override // g.dif
    public fve j() {
        DisplayCutout displayCutout;
        displayCutout = this.ag.getDisplayCutout();
        if (displayCutout == null) {
            return null;
        }
        return new fve(displayCutout);
    }

    @Override // g.dif
    public anp k() {
        WindowInsets consumeDisplayCutout;
        consumeDisplayCutout = this.ag.consumeDisplayCutout();
        return anp.c(null, consumeDisplayCutout);
    }
}
