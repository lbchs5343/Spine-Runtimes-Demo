package g;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes.dex */
public abstract class ex implements fpk, aeu {

    /* renamed from: d, reason: collision with root package name */
    public static final TimeZone f16310d = TimeZone.getDefault();

    /* renamed from: e, reason: collision with root package name */
    public static final Locale f16311e = Locale.getDefault();

    /* renamed from: a, reason: collision with root package name */
    public static final int f16307a = ((((((cbj.AutoCloseSource.mask | cbj.InternFieldNames.mask) | cbj.UseBigDecimal.mask) | cbj.AllowUnQuotedFieldNames.mask) | cbj.AllowSingleQuotes.mask) | cbj.AllowArbitraryCommas.mask) | cbj.SortFeidFastMatch.mask) | cbj.IgnoreNotMatch.mask;

    /* renamed from: b, reason: collision with root package name */
    public static final String f16308b = "yyyy-MM-dd HH:mm:ss";

    /* renamed from: c, reason: collision with root package name */
    public static final int f16309c = ((gar.QuoteFieldNames.mask | gar.SkipTransientField.mask) | gar.WriteEnumUsingToString.mask) | gar.SortField.mask;

    public static final Object f(Class cls, String str) {
        return h(str, cls, mh.f19642a, f16307a, new cbj[0]);
    }

    public static final ArrayList g(String str) {
        ArrayList arrayList = null;
        if (str == null) {
            return null;
        }
        ccw ccwVar = new ccw(new fzg(str, f16307a), mh.f19642a);
        fzg fzgVar = ccwVar.h;
        int i = fzgVar.o;
        if (i == 8) {
            fzgVar.az();
        } else if (i != 20 || !fzgVar.ad()) {
            ArrayList arrayList2 = new ArrayList();
            ccwVar.aa(gll.class, arrayList2, null);
            ccwVar.ab();
            arrayList = arrayList2;
        }
        ccwVar.close();
        return arrayList;
    }

    public static final Object h(String str, Type type, mh mhVar, int i, cbj... cbjVarArr) {
        if (str == null) {
            return null;
        }
        for (cbj cbjVar : cbjVarArr) {
            i |= cbjVar.mask;
        }
        ccw ccwVar = new ccw(new fzg(str, i), mhVar);
        Object p = ccwVar.p(null, type);
        ccwVar.ab();
        ccwVar.close();
        return p;
    }

    public static final String i(Object obj) {
        cbq cbqVar = cbq.f12606a;
        cxa cxaVar = new cxa(f16309c, new gar[0]);
        try {
            new cnu(cxaVar, cbqVar).r(obj);
            return cxaVar.toString();
        } finally {
            cxaVar.close();
        }
    }

    public final String j() {
        cxa cxaVar = new cxa(f16309c, gar.EMPTY);
        try {
            new cnu(cxaVar, cbq.f12606a).r(this);
            return cxaVar.toString();
        } finally {
            cxaVar.close();
        }
    }

    public final String toString() {
        return j();
    }
}
