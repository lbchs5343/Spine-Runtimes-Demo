package g;

import java.io.Serializable;

/* loaded from: classes.dex */
public abstract class cwy implements eqk, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public transient eqk f13658c;
    private final boolean isTopLevel;
    private final String name;
    private final Class owner;
    protected final Object receiver;
    private final String signature;

    public cwy(Object obj, Class cls, String str, String str2, boolean z) {
        this.receiver = obj;
        this.owner = cls;
        this.name = str;
        this.signature = str2;
        this.isTopLevel = z;
    }

    public final String e() {
        return this.name;
    }

    public final hcp f() {
        Class cls = this.owner;
        if (cls == null) {
            return null;
        }
        if (!this.isTopLevel) {
            return bii.b(cls);
        }
        bii.f11650a.getClass();
        return new bmh(cls);
    }

    public abstract eqk g();

    public final String i() {
        return this.signature;
    }
}
