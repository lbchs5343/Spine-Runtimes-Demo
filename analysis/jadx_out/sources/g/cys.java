package g;

import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class cys extends cir {
    private static final Map zza = new ConcurrentHashMap();
    protected fjx zzc;
    protected int zzd;

    public cys() {
        this.zzb = 0;
        this.zzc = fjx.f16899a;
        this.zzd = -1;
    }

    public static ajv ab(boh bohVar) {
        ajv ajvVar = (ajv) bohVar;
        int i = ajvVar.f10349b;
        int i2 = i == 0 ? 10 : i + i;
        if (i2 >= i) {
            return new ajv(Arrays.copyOf(ajvVar.f10350c, i2), ajvVar.f10349b);
        }
        throw new IllegalArgumentException();
    }

    public static cwe ac(cwe cweVar) {
        int size = cweVar.size();
        return cweVar.zzd(size == 0 ? 10 : size + size);
    }

    public static Object ad(Method method, cys cysVar, Object... objArr) {
        try {
            return method.invoke(cysVar, objArr);
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

    public static cys ae(Class cls) {
        Map map = zza;
        cys cysVar = (cys) map.get(cls);
        if (cysVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                cysVar = (cys) map.get(cls);
            } catch (ClassNotFoundException e2) {
                throw new IllegalStateException("Class initialization cannot fail.", e2);
            }
        }
        if (cysVar != null) {
            return cysVar;
        }
        cys cysVar2 = (cys) ((cys) diy.l(cls)).a(6);
        if (cysVar2 == null) {
            throw new IllegalStateException();
        }
        map.put(cls, cysVar2);
        return cysVar2;
    }

    public static void af(Class cls, cys cysVar) {
        zza.put(cls, cysVar);
    }

    public abstract Object a(int i);

    @Override // g.cir
    public final int aa() {
        int i = this.zzd;
        if (i != -1) {
            return i;
        }
        int zza2 = auv.f10895a.d(getClass()).zza(this);
        this.zzd = zza2;
        return zza2;
    }

    public final crf ag() {
        return (crf) a(5);
    }

    public final crf ah() {
        crf crfVar = (crf) a(5);
        crfVar.l(this);
        return crfVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return auv.f10895a.d(getClass()).d(this, (cys) obj);
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzb;
        if (i != 0) {
            return i;
        }
        int j = auv.f10895a.d(getClass()).j(this);
        this.zzb = j;
        return j;
    }

    public final String toString() {
        String obj = super.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(obj);
        fso.n(this, sb, 0);
        return sb.toString();
    }
}
