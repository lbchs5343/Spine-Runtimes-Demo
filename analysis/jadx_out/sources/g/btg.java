package g;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class btg extends hdc {

    /* renamed from: a, reason: collision with root package name */
    public final hdc f12187a;

    /* renamed from: d, reason: collision with root package name */
    public ArrayList f12188d;

    public btg(hdc hdcVar, ayu ayuVar, eqp eqpVar, int i) {
        super(ayuVar, eqpVar, i);
        this.f12187a = hdcVar;
    }

    public btg(hdc hdcVar, ayu ayuVar, yu yuVar, boolean z) {
        super(ayuVar, yuVar, eqp.CUSTOM_RAW, false, z);
        this.f12187a = hdcVar;
    }

    @Override // g.hdc, g.eek
    public final eek _o() {
        btg btgVar = new btg(this.f12187a, this.ad, this.f19257ab, this.aj.size());
        am(btgVar);
        btgVar.f12188d = this.f12188d;
        return btgVar;
    }

    @Override // g.hdc, g.eek
    public final boolean _p(eek eekVar) {
        if (this == eekVar) {
            return true;
        }
        if ((eekVar instanceof btg) && super._p(eekVar)) {
            if (this.f12187a._p(((btg) eekVar).f12187a)) {
                return true;
            }
        }
        return false;
    }

    @Override // g.hdc, g.gif
    public final gsh aa() {
        return null;
    }

    @Override // g.hdc, g.eek
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(ack.d(this.ag));
        sb.append(": INVOKE_CUSTOM ");
        gks gksVar = this.ai;
        if (gksVar != null) {
            sb.append(gksVar);
            sb.append(" = ");
        }
        if (!at(sb)) {
            sb.append('\n');
        }
        al(sb);
        sb.append(" call-site: \n  ");
        sb.append(evh.h("\n  ", this.f12188d));
        sb.append('\n');
        return sb.toString();
    }

    @Override // g.hdc, g.gif
    public final int z() {
        return 0;
    }
}
