package g;

import java.io.IOException;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes.dex */
public final class cnu {

    /* renamed from: b, reason: collision with root package name */
    public aca f13198b;

    /* renamed from: d, reason: collision with root package name */
    public final TimeZone f13200d;

    /* renamed from: f, reason: collision with root package name */
    public final cbq f13202f;
    public final Locale h;
    public final cxa j;
    public final ArrayList l = null;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f13199c = null;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f13201e = null;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f13203g = null;
    public final ArrayList m = null;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f13197a = null;
    public int i = 0;
    public IdentityHashMap k = null;

    public cnu(cxa cxaVar, cbq cbqVar) {
        TimeZone timeZone = ex.f16310d;
        this.f13200d = timeZone;
        this.h = ex.f16311e;
        this.j = cxaVar;
        this.f13202f = cbqVar;
        this.f13200d = timeZone;
    }

    public final void n(String str) {
        cxa cxaVar = this.j;
        if (str == null) {
            if ((cxaVar.k & gar.WriteNullStringAsEmpty.mask) != 0) {
                cxaVar.t("");
                return;
            } else {
                cxaVar.o();
                return;
            }
        }
        if ((cxaVar.k & gar.UseSingleQuotes.mask) != 0) {
            cxaVar.r(str);
        } else {
            cxaVar.v(true, str, (char) 0);
        }
    }

    public final void o(Object obj) {
        aca acaVar = this.f13198b;
        Object obj2 = acaVar.f9959c;
        cxa cxaVar = this.j;
        if (obj == obj2) {
            cxaVar.write("{\"$ref\":\"@\"}");
            return;
        }
        aca acaVar2 = acaVar.f9958b;
        if (acaVar2 != null && obj == acaVar2.f9959c) {
            cxaVar.write("{\"$ref\":\"..\"}");
            return;
        }
        while (true) {
            aca acaVar3 = acaVar.f9958b;
            if (acaVar3 == null) {
                break;
            } else {
                acaVar = acaVar3;
            }
        }
        if (obj == acaVar.f9959c) {
            cxaVar.write("{\"$ref\":\"$\"}");
            return;
        }
        String acaVar4 = ((aca) this.k.get(obj)).toString();
        cxaVar.write("{\"$ref\":\"");
        cxaVar.write(acaVar4);
        cxaVar.write("\"}");
    }

    public final void p() {
        cxa cxaVar = this.j;
        cxaVar.write(10);
        for (int i = 0; i < this.i; i++) {
            cxaVar.write(9);
        }
    }

    public final void q(aca acaVar, Object obj, Object obj2) {
        if ((this.j.k & gar.DisableCircularReferenceDetect.mask) == 0) {
            this.f13198b = new aca(acaVar, obj, obj2, 0);
            if (this.k == null) {
                this.k = new IdentityHashMap();
            }
            this.k.put(obj, this.f13198b);
        }
    }

    public final void r(Object obj) {
        if (obj == null) {
            this.j.o();
            return;
        }
        try {
            this.f13202f.c(obj.getClass()).b(this, obj, null, null);
        } catch (IOException e2) {
            throw new bfj(e2.getMessage(), (Throwable) e2);
        }
    }

    public final String toString() {
        return this.j.toString();
    }
}
