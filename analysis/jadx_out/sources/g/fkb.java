package g;

import com.bykv.vk.component.ttvideo.LiveConfigKey;

/* loaded from: classes.dex */
public abstract class fkb {
    public final cgy j;

    public fkb(cgy cgyVar) {
        this.j = cgyVar;
    }

    public abstract cro d();

    public abstract gvg e();

    public abstract fkb f(cgy cgyVar);

    public abstract cxc g();

    public abstract hco h();

    public abstract boolean i();

    public final cxc k() {
        cxc g2 = g();
        if (g2 != null) {
            return g2;
        }
        throw new UnsupportedOperationException("Centrality state is not supported for ".concat(getClass().getName()));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(2);
        for (int i = 0; i < 2; i++) {
            sb.append(" ");
        }
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder("");
        sb3.append(getClass().getSimpleName());
        sb3.append(' ');
        if (i()) {
            sb3.append("TERMINAL ");
        }
        sb3.append(" {");
        sb3.append(System.lineSeparator());
        sb3.append(sb2);
        sb3.append("centrality: ");
        if (g() == null) {
            sb3.append(LiveConfigKey.NONE);
        } else {
            sb3.append(k());
        }
        sb3.append(System.lineSeparator());
        sb3.append(sb2);
        sb3.append(h());
        sb3.append(System.lineSeparator());
        sb3.append(sb2);
        gvg e2 = e();
        if (e2 != null) {
            sb3.append(e2.j());
        } else {
            sb3.append("NO ACTIVE BLOCK");
        }
        sb3.append(System.lineSeparator());
        sb3.append("}");
        return sb3.toString();
    }
}
