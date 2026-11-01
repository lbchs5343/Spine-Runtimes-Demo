package g;

import java.lang.reflect.Member;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;

/* loaded from: classes.dex */
public final class ekz implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final int f15728a;

    /* renamed from: b, reason: collision with root package name */
    public final String f15729b;

    /* renamed from: c, reason: collision with root package name */
    public akj f15730c;

    /* renamed from: d, reason: collision with root package name */
    public final bnu f15731d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f15732e;

    public ekz(bnu bnuVar) {
        this.f15731d = bnuVar;
        bnuVar.getClass();
        this.f15728a = 0;
        this.f15732e = false;
        this.f15729b = null;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f15731d.compareTo(((ekz) obj).f15731d);
    }

    public final Object f(Object obj) {
        bnu bnuVar = this.f15731d;
        try {
            return bnuVar.f11889g ? bnuVar.f11886d.get(obj) : bnuVar.k.invoke(obj, null);
        } catch (Exception e2) {
            Member member = bnuVar.k;
            if (member == null) {
                member = bnuVar.f11886d;
            }
            throw new bfj(tn.x("get property error。 ", member.getDeclaringClass().getName() + "." + member.getName()), (Throwable) e2);
        }
    }

    public final void g(cnu cnuVar) {
        cxa cxaVar = cnuVar.j;
        int i = cxaVar.k;
        int i2 = gar.QuoteFieldNames.mask & i;
        bnu bnuVar = this.f15731d;
        if (i2 == 0) {
            cxaVar.p(bnuVar.i, true);
        } else if ((i & gar.UseSingleQuotes.mask) != 0) {
            cxaVar.p(bnuVar.i, true);
        } else {
            char[] cArr = bnuVar.f11885c;
            cxaVar.write(cArr, 0, cArr.length);
        }
    }

    public final void h(cnu cnuVar, Object obj) {
        cbq cbqVar = cnuVar.f13202f;
        cxa cxaVar = cnuVar.j;
        String str = this.f15729b;
        if (str != null) {
            if (!(obj instanceof Date)) {
                cnuVar.r(obj);
                return;
            }
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, cnuVar.h);
            simpleDateFormat.setTimeZone(cnuVar.f13200d);
            cxaVar.t(simpleDateFormat.format((Date) obj));
            return;
        }
        akj akjVar = this.f15730c;
        bnu bnuVar = this.f15731d;
        if (akjVar == null) {
            Class<?> cls = obj == null ? bnuVar.f11884b : obj.getClass();
            duf c2 = cbqVar.c(cls);
            akj akjVar2 = new akj(8);
            akjVar2.h = c2;
            akjVar2.f10384f = cls;
            this.f15730c = akjVar2;
        }
        akj akjVar3 = this.f15730c;
        if (obj != null) {
            Class<?> cls2 = obj.getClass();
            if (cls2 == ((Class) akjVar3.f10384f)) {
                ((duf) akjVar3.h).b(cnuVar, obj, bnuVar.i, bnuVar.f11883a);
                return;
            } else {
                cbqVar.c(cls2).b(cnuVar, obj, bnuVar.i, bnuVar.f11883a);
                return;
            }
        }
        int i = gar.WriteNullNumberAsZero.mask;
        int i2 = this.f15728a;
        if ((i & i2) != 0 && Number.class.isAssignableFrom((Class) akjVar3.f10384f)) {
            cxaVar.write(48);
            return;
        }
        if ((gar.WriteNullBooleanAsFalse.mask & i2) != 0 && Boolean.class == ((Class) akjVar3.f10384f)) {
            cxaVar.write("false");
        } else if ((gar.WriteNullListAsEmpty.mask & i2) == 0 || !Collection.class.isAssignableFrom((Class) akjVar3.f10384f)) {
            ((duf) akjVar3.h).b(cnuVar, null, bnuVar.i, (Class) akjVar3.f10384f);
        } else {
            cxaVar.write("[]");
        }
    }
}
