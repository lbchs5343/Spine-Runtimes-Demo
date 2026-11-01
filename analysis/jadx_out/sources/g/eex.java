package g;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class eex implements Serializable {
    private static final long serialVersionUID = 0;
    private final boj[] elements;

    public eex(boj[] bojVarArr) {
        this.elements = bojVarArr;
    }

    private final Object readResolve() {
        boj[] bojVarArr = this.elements;
        boj bojVar = cgq.f12850a;
        for (boj bojVar2 : bojVarArr) {
            bojVar = bojVar._y(bojVar2);
        }
        return bojVar;
    }
}
