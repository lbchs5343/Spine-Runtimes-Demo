package g;

import java.lang.reflect.Type;

/* loaded from: classes.dex */
public final class hev implements cma {

    /* renamed from: a, reason: collision with root package name */
    public final Class f19359a;

    /* renamed from: b, reason: collision with root package name */
    public final Enum[] f19360b;

    public hev(Class cls) {
        this.f19359a = cls;
        this.f19360b = (Enum[]) cls.getEnumConstants();
    }

    @Override // g.cma
    public final Object g(ccw ccwVar, Type type, Object obj) {
        try {
            fzg fzgVar = ccwVar.h;
            int i = fzgVar.o;
            Class cls = this.f19359a;
            if (i == 2) {
                int bd = fzgVar.bd();
                fzgVar.bg(16);
                if (bd >= 0) {
                    Enum[] enumArr = this.f19360b;
                    if (bd <= enumArr.length) {
                        return enumArr[bd];
                    }
                }
                throw new bfj("parse enum " + cls.getName() + " error, value : " + bd);
            }
            if (i == 4) {
                String bj = fzgVar.bj();
                fzgVar.bg(16);
                if (bj.length() == 0) {
                    return null;
                }
                return Enum.valueOf(cls, bj);
            }
            if (i == 8) {
                fzgVar.bg(16);
                return null;
            }
            throw new bfj("parse enum " + cls.getName() + " error, value : " + ccwVar.x(null));
        } catch (bfj e2) {
            throw e2;
        } catch (Exception e3) {
            throw new bfj(e3.getMessage(), (Throwable) e3);
        }
    }
}
