package g;

import java.io.ObjectStreamException;
import java.io.Serializable;

/* loaded from: classes3.dex */
public abstract class amq implements dba, Serializable {
    private static final long serialVersionUID = 7535258609338176893L;
    protected String name;

    public Object readResolve() throws ObjectStreamException {
        return dsr.l("NOP");
    }

    @Override // g.dba
    public final /* synthetic */ boolean u(bmk bmkVar) {
        return awf.v(this, bmkVar);
    }
}
