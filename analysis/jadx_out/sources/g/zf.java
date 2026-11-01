package g;

import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class zf {

    /* renamed from: a, reason: collision with root package name */
    public static final zf f20388a;

    /* renamed from: b, reason: collision with root package name */
    public static final zf f20389b;

    /* renamed from: c, reason: collision with root package name */
    public static final zf f20390c = f(new eic[0]);

    /* renamed from: d, reason: collision with root package name */
    public static final zf f20391d;

    /* renamed from: e, reason: collision with root package name */
    public final Set f20392e;

    static {
        eic eicVar = eic.ALLOW_WIDER;
        f20391d = f(eicVar);
        f20388a = f(eicVar, eic.IGNORE_SAME);
        f20389b = f(eicVar, eic.KEEP_GENERICS, eic.IGNORE_UNKNOWN);
    }

    public zf(EnumSet enumSet) {
        this.f20392e = enumSet;
    }

    public static zf f(eic... eicVarArr) {
        EnumSet copyOf;
        if (eicVarArr.length == 0) {
            copyOf = EnumSet.noneOf(eic.class);
        } else {
            ArrayList arrayList = new ArrayList(eicVarArr.length);
            for (eic eicVar : eicVarArr) {
                Objects.requireNonNull(eicVar);
                arrayList.add(eicVar);
            }
            copyOf = EnumSet.copyOf((Collection) Collections.unmodifiableList(arrayList));
        }
        return new zf(copyOf);
    }

    public final String toString() {
        return this.f20392e.toString();
    }
}
