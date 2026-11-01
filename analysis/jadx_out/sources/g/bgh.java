package g;

import android.content.Context;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class bgh {

    /* renamed from: d, reason: collision with root package name */
    protected dlv f11513d;
    protected eyj dq;
    protected Context ia;
    protected String iw;
    protected String mn;
    protected csh ox;
    protected blw p;
    protected Map<String, String> s;

    public bgh(Context context) {
        this.ia = context;
    }

    public void dq(csh cshVar) {
        this.ox = cshVar;
    }

    public void dq(dlv dlvVar) {
        this.f11513d = dlvVar;
    }

    public void dq(eyj eyjVar) {
        this.dq = eyjVar;
    }

    public abstract boolean dq(Object... objArr);

    public void iw() {
        blw blwVar = this.ox.f13426a;
        this.p = blwVar;
        if (blwVar == null) {
            return;
        }
        this.s = blwVar.f11808c;
        this.iw = blwVar.f11807b;
        this.mn = blwVar.f11806a;
    }

    public String mn() {
        return this.iw;
    }
}
