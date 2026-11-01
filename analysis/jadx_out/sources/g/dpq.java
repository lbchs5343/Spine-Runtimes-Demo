package g;

import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.security.AccessController;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class dpq extends bke {

    /* renamed from: b, reason: collision with root package name */
    public final Object f14604b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f14605c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f14606d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f14607e;

    public dpq(Class cls) {
        this.f14605c = 1;
        this.f14606d = new HashMap();
        this.f14607e = new HashMap();
        this.f14604b = new HashMap();
        try {
            for (Field field : (Field[]) AccessController.doPrivileged(new dcd(cls))) {
                Enum r4 = (Enum) field.get(null);
                String name = r4.name();
                String str = r4.toString();
                dw dwVar = (dw) field.getAnnotation(dw.class);
                if (dwVar != null) {
                    name = dwVar.value();
                    for (String str2 : dwVar.alternate()) {
                        ((HashMap) this.f14606d).put(str2, r4);
                    }
                }
                ((HashMap) this.f14606d).put(name, r4);
                ((HashMap) this.f14607e).put(str, r4);
                ((HashMap) this.f14604b).put(r4, name);
            }
        } catch (IllegalAccessException e2) {
            throw new AssertionError(e2);
        }
    }

    public dpq(Type type, eem eemVar, bke bkeVar) {
        this.f14605c = 0;
        this.f14606d = eemVar;
        this.f14607e = bkeVar;
        this.f14604b = type;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0058, code lost:
    
        if ((r2 instanceof g.dls) == false) goto L33;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.reflect.Type] */
    @Override // g.bke
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(fwg fwgVar, Object obj) {
        bke b2;
        switch (this.f14605c) {
            case 0:
                bke bkeVar = (bke) this.f14607e;
                ?? r1 = (Type) this.f14604b;
                Class<?> cls = (obj == null || !((r1 instanceof Class) || (r1 instanceof TypeVariable))) ? r1 : obj.getClass();
                if (cls != r1) {
                    bke n = ((eem) this.f14606d).n(new ri(cls));
                    if (n instanceof dls) {
                        bke bkeVar2 = bkeVar;
                        while ((bkeVar2 instanceof buu) && (b2 = ((buu) bkeVar2).b()) != bkeVar2) {
                            bkeVar2 = b2;
                        }
                        break;
                    }
                    bkeVar = n;
                }
                bkeVar.a(fwgVar, obj);
                break;
            default:
                Enum r6 = (Enum) obj;
                fwgVar.s(r6 == null ? null : (String) ((HashMap) this.f14604b).get(r6));
                break;
        }
    }
}
