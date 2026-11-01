package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public abstract class bry implements bdp, qz, Serializable {
    private final bdp<Object> completion;

    public bry(bdp bdpVar) {
        this.completion = bdpVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // g.bdp
    public final void _z(Object obj) {
        bdp bdpVar = this;
        while (true) {
            bry bryVar = (bry) bdpVar;
            bdp bdpVar2 = bryVar.completion;
            bff.d(bdpVar2);
            try {
                obj = bryVar.a(obj);
                if (obj == cxr.COROUTINE_SUSPENDED) {
                    return;
                }
            } catch (Throwable th) {
                obj = eg.i(th);
            }
            bryVar.c();
            if (!(bdpVar2 instanceof bry)) {
                bdpVar2._z(obj);
                return;
            }
            bdpVar = bdpVar2;
        }
    }

    public abstract Object a(Object obj);

    public void c() {
    }

    public bdp e(Object obj, bdp bdpVar) {
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }

    @Override // g.qz
    public qz f() {
        bdp<Object> bdpVar = this.completion;
        if (bdpVar instanceof qz) {
            return (qz) bdpVar;
        }
        return null;
    }

    public final bdp i() {
        return this.completion;
    }

    public StackTraceElement j() {
        int i;
        String str;
        Method method;
        Object invoke;
        Method method2;
        Object invoke2;
        cel celVar = (cel) getClass().getAnnotation(cel.class);
        String str2 = null;
        if (celVar == null) {
            return null;
        }
        int v = celVar.v();
        if (v > 1) {
            throw new IllegalStateException(("Debug metadata version mismatch. Expected: 1, got " + v + ". Please update the Kotlin standard library.").toString());
        }
        try {
            Field declaredField = getClass().getDeclaredField(TTDownloadField.TT_LABEL);
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this);
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            i = (num != null ? num.intValue() : 0) - 1;
        } catch (Exception unused) {
            i = -1;
        }
        int i2 = i >= 0 ? celVar.l()[i] : -1;
        fpd fpdVar = byh.f12446e;
        fpd fpdVar2 = byh.f12448g;
        if (fpdVar2 == null) {
            try {
                fpd fpdVar3 = new fpd((Object) Class.class.getDeclaredMethod("getModule", null), (Object) getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", null), (Object) getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod(abn.EXTRA_UA_APP_NAME, null), 7, false);
                byh.f12448g = fpdVar3;
                fpdVar2 = fpdVar3;
            } catch (Exception unused2) {
                byh.f12448g = fpdVar;
                fpdVar2 = fpdVar;
            }
        }
        if (fpdVar2 != fpdVar && (method = (Method) fpdVar2.f17190f) != null && (invoke = method.invoke(getClass(), null)) != null && (method2 = (Method) fpdVar2.f17187c) != null && (invoke2 = method2.invoke(invoke, null)) != null) {
            Method method3 = (Method) fpdVar2.f17188d;
            Object invoke3 = method3 != null ? method3.invoke(invoke2, null) : null;
            if (invoke3 instanceof String) {
                str2 = (String) invoke3;
            }
        }
        if (str2 == null) {
            str = celVar.c();
        } else {
            str = str2 + '/' + celVar.c();
        }
        return new StackTraceElement(str, celVar.m(), celVar.f(), i2);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Continuation at ");
        Object j = j();
        if (j == null) {
            j = getClass().getName();
        }
        sb.append(j);
        return sb.toString();
    }
}
