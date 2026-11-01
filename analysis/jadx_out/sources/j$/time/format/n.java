package j$.time.format;

import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes2.dex */
public final class n {

    /* renamed from: f, reason: collision with root package name */
    public static final a f20550f = new a(0);

    /* renamed from: a, reason: collision with root package name */
    public n f20551a;

    /* renamed from: b, reason: collision with root package name */
    public final n f20552b;

    /* renamed from: c, reason: collision with root package name */
    public final List f20553c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f20554d;

    /* renamed from: e, reason: collision with root package name */
    public int f20555e;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put('G', j$.time.temporal.a.ERA);
        hashMap.put('y', j$.time.temporal.a.YEAR_OF_ERA);
        hashMap.put('u', j$.time.temporal.a.YEAR);
        j$.time.temporal.h hVar = j$.time.temporal.j.f20610a;
        hashMap.put('Q', hVar);
        hashMap.put('q', hVar);
        j$.time.temporal.a aVar = j$.time.temporal.a.MONTH_OF_YEAR;
        hashMap.put('M', aVar);
        hashMap.put('L', aVar);
        hashMap.put('D', j$.time.temporal.a.DAY_OF_YEAR);
        hashMap.put('d', j$.time.temporal.a.DAY_OF_MONTH);
        hashMap.put('F', j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        j$.time.temporal.a aVar2 = j$.time.temporal.a.DAY_OF_WEEK;
        hashMap.put('E', aVar2);
        hashMap.put('c', aVar2);
        hashMap.put('e', aVar2);
        hashMap.put('a', j$.time.temporal.a.AMPM_OF_DAY);
        hashMap.put('H', j$.time.temporal.a.HOUR_OF_DAY);
        hashMap.put('k', j$.time.temporal.a.CLOCK_HOUR_OF_DAY);
        hashMap.put('K', j$.time.temporal.a.HOUR_OF_AMPM);
        hashMap.put('h', j$.time.temporal.a.CLOCK_HOUR_OF_AMPM);
        hashMap.put('m', j$.time.temporal.a.MINUTE_OF_HOUR);
        hashMap.put('s', j$.time.temporal.a.SECOND_OF_MINUTE);
        j$.time.temporal.a aVar3 = j$.time.temporal.a.NANO_OF_SECOND;
        hashMap.put('S', aVar3);
        hashMap.put('A', j$.time.temporal.a.MILLI_OF_DAY);
        hashMap.put('n', aVar3);
        hashMap.put('N', j$.time.temporal.a.NANO_OF_DAY);
        hashMap.put('g', j$.time.temporal.l.f20617a);
    }

    public n() {
        this.f20551a = this;
        this.f20553c = new ArrayList();
        this.f20555e = -1;
        this.f20552b = null;
        this.f20554d = false;
    }

    public n(n nVar) {
        this.f20551a = this;
        this.f20553c = new ArrayList();
        this.f20555e = -1;
        this.f20552b = nVar;
        this.f20554d = true;
    }

    public final void a(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        e eVar = dateTimeFormatter.f20520a;
        if (eVar.f20530b) {
            eVar = new e(eVar.f20529a, false);
        }
        b(eVar);
    }

    public final int b(f fVar) {
        Objects.requireNonNull(fVar, "pp");
        n nVar = this.f20551a;
        nVar.getClass();
        ((ArrayList) nVar.f20553c).add(fVar);
        this.f20551a.f20555e = -1;
        return ((ArrayList) r2.f20553c).size() - 1;
    }

    public final void c(char c2) {
        b(new d(c2));
    }

    public final void d(String str) {
        Objects.requireNonNull(str, "literal");
        if (str.isEmpty()) {
            return;
        }
        if (str.length() == 1) {
            b(new d(str.charAt(0)));
        } else {
            b(new l(str));
        }
    }

    public final void e(j$.time.temporal.a aVar, Map map) {
        Objects.requireNonNull(aVar, "field");
        Objects.requireNonNull(map, "textLookup");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        v vVar = v.FULL;
        b(new m(aVar, vVar, new b(new r(0, Collections.singletonMap(vVar, linkedHashMap)))));
    }

    public final void f(i iVar) {
        i a2;
        n nVar = this.f20551a;
        int i = nVar.f20555e;
        if (i < 0) {
            nVar.f20555e = b(iVar);
            return;
        }
        i iVar2 = (i) ((ArrayList) nVar.f20553c).get(i);
        int i2 = iVar.f20535b;
        int i3 = iVar.f20536c;
        if (i2 == i3 && iVar.f20537d == u.NOT_NEGATIVE) {
            a2 = iVar2.b(i3);
            b(iVar.a());
            this.f20551a.f20555e = i;
        } else {
            a2 = iVar2.a();
            this.f20551a.f20555e = b(iVar);
        }
        ((ArrayList) this.f20551a.f20553c).set(i, a2);
    }

    public final void g(j$.time.temporal.q qVar, int i) {
        Objects.requireNonNull(qVar, "field");
        if (i >= 1 && i <= 19) {
            f(new i(qVar, i, i, u.NOT_NEGATIVE));
        } else {
            throw new IllegalArgumentException("The width must be from 1 to 19 inclusive but was " + i);
        }
    }

    public final void h(j$.time.temporal.q qVar, int i, int i2, u uVar) {
        if (i == i2 && uVar == u.NOT_NEGATIVE) {
            g(qVar, i2);
            return;
        }
        Objects.requireNonNull(qVar, "field");
        Objects.requireNonNull(uVar, "signStyle");
        if (i < 1 || i > 19) {
            throw new IllegalArgumentException("The minimum width must be from 1 to 19 inclusive but was " + i);
        }
        if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException("The maximum width must be from 1 to 19 inclusive but was " + i2);
        }
        if (i2 >= i) {
            f(new i(qVar, i, i2, uVar));
            return;
        }
        throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
    }

    public final void i() {
        n nVar = this.f20551a;
        if (nVar.f20552b == null) {
            throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
        }
        if (((ArrayList) nVar.f20553c).size() <= 0) {
            this.f20551a = this.f20551a.f20552b;
            return;
        }
        n nVar2 = this.f20551a;
        e eVar = new e(nVar2.f20553c, nVar2.f20554d);
        this.f20551a = this.f20551a.f20552b;
        b(eVar);
    }

    public final void j() {
        n nVar = this.f20551a;
        nVar.f20555e = -1;
        this.f20551a = new n(nVar);
    }

    public final DateTimeFormatter k(t tVar, j$.time.chrono.m mVar) {
        return l(Locale.getDefault(), tVar, mVar);
    }

    public final DateTimeFormatter l(Locale locale, t tVar, j$.time.chrono.m mVar) {
        Objects.requireNonNull(locale, "locale");
        while (this.f20551a.f20552b != null) {
            i();
        }
        e eVar = new e(this.f20553c, false);
        s sVar = s.f20564a;
        return new DateTimeFormatter(eVar, locale, tVar, mVar);
    }
}
