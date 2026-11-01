package g;

import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class fsu extends bsv {
    private static final Map zzb = new ConcurrentHashMap();
    protected wl zzc;
    private int zzd;

    public fsu() {
        this.zza = 0;
        this.zzd = -1;
        this.zzc = wl.f20221a;
    }

    public static fsu o(Class cls) {
        Map map = zzb;
        fsu fsuVar = (fsu) map.get(cls);
        if (fsuVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                fsuVar = (fsu) map.get(cls);
            } catch (ClassNotFoundException e2) {
                throw new IllegalStateException("Class initialization cannot fail.", e2);
            }
        }
        if (fsuVar != null) {
            return fsuVar;
        }
        fsu fsuVar2 = (fsu) ((fsu) euh.w(cls)).i(6);
        if (fsuVar2 == null) {
            throw new IllegalStateException();
        }
        map.put(cls, fsuVar2);
        return fsuVar2;
    }

    public static void p(Class cls, fsu fsuVar) {
        fsuVar.w();
        zzb.put(cls, fsuVar);
    }

    public static Object q(Method method, fsu fsuVar, Object... objArr) {
        try {
            return method.invoke(fsuVar, objArr);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e2);
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    public static final boolean r(fsu fsuVar, boolean z) {
        byte byteValue = ((Byte) fsuVar.i(1)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean ai = fjo.f16893a.d(fsuVar.getClass()).ai(fsuVar);
        if (z) {
            fsuVar.i(2);
        }
        return ai;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return fjo.f16893a.d(getClass()).z(this, (fsu) obj);
    }

    public final int hashCode() {
        if (v()) {
            return fjo.f16893a.d(getClass()).s(this);
        }
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int s = fjo.f16893a.d(getClass()).s(this);
        this.zza = s;
        return s;
    }

    public abstract Object i(int i);

    @Override // g.bsv
    public final int k(dxm dxmVar) {
        if (v()) {
            int an = dxmVar.an(this);
            if (an >= 0) {
                return an;
            }
            throw new IllegalStateException(awf.ac(an, "serialized size must be non-negative, was "));
        }
        int i = this.zzd & he.UNDEFINED_ITEM_ID;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int an2 = dxmVar.an(this);
        if (an2 < 0) {
            throw new IllegalStateException(awf.ac(an2, "serialized size must be non-negative, was "));
        }
        this.zzd = (this.zzd & Integer.MIN_VALUE) | an2;
        return an2;
    }

    public final void s() {
        this.zzd = (this.zzd & Integer.MIN_VALUE) | he.UNDEFINED_ITEM_ID;
    }

    public final int t() {
        if (v()) {
            int an = fjo.f16893a.d(getClass()).an(this);
            if (an >= 0) {
                return an;
            }
            throw new IllegalStateException(awf.ac(an, "serialized size must be non-negative, was "));
        }
        int i = this.zzd & he.UNDEFINED_ITEM_ID;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int an2 = fjo.f16893a.d(getClass()).an(this);
        if (an2 < 0) {
            throw new IllegalStateException(awf.ac(an2, "serialized size must be non-negative, was "));
        }
        this.zzd = (this.zzd & Integer.MIN_VALUE) | an2;
        return an2;
    }

    public final String toString() {
        String obj = super.toString();
        char[] cArr = fof.f17137a;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(obj);
        fof.d(this, sb, 0);
        return sb.toString();
    }

    public final dtx u() {
        return (dtx) i(5);
    }

    public final boolean v() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    public final void w() {
        this.zzd &= he.UNDEFINED_ITEM_ID;
    }

    public final dtx x() {
        dtx dtxVar = (dtx) i(5);
        if (!dtxVar.f14802c.equals(this)) {
            if (!dtxVar.f14803d.v()) {
                fsu fsuVar = (fsu) dtxVar.f14802c.i(4);
                fjo.f16893a.d(fsuVar.getClass()).al(fsuVar, dtxVar.f14803d);
                dtxVar.f14803d = fsuVar;
            }
            fsu fsuVar2 = dtxVar.f14803d;
            fjo.f16893a.d(fsuVar2.getClass()).al(fsuVar2, this);
        }
        return dtxVar;
    }
}
