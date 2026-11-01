package g;

import java.lang.reflect.Modifier;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class ehe implements dsb, Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public static final ehe f15539a = new ehe();

    /* renamed from: b, reason: collision with root package name */
    public final List f15540b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f15541c = true;

    /* renamed from: d, reason: collision with root package name */
    public final List f15542d;

    public ehe() {
        List list = Collections.EMPTY_LIST;
        this.f15542d = list;
        this.f15540b = list;
    }

    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public final ehe clone() {
        try {
            return (ehe) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public final boolean f(Class cls, boolean z) {
        if (!this.f15541c && cls.isMemberClass()) {
            eyt eytVar = cpe.f13267a;
            if (!Modifier.isStatic(cls.getModifiers())) {
                return true;
            }
        }
        if (!z && !Enum.class.isAssignableFrom(cls)) {
            eyt eytVar2 = cpe.f13267a;
            if (!Modifier.isStatic(cls.getModifiers()) && (cls.isAnonymousClass() || cls.isLocalClass())) {
                return true;
            }
        }
        Iterator it = (z ? this.f15542d : this.f15540b).iterator();
        if (it.hasNext()) {
            throw tn.c(it);
        }
        return false;
    }

    @Override // g.dsb
    public final bke j(eem eemVar, ri riVar) {
        Class cls = riVar.f19901a;
        boolean f2 = f(cls, true);
        boolean f3 = f(cls, false);
        if (f2 || f3) {
            return new gka(this, f2, eemVar, riVar);
        }
        return null;
    }
}
